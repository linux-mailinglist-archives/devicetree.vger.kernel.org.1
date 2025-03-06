Return-Path: <devicetree+bounces-154817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE67A54997
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04F001886D93
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811CA21ABD2;
	Thu,  6 Mar 2025 11:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BEnyMt7J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE3A219318
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741260661; cv=none; b=m65WqEANWTf7rn2qtHUrZF01Fxnu1mDGn1g3vmaicflbvcLKXlhp9i/G6Di0V85qkwuUtxls22ioaQuKSnsynJ0vnTFe85FRqj+ZfdNbR1GrOJ7R7IcMwzUO+d/Ke2nhrsqgieHLbdtjQE98lF4hTbP4KZdrYSv74hR1YRSw65w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741260661; c=relaxed/simple;
	bh=4aSgsjIeYzWkwkuOR/AWYX7fuYgXedeF//2piBL0Gzw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f4WnFPLmqlhcxfEMTATnp9rd/r4cNDruzrMn8KPIOL7mT2r9NDDB2HK99yprUFcOTLteH+Uc2q+iQh4RAWeVoTGqeKJp6ga0haVUOhGW5UcHJk0j7hX2NMe3PzdgiDNfkY/iOo0YsiN22wFoBsRp66cITuuNLIChCrHNhDNQb0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=BEnyMt7J; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43bcc04d4fcso3274305e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1741260657; x=1741865457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DOVqMOdoYgDbI3s4q2wNweWZOHmBh2nVQMXWQXaXjpc=;
        b=BEnyMt7JnqE0efcn35CxdeWzknEEVva+VRWSylgz+dZ6epMIlRlnu0S9G59Fx1OhcB
         mdW9C8MFXz2NvjQXCh18I8Wou/U3tLS8vBwKRgnVr0djukAj2R2PsFmHxnEv5+wRg8Wr
         FshGCNp5+IuniKp44tePvuBvuqhv/jSmMul6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741260657; x=1741865457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DOVqMOdoYgDbI3s4q2wNweWZOHmBh2nVQMXWQXaXjpc=;
        b=weCHwg+0dvorvC7a0TlKbWdT8z0AdI9Jl0gcHFvg2gRAhHU1bKm6cMCC81eS+UFCa3
         gf2UloVlbcGXKjff6/HrUuJmnP8G4efiMdOz6H8rSlJiZfu414bSzvuOxbLU2ymDD9qF
         g1CmxEekynA14HYWTO8WNifvY21ngkfhCzbHvsG26ujHuoWCFRWE7xo3l+s9yZuomNE7
         4coUFr4UL29PBgZqXPVHCfWyL//DonHAXccwdKMCdyMpkGVjXwvPJ/KNUakRuXoKT12g
         HxARjToVucW/i+8E2DdKAUrweVZ4mzZleHBHenWJMCEwQj3cH80/xRxDP0vWdXQRecoW
         3KcA==
X-Forwarded-Encrypted: i=1; AJvYcCXH/tjfCExJi/9KtHR1xpf3xPoXpsFMarryhrEo8IYc1BN/LZlsqCyHufJ0JnIla8F5IeSCtam4Hcmz@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf3oDQycQDtSaQfe7aJarotl/CO0LYDyqMn8dMleKWeEGXcqQj
	2oAHaZ6M9GZYpiskXkUwLqMAPoFDK8eAnTqPTNa33H/ORuu5rfQZMuLDW0nJeLg=
X-Gm-Gg: ASbGncuIDsG+0LgsRUYDsdYGKbrDXTg8PP+Bl6M5YdeRdjTbpTsTIrzcOqNST1F4VbB
	mqImD7b8KmilwuFNn7QyVEPSg/MV+7SJD6PMv9urunCK7LxBwrB7PHIhZS4OFk2RYHi+HMhEOcf
	7OVKlII7FsDFi37OYaeG0GfreOWNPflsORTWFJ+UQJeU/Xe+9BfxJlvxsDZMdEe5qXMhfhgFVDt
	pzWqnj3DuQN0njagN8s//hO76K7vYqMpoIH11qmJ2lLphk8dTKzi4MgYzi8ssKFyLUAAb2DTU0s
	tiie4DzSPnLKIvb9BszI9xn1zBr68yUzWORpCb3twiiVWYabLMBJ/FIe4X817t9gBb8bEZaa5rA
	uRlLpow==
