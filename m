Return-Path: <devicetree+bounces-127354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 275BD9E53B4
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:22:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4ECB51882BC5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54C6F20DD45;
	Thu,  5 Dec 2024 11:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="McA6RZSv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493D720D4E0
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397609; cv=none; b=RdGQI9fJwcOBbEkDoaRtIRiAldBbytwigCfCysnl890AeBsHvmeB2OLeLBq9RXmEyn6vHapcfgKBwfirjWOCItNd/L8Obj1k5jgjg8f70ZCgAqXgUA+542drklVXHVUsb17j0SrDWp6vE60lKiS818uNYnre0XdqF1jFgwuzdSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397609; c=relaxed/simple;
	bh=2JhFTNbz+mPx9HqCC7mp/y2AepFst/c//AlKmHPYdgw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E4jTVL9OBm8w/8aLNaaoJtQIMACvQBIc7VAqSm75qE2azmBfn4hbOzW9SHw0gw8F9N5uAgq34raWDOWpbrk+uUlNLYm6NSLpdnLiQ3Vmahx2WJgaBpkP40pvl+14YsVXqO3/IYCNoxZG/Ir+3cgQ79lu7KPwGrPkByZcXisVic8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=McA6RZSv; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d0bf6ac35aso1032037a12.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397606; x=1734002406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j2hCs9DBY1WcnrRGyr88Evw8OuCDQNrA4ENDf/4vgOw=;
        b=McA6RZSvpYf3irTm2wXrEaIK55Rl+qwJG+y6yzSF3coTmbaio173b80qSqRN1ZakRZ
         A43thRDc/05bwDeNerF/k9gaihuOmqynWQ/F9X4e7xLZITkkIZLkeuntgTEmXbtkin8o
         dVclunzwR+WMfi1aAlISZblEdn4G61/9Br1uk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397606; x=1734002406;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j2hCs9DBY1WcnrRGyr88Evw8OuCDQNrA4ENDf/4vgOw=;
        b=JBIdgdJVGiYeZ5lelaRFNEP+2OHrNBTTpA9u54wpsFR5rvow+qlVVbLXsIb3LTKFff
         stfjAqyPRUbYqVsahvTaGo9jCd9Ao1iM25uELydfzJeYGM+Tv+6Mu7v/2hsur7QX0VA7
         GIQCOCy6V52bzrI/GmQsdn9rB0aicWN4YoVhnElScr9nQBxKKgMX4cUtP+dXkan6Inbv
         t0p/7QlGe5k4ghX7TxGl+ooCcgNcQ1C+sCRNX/Qhp9p4nFrByaSkr14AtyHHv0a8Bctl
         7ISMVZ1+0mYdPcXGvk0CJ/MRPBszLB3h8d2/61fgsOwyHGAUua+lOrdbLkwKYUvQMfOO
         EX3A==
X-Forwarded-Encrypted: i=1; AJvYcCXwkdd2FMm+w9sChbi6HJRieHZnk1+yceF74HdvWKJx8i0VU5L/6XrCXEoYoxwA7dMSRF4BMTjpBBAI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+TGBOixx82BvvJ+QxTHsIzi8ewgi1iTKm8uIY9FlgJrAu585g
	APjd9jA2AdiQbguax7+6U3GIEwgrfW4GXFtmhvm3iWOhnmogUrG2o84EguhXv64=
X-Gm-Gg: ASbGnculydgU+ksAbPcIqh1PPFq8VIuoSdSbISgHiIF5zDmJMSEamPNSl9IZCOC6/oX
	XHALOzkH2RvIbT/iV0gvw3RDDi3028D04sMHjNgAZ022o+AyHoOJ28twT+/GDoZpFc0dXWqKj/x
	Ry55ie7a6F2bnztpQfpXahfmr6M+Q988SN3FYil1cJx08x2bYglEp+EZ/UAS4HXt0m1owzZujUd
	QIXigCm3U0YoDRcYM3pvAiNuu2VzX/2ay5vnDAHPe7qaiVNASIRECVtXGJlxhMre1r0Cqwr5oSn
	VvfUwYN0TXekqPgDvfDY2iMxX0WWKNywZtGC4Xsr+HEyeg==
X-Google-Smtp-Source: AGHT+IGLZBaBqNRrXV0+VIf1ktSUUHHblEKAcaf8kiN8Y4lBfRjDCw12pclWyLXl1FgMMkHkUf47Qw==
X-Received: by 2002:a05:6402:280a:b0:5d0:fb1a:afe2 with SMTP id 4fb4d7f45d1cf-5d10cb5645bmr16989909a12.10.1733397605738;
        Thu, 05 Dec 2024 03:20:05 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:20:05 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 16/20] arm64: dts: imx8mm: add PLLs to clock controller module (ccm)
Date: Thu,  5 Dec 2024 12:17:51 +0100
Message-ID: <20241205111939.1796244-17-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
References: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
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
index 597041a05073..0b35aecb6755 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -642,9 +642,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MM_ANATOP_AUDIO_PLL1>,
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


