Return-Path: <devicetree+bounces-22909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3F58096AA
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 00:40:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E61E1C20AD4
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 23:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FA125731A;
	Thu,  7 Dec 2023 23:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ABsxg7sn"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40B481718
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 15:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701992402;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xg11osurhuZW+ExEnJSQ2VKUNQ2I4+/joQa17Mg9pp4=;
	b=ABsxg7snlChiiiWgKuZu0hsMJJhgWsPeCOowPS/UsFYqunxkWQcmjHHpxy6k2YPI0HTBdv
	Z8+N8GVrq+1CozpTaEW2XgeCLIMPkoctwJ34Adm6FG2luPXaEOSd8hUUjvq2k4ll37mXbY
	lMbhTgrPuMmayHFyhLsW70BIxSqUMLk=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-xAFCM0ssPGabHe4Bj602PQ-1; Thu, 07 Dec 2023 18:40:00 -0500
X-MC-Unique: xAFCM0ssPGabHe4Bj602PQ-1
Received: by mail-ed1-f72.google.com with SMTP id 4fb4d7f45d1cf-54c77e011baso777432a12.2
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 15:40:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701992399; x=1702597199;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xg11osurhuZW+ExEnJSQ2VKUNQ2I4+/joQa17Mg9pp4=;
        b=YlsfTx+TNCIjr//KpVMfQcN5B1vL7KLQlngOjQKjQs5hi8u6NPlW1NCtp9S8bX3Vmm
         zqchfHDx6sO+Uqy0RowWMLfGHwC1LYvhZjqZC1HFW+VJajbSiCG39hyMVYDhdKFWWd4q
         sOfm1XzuSFQKSeZ9Z/oMZ61Y7BVIxzglQNtgtKP7Uzal1hnlwXA56f5yvAf21YIuuu4u
         0O8wl7vOY8272nXm23PPt4WN9zUQtmia4JnGTF5jVNwIQjw9uRvfvY0dhC+TzH9V2dOP
         sy1H49YLXLUeATElwh6g5YFgkzYkvrK2fiGcPVUOPlNUnDay5D8ZxIjO7eGlshqJg7/Y
         rBxQ==
X-Gm-Message-State: AOJu0YyzOORhsMm2GCVYFcMpKCjWsIRB2wWRWumgL4nMvNmEDS44pA0N
	Vb3r6g3+AeIuJvl/3kqy1x/j1m4QQnDw2LuqiOtq5p5kIdesv0Se3taxR+DuxHFAzoNsGcY1MRq
	9RNbgEDksjuvjX9udtf5UYw==
X-Received: by 2002:a50:8d0f:0:b0:54c:7833:c111 with SMTP id s15-20020a508d0f000000b0054c7833c111mr2654163eds.36.1701992399579;
        Thu, 07 Dec 2023 15:39:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHONLQX5QD7kpaVJvn8DPKveQlpsowHFBYDxpIMAEK33ea6TyJJupLCP9XwWuJZegmCPjXkaQ==
X-Received: by 2002:a50:8d0f:0:b0:54c:7833:c111 with SMTP id s15-20020a508d0f000000b0054c7833c111mr2654157eds.36.1701992399265;
        Thu, 07 Dec 2023 15:39:59 -0800 (PST)
Received: from localhost ([84.236.194.198])
        by smtp.gmail.com with ESMTPSA id dn20-20020a05640222f400b0054cc22af09esm299697edb.46.2023.12.07.15.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 15:39:58 -0800 (PST)
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
In-Reply-To: <20231207173037.GA2944721-robh@kernel.org>
References: <87jzqi59bt.fsf@minerva.mail-host-address-is-not-set>
 <CAL_JsqJM9+cbNviwuKGB5+3YbyAP3UH+TxCxsU5nUtX-iRGP2w@mail.gmail.com>
 <CAMj1kXG7Xyk0ys9j-XRo7Rr8gYz1qJE8fFSixBOwVbm-pjeX+A@mail.gmail.com>
 <874jhj1fm3.fsf@minerva.mail-host-address-is-not-set>
 <58672ab8-99bf-4a2a-af79-031d1e8fcba0@suse.de>
 <87fs0mxlyp.fsf@minerva.mail-host-address-is-not-set>
 <CAL_JsqJbZ736iV+bRbSNNaimkbJLpB9MbeKLSct16Yi67ttFcw@mail.gmail.com>
 <87a5qqxq56.fsf@minerva.mail-host-address-is-not-set>
 <CAL_Jsq+7AwuLt9pfX0zr8g=65zSVLUFzFds82ENaspEFQNK=gg@mail.gmail.com>
 <87zfyqvtpx.fsf@minerva.mail-host-address-is-not-set>
 <20231207173037.GA2944721-robh@kernel.org>
Date: Fri, 08 Dec 2023 00:39:57 +0100
Message-ID: <87cyvhh99u.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob Herring <robh@kernel.org> writes:

> On Mon, Dec 04, 2023 at 05:05:30PM +0100, Javier Martinez Canillas wrote:
>> Rob Herring <robh@kernel.org> writes:
>>=20
>> > On Mon, Dec 4, 2023 at 3:39=E2=80=AFAM Javier Martinez Canillas
>> > <javierm@redhat.com> wrote:
>> >> Rob Herring <robh@kernel.org> writes:
>> >> > On Fri, Dec 1, 2023 at 4:21=E2=80=AFAM Javier Martinez Canillas
>>=20
>> [...]
>>=20
>> >>
>> >> > However, there might be one other issue with that and this fix. The=
 DT
>> >> > simplefb can have resources such as clocks and regulators. With
>> >> > fw_devlink, the driver won't probe until those dependencies are met.
>> >> > So if you want the framebuffer console up early, then you may want =
to
>> >> > register the EFI framebuffer first and then handoff to the DT simpl=
efb
>> >> > when it probes (rather than registering the device).
>> >> >
>> >> > But I agree, probably better to take this patch now and have those
>> >> > quirks instead of flat out not working.
>> >> >
>> >>
>> >> If we do that what's the plan? Are you thinking about merging this pa=
tch
>> >> through your OF tree or do you want to go through drm-misc with your =
ack?
>> >
>> > I can take it. Do we need this in 6.7 and stable?
>> >
>>=20
>> IMO this can wait for v6.8 since is not a fix for a change introduced in
>> the v6.7 merge window and something that only happens on a very specific
>> setup (DT systems booting with u-boot EFI and providing an EFI-GOP table=
).
>>=20
>> Also the -rc cycle is already in -rc5, so it seems risky to push a change
>> at this point. And distros can pick the patch if want to have it earlier.
>
> Okay, I've applied it for 6.8.
>

Great, thanks a lot.

> Rob
>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


