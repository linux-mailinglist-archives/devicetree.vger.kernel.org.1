Return-Path: <devicetree+bounces-246647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A77CBE6EC
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:57:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 046283089E5E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A107A32AAD0;
	Mon, 15 Dec 2025 14:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PJbz/m0O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55CA3112DC
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 14:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809732; cv=none; b=lI2fDYO6zO8tzd122qICOxbSbP7LKxL7CakuVrGoGxWXh7v1NTHjEIjyrvb738ggT2fw/0dd7a4kaLQLBwpqvOyi4s+Fo3n0aFan1ve8UlZRYOeKQrbjtpnx3qWpyXNxy+Swwdu6mm3biTyDKf/Y5ESKMytHMaHMvcypxjOPDzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809732; c=relaxed/simple;
	bh=fzlFhwopirZORrgk7MsTKTjo2RuJSeOm4hSvpGQNSbE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F3ay5LogKAp+Q+5tZ5XO8/KU2CMW6uwYyF7EMXRzZzfNYHkzK3M4kbdWQf9M8RRJ42fDXV4M0h29Wgk32vNbw3Wkv7xB6S39lweWR1flhVRKreRvtriBH2Yb88SaDmwbQOyrsgugHMGDpe1QUp810RnCvg559HiSopSitsJ66nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PJbz/m0O; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-430f57cd471so819668f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 06:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765809726; x=1766414526; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xiDNjJReuH+sQcPwA2otPS6JuC4RYSH/oTmgctrVOF8=;
        b=PJbz/m0OPOLH9gbAIQRSo0jfNbsaxfRIMMQ+hWi3IcpRUFywtIjnbokl4urB5+e/W5
         ErmFteQVy4Ft4phYIPVhSgrGSVaCVwQRLqzZEi5cr5dusnvubje9SBuwmKVNJfhoqul1
         hqEEEKPCmefiIXaQBYwD6AHt4tF2CZ4Vq5lYx0k9HD/tRAxkT+8Sp6xiWLHtroZvBDZq
         +forYoaSg7vLnu+Nm7mcyWc+dXuWpacLYUpHXdM4ihlDfKevz9hkDhndl6wwTQig+HvX
         lmOGKf8Ka9zCdd1b9D2/eVS6lziudv/AryP4c9Q2mBEB7dIIPgfwZhdpmdFL7aMG5BTE
         dmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765809726; x=1766414526;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xiDNjJReuH+sQcPwA2otPS6JuC4RYSH/oTmgctrVOF8=;
        b=fjtvSA+d6bkaTW5NE7r+izapLbN2FdDoQf/Lt/ZhcLFzQqVJGQ4Zoz7Ic3Gg0LqE3g
         cwhMZEP07gR3LxIDC6Ljzm0Ib1mmsJMgDSXSkBROoZaoKuvE1mMsWbtEUjktI7mEJu2b
         gfbEOGwh8cP+PuRUGrtfzHRlvoDmw5PPqPVbeHir3r3fGoO44hTOoARTfnUqeQXFCmOh
         xrjEmQfoH+acOn5Vehqtv60097R3Nk/CGwlJo6ZxAN8Z4EzLBfO1Nv8HUyqHRm/o9ogz
         t8Ren14ZfejEf7z6B+pNNJSq5mzlBTqKOHBd/9CUytygpK+Frnyx3JO73uBjAwlmAYCS
         JKXg==
X-Forwarded-Encrypted: i=1; AJvYcCWc5q3oyVrzi6RHl0WlXRdcF4P38HmTEeoMk85gGk0Ot6EtszG7gfer9v15o25R0am2GbRrl8oHV1Ex@vger.kernel.org
X-Gm-Message-State: AOJu0YyXVD1TbPlfTOtPqaZiaQh0f6tsHD1CYbLyF8BmBIb0pcRx9ucG
	2JTB7+PtfSvMXH7KuTAkzaAaIsEryUsF25+Cqlpzz1lM5KT8AqkkGmCPI9OEZK7GDno=
X-Gm-Gg: AY/fxX7GrfcuFpcXo5ZndYGpVGSJfBrnPCHa6c5XuqIGBQul1fV/LJcqvV1RsAK6qtV
	YmXeYgksRvSis+TLbCVmdMpmES/U94ZeUnuZubw7lXBjMMI5LeYKznJd9H1w2xcGpcSbtSJswgH
	if6oTv1PlvgIFLv2GjEI5jKIFpMN8u4FMD8Bb7u6V24ej1L9wyLChd//fPg3vZFmun3kOPIQIPe
	q6P/Nt/eKKkcylVVL9slKYeEJqy+jbBdQkbAcDNBirwDHkjVU6zmSscBTAVaa2QegVW6z2FaU87
	8geKJfZiLn8hmweqwfky3uy/q7cXCtRBDT0wpTidQX9eVAbjieJ+VGWmYOqtOQE77jf7L00G7ma
	RTkBtjPpme8m7Z2/EdqMHzg8a80Q9JTlyE6el4xPCy5bZc5ehawtn7jyXS6ZevlFvazw01PM5nv
	/Y0Trg4T9PJuKSM4lE
X-Google-Smtp-Source: AGHT+IG8c3SGHRSscuhUyyGSsZusN01T0eo9ZxX9zQGjydj3gQVdrRgDNwh4QNxdusEz1PCq34CxnQ==
X-Received: by 2002:a05:6000:18a9:b0:430:f463:b6b4 with SMTP id ffacd0b85a97d-430f472faedmr8436759f8f.50.1765809725859;
        Mon, 15 Dec 2025 06:42:05 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8b9b26fsm32113105f8f.40.2025.12.15.06.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 06:42:05 -0800 (PST)
Date: Mon, 15 Dec 2025 17:42:02 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chester Lin <chester62515@gmail.com>
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
Subject: [PATCH v2 4/4] dts: s32g: Add GPR syscon region
Message-ID: <990c6317baca68b1ec0391eba3b66f511d75710c.1765806521.git.dan.carpenter@linaro.org>
References: <cover.1765806521.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1765806521.git.dan.carpenter@linaro.org>

Add the GPR syscon region for the s32 chipset.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
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
index eff7673e7f34..71ee1c043d03 100644
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


