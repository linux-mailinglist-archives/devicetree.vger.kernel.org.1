Return-Path: <devicetree+bounces-228982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B9CBF2CD7
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 19:51:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED7ED18C10B8
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 17:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A393B330D2E;
	Mon, 20 Oct 2025 17:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QHnKcaCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB853176E7
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 17:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760982666; cv=none; b=UAl/SpVewRkfDTMdHfTfbnql2TnzZY85bJjsfwR+QIqoJTn4pxIfBFsfFkP1OrNbdI3WFWR+7HccrNRvkUbOGiNY1awB6xxmPlks1eVdHaCNqyRR+WoCTwrPuRFpBvmZFLCPXhgoF73QYezpRK21plTUzNtAztbHgxGSIeEWfxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760982666; c=relaxed/simple;
	bh=KnROEUass2/iW7GccrgtsymOuPjezhPd1bODirEEn90=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FqjlVpiy3GUNfK3zH8/s4bT3n07XmvVDQNnIAD0l/06JS9J7Fwzmo6qjBAxCKEYH+26qge0E5ZlxxunXRwxgQKhgPrR1AsVoy1S887rQA8NiMzcqoPY8StvA1KOLZkV80NKP0pEKBBR2MRy7E6szD3UB2VZx2AnrROl1knfaibw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QHnKcaCj; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4711f156326so33658365e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760982663; x=1761587463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qTAyakvLktp/e+AMviKRZMNRnJVDyQcT2DmQsBGK+VQ=;
        b=QHnKcaCjU0WebKUcgcp4j7RfJC5Q2hKxoZT175iVG+DfcNz/54MEdToww4BnqFEl7Y
         yO4CNntkhsesJavFFqv88klF/b/CkJwiyP0Niw9w9SrcLkE2P3EknphU0e8+0kNsxeHS
         EtP7XsqGmbh5yxNqo9ZPIbvyATw03pwhp1WIP1Yxf/xVAk1cI3uL7D9XVF6mTM4CvPgZ
         DXLQyzjwanDG3XpxfavNK921mxAFIwSCNavEa/tBv/uMSSTtcSEyuoDga+SzluC5GAXo
         YMpHVxPvZ8daki6wx/F6Ll39sJFR+HApA0NLGMQOW/swdTCaZaldiYDse5P+5YPbrqfE
         Refw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760982663; x=1761587463;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qTAyakvLktp/e+AMviKRZMNRnJVDyQcT2DmQsBGK+VQ=;
        b=ElJHR4Z7DgIsBtJLqCNcXSMsBQ9VewcsX889YSrcpWhgSPK67ABd2iq3V+59q4M6Yc
         G7iVgSS0PkZrF98oM3uBR52SWUxAQA9dRjJB01t8CIRL//q/5FcPnjGKSocxGiRtlPNS
         o062g6MgyVEWhmtOFuMGX2rEA5wQMm4BG1xr61qJwsdkf8XfKYWnrfuS6RCeXqdJ2Ntd
         QUVJ30zzCHvusDv4Cj7u9DeWVXPGL4G2ny1YSQHp3v69rTkKA/yXXskHGM84N5AZh/KU
         uGA1nghwUhH/+ndhevH2G/84i3BwKgPoFRiRB0AIsFspH0hzTym7lgwhcr0A0y5ilW8Q
         YY/A==
X-Forwarded-Encrypted: i=1; AJvYcCUiKxdUIbYF6OP7H12zq1JknXyGZnVahw5HuEa1KWg/u6Up0GUyG/Pi2mQBTjLtq1f/qxuC56gI8J9E@vger.kernel.org
X-Gm-Message-State: AOJu0Ywobx/qPua27O491gbuv61075kDXZDY8KVDEQv0QAK8+sUIhLKE
	EUgRnsr5kaRXJcCMZzpK/ZOBfLo9c9mmDT097nxQmpb8+0muE2JV+VRE/MGelA==
