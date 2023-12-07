Return-Path: <devicetree+bounces-22833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EFE808EAB
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 18:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 705931F210A3
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 17:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7189449F89;
	Thu,  7 Dec 2023 17:30:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A9F210CA;
	Thu,  7 Dec 2023 09:30:40 -0800 (PST)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-58d12b53293so517835eaf.0;
        Thu, 07 Dec 2023 09:30:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701970239; x=1702575039;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aqj0z6kEygULbYJbl9fDvMATmV0n6DPZZ0Ol7473clQ=;
        b=Ie5KPFuFjNI8LNiDdCiUbWAFSd2o1hOXcif1JKQTnMuY1iUrf9Blu7xLWZbOgMp/Su
         xzFr90mpeCXCyADJMqI8H2+7tKfEViPZ8PlSZElYepQsf62aLAJIVYSRls90PBc4AJhZ
         DSm1fLrhG7VQjxO9vYF9eiu2rKho7XEk6y4p4J3SUWwIGOWKQNGD2qk7r9AbTHpbYiOg
         17irKggpuMwn3YLqs/VVnilZNQcxccDnHwhxlDM87h1IF9BrNo0ZYR5snejn2SAgRV1X
         medlzFHj3R8H7asvuHs8l5TmaOpklms5lkL+WRH8sUQ0+xqf7OXHbwId4gf3Bkosn6+G
         YKWw==
X-Gm-Message-State: AOJu0YwTKaxma+/Tj7UCgdn33v2ZVTAz+bZv43nNjkxGOFassR3KFEL2
	yE5ZZe5xGGG94o4IBnFZUA==
X-Google-Smtp-Source: AGHT+IF3F8YBAWZBvd1RIa5py5Lvvl2NkA72wnpM8EkmUcXD/AJYQyxVqC4by4fUaPk/uragnrGJtQ==
X-Received: by 2002:a05:6820:1c90:b0:58d:9ff4:7646 with SMTP id ct16-20020a0568201c9000b0058d9ff47646mr3042277oob.4.1701970239382;
        Thu, 07 Dec 2023 09:30:39 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w21-20020a4a3555000000b00587947707aasm10168oog.4.2023.12.07.09.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 09:30:38 -0800 (PST)
Received: (nullmailer pid 2946014 invoked by uid 1000);
	Thu, 07 Dec 2023 17:30:37 -0000
Date: Thu, 7 Dec 2023 11:30:37 -0600
From: Rob Herring <robh@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Ard Biesheuvel <ardb@kernel.org>, devicetree@vger.kernel.org, Sergio Lopez <slp@redhat.com>, Sima Vetter <daniel.vetter@ffwll.ch>, Hector Martin <marcan@marcan.st>, Andrew Worsley <amworsley@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>
Subject: Re: [RFC PATCH] of/platform: Disable sysfb if a simple-framebuffer
 node is found
Message-ID: <20231207173037.GA2944721-robh@kernel.org>
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
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87zfyqvtpx.fsf@minerva.mail-host-address-is-not-set>

On Mon, Dec 04, 2023 at 05:05:30PM +0100, Javier Martinez Canillas wrote:
> Rob Herring <robh@kernel.org> writes:
> 
> > On Mon, Dec 4, 2023 at 3:39 AM Javier Martinez Canillas
> > <javierm@redhat.com> wrote:
> >> Rob Herring <robh@kernel.org> writes:
> >> > On Fri, Dec 1, 2023 at 4:21 AM Javier Martinez Canillas
> 
> [...]
> 
> >>
> >> > However, there might be one other issue with that and this fix. The DT
> >> > simplefb can have resources such as clocks and regulators. With
> >> > fw_devlink, the driver won't probe until those dependencies are met.
> >> > So if you want the framebuffer console up early, then you may want to
> >> > register the EFI framebuffer first and then handoff to the DT simplefb
> >> > when it probes (rather than registering the device).
> >> >
> >> > But I agree, probably better to take this patch now and have those
> >> > quirks instead of flat out not working.
> >> >
> >>
> >> If we do that what's the plan? Are you thinking about merging this patch
> >> through your OF tree or do you want to go through drm-misc with your ack?
> >
> > I can take it. Do we need this in 6.7 and stable?
> >
> 
> IMO this can wait for v6.8 since is not a fix for a change introduced in
> the v6.7 merge window and something that only happens on a very specific
> setup (DT systems booting with u-boot EFI and providing an EFI-GOP table).
> 
> Also the -rc cycle is already in -rc5, so it seems risky to push a change
> at this point. And distros can pick the patch if want to have it earlier.

Okay, I've applied it for 6.8.

Rob

