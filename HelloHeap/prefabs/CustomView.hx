package prefabs;
import hide.view.FileView;

class CustomView extends FileView {
    override public function onDisplay() {
        element.html('');
    }
}