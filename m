Return-Path: <devicetree+bounces-170182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB0FA9A1DE
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C76C77A687A
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12BC52144DA;
	Thu, 24 Apr 2025 06:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="n2yUiVXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC95A20C001
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475758; cv=none; b=qDLY5m+9fD+Fkib1TtHMm2VZjv3n1wHGY7PSYzEXUPkAdzn1SjUeQpoYJKFxqVsgmdlhv777YcYofAVjnb7JwvCtati/wGglUVZ6/GNYZxRsmXI5Oiz/j829paJ9biyplpNm+PuTT7K1i3miTmru73WnQTfkICU/i6GE9H+xBmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475758; c=relaxed/simple;
	bh=josoN2oXJTAyky6w/wxcQUrGfF0otE5lKJmegdfRuAc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B6p5hyr9sBljgfCUjrmYe5Ld53PwtlXwtN0z2I8GJVrE9HsjhYBXRSApQlEx7fxy1dT/qyZj9C81gJQLlZkPQ9KfhJiPEu7MJ9zGe/TI/TkexLV2faLAJlHEZasVYfAodrGSSEfEBmKrzPreMda67p54NqZ/pegcfx3yPg+jnTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=n2yUiVXc; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-440685d6afcso5859555e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475754; x=1746080554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xFzIBseBXs31QtpNYYtETMYlqRrqWSPS6FJ1rAB6aBE=;
        b=n2yUiVXcb3XawtvtZIcG0yhmXCbxcKL7SphRgNoUVQo07EDw45zm/Lwex1G9Th5jpI
         l8PJ9SN2XDjT8JEfEcguPwKLHRFxEMzplmmKASB09EKe0f3mFpnJj6YionT3BC54chtK
         vU+/RrAxXU2XV7QqlVhbiF7rMRxJegXaIJ5/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475754; x=1746080554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xFzIBseBXs31QtpNYYtETMYlqRrqWSPS6FJ1rAB6aBE=;
        b=Tyk6dWtzlDtv562WUB8c8MBdRjR/NDGg1eTy2o6UZlJMifc+dgedOaatPS1MRHM8GN
         Amn2SHZOfnEnaRGGV/WEMbHXjEnVE2EKeNyJvaVD6hFy8AvwkP0Y0gA1RqpaJK+b/iP8
         61qgZAYkcosek2/8RN/sUynOB4O60wlYzRXu/WCOHFgsIgJV88C8k0SN+uxHz0CmgvjW
         oUS+NKEboNpMiefMIlOlohqD0h4/WiVcSbHsGwSUYP9509AYhElEyZP7ol0pXM8cvlHe
         mY3AY3Jx5lLarYCm1qJfMqvHNPyFvuEANztRCnm2xefksOzpqo5rPGi2ddwiPyr3oWVh
         9i1A==
X-Forwarded-Encrypted: i=1; AJvYcCXXgGuGArAjgYa6VJYh+66b7Y+qNx3BrtoGp/BtuFBTcYjAAVTXcaBP+zkpvv/suTWXVJuRKVjHjynt@vger.kernel.org
X-Gm-Message-State: AOJu0YzIF3VMKYoT2AAeFTnaQP7zZEO63xkiSDgwKP1+y9Sq+zURHvuU
	euM2n5IkxEeC9tEluva3QPWoOraou663t2u6/lNN0+lzqcEXLr/M08f97Jt8NFc=
X-Gm-Gg: ASbGnctp9bpNUFa4gLf/LJInBl1DMdxmv7LOd2o0YFdYv9eiPhk34QP5JeozPuJBVFW
	jF4BFvl9bSEWqCkx/hcH1ACckGLUM6kzHkz2pyPSACyzJEE+fzoq41dUqlxMlmRdds9vnWsTPo1
	Joeez/D5fphiTO23IwytDBe8Yu/PlnG5V6+8CuhkBxR75UrpRBbjpYLlUByPgyVUZCy4zkTe/El
	mlzvK21g2UPiHxWlI+Q5KeXAyH7WK45JyZgVFK+9ifq0GMgI8c0NtDqndUakoSyt3K3fi62rIAa
	QTGsj78EPtbQ66Sino4myuoQq+cKRjWKPRsp3d2j5B0EY7sLq0zV47r9U3g4P9zMH0K2PT3CyfT
	kO6PT
X-Google-Smtp-Source: AGHT+IHlkO0fTEbB2RjnKyjqf/3UhcogYgQtKjOhgIefhZdroj8G8F35OQptYoAwMwAcZLh8vRUsvg==
X-Received: by 2002:a05:600c:3b8c:b0:43d:fa59:be39 with SMTP id 5b1f17b1804b1-4409bd8bd4amr8437045e9.33.1745475754091;
        Wed, 23 Apr 2025 23:22:34 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:33 -0700 (PDT)
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
Subject: [PATCH v12 19/19] arm64: dts: imx8mp: add PLLs to clock controller module (CCM)
Date: Thu, 24 Apr 2025 08:21:49 +0200
Message-ID: <20250424062154.2999219-20-dario.binacchi@amarulasolutions.com>
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

Changes in v12:
- Add the patch
  15/19: arm64: dts: imx8mp-aristainetos3a-som-v1: don't replicate clk properties
  to fix new warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/freescale/'

Changes in v11:
- Fix conflict while rebasing on master for patches:
  13/18 clk: imx: add support for i.MX8MP anatop clock driver
  14/18 clk: imx8mp: rename ccm_base to base
  15/18 dt-bindings: clock: imx8m-clock: add PLLs
- Add 'Reviewed-by' tag of Peng Fan for patches:
  11/18 clk: imx: add support for i.MX8MM anatop clock driver
  13/18 clk: imx: add support for i.MX8MP anatop clock driver
  14/18 clk: imx8mp: rename ccm_base to base

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
index 78d71aacd0a5..212596927f0a 100644
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