X-Google-Smtp-Source: AGHT+IFgPl8ZKMnUf3wGRInXWeZOMK2GwX9o32ww5mgLwS3armZaCHWO1p7ddK+A7zbcx0o2y6edHA==
X-Received: by 2002:a05:600c:1c09:b0:439:9946:af60 with SMTP id 5b1f17b1804b1-43bd2ae76c6mr47045825e9.25.1741260657417;
        Thu, 06 Mar 2025 03:30:57 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:4703:aa8c:6eab:8161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfb79b9sm1749650f8f.3.2025.03.06.03.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:30:57 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Stephen Boyd <sboyd@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-amarula@amarulasolutions.com,
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
Subject: [PATCH v10 18/18] arm64: dts: imx8mp: add PLLs to clock controller module (CCM)
Date: Thu,  6 Mar 2025 12:28:07 +0100
Message-ID: <20250306112959.242131-19-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
References: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
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

Changes in v10:
- Drop the v9 patches:
  16/23 dt-bindings: clock: imx8m-clock: support spread spectrum clocking
  17/23 clk: imx: pll14xx: support spread spectrum clock generation
  17/23 clk: imx8mn: support spread spectrum clock generation
  21/23 clk: imx8mp: support spread spectrum clock generation
  23/23 clk: imx8mm: support spread spectrum clock generation

Changes in v9:
- Add 'Reviewed-by' tag of Peng Fan for imx8mn platform patches
- Fix building warning raised by the kernel test robot for patch
  v8, 11/18 clk: imx: add support for i.MX8MN anatop clock driver
- Add patches for imx8m{m,p} platforms:
  - 23/23 clk: imx8mm: support spread spectrum clock generation
  - 22/23 clk: imx: add support for i.MX8MM anatop clock driver
  - 21/23 clk: imx8mp: support spread spectrum clock generation
  - 20/23 clk: imx8mp: rename ccm_base to base
  - 19/23 clk: imx: add support for i.MX8MP anatop clock driver

Changes in v8:
- Drop the patches added in version 7:
  - 10/23 dt-bindings: clock: imx8m-clock: add phandle to the anatop
  - 11/23 arm64: dts: imx8mm: add phandle to anatop within CCM
  - 12/23 arm64: dts: imx8mn: add phandle to anatop within CCM
  - 13/23 arm64: dts: imx8mp: add phandle to anatop within CCM
  - 14/23 arm64: dts: imx8mq: add phandle to anatop within CCM

Changes in v7:
- Add and manage fsl,anatop property as phandle to the anatop node with
  the new patches:
  - 10/23 dt-bindings: clock: imx8m-clock: add phandle to the anatop
  - 11/23 arm64: dts: imx8mm: add phandle to anatop within CCM
  - 12/23 arm64: dts: imx8mn: add phandle to anatop within CCM
  - 13/23 arm64: dts: imx8mp: add phandle to anatop within CCM
  - 14/23 arm64: dts: imx8mq: add phandle to anatop within CCM

Changes in v6:
- Merge patches:
  10/20 dt-bindings: clock: imx8mm: add binding definitions for anatop
  11/20 dt-bindings: clock: imx8mn: add binding definitions for anatop
  12/20 dt-bindings: clock: imx8mp: add binding definitions for anatop
  to
  05/20 dt-bindings: clock: imx8m-anatop: define clocks/clock-names
  now renamed
  05/18 dt-bindings: clock: imx8m-anatop: add oscillators and PLLs
- Split the patch
  15/20 dt-bindings-clock-imx8m-clock-support-spread-spectru.patch
  into
  12/18 dt-bindings: clock: imx8m-clock: add PLLs
  16/18 dt-bindings: clock: imx8m-clock: support spread spectrum clocking

Changes in v5:
- Fix compilation errors.
- Separate driver code from dt-bindings

Changes in v4:
- Add dt-bindings for anatop
- Add anatop driver
- Drop fsl,ssc-clocks from spread spectrum dt-bindings
- New

Changes in v3:
- Patches 1/8 has been added in version 3. The dt-bindings have
  been moved from fsl,imx8m-anatop.yaml to imx8m-clock.yaml. The
  anatop device (fsl,imx8m-anatop.yaml) is indeed more or less a
  syscon, so it represents a memory area accessible by ccm
  (imx8m-clock.yaml) to setup the PLLs.
- Patches {3,5}/8 have been added in version 3.
- Patches {4,6,8}/8 use ccm device node instead of the anatop one.

Changes in v2:
- Add "allOf:" and place it after "required:" block, like in the
  example schema.
- Move the properties definition to the top-level.
- Drop unit types as requested by the "make dt_binding_check" command.

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 0b928e173f29..eab05170442d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -751,9 +751,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MP_ANATOP_AUDIO_PLL2>,
+					 <&anatop IMX8MP_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MP_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
 						  <&clk IMX8MP_CLK_A53_CORE>,
 						  <&clk IMX8MP_CLK_NOC>,
-- 
2.43.0


