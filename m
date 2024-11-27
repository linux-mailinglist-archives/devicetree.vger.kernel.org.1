Return-Path: <devicetree+bounces-125062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C179DAA08
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:44:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 885A8166305
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DBCF1FF7B0;
	Wed, 27 Nov 2024 14:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Jpd+arMY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5761FF7A7
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 14:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732718641; cv=none; b=TfUpVlXgq5MU9lzHqAS/YQUcBh9Y86RMLXZknMFTI7YAK1kpG0S+SImerRdci/hLASL3uP+K+Mvb3Lj520gpzOuZQNVIBltobvILNaUBT3mS+kWsVKlLxLbc8Ie8D5VAUSg+K4KBvtmUoqCbtyjdqz2hOQpabSCLgvC2tQZp0mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732718641; c=relaxed/simple;
	bh=BKyo3SJUCENow7hT34xLm3QSUwMBEZLnMnf1c6fFVlE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=irQmUPLp1Ko1VDtunkWNK1y3VDPlTbYM6b2orHgacHBiLIeJr2VMHe14RjtXVVsTri3Tg74uYTar+6uYPgd5qrl31z5UMQaZ/XJVOhauBKAXrtJo/ODVb0MVk7aGL45m5+EckJ28wX0CkI+eblYWDfEFtcVANoV+myuVzTyXrLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=Jpd+arMY; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ffa8092e34so66655441fa.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 06:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1732718638; x=1733323438; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9YVIFse3ZChPt5rxLEsxZQnkg/jV/uGoXgcbdEaGy7I=;
        b=Jpd+arMYwsjdH3sCAJUdTTqlG829VAi/SjdCVQdEh5+XbjHO1ex1HT0Q4zFJqxo2pX
         tTqEY8hFvvNpZzT1wDFXgQxg2FfERbi1hNzpHAL0ZCaB7HTwcvzEnhhi9rsMj2rbKBWP
         XI2ccb5dEBe5hiRsNRxCvpdxrqGlJsuRvIiTWDxmmnxpR93P3k4BQcKnroDDqcAdFXMW
         m75WAf2br4SdQKQ+a3mJbmUgipQ+XwIMBPB0l8lERGO+VQwwKlZVjnbkim3jUk7uTxRo
         4wGtw4Li2wNoDt/24O2Ti3RJBdwRmAFoM902qpa55Zu4R/8t4Qt2G1qcg/gWCVJRyrIj
         zIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732718638; x=1733323438;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9YVIFse3ZChPt5rxLEsxZQnkg/jV/uGoXgcbdEaGy7I=;
        b=BT2GpUYtMY7OxdVa7c2XqZRTjCwa9wQnVDaljkF6yNU5rZMGXl2qelPDOQ4kW0+eNX
         fcb0ZmsZLgo9pMkCgMg21NrJNvA8/MOxMt4p3fIv4SubIo7qQ4ejL6gnPeEs/MWCwm9j
         UPAJAN+E4ZCJa9QVie3b2rdvlIScu5ZN3Iotbl7x2lzft11xiHWZld9LW21AGNR8gtbA
         W10ns+xwxYV9l4vGkawAbDgfvOAK79mneHi1rKsk/xu1qFOuSYRT4Hcb6QdeRhKlf/4i
         UFCZaLlBObgRyQaNJwmlCcwE8s0rQVPNzzith1S7O+prMeFK6nfWYTQwqPDuU3hjh+85
         7jfA==
X-Forwarded-Encrypted: i=1; AJvYcCUsMOu0wwwe6JL3WQeOoIkQCbNPzZeYslRB/kPcM+Iw7aSpAGoFd4tjjjPcFFkcc0RZmfCs9q8eecxd@vger.kernel.org
X-Gm-Message-State: AOJu0YwQAtBSAi8eL0Npwr0mMFJvAZBpUdsNVbFyHTUMbHgC6Y54pDOj
	LPzUGCzw4Tmx14kyUbjUmn4i7XGYhtF+eMgMzbQAIm2+o/pN1rP2OHSVu5eVXGVLTmWMkyT3K99
	FUgNLIuTIY5sBfAND1CMCopCOJk46nx3VwT/mIg==
X-Gm-Gg: ASbGncunBr7eu8aXpxlo36IjJImX+QSFSO2tFWAB0Jn5tnIl/qy1O+nBsSFOfhjEMZp
	sDmTgLhUjTBEKYljkmXSjahT8cb2kh1k=
