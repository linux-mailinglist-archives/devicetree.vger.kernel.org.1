Return-Path: <devicetree+bounces-230806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A07FC062A1
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 14:08:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2A43B4E113D
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 12:08:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924CC313E19;
	Fri, 24 Oct 2025 12:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x3B++aHZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3BD313E13
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 12:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761307693; cv=none; b=Le0guNio+p00SSXkh2oBTQLNPj7WLC4jyptktBBr+4KMhlVENlp6ceFONAs+fEPWCil9+Qo3bX7AZLIOxC33QNZcqdjINaMQjNIH685NKbaaYlC4sGAr2t8R+bVX03nxf8/2cg9wj1qYDSYVGy2mY0GDza+qtfngUHodSBtdU90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761307693; c=relaxed/simple;
	bh=COjWgkw9dDrdv/qXOqDicnzuNLFa/NRxYwpYvY/xWlc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dDWmSQidLgG2U+5EqQu73N3ZoUevuZVQ1nh4vua8xhbWjr0sycVw4oxpW86O1ktpJGVrvk4UOLo4kQ6JluZy/vJmQxamGfyU3ILA4jeiFo96z2VVcGJNSI74IFQj9uDrMffAwCuM/PPYogRC4sG78zlhxZAUb2y55sTEGn6C97w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x3B++aHZ; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-651c83b6c14so474799eaf.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 05:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761307691; x=1761912491; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=COjWgkw9dDrdv/qXOqDicnzuNLFa/NRxYwpYvY/xWlc=;
        b=x3B++aHZuzDU+UsqYFGGrFui3YK/ujxY/mx7kALgNYZmBFJwGOGkiBJD3msQH/KOsn
         6jbr+Vr6b0sB1/bsRleGBz4ngW5gO5HzBn7JbCPqPPFPBSjprqQjAKYlKkGXnbPQbumc
         hfcJeSK0x1ZgPu/a5b0i/I4wQyZepPuO7y80Tfx3ruI4AHcCid8UlfF6hiSzuJFawXen
         FMkLMO5HMCov1VwhzOR229G2uxqp8Q5LPI9OTU05Ac3tUQ79e0VQYBy0o/HaVoQQnaZP
         i9RNy1uWCJ5o+ujHBxIxX1W6mc0pbBXQ6ifKI5OKjHiscZutWzY21H9IKNGb13lx2KtA
         RxuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761307691; x=1761912491;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=COjWgkw9dDrdv/qXOqDicnzuNLFa/NRxYwpYvY/xWlc=;
        b=tSNb1kB+0gD78PWS8ii3XI8jmtqy6Pr7AWZUzFyT0lTzMwlCrse2xKOUSS49OnIxzy
         eo0D6l47o56EaQzd6Ux9WEgSZ59gDnbsZghcfH0g/3+50/mbRmMoP055tKl8GdgLTYWu
         lIYJdaC+I7WlaVZGPFLqMwjaQRL5dmXXkvbEnxdjO8iTEvsrwZkRAKU62OmWWGd2/ftI
         tfzdcK3t3Z4vCr49qa8f6fCPSQqp+Qfv+zzCYigoE39XQWpZ5grXRLvMVoQNkDLsma01
         +txpJQt++67fdHTA2RdvW2UIO1I8kB6g8o2I/KDGfx2LHX7SkHvjgsY5CuTgWUn3MWKw
         /mKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfXgMUKwTXH1KMHgDios0Pld320E98fdd4dbtOriY1ft4VnqpZ916Aiq5seo7MtUrrs199KbKHb98k@vger.kernel.org
X-Gm-Message-State: AOJu0YwkDKCWR6XEXO2ZKMvdtKl6o2O1o84H1pA3KHIQ5tzeVXY0uOUG
	+qd9pJR6wwksMwQFHWQtcN0X5gsUS3CHy3UXw4NjP/fO1N9HNr1K2nDyztrJyKcHqBx2vfLMLTF
	P2f1a/kMADq07sHIZyUkDNNfuTrwIv0cX44wdcHZYdYxMzB44ISJ45Xw=
