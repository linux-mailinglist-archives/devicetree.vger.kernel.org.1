Return-Path: <devicetree+bounces-185633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B92EAD89B5
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 12:41:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4020F1E0483
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 10:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A6F2D4B67;
	Fri, 13 Jun 2025 10:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="rqNryHBH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2112C15B1
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 10:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749811279; cv=none; b=n5a6DhoLW3l+3nmFWr2dmZpXAQvY9l0w74oNYz/1AkLWcfklK38Qn57AxB4JM4JCmK8G+HrmQKOPrPenPB7sIvsraKU7sMS0fg72USUgShZ8cIWzCUSJLQnvg/8af4rOtPwFV4d+BwT2VGpd1EldJYsDLnSQMP9Y4iSoSKrqzIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749811279; c=relaxed/simple;
	bh=gfKzLlzdg8/hxOQ/sfQWUfeF7cK8hBoGCPK1f9nwKuY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U6w1l5HOZ1Pie2aPcN1S/J2fCtuLQfHF6OzOZUjoZvZQXNbagcp+8D4onzMdOFrkKx1yqRYEVFHj+9xSbWxee/y41z4MwLY9pG4ktXtsWTE8eadw5g6gcGW/5Mwlm2L6jhGfYbAPOrdfvAVy2vP04r/X/DnMaIfOiCtEH1BiROo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=rqNryHBH; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-553b5165cf5so129570e87.0
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 03:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1749811275; x=1750416075; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gfKzLlzdg8/hxOQ/sfQWUfeF7cK8hBoGCPK1f9nwKuY=;
        b=rqNryHBHsZhtX0K4Z86+8QeNhWrTqu149PAxzQ9Dc3NGc64v0UDezLt4/0lxB2QBe3
         BH4xIYQAYSvV/J/OSmfrzc9IUeqgPzRjin2PrMK358R05rat5KrcuLvACjd7CYfWaYDB
         R/N0LmGl8MFvqdiukoiEz5TEA4cTDQSKIJQL8X9OzbQXnh9D4zeY6+u4q3OSuRFG2uRg
         mn+7uKyyyJzZOTL6MzGJ3G46FsLobIrBUD8mToeP7Lz7IxkWagHignuqc17Y/MkN9I9I
         yF/hhXUma8jAZbW1UB0ZgZ3lqhduGzE8VsDqkUsnHETiFjjHV6Y7Dxqx+gxDNTKJuRxf
         9uaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749811275; x=1750416075;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gfKzLlzdg8/hxOQ/sfQWUfeF7cK8hBoGCPK1f9nwKuY=;
        b=tLre2obR/KEZeXHZ73kmdti2qIxzkJfX05jUeJjMaErMm03cx6QpeocQhE98iPN2nf
         LLlGk8+zpUs8lSiYdQC9ai8kf8csJU6NTw4Bxug89ola6yUJASg1/FSuFsAH/yGu/DN4
         JTsJV04rOwto1xUSA690p6+WjwRKtG43WRceatzi4vaIA88fxnIBZMW1gpMSrywk66ef
         61svu9jiHgWLfIWQYvk8nNDOM9DOCrlZeikAfPGhDIXskMbmA/mTJJREpWKzK+LGgqM8
         /TnWXpogfPPuxJbh0wXnGM96oOB+ilW3Lo8TjYvyalt6Lhdjn4gTDqBPVUp80V3sytwx
         rgww==
X-Forwarded-Encrypted: i=1; AJvYcCW23mYmI+ZIT4rCJhtVSklVklGM+f7594Y3ECvh7JITZkDnS53COGdpVL8Xn/jD9vQkNrvT9Pi8p+r6@vger.kernel.org
X-Gm-Message-State: AOJu0YzuuMlwuTWMOfmQrza2bNdVUHabBUC3k6MigGNxQ2MEIjpTlXrJ
	mX6MNLdB+KtGX2CzfAJFnppAEK+mGY5M+MdsU+j7q+VDQiR5eaTGv6a+cEG0NDPzvHW9OvOQUqp
	LIrp7s5ieNTbCNRRcM2Uwv0RYX/lJyEkTKvvG45HrpA==
X-Gm-Gg: ASbGncuOvoPTzwWP8xKjyxLMZygRRuIPcBGRVJH9ksWyKE1uGdSWmY4LOedMNz+2sP+
	k1fiI70F5fzjAZI5Wq+67xMo42S/Geuid6SeLqrZDk/Uz11HufEMiorFQjJgw375LUEhmIuFwhq
	O0CNQ8/GsovV/nvIGglG+d1zwiRdneGV1FIpi7qMvxgVprYbGugiifkKMOCylPkHUt/RsdBW6m3
	drH+Q==