X-Google-Smtp-Source: AGHT+IGRc+pnEqrVmcTeiSgm588KNdJoqDkUIBr6k6jJMRMMQfn38OBTZLWXgC+yJZqrBBmbWXdkKEpuJmNNp8+huYY=
X-Received: by 2002:a2e:b8c9:0:b0:2ff:8a1b:547f with SMTP id
 38308e7fff4ca-2ffd60201f0mr16551901fa.14.1732718637613; Wed, 27 Nov 2024
 06:43:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241023-drm-vc4-2712-support-v1-0-1cc2d5594907@raspberrypi.com>
 <CAPY8ntBM=34pTiQ=t-CjtYEE5Ax6D=EtiY-sLT1keUkUMXuLeA@mail.gmail.com>
 <20241122-orthodox-mantis-of-reading-2dcdcf@houat> <13cfb66b-f904-4720-8829-a6d9db85aaa5@broadcom.com>
In-Reply-To: <13cfb66b-f904-4720-8829-a6d9db85aaa5@broadcom.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 27 Nov 2024 14:43:38 +0000
Message-ID: <CAPY8ntD7tf6+PXKdWe8_KjCiPoemR0RQDiaHHndtjutOLGbR1w@mail.gmail.com>
Subject: Re: [PATCH 00/37] drm/vc4: Add support for BCM2712 / Pi5 display hardware
To: Florian Fainelli <florian.fainelli@broadcom.com>, Stephen Boyd <sboyd@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Michael Turquette <mturquette@baylibre.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Stefan Wahren <wahrenst@gmx.net>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, Dom Cobley <popcornmix@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, 24 Nov 2024 at 17:00, Florian Fainelli
<florian.fainelli@broadcom.com> wrote:
>
>
>
> On 11/22/2024 12:06 AM, Maxime Ripard wrote:
> > On Thu, Nov 21, 2024 at 03:37:00PM +0000, Dave Stevenson wrote:
> >> On Wed, 23 Oct 2024 at 17:50, Dave Stevenson
> >> <dave.stevenson@raspberrypi.com> wrote:
> >>>
> >>> This series adds the required DRM, clock, and DT changes
> >>> required to support the display hardware on Pi5.
> >>> There are a couple of minor fixes first before the main patches.
> >>>
> >>> Many of the patches were authored by Maxime whilst working
> >>> for us, however there have been a number of fixes squashed
> >>> into his original patches as issues have been found. I also
> >>> reworked the way UBM allocations are done to avoid double
> >>> buffering of the handles as they are quite a limited resource.
> >>>
> >>> There are 2 variants of the IP. Most Pi5's released to date
> >>> have used the C1 step of the SoC, whilst the 2GB Pi5 released
> >>> in August is using the D0 step, as will other boards in future.
> >>>
> >>> Due to various reasons the register map got reworked between
> >>> the steps, so there is extra code to handle the differences.
> >>> Which step is in use is read out of the hardware, so they
> >>> share a compatible string.
> >>
> >> A gentle ping on the patches for clk-raspberrypi (patches 29-33) and
> >> Broadcom DT (patches 34-36).
> >>
> >> All the DRM and dtbinding ones are reviewed or acked (thank you!).
> >
> > If the bindings and DRM patches are all merged, you can merge these at
> > least.
>
> I will be taking in the DTS patche shortly. Thanks!

Thank you Florian and Stephen.

I messed up and pinged the v1 cover note :( V2 is
https://lore.kernel.org/linux-arm-kernel/20241025-drm-vc4-2712-support-v2-0-35efa83c8fc0@raspberrypi.com/
Thank you Florian for grabbing the correct version anyway, although
there weren't any changes to the DT side anyway.

V2 includes fixing Maxime's comment on "[PATCH 31/37] clk: bcm: rpi:
Allow cpufreq driver to also adjust gpu clocks" that Stephen also
commented on.

Stephen: Sorry, maintaining newbie, particularly for clocks. I see in
linux-clk patchwork they are marked as "Awaiting Upstream". What, if
anything, do I need to do on those?

I've pushed the v2 DRM patches with dtbindings, so the clock changes
are the only ones left.

Thanks again.
  Dave

> --
> Florian
>

