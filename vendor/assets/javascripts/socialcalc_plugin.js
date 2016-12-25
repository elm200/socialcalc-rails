(function($) {
  $.fn.socialcalc = function(options) {
    return this.each(function() {
      var content, control, element_id, key_event_handler;
      var _spreadsheet_element = this;
      options = options || {};
      var form_selector = options['form'] || '#js-spreadsheet-form';
      var content_selector = options['content'] || '#js-spreadsheet-content';
      var width = options['width'] || 900;
      var height = options['height'] || 500;

      control = new SocialCalc.SpreadsheetControl();
      control.InitializeSpreadsheetControl(_spreadsheet_element, height, width);
      content = $(content_selector).val();
      control.sheet.ResetSheet();
      control.sheet.ParseSheetSave(content);
      control.sheet.ScheduleSheetCommands('recalc', false, false);

      key_event_handler = function(event_type, e) {
        if (!$.contains(_spreadsheet_element, e.target)) {
          e.stopPropagation();
        }
        return true;
      };
      $(form_selector + ' :submit').click(function() {
        control = SocialCalc.GetSpreadsheetControlObject();
        content = control.sheet.CreateSheetSave();
        return $(content_selector).val(content);
      });
      $(form_selector).keydown(function(e) {
        return key_event_handler('keydown', e);
      });
      $(form_selector).keypress(function(e) {
        return key_event_handler('keypress', e);
      });
      return $(form_selector).keyup(function(e) {
        return key_event_handler('keyup', e);
      });
    });
  };
})(jQuery);
