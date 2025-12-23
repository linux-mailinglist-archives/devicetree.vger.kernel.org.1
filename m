Return-Path: <devicetree+bounces-249003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B76E1CD87EF
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:59:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E77D2300B988
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 08:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B12322B63;
	Tue, 23 Dec 2025 08:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uwgwuLqb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D036A2E2F14
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 08:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766480356; cv=none; b=auwLESXVKtyVCUEf0KjZ+ZELA8hjwwQUEqUhZqHiT2VLOX1QviyN+URdWR7fWErjwC3woiv8S6F57rKexJtwNDmiNH+byuT0vTh5lTC+ZE4WdHXYBgKgjqkOS2l1FQLiKyUs7CyuqE0TEC6vXB5XUJw1NFhETq2X99nXzd1FpY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766480356; c=relaxed/simple;
	bh=Q/s+JS6trPpy//xpDv6StWBf6vCLIQWxERTdF81N+Mg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=FRsSLWZH4IFe7uP+KM9uCWjAqWCLLbp8PIBvtJiAFf1TJzsGMpSBx0pwS3tPYxzjKy1CwjtYV+p5lCAHWMVkFckRFSg4BBSTKkUrIHNqrdBWRdV66EwQMcp2d3Hr0lwPe5q0x/MrVZZ9gl4rvVbvuwhnFONMMGmMUXu/ZQVmMH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uwgwuLqb; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477632d9326so28673825e9.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 00:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1766480351; x=1767085151; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H0N0Qh+h5z6q9jM8GDDqCGvbZlEglLrOpZcIVjBvhiM=;
        b=uwgwuLqbsSeUATLO+CguzKWx9Rk1GbnYgmupLGRXHyPzWyehr2oqimwcDMTUzArbCt
         D8tVnX2zjxlIHS0KJXRTd0+NQkjlcdq7GDxF7yzmKxYQLsp+wS3r7hj91Q4fD0i/GJ5I
         X9fQHDv3Lmdkzc1Pd0u5n4Zz/x04Vuhqu0VFIheLZ00jBPb0oUaIjR82Mrj0g7fb0ion
         b1mVk4bC24ItIpaMk7ukxvgZB9BjDgWUQwYceN6y2hhbiGPPa4XpU+P6/GdTfkb6XdUH
         FK5/HdUj/G1rMGaXrGHZowxSdUHAw2aWl8e1MCe72mdIkckqD9px75OQK/QPGZGY/Jm8
         /qSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766480351; x=1767085151;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H0N0Qh+h5z6q9jM8GDDqCGvbZlEglLrOpZcIVjBvhiM=;
        b=WO2Oaq+iBBHnWCVeR0TVH54u8CvqBiJxDDK8Rk9ua50p/5GQsEnc4b3QIBfdbDenGD
         hXzs2H8PlHdxp9HSYy1EKZKJgHsn6Y8W4pefiq2sCaBkohD7COuPJ0XmBEhEtJY9LI6e
         iTLoDLe2vebTqzKrzKFWfw4y/J8p/qIy/jkxNLi1LPhIzXBxQTT5dlwXcxetiwAz7raD
         IFv0MAdWCE/U/mws5hvxwziGmHyIGI2ItueHDdVbHG4S0mDAULIrfPGYMwUU5abqHeg7
         LY8Jt5AFii2YU31cy5KECGG37gHbLb/GMKIOZd+vwt9dkmhzVoUbEu07wAF5Yp0KOzwf
         3ndw==
X-Forwarded-Encrypted: i=1; AJvYcCUwdDFRJ/Vw3OKu8qL8X/gW1egNuvzK5Cj10sToadQTqxdSTPHqiDtmlNDQe3dQ7m3bEK0BcJWWlCWc@vger.kernel.org
X-Gm-Message-State: AOJu0YwPWSdFo6eJZGZipQ3r5IA3wMin7E66qOguC3288xRsFvOyf50e
	IK1HVdbmjqSeUV+mpy15JQ4uJtIuY/9LGkTiyRDPHX67TZNNrOpjmtD3ZjEHiSk2GAY=
X-Gm-Gg: AY/fxX7ckLa549RdCyNWtN1pSX+2i81xwykzLqUEyTfCjNofT6aqF5twNBV7ldDlUlg
	EEy7cNjKiYCeIhioooI3Lm2b1n2miZTjHDL0PyhyBPWm20SG2uZZVP7+N+GvPX9/ywLeIgvhhLZ
	/Le4jOhJNKXqTDfxJ9QyxEEUoIQ+io5ocLokvpoy6KO+hXjlAARTR6etsYjDGJ/TX5AGalS/Pjv
	I8WvyYcc3zSxElPoa9ur1UkuTHzvPsxcjURsh3jkquvI6WRJ3lXTRldrh6nfWE7E3DGO0hVhptJ
	dxUcpYtjAjxGo0bLd2TYcp6XyPzCkm30BSlVsOeLor3cUcs33NQkSYdKA7FTE1zrrnxuwHfVsBw
	5wLJYri3rNaI0wrB5g/R5zdywvGqP/x2F1pi+Q8O34IFw+ogVInncwwvuZHO7bsF2Q5CJOchaE3
	cCQUSCO/Pm+A==