X-Gm-Gg: ASbGncskVZrEGVn2TcuyBVrCoTO6lZ+I2HlfM+GIRt0HI3o9zSDNM2o0K06vxdscAkJ
	ps1nrU7bfcEo6SFgVy3HtPVGoekWJEJdyZksKDB8xg2XbhNVejgByUd5d8nLJFpDMfHUwE+wdMC
	0aYkMS+OG/x7+aaWSXRbGlAdnnAgDopC3XZJKJ2oUCZMaPHbbUZ400ViQTsdJLfx9e1fjwWA5XZ
	yIdoXCJO1RbanmVvo/WKK1Y07Asr6fZ3x2TrN4pXt806ly41Qk/R2f6/M7KUnDxAa/PJA0k
X-Google-Smtp-Source: AGHT+IFK3AnKwDQRprltuo5XmV2qevB0nUvb+or9PjdKZzh/743jqc+V2+ARd8+ZQ7WpzNC3YOgS1joB5oC1GEn+TyE=
X-Received: by 2002:a05:6871:6907:b0:37a:4e25:be38 with SMTP id
 586e51a60fabf-3c98d0ae92amr11006141fac.24.1761307690791; Fri, 24 Oct 2025
 05:08:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017161334.1295955-1-ivo.ivanov.ivanov1@gmail.com>
 <20251017161334.1295955-6-ivo.ivanov.ivanov1@gmail.com> <20251022-savvy-sly-auk-a60073@kuoka>
In-Reply-To: <20251022-savvy-sly-auk-a60073@kuoka>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 24 Oct 2025 13:07:59 +0100
X-Gm-Features: AS18NWDM7YGw9UM3N9Wo3yJyRSbUnDcW25LmVLX4EpOUlRGSSHFV5er9HRrrlAA
Message-ID: <CADrjBPpXStuuvbaPZ+knb8fiGQja_hdX42PKfj=bTNCdXPCN9w@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] clk: samsung: introduce exynos8890 clock driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Ivaylo & Krzysztof,

On Wed, 22 Oct 2025 at 08:56, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Fri, Oct 17, 2025 at 07:13:33PM +0300, Ivaylo Ivanov wrote:
> > Introduce a clocks management driver for exynos8890, providing clocks
> > for the peripherals of that SoC.
> >
> > As exynos8890 is the first exynos SoC to feature Hardware Auto Clock
> > Gating (HWACG), it differs from newer SoCs. Q-channel and Q-state bits
> > are separate registers, unlike the CLK_CON_GAT_* ones that feature HWACG
> > bits in the same register that controls manual gating. Hence, don't use
> > the clk-exynos-arm64 helper, but implement logic that enforces manual
> > gating.

For sure it isn't the only upstream SoC with HWACG, gs101 and e850 and
probably lots of Exynos SoCs have it. Whether it is the "first" in
terms of release date of the SoC I don't know (and I'm not sure how
anyone who isn't Samsung would know), unless there is some comment in
downstream code to that effect). Your CMU registers do look like a
different layout though.

Just fyi gs101 also has Q-Channel registers that contain HWACG Enable
bits. The reset state of all these bits on gs101 (both for QCH_CON_XXX
registers, QCH_EN bit and HWACG bit in CLK_CON_GAT_* regs is off). In
my case I suspect the bootloader doesn't initialize any of them
because of the CMUs "global enable override" bits in the CMU_OPTION
register (which is initialized by the bootloader).

>
> Please CC @Peter Griffin in future versions.
>
> How much of this can be shared between this and GS101?
> https://lore.kernel.org/all/20251013-automatic-clocks-v1-0-72851ee00300@linaro.org/
>

It seems from the commit description Ivaylo is still wanting to put
all the gates into manual mode, so is only initializing these
registers to ensure HWACG is disabled. Happy to help review it though.

Thanks,

Peter.

