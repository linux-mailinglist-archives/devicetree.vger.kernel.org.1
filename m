Return-Path: <devicetree+bounces-26341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D859B8162DE
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 23:46:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C3DF282B54
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 22:46:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D64447F5A;
	Sun, 17 Dec 2023 22:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MnvU2z+v"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CF044C9B
	for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 22:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702853184;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZuMkSqDphggFe82tZqaGer9Bq8n3w4NhlpIrSLDuh64=;
	b=MnvU2z+vdVzJ4ZJXkirYvq36Hkvwx/qmECFdHoe5Q3enAS/1Dnkn9lxckYl2Wb7c3RmsCN
	NElBw1mnXhKKqlXepVRDIM0lNCW1vEastR2eAai32F/JDx1zEkzsIVifxeGVwoO9QLz7C7
	SgTPSzQ05+nJXK7AArPfYpv9V6pq8mM=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-581-qazlKZikMXyEZe-Voa1lMQ-1; Sun, 17 Dec 2023 17:46:22 -0500
X-MC-Unique: qazlKZikMXyEZe-Voa1lMQ-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-40c4a824c4bso20933355e9.2
        for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 14:46:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702853182; x=1703457982;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZuMkSqDphggFe82tZqaGer9Bq8n3w4NhlpIrSLDuh64=;
        b=f5WlsNttthbavTIk8NvX1M4AAdNq73zBHwZ+p6JRawTSsSFwmXTOMWgtt1xKeSiQxU
         Z69QSVoIInXmko0+mrZuM9mrTEBzfOOacB+nZrsZRNtWhaJmF4lnorS6XYxCSt81KKnZ
         9j1uMQD6u7OSL7ou4BjBapZPsK8egbX2EfNcymVTjh3bhK3cL/JVHdRojTeQLc/0sLGH
         dC+wMkD2UoQzRUbf1N8HuGKaYHxJpdaFwskK2xVXlzeCr/Dr/rKozm2AtjSv8Je5ZRe0
         6zCWOBDN1dyf7ARiqvYmf3kPsMyuScdJCTDdO16gdrNFGRDv8k3zZXnucmjQ6GX2/j51
         7sjA==
X-Gm-Message-State: AOJu0Yykg812iIjZy18d86+jO7J95Uv+Ya9KLkMvku8slkjrIkoe4l/t
	ri7Ff07PQdAbnLkS23mhDy/UYPS/BLniQ8iqv7cEGC5UnFTahiBdREYr0MdfwE4ZwSk7e3NXEPb
	7uk80w/ZY2UqKB6rxTNxMew==
X-Received: by 2002:a05:600c:4f90:b0:40b:47b5:be4f with SMTP id n16-20020a05600c4f9000b0040b47b5be4fmr8011128wmq.26.1702853181865;
        Sun, 17 Dec 2023 14:46:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkM4LyhnxN4U9ukVqo9ZHjNr9OSCvI4cnpcJ7NkoX7UDtpCVJtXFGPGDKLVfLir4jk0uSzSQ==
X-Received: by 2002:a05:600c:4f90:b0:40b:47b5:be4f with SMTP id n16-20020a05600c4f9000b0040b47b5be4fmr8011114wmq.26.1702853181517;
        Sun, 17 Dec 2023 14:46:21 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id d5-20020a5d5385000000b0033662cf5e51sm3013673wrv.93.2023.12.17.14.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 14:46:21 -0800 (PST)
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
In-Reply-To: <20231217-catcall-turbulent-0a4072eaba43@spud>
References: <20231217100741.1943932-1-javierm@redhat.com>
 <20231217100741.1943932-2-javierm@redhat.com>
 <20231217-bacteria-amusable-77efb05770a4@spud>
 <87fs00ms4b.fsf@minerva.mail-host-address-is-not-set>
 <20231217-hunk-cross-4bf51740957c@spud>
 <87cyv4mqvs.fsf@minerva.mail-host-address-is-not-set>
 <20231217-catcall-turbulent-0a4072eaba43@spud>
Date: Sun, 17 Dec 2023 23:46:20 +0100
Message-ID: <87a5q8moqr.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Conor Dooley <conor@kernel.org> writes:

Hello Connor,

> On Sun, Dec 17, 2023 at 11:00:07PM +0100, Javier Martinez Canillas wrote:
>> Conor Dooley <conor@kernel.org> writes:
>> 
>> Hello Conor,
>> 
>> > On Sun, Dec 17, 2023 at 10:33:24PM +0100, Javier Martinez Canillas wrote:
>> 
>> [...]
>> 
>> >> >> +    then:
>> >> >> +      properties:
>> >> >> +        width:
>> >> >> +          default: 96
>> >> >> +        height:
>> >> >> +          default: 64
>> >> >
>> >> > Do you envisage a rake of devices that are going to end up in this
>> >> > binding? Otherwise, why not unconditionally set the constraints?
>> >> >
>> >> 
>> >> Because these are only for the default width and height, there can be
>> >> panels using the same controller but that have a different resolution.
>> >> 
>> >> For example, there are panels using the SSD1306 controller that have
>> >> 128x32 [0], 64x32 [1] or 128x64 [2] resolutions.
>> >
>> > This, as you know, does not matter here.
>> >
>> 
>> Are you sure? What I tried to say is that the SSD133x are just OLED
>> controllers and manufacturers use those chips to attach a panel that
>> has a certain resolution.
>> 
>> While it makes sense to use all the supported width and height, some
>> manufacturers chose to have a smaller panel instead (I used SSD1306
>> as an example because I knew about these but the same might be true
>> for let's say SSD1331).
>> 
>> Or saying another way, are you sure that every manufacturer selling
>> RGB OLED panels using the SSD1331 chip will use the default resolution
>> and users won't have to set a custom width and height ?
>
> That's not at all what I was saying. I just meant unconditionally set
> the constraints on the property (in this case the default) since you
> only have one compatible. Not unconditionally set the height and width.
>
> Apologies if if that was unclear.
>

Oh, I see that you meant now. Sorry for my confusion!

And yes, I agree with you that doesn't make sense to make it conditional
if there's only a single compatible. I'll drop that if condition on v2.

Thanks a lot for your feedback.

> Thanks,
> Conor.
>
 
-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


