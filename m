Return-Path: <devicetree+bounces-26328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2088162B4
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 23:00:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BBBD1C211CF
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 22:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760CC495FA;
	Sun, 17 Dec 2023 22:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YsfvmtW7"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD1D495DE
	for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 22:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702850411;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=K/1scTb9pZ8OxgoYLobA+aJoXS1Kz//UW2qp4P8sctU=;
	b=YsfvmtW7HB6ubtbDCrer3r/DHdDseG1sGsQZ7FmQqX7vvyWZHS2Q5elcepNwj+A8SNvSvY
	FyVOg3GwDt6+qQB9bwvRcyae75vlfFKPQgvzgyPlOB4HcL0ahWVRdkfhbHoNqFDu1+X+np
	xA6UqjKSyTk1RfYa1NkTOnElwrMMxOk=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-46-RpXJFCjrN-KlYPgJQ9HLog-1; Sun, 17 Dec 2023 17:00:10 -0500
X-MC-Unique: RpXJFCjrN-KlYPgJQ9HLog-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3334e56554bso2221592f8f.0
        for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 14:00:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702850409; x=1703455209;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K/1scTb9pZ8OxgoYLobA+aJoXS1Kz//UW2qp4P8sctU=;
        b=W4rZLehbz6WFRuyTDW7MzyKEuDwo5TGJgqOwbvGnnsQPgyyCOmY9KIwhhTzDfYxqmY
         9q1YNzpRWp0IY4Z64HjTB1y+ZzrncLlYvTvr+UQISEYWvqDgOEqRf8aYhVQ4DDRnP6i/
         JccfWpS5tz+T19MNgweq+oPHgil95YeclXrQvDCwnpf8HtHo2nQtKs4WSn/nX4czKVZg
         BTxV4tOb6ufH95GiF8OtJkm423sTvFm6JLmzTnsHlnIXWAK1GgzfBp9yREBGJAmr4bFZ
         AZVAqeJqlU7sPuFely3DK+LqHVUrQjDQRatv3dvHNC0TkXarNOkHllKY0IRNgv5sRuR0
         vlhg==
X-Gm-Message-State: AOJu0YyzSu4I2BWTineQ2tw7hbpir7S5zt0OzsV/CUSO3QRdw5WWxFWM
	A45q/8YkG5+O3TfVezltSUUiZqw1IWCni7i8577wX+1KcTiFP8e4X2kZagb76YWHpMRKoGAF15M
	PVaXjWh/OjP89FiKHeOPDhw==
X-Received: by 2002:a5d:540a:0:b0:336:63f8:f22b with SMTP id g10-20020a5d540a000000b0033663f8f22bmr771711wrv.0.1702850409158;
        Sun, 17 Dec 2023 14:00:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoqV0a8ZQJtOtOTjzUvG0IqnhN0462vgUIhA5mW80Zhxv7i1WeESN7oYXQ7je3eicDjTrxGA==
X-Received: by 2002:a5d:540a:0:b0:336:63f8:f22b with SMTP id g10-20020a5d540a000000b0033663f8f22bmr771697wrv.0.1702850408843;
        Sun, 17 Dec 2023 14:00:08 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l1-20020a5d5601000000b00336630c31b5sm2853900wrv.9.2023.12.17.14.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 14:00:08 -0800 (PST)
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
In-Reply-To: <20231217-hunk-cross-4bf51740957c@spud>
References: <20231217100741.1943932-1-javierm@redhat.com>
 <20231217100741.1943932-2-javierm@redhat.com>
 <20231217-bacteria-amusable-77efb05770a4@spud>
 <87fs00ms4b.fsf@minerva.mail-host-address-is-not-set>
 <20231217-hunk-cross-4bf51740957c@spud>
Date: Sun, 17 Dec 2023 23:00:07 +0100
Message-ID: <87cyv4mqvs.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Conor Dooley <conor@kernel.org> writes:

Hello Conor,

> On Sun, Dec 17, 2023 at 10:33:24PM +0100, Javier Martinez Canillas wrote:

[...]

>> >> +    then:
>> >> +      properties:
>> >> +        width:
>> >> +          default: 96
>> >> +        height:
>> >> +          default: 64
>> >
>> > Do you envisage a rake of devices that are going to end up in this
>> > binding? Otherwise, why not unconditionally set the constraints?
>> >
>> 
>> Because these are only for the default width and height, there can be
>> panels using the same controller but that have a different resolution.
>> 
>> For example, there are panels using the SSD1306 controller that have
>> 128x32 [0], 64x32 [1] or 128x64 [2] resolutions.
>
> This, as you know, does not matter here.
>

Are you sure? What I tried to say is that the SSD133x are just OLED
controllers and manufacturers use those chips to attach a panel that
has a certain resolution.

While it makes sense to use all the supported width and height, some
manufacturers chose to have a smaller panel instead (I used SSD1306
as an example because I knew about these but the same might be true
for let's say SSD1331).

Or saying another way, are you sure that every manufacturer selling
RGB OLED panels using the SSD1331 chip will use the default resolution
and users won't have to set a custom width and height ?

I have already chosen to make the DT binding as simple as possible to
prevent what happened with the SSD1306 "solomon,page-offset" property
that has a broken default [0] but I think that not allowing to set the
resolution is already too restrictive and would make it unusable for
any panel that doesn't have the default width and height.

[0]: https://lists.freedesktop.org/archives/dri-devel/2023-November/431150.html

>> But answering your question, yes I think that more devices for this
>> SSD133x family are going to be added later. Looking at [3], there is
>> at least SSD1333 that has a different default resolutions (176x176).
>
> That's fair enough though. I'd probably err on the side of introducing
> this complexity when the other users actually show up though.
>

Agree and the reason why I did not include entries for the SSD1332 and
SSD1333. I was planning to add those only if there were users since it
seems that the SSD1331 is the most popular controller from this family.

But as explained, even for the SSD1331 it may be needed to set a width
and height that is different than the default of this panel controller.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


