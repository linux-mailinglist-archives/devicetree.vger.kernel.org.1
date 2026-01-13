Return-Path: <devicetree+bounces-254558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA860D1960C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:19:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 08B6230194A8
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E9AC392B97;
	Tue, 13 Jan 2026 14:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t+ao3EUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B317D3933E0
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768313630; cv=none; b=p3VSpZVzf/zc2Mm/EM9P3XyvyTpQJ3mqq2PWNC42GNfDI8O1Hk6HbEUkxJ9hIEA7tK6Ok+QtZz0w7XaI834ayE/yDuzeWqWDmKK708+7n40KTmO4heTupkD5tW1C7Kq+z0jH0c98lm/IHH+y35/GsCvnO5FBuw6SmHoF7Kz7EFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768313630; c=relaxed/simple;
	bh=RgzcGw7mxH2MIeGgn+VfakoDn6WEzlL4sMS6yNO5ltk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W7+1WSAhYumhgrIuRiuOYP8W8QA8LCat+r/72tcItP3/MoBH+r4qpTQaGVdGqVB57FR1IzYWva6fVwMvHxF6BLCiyodSvII2nBhUOCaV5O2AFPbhvQkMbSWp8ljag/4ZABH3+Hp9hxvT7ulHQqYZHwNzcgMJYUuMaDOdj2nuSOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t+ao3EUD; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-430f3ef2d37so6398088f8f.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768313627; x=1768918427; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SJ4qhNK6HgJCQRaIfNR/+TyR3qWODgWCDv9ZRAYBUD0=;
        b=t+ao3EUDWwLn8aDs2db+21FN1ptHJFQvIY8LtWG3yC/1SGl+MSzRpgiIG1SOyqY09G
         gbnmaCQqqT0XRttuoWpEiktkxT6EASGJ6KWFl9/wAZHXUwN8eHdxkfCtTYke0fxpWzA7
         k0Dij5uoyN2/oQd1c1s5pKtKLNtghCmezvdlWOTz7iPne/jKRRb8qziR2OedG6oSOkrJ
         dkzaad1wSuuyxeboNo36e/7nXhtGSPTQe5yUFsGf9RSGku0Yvlv7/bx5ogAhRNGcF4AP
         2Doc6tKunj0gZkcv13BF3ud+r1jVbDYSRyx8ASy1lOxtUrNNBl2QS/HPRVpvtKAkprF+
         lP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768313627; x=1768918427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SJ4qhNK6HgJCQRaIfNR/+TyR3qWODgWCDv9ZRAYBUD0=;
        b=gXzLHmsnVXLR3RREEXmKCqNGk+3Cc7ap0AvqNkwppeoKSUttFQPOIBRc5rfzA0VEZ9
         FRk/MEGB8hqDBze9sMniLe9qOLw3aCIjQtDQSiko515wN1uBqF8T0xQtUNXDQRnFCi6r
         adS3AriwHPtSGDIre7qRtquRsnVoPhFBx1Y+7KJaB/9pqelx4PUgEfz1HUW/NWPY4Cv6
         uJbOuswqthHYsMxXeCcZuQumkdlLwCO/tK49vgNHpZBcKKRP+Yv7XstKNhrK1cinq6MK
         Fyc7AvxRWQb3AUfsUcU9rTH7n+PHbZNY9iHwrQzAYDQnbWM7sDBOQbHlJKoxDqvovwYo
         31Tg==
X-Forwarded-Encrypted: i=1; AJvYcCVU5Xl70k6KdsUlA3pFlxg0Iw7M2YUUanPfKwYQAIXPqNnE+FaJJu3KRevDGyY6osVjGSK3dAOdmvoz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvp5XusBM0u3YI6kOicCPV1X8Z6lWkXTMGRa7FsomagYo3vEuL
	LGF8cx1v2EHGciUlURCOi8Is437hwienfvjjezfOjygaobHV9gc4rkIxOV43atVL9iM=
