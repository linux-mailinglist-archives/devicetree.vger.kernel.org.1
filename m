Return-Path: <devicetree+bounces-127355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CCB9E53FA
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6290D282DC7
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB54720DD64;
	Thu,  5 Dec 2024 11:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="M2kPdPNs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB7C20D516
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397610; cv=none; b=VLYLpiPF9RiuyyujwxyqSXVhf+K5jBOgDFKliwlroysSK1ydDGFawSrIBNisTC/xcBfcHwEp0GkfWX1sLz5O2BxLTyb6QMmgbKym2tOvE4KE/z2WOb/Cum7wBkpMYnM3KSQUzyh8asgcNrWMS35u1jCpcJRYhetD7lJ8om+KMOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397610; c=relaxed/simple;
	bh=UMdg/7HEARC6ZgU2mWDyh9m6gc8+etDqX0OWe/Oj1Is=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=vBv9B7tamXU1jQOZvFO4eJ2S06eeGM10KqN73GLl0m2B0BLEO5lIMHOepn8PFIDl73UkLhsyK9R5sgP6+lbgs86x39cxDJYrTx5X+s3aF0C7kM8uJjhZy3SXtjKHE4XP77hTCrzE5dM7IR7yEGndZEabLkp3pqyP7KHGQArZ8hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=M2kPdPNs; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa54adcb894so134848366b.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397607; x=1734002407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=deJRTkp3cj8LQIAgwHRGE8nfXmDlGN+dwLVOnyJ9CpQ=;
        b=M2kPdPNsTX0t5qT1HjXGxLhKL9Nu10TmVZTI7XTEJo5trFetD5/BluJ1+r34ckRnKB
         P2ZMbTy/dSP7dJoGzZsFPyQNDAmA6Msadkbc1St9WiQGl3U5WJer8SGKz0L/d4EkBDf6
         CRJWFNgSpH2nx4NWGdWFt6wWuf7POrJt7SL7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397607; x=1734002407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=deJRTkp3cj8LQIAgwHRGE8nfXmDlGN+dwLVOnyJ9CpQ=;
        b=c5rIGFannRXr608Lfs3SQaV0UEGxTBCz4FCcLudAHEMI/uwcLGlbmKC9xc/+JRWaQj
         1Ps9iimi69lER8Boo93puAIglzJGbAHf46b2gPBUQi3rhu4oCsZ8DRnNSMy6wVgrDP3/
         FjrYSZpo4ZiHnPYTI/XFEKxExg4P60TnthD7xAdn+vsRwiyK6+o5ZEsH3Oz3B8TC7/BU
         s6k+WBCOrIW0c+hId16bySl4QcnM8skOF8nOI4Sr5/0VLI3ntlLLllpI41kQpwl3yn5Q
         9NdqbSS+CbDMQ6A1zqvomtePHxnuTEMja9h5J5OhJEZoQ7ckbb1JU3nJpmC9xzICIXom
         VChg==
X-Forwarded-Encrypted: i=1; AJvYcCVnIHUlnF54cEpOAS8JpzkcUex5mUOqj9lhtGyUFItmg0ROosTRJ0CD+0VeP5uSYCfkXicMLitw9LrH@vger.kernel.org
X-Gm-Message-State: AOJu0YwXlINFd/1yxs3sSNPFYtNjhixPMpGHa8+aSOoA3SWBH2yTdTtL
	a9lFK9lpzgjkvEP2/SBCc3jlLCngYILwkQdXJIWgTH7JpDks7AEXlxYL20ggZrM=
X-Gm-Gg: ASbGncubo4H+dpBO9jTHVGZLuhgjL/40n4ZVNedKOwy/doZfzyFZIAsfjsQYZOzllEF
	r0vCmXBJP4RHfR+Mt4rIEXth29tOp6xRcrn0/Ze81mMYk+Rp88GzWfZIJmMJRrmuOQ0IbloBOP6
	pzQz0IMxpiHK7MQ7DLTz6E9WmiS+7+eeKzswC97LaiNmY43KxB1LxujjVpSea1tHGAPodpIog4H
	yIPFWEIbqUYh5lRwE7a9sXpN7cvTtQ9dtodyeYkdtS3GeYfgZaZK67ukR06n2ToclrdNucqW707
	PWpOUPJJCfrGDblsjt1fxJy6dFPq6vrG4/HsUNMCc/RMFQ==
X-Google-Smtp-Source: AGHT+IEDfHJCy4mKgveNLG8+12l0nNuJTsz+6IEw9fSTRFtpyymfLeQoj2SsxUuqEuLQtMZgkWDydQ==
X-Received: by 2002:a17:906:328f:b0:aa6:25c4:7a71 with SMTP id a640c23a62f3a-aa625c48787mr161327966b.16.1733397606942;
        Thu, 05 Dec 2024 03:20:06 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:20:06 -0800 (PST)
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
Subject: [PATCH v5 17/20] arm64: dts: imx8mn: add PLLs to clock controller module (ccm)
Date: Thu,  5 Dec 2024 12:17:52 +0100
Message-ID: <20241205111939.1796244-18-dario.binacchi@amarulasolutions.com>
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

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 49be492b5687..aaa179784717 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -643,9 +643,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MN_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MN_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				assigned-clocks = <&clk IMX8MN_CLK_A53_SRC>,
 						<&clk IMX8MN_CLK_A53_CORE>,
 						<&clk IMX8MN_CLK_NOC>,
-- 
2.43.0


