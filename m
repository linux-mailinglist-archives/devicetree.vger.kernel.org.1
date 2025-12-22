Return-Path: <devicetree+bounces-248764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 06235CD5894
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EACEC3032FDA
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:21:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79DC9337B9A;
	Mon, 22 Dec 2025 10:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZlW+lxbk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5324E30B50D
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398861; cv=none; b=fxEIV0mteVhao7ed6fxeQnSmgzvnwRUtbhT5PtQWXMZoxqcfbh7CTB7hTta2iEUhP6nkVwH6LTQFKtsZwFIXiBl4IeqJTo7+e4s+bTCgrD8TKvoC4M6ADbDPPH/nLZARgn5Bei9jN7KiN00XLSO1Rdlltt03T576VnlBNu2/oUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398861; c=relaxed/simple;
	bh=IGX6q1EwizBQuQDLpaywg7mzFMLwjK5EiQRcSXh1QdI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lQp5iqzb7oJhulNutTakwQ80tsYuTnP2kAUDFbytv40/p7C7usNlDaD2G4kMgvp+oxcJrE/YIgcJgFX7dLJxhO1N1866pKXo+J6g0b8cczfEcBcyozQcJgPbIg9Q80EZqk51WsyOQElziiUhu04cAGLojiW+q/iGjv/nPrm70l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZlW+lxbk; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-64b4f730a02so6015812a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766398857; x=1767003657; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IGX6q1EwizBQuQDLpaywg7mzFMLwjK5EiQRcSXh1QdI=;
        b=ZlW+lxbkZJmLBU5QhW+NN5Bii7GuAYKJPGGLTYJOzeafotfrNPrd+ui4Rq90VcrVIB
         /BeKYPGOm9BOtoJyi19L1ZzazcVejpUP6JvUl7I/Buf0PNx6yKmCrBZZHCNpIoVZFpQz
         B0UgAQDPmQO+FAlizpdVVQn+CTaF5oPh3BNKzAfcpaYwuQVg9Dahwm4Wrx7tMGyfEfEY
         UvT0OdMGiqwPjITGRla3Jwzyovy87mWzR1kYs5BmXyNbaW/PjR2dGLwBgDTMIXWuyT0D
         AgPx0efbB2H1TGoCRCBQXbCJOB4baxk8enI8ClSibuVvDV9EVzeijoj9Zp0vL032p2YH
         wnDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398857; x=1767003657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IGX6q1EwizBQuQDLpaywg7mzFMLwjK5EiQRcSXh1QdI=;
        b=n9Ed9ZC1xyT0HDQkMEmrE1SfXGHql6KPwEf7b664c4Bg4EZol6/gyRoYWMBEzGxcQq
         YXoFApXuyvtrbaEhYw4LwWqOfddMXFiknvRZ0LqEFx4zAdm5Vz68tnPF0H9EoF91ZtgR
         ZXMJuXNCnjCYf2cYk+e/VzFefIZJ6/qn2MET2UL/Vr1hF0U9+TslZRfARL4SNuYi/jhU
         QFRJNIhE4pTJnO+QhsaXetoFFtN5lpNIgV3q8lqkiEArG/YT3YTfndbnuOFvzWlzlG9Y
         Z3Rcj1EZPhg+9WSQm0/i97nZV9x5/VEoIuEGPXAeSOgYYB8NkhahtKCr1LyWYoR2DE1b
         ItXA==
X-Forwarded-Encrypted: i=1; AJvYcCWpmV6WqjFYkbq61YhErQsm6h1VCW67RbK9yAjqpS8O7xSCNuVMYemagoMh0ljXcDkPfEPhp6ptXVMh@vger.kernel.org
X-Gm-Message-State: AOJu0YxngqpQBLazBypEsoaXplY0d58FtL1nCfIbseVtyoxHiCtV2j7r
	ZE0q5IIHSt2vnYfyg/I38zUMw8qarmcaITB5gcFjtK7q75012KP4p5Vtfbe8h50LW+X0tlGs8BA
	Yp/tCggqY24LdmqJGdEeH3lIvEkH/wb61yuUdyGIZxA==