X-Google-Smtp-Source: AGHT+IGV3tIWup1oKWrQfjC460UZGieaL8gFZ5EVbZ1uUIL00or9Qu0bOv0POApDVytvlHgK7GBnWw==
X-Received: by 2002:a05:600c:3b0e:b0:477:b0b9:3129 with SMTP id 5b1f17b1804b1-47d1955b7d1mr134846215e9.3.1766480350772;
        Tue, 23 Dec 2025 00:59:10 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:a0c2:899c:2c46:1e7a])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47d193522cdsm221854375e9.4.2025.12.23.00.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 00:59:10 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org>
Cc: Chuan Liu <chuan.liu@amlogic.com>,  Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  Neil Armstrong <neil.armstrong@linaro.org>,
  Xianwei Zhao <xianwei.zhao@amlogic.com>,  Kevin Hilman
 <khilman@baylibre.com>,  Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>,  linux-kernel@vger.kernel.org,
  linux-clk@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-amlogic@lists.infradead.org,  linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/8] dt-bindings: clock: Add Amlogic A5 SCMI clock
 controller support
In-Reply-To: <20251028-a5-clk-v4-1-e62ca0aae243@amlogic.com> (Chuan Liu via's
	message of "Tue, 28 Oct 2025 17:52:27 +0800")
References: <20251028-a5-clk-v4-0-e62ca0aae243@amlogic.com>
	<20251028-a5-clk-v4-1-e62ca0aae243@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Tue, 23 Dec 2025 09:59:05 +0100
Message-ID: <1jv7hx7ew6.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Tue 28 Oct 2025 at 17:52, Chuan Liu via B4 Relay <devnull+chuan.liu.amlogic.com@kernel.org> wrote:

> From: Chuan Liu <chuan.liu@amlogic.com>
>
> Add the SCMI clock controller dt-bindings for the Amlogic A5 SoC
> family.
>
> Signed-off-by: Chuan Liu <chuan.liu@amlogic.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>

Please read:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?h=v6.19-rc1#n503

and adjust your patches accordingly

> ---
>  include/dt-bindings/clock/amlogic,a5-scmi-clkc.h | 44 ++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>
> diff --git a/include/dt-bindings/clock/amlogic,a5-scmi-clkc.h b/include/dt-bindings/clock/amlogic,a5-scmi-clkc.h
> new file mode 100644
> index 000000000000..1bf027d0110a
> --- /dev/null
> +++ b/include/dt-bindings/clock/amlogic,a5-scmi-clkc.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
> +/*
> + * Copyright (c) 2024 Amlogic, Inc. All rights reserved.
> + * Author: Chuan Liu <chuan.liu@amlogic.com>
> + */
> +
> +#ifndef __AMLOGIC_A5_SCMI_CLKC_H
> +#define __AMLOGIC_A5_SCMI_CLKC_H
> +
> +#define CLKID_OSC				0
> +#define CLKID_SYS_CLK				1
> +#define CLKID_AXI_CLK				2
> +#define CLKID_CPU_CLK				3
> +#define CLKID_DSU_CLK				4
> +#define CLKID_GP1_PLL				5
> +#define CLKID_FIXED_PLL_DCO			6
> +#define CLKID_FIXED_PLL				7
> +#define CLKID_ACLKM				8
> +#define CLKID_SYS_PLL_DIV16			9
> +#define CLKID_CPU_CLK_DIV16			10
> +#define CLKID_FCLK_50M_PREDIV			11
> +#define CLKID_FCLK_50M_DIV			12
> +#define CLKID_FCLK_50M				13
> +#define CLKID_FCLK_DIV2_DIV			14
> +#define CLKID_FCLK_DIV2				15
> +#define CLKID_FCLK_DIV2P5_DIV			16
> +#define CLKID_FCLK_DIV2P5			17
> +#define CLKID_FCLK_DIV3_DIV			18
> +#define CLKID_FCLK_DIV3				19
> +#define CLKID_FCLK_DIV4_DIV			20
> +#define CLKID_FCLK_DIV4				21
> +#define CLKID_FCLK_DIV5_DIV			22
> +#define CLKID_FCLK_DIV5				23
> +#define CLKID_FCLK_DIV7_DIV			24
> +#define CLKID_FCLK_DIV7				25
> +#define CLKID_SYS_MMC_PCLK			26
> +#define CLKID_SYS_CPU_CTRL			27
> +#define CLKID_SYS_IRQ_CTRL			28
> +#define CLKID_SYS_GIC				29
> +#define CLKID_SYS_BIG_NIC			30
> +#define CLKID_AXI_SYS_NIC			31
> +#define CLKID_AXI_CPU_DMC			32
> +
> +#endif /* __AMLOGIC_A5_SCMI_CLKC_H */

-- 
Jerome

