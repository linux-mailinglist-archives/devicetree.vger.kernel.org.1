Return-Path: <devicetree+bounces-26931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA985818A02
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 15:33:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59E73283818
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 14:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10B11BDD4;
	Tue, 19 Dec 2023 14:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WN3B01W6"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F1A1BDED
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 14:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702996189;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FJ0fIgJFxprsIyxEkHhdAMJUwfKqBB8ndzukjaekHFY=;
	b=WN3B01W6SJUs4P4ksh8+wVW8jKU7ZRBw9WJ2uwK6ESfH5elwFAR3vAIn++9Rdc+9h0drqx
	MzMkuN01ETjYdmjXslMuCFekNZx8lvc4HE+mn3FXKck0n/NCiIl4I+S2Bfe1YjzzGHwZhv
	Wh7ivL4CQ6q+vTZ/LDKrRWzNJ676OVA=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-595-EtrrwbBZNbS_1qNbt9hD7A-1; Tue, 19 Dec 2023 09:29:46 -0500
X-MC-Unique: EtrrwbBZNbS_1qNbt9hD7A-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-40d2f6f2787so1344595e9.0
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 06:29:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702996185; x=1703600985;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FJ0fIgJFxprsIyxEkHhdAMJUwfKqBB8ndzukjaekHFY=;
        b=iU8e9TX/mTiKhvqW0Ir2/gs5Gy+5XqKrovf7mktfLuHyIb6WiSWO5Oo9IBosF6X0Jc
         J6hiLYOep3WfgvbN3lPADB+enB4FdQisTE28AYvrJF0H7mkDlAUZRfeHm12LdDmpegAN
         osKw9qfmzgD7vif8LVTawGAMJ4k0w9uam5M4VKVKvWcqEAN7GTUBW+S82t3mjXhJuV1G
         BP56BvuCk2cC7OGjUgPe6vTT4kro499pfcCfzCL2M2/njE3oRls0a97g5z7MV1vsqLuN
         fXBdNtPxW7tWluV4cfwtOAiEQeSoDrh1DXoV6E+zrtDLht6T12MY6RFCQBN6Zwrb4Ip3
         HqHw==
X-Gm-Message-State: AOJu0Yw9qCESHVGIr3d25NhFHnp1LWNZOHPaYMKdehEk9NkOACrM7oQs
	cEXeyHUNqm5FWdRsw1EGD1xy4jpe4d2MVdzk9HySrfkmgr4kr46EOPRm28QrFG/VJVGTG0eA6J6
	KIBa13JFluyH+iooNvCPaCg==
X-Received: by 2002:a7b:c388:0:b0:40c:3469:96d1 with SMTP id s8-20020a7bc388000000b0040c346996d1mr9196311wmj.162.1702996184743;
        Tue, 19 Dec 2023 06:29:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEA8keZt2+RMeG+32PCDrITixe94PgFwfVoCxcAnFpxFM09R5EooqJSvimnMtjpUTQWIJr13g==
X-Received: by 2002:a7b:c388:0:b0:40c:3469:96d1 with SMTP id s8-20020a7bc388000000b0040c346996d1mr9196303wmj.162.1702996184377;
        Tue, 19 Dec 2023 06:29:44 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g3-20020a05600c310300b0040c6b2c8fa9sm3083353wmo.41.2023.12.19.06.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 06:29:44 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley
 <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Jocelyn Falempe <jfalempe@redhat.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Thomas Zimmermann <tzimmermann@suse.de>, Peter
 Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David
 Airlie <airlied@gmail.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: Add SSD133x OLED controllers
In-Reply-To: <1fa5f658-fef1-49e0-b1ca-21359a74e409@linaro.org>
References: <20231218132045.2066576-1-javierm@redhat.com>
 <20231218132045.2066576-2-javierm@redhat.com>
 <20231218-example-envision-b41ca8efa251@spud>
 <87il4u5tgm.fsf@minerva.mail-host-address-is-not-set>
 <1fa5f658-fef1-49e0-b1ca-21359a74e409@linaro.org>
Date: Tue, 19 Dec 2023 15:29:43 +0100
Message-ID: <87frzy5kq0.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:

Hello Krzysztof,

> On 19/12/2023 12:20, Javier Martinez Canillas wrote:

[...]

>>>> +allOf:
>>>> +  - $ref: solomon,ssd-common.yaml#
>>>> +

[...]

>>>  
>>> +  width:
>>> +    default: 96
>>> +
>>> +  height:
>>> +    default: 64
>
> Which also looks wrong on its own. Where is the definition of these

Yes, I already discussed this with Conor and mentioned to him that is a
typo but already fixed it locally and I'm testing with the correct ones.

> properties? IOW, where do they come from?
>

The "solomon,width" and "solomon,height" properties are defined in the
solomon,ssd-common.yaml binding schema file that is referenced.

>>> +
>> 
>> ...but when trying move the default for the "solomon,width" and
>> "solomon,height" to the properties section, make dt_binding_check
>> complains as follows:
>
> Worked for me.
>

Oh, that's good to know. I wonder what's the difference...

> ...
>
>>   DTC_CHK Documentation/devicetree/bindings/display/solomon,ssd133x.example.dtb
>> 
>> The warning goes away if I follow the hints and add a type and description
>> to the properties, i.e:
>
> Hm, I wonder what's different in your case. I assume you run the latest
> dtschema.
>

Not the latest but had a recent one. I've updated it, so I do now :)

$ pip list | grep dtschema
dtschema                      2023.9

$ pip install --upgrade dtschema

$ pip list | grep dtschema
dtschema                      2023.11

[...]

>> But that would duplicate information that is already present in the
>> included solomon,ssd-common.yaml schema. Do you know what is the proper
>> way to do this?
>
> Works for me, so please paste somewhere proper diff so we can compare.
>

With the latest dtschema version it works indeed. Thanks for the pointer!

$ make W=1 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/solomon,ssd133x.yaml 
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTEX    Documentation/devicetree/bindings/display/solomon,ssd133x.example.dts
  DTC_CHK Documentation/devicetree/bindings/display/solomon,ssd133x.example.dtb

> Best regards,
> Krzysztof
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


