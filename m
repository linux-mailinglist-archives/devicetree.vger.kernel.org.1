Return-Path: <devicetree+bounces-21243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B14802EDC
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:40:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E33E280EEB
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5781DDD7;
	Mon,  4 Dec 2023 09:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="iS1gnsii"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDFF5FD
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 01:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701682794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YjxQsqndp2YNOEtpcHkzhSj4Ex7oFFPfHpZ5413ZYNE=;
	b=iS1gnsiiwx34kuHRxzOqBEam0MsDlivn4H1/nL/Ffm8xfQgevREv5INbVgsHEgwIEF1cB9
	z0eF3D2Yfua2ioPm2GES7y4rl0PQK1wvE7fJjhf/59BYKk4Cv2HZmY82fKEAbEM8RAv+P6
	dKVCfV/kFWUiP5fS015rbprBhzxnAss=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-251-Ekf1trnPPPSccn7xcSdG5g-1; Mon, 04 Dec 2023 04:39:52 -0500
X-MC-Unique: Ekf1trnPPPSccn7xcSdG5g-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-40b554730c5so31859825e9.0
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 01:39:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701682791; x=1702287591;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YjxQsqndp2YNOEtpcHkzhSj4Ex7oFFPfHpZ5413ZYNE=;
        b=lufbpfzPx6tvc+0a61CMqP3iZfz5QYqhpU5MEncUzNM9SiZEAYCj0XrkOs2KOZxokI
         7MX1gRSZ+pG9m6/sWLbiVpfadcU8S9rE36ztbzRGU4PR3U+CFZ7tL/V0ct1dRH52YqaZ
         7QWJoOILpjODpW8zOy3ecyZ+sCYTGsqGMy3EFT2Ypm2EFgn8PMDY8ZtkiRMz5WGBRgMk
         kR6FZVuTBhPIA3K8kg6R8xlapR9xWo5cm23PKGz3PUg6sFsAOPIoRrkOD2EseCUqub4S
         foCci2uJOu/jbKuXbdjf9RjlWOxsWJ98YpX0lGy9RVSLdG1RXSy/6LCY88mPWWUNTHSO
         Oo6Q==
X-Gm-Message-State: AOJu0Yy8QFVoM/NZMHy92vcss9rx8hQ65BxNHsMZIcYskQSMELgluCuZ
	cKkS2g3sZsbYzKuhohIBZZtDa5tTAu1VJqTpe9SLbGuKBLCGG4dMWD2scHqemZjfsRXDMJRMwkj
	bODfCkh3mWLtjqSnPjCCjtQ==
X-Received: by 2002:a7b:c2b2:0:b0:40b:5e59:ea12 with SMTP id c18-20020a7bc2b2000000b0040b5e59ea12mr2222050wmk.177.1701682791044;
        Mon, 04 Dec 2023 01:39:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExL00bqqXgrqIQyIEewRdVX5DUBUHVJDjGkpysRiiHgP6pn1w5E/Kzz/sPmNtx04t6PJhBKA==
X-Received: by 2002:a7b:c2b2:0:b0:40b:5e59:ea12 with SMTP id c18-20020a7bc2b2000000b0040b5e59ea12mr2222041wmk.177.1701682790651;
        Mon, 04 Dec 2023 01:39:50 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id m40-20020a05600c3b2800b004042dbb8925sm18119091wms.38.2023.12.04.01.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 01:39:50 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Ard Biesheuvel
 <ardb@kernel.org>, devicetree@vger.kernel.org, Sergio Lopez
 <slp@redhat.com>, Sima Vetter <daniel.vetter@ffwll.ch>, Hector Martin
 <marcan@marcan.st>, Andrew Worsley <amworsley@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Frank
 Rowand <frowand.list@gmail.com>
Subject: Re: [RFC PATCH] of/platform: Disable sysfb if a simple-framebuffer
 node is found
In-Reply-To: <CAL_JsqJbZ736iV+bRbSNNaimkbJLpB9MbeKLSct16Yi67ttFcw@mail.gmail.com>
References: <20231113085305.1823455-1-javierm@redhat.com>
 <CAL_JsqKHTN5hfd4qpg5RXbmQLKZNVywDkSj9mxvfGmjrcChQQg@mail.gmail.com>
 <87jzqi59bt.fsf@minerva.mail-host-address-is-not-set>
 <CAL_JsqJM9+cbNviwuKGB5+3YbyAP3UH+TxCxsU5nUtX-iRGP2w@mail.gmail.com>
 <CAMj1kXG7Xyk0ys9j-XRo7Rr8gYz1qJE8fFSixBOwVbm-pjeX+A@mail.gmail.com>
 <874jhj1fm3.fsf@minerva.mail-host-address-is-not-set>
 <58672ab8-99bf-4a2a-af79-031d1e8fcba0@suse.de>
 <87fs0mxlyp.fsf@minerva.mail-host-address-is-not-set>
 <CAL_JsqJbZ736iV+bRbSNNaimkbJLpB9MbeKLSct16Yi67ttFcw@mail.gmail.com>
Date: Mon, 04 Dec 2023 10:39:49 +0100
Message-ID: <87a5qqxq56.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob Herring <robh@kernel.org> writes:

Hello Rob,

> On Fri, Dec 1, 2023 at 4:21=E2=80=AFAM Javier Martinez Canillas

[...]

>> >> I don't have a better idea than this patch but maybe Thomas or Sima d=
o?
>> >
>> > At SUSE, we've carried such a patch in our repos for some time. It wor=
ks
>> > around the double-framebuffer problem in a similar way. [1]
>> >
>>
>> Thanks for the information. I see that your patch is basically mine but
>> doing it unconditionally while this one only does the sysfb_disable() if
>> a "simple-framebuffer" DT node has been found.
>>
>> > As Javier mentioned, we do track the framebuffer ranges for EFI/VESA/OF
>> > framebuffers in the graphics aperture helpers. Fbdev has done this for
>> > decades, and the current codebase extends and harmonizes this
>> > functionality among fbdev and DRM drivers.
>> >
>> > WRT DT vs EFI: AFAIK the EFI support on affected platforms looks at the
>> > DT to set up the EFI framebuffer. So IMHO the DT is the authoritative
>> > source on the framebuffer.
>> >
>>
>> Agreed. Sima Vetter also mentioned on IRC that they think this patch is
>> the least bad option. Rob, Ard any thoughts? Maybe we can land this as
>> a fix and then figure how this could be better handled in the long term?
>
> What about moving the DT setup code here to sysfb? Then we just setup
> the right thing up front.
>

Right now sysfb is pretty platform agnostic, in the sense that just looks
at the screen_info global struct and uses it to add the platform data that
contains the firmware provided framebuffer.

How the screen_info was filled (e.g: by the Linux EFI stub using the GOP
or the x86 early boot code using VESA) is transparent to sysfb. For this
reason adding platform specific logic there, like finding OF nodes, is not
desirable.

I also suggested to Thomas to move the DT setup code to sysfb but he said
that would be the wrong approach for the reason mentioned above. Please
correct me Thomas if I'm misremembering here.

> However, there might be one other issue with that and this fix. The DT
> simplefb can have resources such as clocks and regulators. With
> fw_devlink, the driver won't probe until those dependencies are met.
> So if you want the framebuffer console up early, then you may want to
> register the EFI framebuffer first and then handoff to the DT simplefb
> when it probes (rather than registering the device).
>
> But I agree, probably better to take this patch now and have those
> quirks instead of flat out not working.
>

If we do that what's the plan? Are you thinking about merging this patch
through your OF tree or do you want to go through drm-misc with your ack?

> Rob
>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