X-Gm-Gg: AY/fxX7DQZArrrR90f8UgeeHTXtJFO9xUxsyX2YSutk4gPqBA7Ayw+LAiPYwO+Th/t2
	ms7IHVWydwLluSyyQz8G7QDNn46DZdDBEx6k+p6Np1fAWnmodSNoKE2nXD/lfpghS7zau9KzkYj
	1kk636EzCZ1aRJVIyF3ooM+Tg7zGFaYBqmyO7o0c73ZqhzSMfMki67dXKzNRCH1tU3g0rLuG+Kj
	j7gpgeIL7ZUNU2kmDXb43EdwdVjMzQynemfLE00l9c/RZePnAoSA/GhVDUgiobEkTIDug==
X-Google-Smtp-Source: AGHT+IEqXEGu9cvltqcnQjyMesMjaoRtKgOECBN5qmN3T1OJaLoUGgTcyks/ZkPJRdcjfHofOWpRzwLbozye182dWTE=
X-Received: by 2002:a05:6402:3591:b0:64c:69e6:ad64 with SMTP id
 4fb4d7f45d1cf-64c69e6b268mr7653426a12.24.1766398856513; Mon, 22 Dec 2025
 02:20:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251220-automatic-clocks-v6-0-36c2f276a135@linaro.org>
 <20251220-automatic-clocks-v6-1-36c2f276a135@linaro.org> <215eb434-683f-4cf2-9bcd-0860991ae23e@kernel.org>
 <CADrjBPoWcONhJJdCeovkwQ9Oha+t+dpHY_ohKPV7BQS1tougGw@mail.gmail.com> <d7a749e2-1d00-459f-adbb-0841190b7849@kernel.org>
In-Reply-To: <d7a749e2-1d00-459f-adbb-0841190b7849@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 22 Dec 2025 10:20:44 +0000
X-Gm-Features: AQt7F2okhEmetfhP-OZXD27I-iFbBBEDggeAe_X29tbibS3bKuDBCabzrOTR_5o
Message-ID: <CADrjBPpv9OB5zjsE=+dUyZCz2xSs6XXWkpbK2qbFAdUyTaXXhQ@mail.gmail.com>
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

On Mon, 22 Dec 2025 at 09:53, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 22/12/2025 10:39, Peter Griffin wrote:
> > Hi Krzysztof,
> >
> > On Sun, 21 Dec 2025 at 13:26, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On 20/12/2025 10:05, Peter Griffin wrote:
> >>> Each CMU (with the exception of cmu_top) has a corresponding sysreg bank
> >>> that contains the BUSCOMPONENT_DRCG_EN and optional MEMCLK registers.
> >>> The BUSCOMPONENT_DRCG_EN register enables dynamic root clock gating of
> >>> bus components and MEMCLK gates the sram clock.
> >>>
> >>> Now the clock driver supports automatic clock mode, to fully enable dynamic
> >>> root clock gating it is required to configure these registers. Update the
> >>> bindings documentation so that all CMUs (with the exception of
> >>> gs101-cmu-top) have samsung,sysreg as a required property.
> >>>
> >>> Note this is NOT an ABI break, as if the property isn't specified the
> >>> clock driver will fallback to the current behaviour of not initializing
> >>> the registers. The system still boots, but bus components won't benefit
> >>> from dynamic root clock gating and dynamic power will be higher (which has
> >>> been the case until now anyway).
> >>>
> >>> Additionally update the DT example to included the correct CMU size as
> >>> registers in that region are used for automatic clock mode.
> >>>
> >>> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> >>> ---
> >>> Changes in v5:
> >>> - Invert the test for google,gs101-cmu-top (Andre)
> >>>
> >>
> >>
> >> <form letter>
> >> This is a friendly reminder during the review process.
> >>
> >> It looks like you received a tag and forgot to add it.
> >>
> >> If you do not know the process, here is a short explanation:
> >> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions
> >> of patchset, under or above your Signed-off-by tag, unless patch changed
> >> significantly (e.g. new properties added to the DT bindings). Tag is
> >> "received", when provided in a message replied to you on the mailing
> >> list. Tools like b4 can help here. However, there's no need to repost
> >> patches *only* to add the tags. The upstream maintainer will do that for
> >> tags received on the version they apply.
> >>
> >> Please read:
> >> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> >>
> >> If a tag was not added on purpose, please state why and what changed.
> >> </form letter>
> >
> > Apologies, your tag should have been added.... got kind of sidetracked
> > bisecting the linux-next regression with the serial console and then
> > forgot to apply it.
>
> I think it was more than one tag, so I decided not to look for them.
> Please send v7 with all tags collected.

Sure, will resend shortly.

Peter

