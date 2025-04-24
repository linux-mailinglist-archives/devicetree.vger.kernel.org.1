Return-Path: <devicetree+bounces-170179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2718A9A1D7
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 445847B0913
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:24:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFDA220A5D8;
	Thu, 24 Apr 2025 06:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qdnk3ZNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3472040A8
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475754; cv=none; b=Q3qK+IecZf44zrRm1tMyDYbtGS2VObNxgJHro3J2ncfekNbfqjB2rnBO1ljVlxvvvY0JWjAX9xSjWQmHp+90LIsK/gAXYhlrrTjaxHnAirjqIS0PaWvk5OQ9UkZ0H3IEaZnXN8E8bo9T1aAMkQzFTMHKXg1dXjIJAnseAknkYoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475754; c=relaxed/simple;
	bh=gzAb8Vev7F0m4l48I407MYxa8qXR/pteEzI03GTE0HY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aGp5cQgyTI88RHzDFLBtYXZwvDoL8pBltwhDB4h5b4RqoEM/Lu7M7xqCwBwjc6/9qCxP92rNmOYOIOBApL/ALjfqUOQEpzzmdqm2SwtO5g0rcSXr7D+/oIDrwxTFgfg3L5HtfAy3xxDKfBXFY9gxxXRJxCV4f/o4m46mzcLJgkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qdnk3ZNh; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43d0782d787so3505175e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475751; x=1746080551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FS59gZd32BjVBMnl0y8BuCd7aMfa22x1ZHu9pei4qQQ=;
        b=qdnk3ZNhfHNDmHfwW83Fo64a5QPPraalVN88oJFk6WunAe1dz0Yu8Rw2f0q6GcN63x
         WEbubBAMvoaDIeCZMlJZqEtneUj+8zwqo6A+dAsD456uvl/2vMjZH1yhWPxG53RSTnIs
         TQX42zafA9/xSf5NSm2fscfJqAq6CSIr4Zhc8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475751; x=1746080551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FS59gZd32BjVBMnl0y8BuCd7aMfa22x1ZHu9pei4qQQ=;
        b=n+ySVTojAFuDSF8CUC7KeUJmG2Cq3o5A3OSvUdwAjk0L5ZoBbHKg5RcOdtbu/F1nW7
         p862U3euy1iF68HKFFonl7xqQ3UEtbpKBU/UheHiRRKB2fR4EaBnHgMmmSsfV/JPLyr1
         1NinMiJaGgBEpKG24z7Kk7JedA9vh+cdZgzgbZICIRYEU3Nf/6HPmKaf9UuEgqgBnwRr
         aH6PKGW2DFGX0RRO4ohEMiDl1mM0ZZUsxGW1TMnvVpAEX0kmi/vhyrtpB37FeZ0l8uKw
         UC1TM5eSjNKL42ersHLf7DMlnkEKQSS1p4GSNEkMrs5f6/af3KJZxENOWaPvWo30/TnS
         RNmQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+v/ICS2kKC7bBitfjS6xr29Goo7yl7uKAdyiqr1IuSV1abCUWNICIWHeVieE+1dewRFgbwYNJid/7@vger.kernel.org
X-Gm-Message-State: AOJu0YzM2BpFMrpS+nhnIBSirMFxWn/98beSLIbceyZrct0jpld/fXAJ
	4k1ToVO8Rfs5NtUeh0IZxZEvYgdIjvSkFRIVgNau+WMd6KfqxwQ65vsTo/HUI8A=
X-Gm-Gg: ASbGnct2GQgKhtRGu9qU6l0/Imk2Ice9SowcEeq2xx0+sBogtYSWmXUJp8vhb/DBVXd
	MfKZC9hkKR0XXyoQFiVU/gYxLV6esX8JsHhxJkF67E58hlG+txmWyLIxSdz6KlPOV9JMh8KbzVs
	QLEiiUSZ5E65sFPVg0JkZGjrIXylUABSsfpZB3gpkeuJMb8tZh9NcWIdeIOfBr67FzICyVF0Vov
	8kllc4t+7sTyFCdHu7i05aOtllViua/W63eGmxUa7893XESsy28wE18oTs6UQC6AYolUEEy+Mgn
	6BfZoYC0jrcs7n2vinzCGQsPAuxNEfHo39XwutPv0r6SwB0ynXuLISQu7s1wUN6u4Pkud4i4gNf
	FnIzb
X-Google-Smtp-Source: AGHT+IERMp+XWsY4F0x3mSBeRwTvbYJcZ3M/RXSGGiprl/mRX85K/4aqN6WtoEv+WLusrd9qS8Cjww==
X-Received: by 2002:a05:600c:3553:b0:43c:f63c:babb with SMTP id 5b1f17b1804b1-4409bcfc11fmr8017185e9.1.1745475750966;
        Wed, 23 Apr 2025 23:22:30 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:30 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v12 17/19] arm64: dts: imx8mm: add PLLs to clock controller module (CCM)
Date: Thu, 24 Apr 2025 08:21:47 +0200
Message-ID: <20250424062154.2999219-18-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the PLLs generated by anatop to the clock list of the Clock
Controller Module (CCM) node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 597041a05073..79f4c1ae7d8b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -642,9 +642,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL2>,
+					 <&anatop IMX8MM_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MM_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				assigned-clocks = <&clk IMX8MM_CLK_A53_SRC>,
 						<&clk IMX8MM_CLK_A53_CORE>,
 						<&clk IMX8MM_CLK_NOC>,
-- 
2.43.0


