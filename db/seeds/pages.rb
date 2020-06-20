# frozen_string_literal: true

module Seeds
  module Pages
    def self.create!
      Page.create!(name: 'symptoms_of_coronavirus',
                   title: 'Симптомы коронавируса',
                   text: '<p>В подавляющем большинстве случаев эти симптомы связаны не с коронавирусом, а с обычной ОРВИ.<br>
                   высокая температура тела<br>
                   кашель (сухой или с небольшим количеством мокроты)<br>
                   головная боль<br>
                   заложенность грудной клетки<br>
                   утомляемость<br>
                   тошнота, рвота<br></p>')

      Page.create!(name: 'preventive_measures',
                   title: 'Меры профилактики',
                   text: '<p>Для предупреждения распространения COVID-19:<br>
                   Соблюдайте правила гигиены рук. Часто мойте руки водой с мылом или обрабатывайте их спиртосодержащим антисептиком для рук.<br>
                   Держитесь на безопасном расстоянии от чихающих или кашляющих людей.<br>
                   Не прикасайтесь руками к глазам, рту или носу.<br>
                   При кашле или чихании прикрывайте рот и нос локтевым сгибом или платком.<br>
                   Если вы чувствуете недомогание, оставайтесь дома.<br>
                   В случае повышения температуры, появлении кашля и одышки обратитесь за медицинской помощью. Вызовите врача по телефону.<br>
                   Следуйте указаниям местных органов здравоохранения.</p>')

      Page.create!(name: 'how_is_coronavirus_transmitted',
                   title: 'Как передается коронавирус',
                   text: '<p>Воздушно-капельным путем (при кашле или чихании)</p>
                   <p>контактным путем (поручни в транспорте, дверные ручки и другие загрязненные поверхности и предметы)</p>
                   <p>Как и другие респираторные вирусы, коронавирус распространяется через капли, которые образуются, когда инфицированный человек кашляет или чихает.</p>
                   <p>Кроме того, он может распространяться, когда инфицированный человек касается любой загрязненной поверхности, например, дверной ручки. Люди заражаются, когда они касаются загрязненными руками рта, носа или глаз.</p>')
    end
  end
end