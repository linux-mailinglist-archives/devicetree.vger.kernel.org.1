Return-Path: <devicetree+bounces-21428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B35A380399B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 17:05:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32A0F280F7D
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 16:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE94C2D05A;
	Mon,  4 Dec 2023 16:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GurDKIRU"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B86CD116
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 08:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701705938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=72Qq8SUAOQ029tY/AmkNsTOso8dRLQAyWrIEdI18AJU=;
	b=GurDKIRUw7ynPtGCntSu083g/mIKm+45KNremsW/pl2FMdPy6hNu23ZWmM96U22ODSgEV0
	O5QxQbW//HaDCW83O4pQ8IWJykYZ58UPrd/UqO0MFuSW0etorSlEluAvoaMPasmt4300Mn
	QpeIrJQErk9oXemSXJrvhC3yFvxvyg4=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-619-x-cIKuPRMk-62UspQ4yxSQ-1; Mon, 04 Dec 2023 11:05:33 -0500
X-MC-Unique: x-cIKuPRMk-62UspQ4yxSQ-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3334b472196so675387f8f.1
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 08:05:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701705932; x=1702310732;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=72Qq8SUAOQ029tY/AmkNsTOso8dRLQAyWrIEdI18AJU=;
        b=TZBVuhCNoNUvH98Fd/QiEDxdU1kJCjk85xPiyqHW/7VtOJ/V3sONQ53tGfRyQjf6wz
         ww/csvtzzI+NtgUE9AcUI4Em5twjqyjxaIkSgF8CCqEXAf/fsXKUW/IFdjsX2koCSPOe
         fXfBoNRmqQN6GYIBUTbhZA05G6FXojUmQvLDSbGcOARftgx5GPRqgWCbaeDOt0f1mD40
         HKh/dTxBiPRJZhUzi5brcuGmKWJ2FS6MeQzvUIYCcXZzebqXLqxUyWNs5tuzXWAHxvRU
         47e+sDABxGP20Ngzyc5ZeWJXY+vo31Hf9TlqUK6tdekfdV+Hx2FjbUZqRxsbSOZ1CSum
         yS7g==
X-Gm-Message-State: AOJu0Yw6ABLJ/sru0ApmTPecKVQv3D3IpPfG+ahsb6mtVgZvxznToLAr
	Cy3B7O9m2lzHU55P8uOh8ITVVFc/vCYX+wF0zl9kdlHwQPUVUuC+63Am8zt8SIne0ei68k8i7qm
	AAjBP7KUDyC9xz2zK4Iux3w==
X-Received: by 2002:adf:f841:0:b0:333:38b1:2bde with SMTP id d1-20020adff841000000b0033338b12bdemr2460713wrq.100.1701705932205;
        Mon, 04 Dec 2023 08:05:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGO2c8RIk7FOWrdCK6Vi2bSTizrP/0htWBOg3sB5XZ8oHosjIGzLt0ctc0XtiZkgie4jvH15Q==
X-Received: by 2002:adf:f841:0:b0:333:38b1:2bde with SMTP id d1-20020adff841000000b0033338b12bdemr2460709wrq.100.1701705931899;
        Mon, 04 Dec 2023 08:05:31 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id b12-20020a05600010cc00b0033340aa3de2sm5284527wrx.14.2023.12.04.08.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 08:05:31 -0800 (PST)
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
In-Reply-To: <CAL_Jsq+7AwuLt9pfX0zr8g=65zSVLUFzFds82ENaspEFQNK=gg@mail.gmail.com>
References: <20231113085305.1823455-1-javierm@redhat.com>
 <CAL_JsqKHTN5hfd4qpg5RXbmQLKZNVywDkSj9mxvfGmjrcChQQg@mail.gmail.com>
 <87jzqi59bt.fsf@minerva.mail-host-address-is-not-set>
 <CAL_JsqJM9+cbNviwuKGB5+3YbyAP3UH+TxCxsU5nUtX-iRGP2w@mail.gmail.com>
 <CAMj1kXG7Xyk0ys9j-XRo7Rr8gYz1qJE8fFSixBOwVbm-pjeX+A@mail.gmail.com>
 <874jhj1fm3.fsf@minerva.mail-host-address-is-not-set>
 <58672ab8-99bf-4a2a-af79-031d1e8fcba0@suse.de>
 <87fs0mxlyp.fsf@minerva.mail-host-address-is-not-set>
 <CAL_JsqJbZ736iV+bRbSNNaimkbJLpB9MbeKLSct16Yi67ttFcw@mail.gmail.com>
 <87a5qqxq56.fsf@minerva.mail-host-address-is-not-set>
 <CAL_Jsq+7AwuLt9pfX0zr8g=65zSVLUFzFds82ENaspEFQNK=gg@mail.gmail.com>
Date: Mon, 04 Dec 2023 17:05:30 +0100
Message-ID: <87zfyqvtpx.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob Herring <robh@kernel.org> writes:

> On Mon, Dec 4, 2023 at 3:39=E2=80=AFAM Javier Martinez Canillas
> <javierm@redhat.com> wrote:
>> Rob Herring <robh@kernel.org> writes:
>> > On Fri, Dec 1, 2023 at 4:21=E2=80=AFAM Javier Martinez Canillas

[...]

>>
>> > However, there might be one other issue with that and this fix. The DT
>> > simplefb can have resources such as clocks and regulators. With
>> > fw_devlink, the driver won't probe until those dependencies are met.
>> > So if you want the framebuffer console up early, then you may want to
>> > register the EFI framebuffer first and then handoff to the DT simplefb
>> > when it probes (rather than registering the device).
>> >
>> > But I agree, probably better to take this patch now and have those
>> > quirks instead of flat out not working.
>> >
>>
>> If we do that what's the plan? Are you thinking about merging this patch
>> through your OF tree or do you want to go through drm-misc with your ack?
>
> I can take it. Do we need this in 6.7 and stable?
>

IMO this can wait for v6.8 since is not a fix for a change introduced in
the v6.7 merge window and something that only happens on a very specific
setup (DT systems booting with u-boot EFI and providing an EFI-GOP table).

Also the -rc cycle is already in -rc5, so it seems risky to push a change
at this point. And distros can pick the patch if want to have it earlier.

> Rob
>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