X-Gm-Gg: ASbGncvQym5p8FajwISjZjLpmADMv0saUCU6CStsA4wskujxrTfOZJaGpAhYzIIi8Y9
	EK226/7LpvkdiTLDslS5p6Rk1mcfWuLOfotx5SA+SId3GfH4uQFgL+3cqz6FPXXU6TyvIfkIgDK
	uUB3PWmEjiUq5xRRA1e7iAz8ar1Nr5iMYfSUEAO4Y35pkk+fFQ/sVF6MhHSWe6hCWyEaFGY/0W0
	hgHbbdNfwB/RTeLWZ4fOBVZAACSDA9IlA34SWqa2IaC52dzXZay+KLFv3/GKPYmgI19CqhBnnVw
	R72NwyK266iaKLXw00tUAsvSMMHwFQaCMTgesdUbFpS6kCVYzZICug2WdcTi+TlUmIv+meqrrwr
	8ZcjKxrsw0RK/gTMcB4rBi5y5tmwDHvQO0R6T1+GoM62ZhTUABlo6XigbL4NGwDL1+/XWn1/wCU
	hXJHIK84XcvwOp385Wv5vZn4NnucvU2NyX3WO8B5hbse9xZMe8aNvOQIQqDlRBntJt78CBsvQTx
	BVhjqQ=
X-Google-Smtp-Source: AGHT+IEf+pLydZZJlPsNS9klI6Ppz7HfqYBrVGwlK2LGcq8ett6vc+FT1k0DRHTRyZXn1XwlZQ3W5w==
X-Received: by 2002:a05:600c:444d:b0:46e:4cd3:7d54 with SMTP id 5b1f17b1804b1-471178b124amr91678925e9.18.1760982662640;
        Mon, 20 Oct 2025 10:51:02 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4715257d8b2sm187794005e9.3.2025.10.20.10.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 10:51:02 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: linux-sunxi@lists.linux.dev, linux-sound@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 05/11] clk: sunxi-ng: sun55i-a523-r-ccu: Mark bus-r-dma as
 critical
Date: Mon, 20 Oct 2025 19:51:00 +0200
Message-ID: <3374980.aeNJFYEL58@jernej-laptop>
In-Reply-To: <20251020171059.2786070-6-wens@kernel.org>
References:
 <20251020171059.2786070-1-wens@kernel.org>
 <20251020171059.2786070-6-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 20. oktober 2025 ob 19:10:51 Srednjeevropski poletni =C4=8D=
as je Chen-Yu Tsai napisal(a):
> The "bus-r-dma" clock in the A523's PRCM clock controller is also
> referred to as "DMA_CLKEN_SW" or "DMA ADB400 gating". It is unclear how
> this ties into the DMA controller MBUS clock gate; however if the clock
> is not enabled, the DMA controller in the MCU block will fail to access
> DRAM, even failing to retrieve the DMA descriptors.
>=20
> Mark this clock as critical. This sort of mirrors what is done for the
> main DMA controller's MBUS clock, which has a separate toggle that is
> currently left out of the main clock controller driver.
>=20
> Fixes: 8cea339cfb81 ("clk: sunxi-ng: add support for the A523/T527 PRCM C=
CU")
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  drivers/clk/sunxi-ng/ccu-sun55i-a523-r.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/clk/sunxi-ng/ccu-sun55i-a523-r.c b/drivers/clk/sunxi=
=2Dng/ccu-sun55i-a523-r.c
> index 70ce0ca0cb7d..fdcdcccd0939 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun55i-a523-r.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun55i-a523-r.c
> @@ -121,7 +121,7 @@ static SUNXI_CCU_GATE_HW(bus_r_ir_rx_clk, "bus-r-ir-r=
x",
>  			 &r_apb0_clk.common.hw, 0x1cc, BIT(0), 0);
> =20
>  static SUNXI_CCU_GATE_HW(bus_r_dma_clk, "bus-r-dma",
> -			 &r_apb0_clk.common.hw, 0x1dc, BIT(0), 0);
> +			 &r_apb0_clk.common.hw, 0x1dc, BIT(0), CLK_IS_CRITICAL);
>  static SUNXI_CCU_GATE_HW(bus_r_rtc_clk, "bus-r-rtc",
>  			 &r_apb0_clk.common.hw, 0x20c, BIT(0), 0);
>  static SUNXI_CCU_GATE_HW(bus_r_cpucfg_clk, "bus-r-cpucfg",
>=20