X-Google-Smtp-Source: AGHT+IEI5iVUc0DEPqOvU7NFkvOz7nMKRic8C5LUBBmjPtqE1B4qvCBRzNWQvX+CVfpF9MF2KnGVP2FIuyqsGVeSles=
X-Received: by 2002:a05:6512:2250:b0:553:23f9:bb37 with SMTP id
 2adb3069b0e04-553af9a5b4cmr656368e87.40.1749811275263; Fri, 13 Jun 2025
 03:41:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250530-apr_14_for_sending-v3-0-83d5744d997c@samsung.com>
 <CGME20250529222405eucas1p18ed1254bf1b2d78468734656fec537e1@eucas1p1.samsung.com>
 <20250530-apr_14_for_sending-v3-3-83d5744d997c@samsung.com>
 <20250603-whispering-jaybird-of-thunder-f87867@kuoka> <d42a8c49-7ad2-49ef-bd9c-1e3d9981b58e@samsung.com>
 <e5a0bee2-ff74-47cf-ad2c-0c78b57ae6cf@kernel.org> <a6a29e58-8613-47f0-9e5c-d125da7ddb49@samsung.com>
 <cc4dbf7c-e023-403c-88be-4691f97a0ff0@kernel.org> <c7774790-07c3-469d-a994-9e84108ad21d@samsung.com>
 <CAMRc=Mexq9ThfG6jZUbs3wYDA9UZN-+pHnX_Y-7WO4ubXvEuCw@mail.gmail.com>
 <ad6981eb-f53a-4a7b-90bd-2e2705bd0297@samsung.com> <59cc6827-1602-402a-9279-96ad6285cff4@kernel.org>
 <e5d3d3b3-7ada-476f-9558-328d3d316088@samsung.com>
In-Reply-To: <e5d3d3b3-7ada-476f-9558-328d3d316088@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 13 Jun 2025 12:41:02 +0200
X-Gm-Features: AX0GCFuR8VJK4btiZ7nnnlSFNivWr2LgUYbi6S3FuFypHNtbVFAa-18d5mDtat4
Message-ID: <CAMRc=MeVopfshe02MmYQQ5jS9oUKif4nR97WU68-nsVgCLG36A@mail.gmail.com>
Subject: Re: [PATCH v3 3/8] drm/imagination: Use pwrseq for TH1520 GPU power management
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Matt Coster <matt.coster@imgtec.com>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2025 at 10:25=E2=80=AFAM Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> > Why? You have specific compatible for executing such quirks only for
> > given platform.
>
> This is due to how the pwrseq API works; it constructs a bus on which
> provider devices may appear at any time. With the current API, there is
> no way to express that a provider for a specific target will never
> appear. ('gpu-power' is the generic target name, and of course, more
> specific binding is handled in the provider's .match callback - based on
> the compatible and the node phandle like discussed previously).
>

This is by design and also the reason why we don't expose a
pwrseq_get_optional(). If the driver calls pwrseq_get() at all then it
expects the provider to eventually appear or will fail to initialize.

That still doesn't answer the question: why can't you have a callback
in your match data which - for this mode only - would call
pwrseq_get()/power_on()/power_off()?

> For all other supported SoCs, no such provider will ever appear on the
> bus, and the current pwrseq API doesn't allow a generic consumer to know
> this.
>
> However, your suggestion of handling this with a platform specific
> driver is a good path forward. It would still require a minimal addition
> to the pwrseq API to work. For example, a new SoC specific driver for
> "thead,th1520" could call a new function like
> pwrseq_enable_optional_target("gpu-power") during its probe. This would
> signal to the pwrseq core that this target is expected on the platform.
> Therefore, when the Imagination driver later calls pwrseq_get() on a
> TH1520, it would correctly result in either a match or a deferral.
>

I don't want to use the word optional. I think what you're thinking of
is a kind of "deferred" get where you get a valid handle, use it and
then, the provider eventually arrives it will get attached and its
state aligned with the current state of all the existing handles. I'm
not against it, it sounds quite elegant but there's an issue of error
reporting in this case. We'd need a notifier of some kind so that
consumers could subscribe and be notified about errors happening
behind the scenes.

Bart