X-Gm-Gg: AY/fxX4dJ77QY12C/a3dwvObbIVNxM6hS2SsiwnnlH8YXNanV5z5X7vBrn3amDp5RHZ
	tTNRHI1oto2eIMt6iFeGleKa1uc1mBv3bQ4CUL14NG8OU1RUOWpoDMBBmlefdxD//40qx4ZD4VR
	wd7VsICAx5txwd+LGTEx2Z7CVJ/tBp0vVraOzOtQWfvPDwpNH47PtuYNm72rs8l6CaVRZXG7xtH
	HU6IQXIrgDHj4q4RnffS0vpGrvy2kqrTO5oUIV86emWUC2M3umWV590aVNyObWi0cHm6SDcqaSd
	P234+IQ8CY0xd1I/vqB2Ep5DNiugJSnH2Hvzf+UL/HJEDcXhmqf6GAp2alKxWd80ck0oXh7CMQV
	36lteCLn/HUKgPEU4X1LV0mO9hfR44Adk9ffqv1lb6IPMTu9/5DB0BS+jQkovPjLX2CfQgkMfAu
	AVf05+Wc+1qeMBsXdw
X-Google-Smtp-Source: AGHT+IG/xqYaef47YaE40Cl836u2Tn4o2f/BCTjQwmPi7rLjNPU1ITQ1RKKteQ7YDa2akmaP7lvqtQ==
X-Received: by 2002:a05:6000:2013:b0:430:f5ab:dc8e with SMTP id ffacd0b85a97d-432c378a8c5mr27806853f8f.13.1768313627004;
        Tue, 13 Jan 2026 06:13:47 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm47014898f8f.24.2026.01.13.06.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 06:13:46 -0800 (PST)
Date: Tue, 13 Jan 2026 17:13:37 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chester Lin <chester62515@gmail.com>, Frank Li <Frank.li@nxp.com>
Cc: Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linaro-s32@linaro.org
Subject: [PATCH v3 3/3] dts: s32g: Add GPR syscon region
Message-ID: <6dfabf2a1f0e6f410c92b0e24be6ff94b409d71e.1768311583.git.dan.carpenter@linaro.org>
References: <cover.1768311583.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1768311583.git.dan.carpenter@linaro.org>

Add the GPR syscon region for the s32 chipset.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v3: Unchanged
v2: Remove #address-cells and #size-cells

 arch/arm64/boot/dts/freescale/s32g2.dtsi | 6 ++++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 51d00dac12de..b954952d962b 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -325,6 +325,11 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		gpr: syscon@4007c000 {
+			compatible = "nxp,s32g2-gpr", "syscon";
+			reg = <0x4007c000 0x3000>;
+		};
+
 		ocotp: nvmem@400a4000 {
 			compatible = "nxp,s32g2-ocotp";
 			reg = <0x400a4000 0x400>;
@@ -731,6 +736,7 @@ gmac0: ethernet@4033c000 {
 			compatible = "nxp,s32g2-dwmac";
 			reg = <0x4033c000 0x2000>, /* gmac IP */
 			      <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
+			nxp,phy-sel = <&gpr 0x4>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index e314f3c7d61d..be03db737384 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -383,6 +383,11 @@ usdhc0-200mhz-grp4 {
 			};
 		};
 
+		gpr: syscon@4007c000 {
+			compatible = "nxp,s32g3-gpr", "syscon";
+			reg = <0x4007c000 0x3000>;
+		};
+
 		ocotp: nvmem@400a4000 {
 			compatible = "nxp,s32g3-ocotp", "nxp,s32g2-ocotp";
 			reg = <0x400a4000 0x400>;
@@ -808,6 +813,7 @@ gmac0: ethernet@4033c000 {
 			compatible = "nxp,s32g2-dwmac";
 			reg = <0x4033c000 0x2000>, /* gmac IP */
 			      <0x4007c004 0x4>;    /* GMAC_0_CTRL_STS */
+			nxp,phy-sel = <&gpr 0x4>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-- 
2.51.0


