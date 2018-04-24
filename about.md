---
layout: page
title: About
permalink: /about/
---

<amp-img width="800" height="600" layout="responsive" src="/assets/images/team.jpg"></amp-img>

codeis.software is a collective that advocates for holistic software and continuous integration.

Originally exclusively a [group of David's](http://thedavidexperience.com){:target="_blank"}, we started to include more people into our group. Since then, we decided to change our name. However, our mission remains the same.

Our mission is to promote better software practice and availability and to promote communities that also share that same vision.

Here are our contributors:

<div class="author profile-card-list" markdown="0">
{% for person in site.data.contributors.people %}
<div class="profile-card">
    <div class="profile-card-image">
        <amp-img width="1" height="1" layout="responsive" src="/assets/images/profile/{{ person.username }}.png">
        </amp-img>
    </div>
    <div class="profile-card-description">
        <span class="name">
        
        <strong>{{ person.name }}</strong>
        
        {% if person.has_bio %}
            &mdash;
            <a href="/profile/{{ person.username }}">
                Bio
            </a>
        {% endif %}
        </span>
        <span class="work">
            Works at
            <a href="{{ person.company.url }}" target="_blank">
                {{ person.company.name }}
            </a>
        </span>
        {% if person.community %}
            <span class="community">
                Runs
                <a href="{{ person.community.url }}" target="_blank">
                    {{ person.community.name }}
                </a>
            </span>
        {% endif %}
        {% if person.school %}
            <span class="school">
                Went to
                <a href="{{ person.school.url }}" target="_blank">
                    {{ person.school.name }}
                </a>
            </span>
        {% endif %}

    </div>
</div>
{% endfor %}
</div>

