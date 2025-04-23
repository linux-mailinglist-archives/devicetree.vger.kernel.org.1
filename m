Return-Path: <devicetree+bounces-169693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0964FA97EA5
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:06:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C57EF3BF6F1
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 06:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4E626B099;
	Wed, 23 Apr 2025 06:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="CLxbm5cJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DE826A0B0
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745388210; cv=none; b=ASj0L0ipmfkG9XcgvvJNaGgM9nXsA3OoK8XL89IeqOGPPyvXp4YrvrS8LpjKzvGpTVQf36e6SXEAJoLAH6QMOWYfsysEdHW4LYg3Xwnu0Q2vfvdvlEJslBNFnHCwIDxZ1kiOcxVTABDb8lR0GaKKemkd//K8aG0DntByW3gs9DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745388210; c=relaxed/simple;
	bh=6KSGxPUnS1mPNRJ96C4CkAbWKnuWJ5Byr6T4Z3L2c0M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sOUoHEw2QHdGfLY65xQ0qxUFt7DvLma/E95aa1OQh3Ykh7CfHRkt/4f2+iviRzbhkJQk3m+73L9YNdTaZN3COHR0m0EAhCmWpnNMlEaMJ7iq7MwScVVrH5XaE6ZTTsNdqFtTTsOsgAer/XF3RYhj0O0qOhA7/KSieGnDrb07qXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=CLxbm5cJ; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac3b12e8518so975813666b.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745388205; x=1745993005; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qwnDSUvK6FGHCaa/OUJvqxFp0aKtITa+jYSMw/i6jvs=;
        b=CLxbm5cJtLwuUx3J69Ru0l4YnRYGSdRppt047NX/doT/cDrAsmj+Rj7QD03PZuYlRj
         sIUSIvDugj9+Qo8YOIDdrDaEvLMSJ4qeIdqkSj9QoxZzXreIIlKGu9BJWeEVgUVFWRY+
         1JoGzIUlsSJkQlou3+9VxI69eCm/Tr8FjiFmY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745388205; x=1745993005;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qwnDSUvK6FGHCaa/OUJvqxFp0aKtITa+jYSMw/i6jvs=;
        b=GdUMb8CQDhS+bAm1kL00bX68yiXOIuuRCfYo88fcZPke8d8+U66QEBN7naGpuUg8ZZ
         uqEoDEpuUu769UqfS4Nfsc8liSictNkxT31ApE5pahSrnGbNREnXlKHFJVYG2I4e5St+
         9b8+Vc8c+oZwrvhFKEH1WPGWeToF7WfAmCIGSzZmLzpfcsxG/cvULl3fTLdXKpqHthiv
         uI4x+53okrCJAc85KUJs7Q0W3Cdn6BMNq3GbNEaxDi/44QY6znPH0WewkSRfAK7BnwaE
         hCBoym7zaWwUFY9TG8mhrNdTM/q0005x7PyEdGDrOuTzTJRcIw38qNMlwiPdYZEPvAom
         BOMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNA28FnCVQPXZ+8PK71RSOn8AfJBrvGJ2odHjPSil8xxMnFK38CmZ6V7vYeU4Jkhjs1JRuR8I2joGg@vger.kernel.org
X-Gm-Message-State: AOJu0YxyUAhYWGHRMB4Mv0VrOUedOAahHhXW7nfsIUngBU+Lj2AJ5mnl
	h34d6JIqhID6RRhaAb/5Pw4fNMBSVg38HILahUD0bbKD2mCci+TU9I5gfwaH3xw=
X-Gm-Gg: ASbGncty7SGR7fQjrrQL6I28GBsa1lrd/mpVgSGgderZm4qBQc22zsfu+cmkNRqdtpD
	fobTsKhPs/fPCR4tWKmH8dQt6d0qCFCKsEkB+9zop0708ClrtgVVsZrRMxAF8eVqzW7+3ddmnLk
	+ftWI5G8/UnJvZJBSPBjb2GuZQ7kddn8HRc6sQrFC7K6IKHfyQbznix+RaPpxcjih6qaxYUeDso
	12S2w3Gsgq2fq7MxP/rEtQgsPQ+oeiAkwtcMdfQF7CH9wNVkPYFMitgVvdqr1y/YZHo7EKPLeyT
	mm3yJr+mjclM1gxFZgH2R7HpMsq5OntZsJaaluX5Ru8R5UTZfVoW5eZE/zW13CpWtvIOd+7TLxn
	JPdfKVQ7d3mZN4DM=
X-Google-Smtp-Source: AGHT+IGsUxDaV1VG5VEFOK4UELVg2Pwf+4jwnx9ulQMNovrjSuWKEHY8T3Kxuf+EnYLtMT72UxcKgQ==
X-Received: by 2002:a17:906:7c43:b0:acb:b381:c28b with SMTP id a640c23a62f3a-acbb381cc4dmr568952866b.47.1745388205316;
        Tue, 22 Apr 2025 23:03:25 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef9e7e6sm745234366b.162.2025.04.22.23.03.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 23:03:25 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
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
Subject: [PATCH v11 18/18] arm64: dts: imx8mp: add PLLs to clock controller module (CCM)
Date: Wed, 23 Apr 2025 08:02:35 +0200
Message-ID: <20250423060241.95521-19-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
References: <20250423060241.95521-1-dario.binacchi@amarulasolutions.com>
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


