Return-Path: <devicetree+bounces-248737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 099D7CD55AA
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 73C3D30115B5
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4FD0311C14;
	Mon, 22 Dec 2025 09:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LFSuGGr2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D9C311C21
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766396399; cv=none; b=ELq4sUySVBa0Fchcot6E2foIzXZLq1qxmGQjbR0uwUCnIyXunIehl0LO+IKqThtGaVV1XvP43sJMUP2NKwzdyDTHb5wDnkUsJb+fGIbcbdbxu2sMwqkgKt3aizy+PkzQStcmMbkFhoFzfIfUBETBPpqAhwPV23kGdYlqJej/eJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766396399; c=relaxed/simple;
	bh=N3xDxT4wRLdO9sVfi+qzznU4KwqN9oaA0Ye/urJkYm0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M/F43YXs2BrEYYOPGtac3qliubXCZPvHB35XGjPxZiC1K5ESWlTPcWEm4Hh4hpSypNL2yJfopUY7/ZzJwtEsstMN0Ve2TmSEmC1NNAkq5obMrOKJ9zRnV7nfjUdXxPvFDBudcvOhVt8i6G0TYi0GZdLE+0yQcG9iI4DOQ3gwFHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LFSuGGr2; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-64951939e1eso5683476a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766396395; x=1767001195; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N3xDxT4wRLdO9sVfi+qzznU4KwqN9oaA0Ye/urJkYm0=;
        b=LFSuGGr2FIZ7cQtTf0GHtxVnLbpR3FR7EZANlDpurXGgfuzdAW8S8/j4XBce0E6xOG
         uhxDACUgY5npFUVXxA2P3KGVyBdmWgzn5/kMuLwMkVuqYa4Cw8U0MRqg4VKVTKgMjttA
         cjELqliCfjg6peCPmG+1OIcCunYLCFO0SK5spY4Hwfe1eH8gUB4P21voysm+R1HmC1aU
         HPMqcOnDWEC2p/ps7jxXrfC8xzLby1Zery6Q5EvheSG176iHn7fXW6sLOQ+l1XEJNGF8
         DILq+ZLUjhqoMtiyF1B3yptOcppcrZYn94tj8olOuka51q3YSWB+tzWIUWH5aG5r077e
         7XTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766396395; x=1767001195;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N3xDxT4wRLdO9sVfi+qzznU4KwqN9oaA0Ye/urJkYm0=;
        b=k7ruDN7BRTpoSAVuDnOwb145XwZiXnz5Gxi2tYQdBlLj44ELAlxnJ0046OUtlK0zMz
         yp6DO+7kZuyiu3EZepjGtyj4yZT6wSoXDepTGwoarFXW1UFdjlKNP2052tbEYpcJfJVq
         HXoyv5fyPOwAjSrzfidUNkFGfRs3FwJ/zbUnT0qfBWv5KLpeGbY4anONt30LEBqZk9Sm
         pGWD4lSxXxRQVPponIea4cOAQQasvYzs6Be57D8YWrvWcVLbv2f2qavbahM/MTM3xqSl
         wK6c8cXlZQxbT7EH975o3SZz4tvGQ2GapKLidIKmEcXLcSjQGwTyiR2S+qPAZO6BqF7g
         8p2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWPza5MSjBpYFfs3DHAVjb0JyWQbTabMguIioQGLsqnV+T+rjvJ5dCo0tjG8PvDmGGuA3WIa3pTE+Du@vger.kernel.org
X-Gm-Message-State: AOJu0YzDX6TyhXIOfTT+SUT+T3EpQdyogKf6R8Udf7Z05zYT2vku/eIa
	FuXlacg3B28LEpHaixkx6PCH65p+6yeJBpUK8Dz3PLnza2bu8BdYdmAiO0QUqIXYiFwnxGMASvq
	jUU8i+ynSp663VJlu8UVkWb/NQP+6qlQKeN5RN8MLOQ==
