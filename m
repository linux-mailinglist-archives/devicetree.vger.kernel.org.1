Return-Path: <devicetree+bounces-26319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63919816274
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 22:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 185351F219D6
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 21:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6055448CE7;
	Sun, 17 Dec 2023 21:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="B0kqyNCH"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE2D48CE5
	for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 21:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702848808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Umdjp5ksoy+JcwUTo/e1T9qvEs+1ox676Cz4ZgwJJjU=;
	b=B0kqyNCHfRtKif4rssFTIfOyZ6vnJr0DaRTd9HQbTujvqj/UBbQcrKmQ/EtdLmdj88NaGW
	ZtGsJNsBaX1DruKU58mb5BMpxIZ8DXLmcmrPKpMB3saFilbVTJUiwpUDRmI12FFMCng6NA
	2gM6LeDzUHEw2Ufx4NfKQDDwRrPFxj4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-64-4SkCtkjyOseyrhgvrnHiig-1; Sun, 17 Dec 2023 16:33:26 -0500
X-MC-Unique: 4SkCtkjyOseyrhgvrnHiig-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-40c38ae9764so21831475e9.1
        for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 13:33:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702848806; x=1703453606;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Umdjp5ksoy+JcwUTo/e1T9qvEs+1ox676Cz4ZgwJJjU=;
        b=BPpdWQMiYM2jicmQy2Gny/KZhFWSTb9m7IyqzP5rRv6lO9Lto3J3vEh8D6sXMg8iYU
         1MIq3lsPlaYZin7kiRtt4UiOQtxPqR/A9rq510t9SmnYydYlzsN3njnhLSZ1AfCzCyIq
         g6hxragnffXDS2jQHg0nX47/P8NK78jS4+UYGk6EW67TPgVsFRBE3NhGsR4h7izsJyFF
         ZppJ2gNDFP1l+0lzSeFsTbBuZzUNALSPLuB0GbMSpExPGPz5EWS+FIPpP8AHcmkX1FeS
         my2zvxXqaER9R9Wj1Zr4QKT6wxDswOKjuiRI7SOdde+uPqOzfEIz4MnqPqkfwnxF7TiO
         lGqw==
X-Gm-Message-State: AOJu0YxcU2QHb+hHjOqcvvuxVds2dp6VT2d3gbseIIYv+759czxjPr1H
	T/WBeCn7/DimWukeApo9gezhZvXGcFlpCgVAGs+sIHSbUwSbvGZsvRMTjG0EVrZJFHLKuxHYUDF
	esDo551qFvqJ/jpBH/zUvVA==
X-Received: by 2002:a05:600c:3403:b0:401:daf2:2735 with SMTP id y3-20020a05600c340300b00401daf22735mr8294563wmp.31.1702848805788;
        Sun, 17 Dec 2023 13:33:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IElsMH/e3AuKVnouRvSQ1+tNGmbnVzX8Ok7/pjwFuDcho/tdFgjioZuOMxwPzVueDgH+cCPnQ==
X-Received: by 2002:a05:600c:3403:b0:401:daf2:2735 with SMTP id y3-20020a05600c340300b00401daf22735mr8294553wmp.31.1702848805410;
        Sun, 17 Dec 2023 13:33:25 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id e12-20020a05600c4e4c00b0040b398f0585sm39872880wmq.9.2023.12.17.13.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 13:33:24 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, Thomas
 Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Peter
 Robinson <pbrobinson@gmail.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter
 <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/2] dt-bindings: display: Add SSD133x OLED controllers
In-Reply-To: <20231217-bacteria-amusable-77efb05770a4@spud>
References: <20231217100741.1943932-1-javierm@redhat.com>
 <20231217100741.1943932-2-javierm@redhat.com>
 <20231217-bacteria-amusable-77efb05770a4@spud>
Date: Sun, 17 Dec 2023 22:33:24 +0100
Message-ID: <87fs00ms4b.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Conor Dooley <conor@kernel.org> writes:

Hello Connor,

> On Sun, Dec 17, 2023 at 11:07:03AM +0100, Javier Martinez Canillas wrote:

[...]

>> +properties:
>> +  compatible:
>> +    enum:
>> +      - solomon,ssd1331
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +allOf:
>> +  - $ref: solomon,ssd-common.yaml#
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: solomon,ssd1331
>> +    then:
>> +      properties:
>> +        width:
>> +          default: 96
>> +        height:
>> +          default: 64
>
> Do you envisage a rake of devices that are going to end up in this
> binding? Otherwise, why not unconditionally set the constraints?
>

Because these are only for the default width and height, there can be
panels using the same controller but that have a different resolution.

For example, there are panels using the SSD1306 controller that have
128x32 [0], 64x32 [1] or 128x64 [2] resolutions.

But answering your question, yes I think that more devices for this
SSD133x family are going to be added later. Looking at [3], there is
at least SSD1333 that has a different default resolutions (176x176).

I think that even the SSD135x family could be supported by the same
modsetting pipeline, but I need to get one to figure it out.

[0]: https://es.aliexpress.com/item/1005003648174074.html
[1]: https://www.buydisplay.com/white-0-49-inch-oled-display-64x32-iic-i2c-ssd1306-connector-fpc
[2]: https://es.aliexpress.com/item/1005001582340858.html?gatewayAdapt=glo2esp
[3]: https://www.solomon-systech.com/product-search/?technology=oled-display

> Cheers,
> Conor.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