X-Gm-Gg: AY/fxX4dl04Zfao9dYfH2Z4y6NsgPypvadipgaiJTdorQgO0TVnKpE0mCMvgmvyIcLZ
	WLvgqd7DH/PaKwk+x5rjZQtH95i2cylsugEqJw2U3b/2/vhRz1EDHGTlZOUiqtv0lib3Co55Fxx
	X2ONAl94MvM3M/9eRvQ2fPaGKAoNarvjZ88UIJCgOagnvJV4iXZqlyLqniIgvr8Zx2kaYL7xlUL
	lhuqiEbhIXWFJzrmmUUzL+NXRGL0ABDnxkzOS/AEeBA93tqJjTp3h0zl9SkpuP7xxDTLg==
X-Google-Smtp-Source: AGHT+IGPSwnqIzk14b53jhsi0LLKrWwl4Jdj+i+v0Qtc8GexQDbm48IQKNXUeCL0o0600WDhojcpvCkUpASsKgmBQ8c=
X-Received: by 2002:a05:6402:1ed5:b0:64b:7885:c985 with SMTP id
 4fb4d7f45d1cf-64b8e93c197mr10800970a12.3.1766396395392; Mon, 22 Dec 2025
 01:39:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251220-automatic-clocks-v6-0-36c2f276a135@linaro.org>
 <20251220-automatic-clocks-v6-1-36c2f276a135@linaro.org> <215eb434-683f-4cf2-9bcd-0860991ae23e@kernel.org>
In-Reply-To: <215eb434-683f-4cf2-9bcd-0860991ae23e@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 22 Dec 2025 09:39:44 +0000
X-Gm-Features: AQt7F2p0LonyB7NCXdfWFQondzzQDwR97Lxzguv-wlpyW3em81jQv8hflpu1MCU
Message-ID: <CADrjBPoWcONhJJdCeovkwQ9Oha+t+dpHY_ohKPV7BQS1tougGw@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: clock: google,gs101-clock: add
 samsung,sysreg property as required
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Will McVicker <willmcvicker@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Sun, 21 Dec 2025 at 13:26, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 20/12/2025 10:05, Peter Griffin wrote:
> > Each CMU (with the exception of cmu_top) has a corresponding sysreg bank
> > that contains the BUSCOMPONENT_DRCG_EN and optional MEMCLK registers.
> > The BUSCOMPONENT_DRCG_EN register enables dynamic root clock gating of
> > bus components and MEMCLK gates the sram clock.
> >
> > Now the clock driver supports automatic clock mode, to fully enable dynamic
> > root clock gating it is required to configure these registers. Update the
> > bindings documentation so that all CMUs (with the exception of
> > gs101-cmu-top) have samsung,sysreg as a required property.
> >
> > Note this is NOT an ABI break, as if the property isn't specified the
> > clock driver will fallback to the current behaviour of not initializing
> > the registers. The system still boots, but bus components won't benefit
> > from dynamic root clock gating and dynamic power will be higher (which has
> > been the case until now anyway).
> >
> > Additionally update the DT example to included the correct CMU size as
> > registers in that region are used for automatic clock mode.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> > Changes in v5:
> > - Invert the test for google,gs101-cmu-top (Andre)
> >
>
>
> <form letter>
> This is a friendly reminder during the review process.
>
> It looks like you received a tag and forgot to add it.
>
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions
> of patchset, under or above your Signed-off-by tag, unless patch changed
> significantly (e.g. new properties added to the DT bindings). Tag is
> "received", when provided in a message replied to you on the mailing
> list. Tools like b4 can help here. However, there's no need to repost
> patches *only* to add the tags. The upstream maintainer will do that for
> tags received on the version they apply.
>
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
>
> If a tag was not added on purpose, please state why and what changed.
> </form letter>

Apologies, your tag should have been added.... got kind of sidetracked
bisecting the linux-next regression with the serial console and then
forgot to apply it.

Peter.

