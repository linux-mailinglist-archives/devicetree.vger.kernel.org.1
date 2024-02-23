Return-Path: <devicetree+bounces-45200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6B786119C
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 13:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 622571F2263E
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 12:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919D753365;
	Fri, 23 Feb 2024 12:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="ZLyRrHkm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A68845D72F;
	Fri, 23 Feb 2024 12:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708691931; cv=none; b=Q22IbIJKQWl8tJ/i5SY+RBYMLnsGIFOaGp9TjF4+UMPlzSSeAQXXDx7zgUWFDXU/x4BcK8x4M8OtwABXwkrqoGLzl2RK9Dm5TN2XPTnRwF6FzwTJF6+0q8tvl1zLo+zjvMiP8jEtpAO86llQCJUvHKMIvMyc1k9CZyNcCk0OhUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708691931; c=relaxed/simple;
	bh=ERS0Pm3SSl1km8+hgMeaWNqmH2dxykHAGMHLSP7sSdQ=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=Q7dBYGzUW/GPwHwB4udOFTRBf+6/s8nV0dI9HYU1xH8fRH+rnHWzIhWvg+99NX+8un70Fre7f2ZojhtV5bH2j5ojmRR+Q9kYS+/SyVl2uHblDKLYv10D3XP8ThH0q5ayeYJEUTfxJiHr/mV7ZnBv0qPU+poTY4nqVQVjWm1x75I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=ZLyRrHkm; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41NCFVmg025810;
	Fri, 23 Feb 2024 13:38:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding:to:cc; s=selector1; bh=D0WVlI4BwzUoHl
	UpQeRw9lznAxb2mpNvcWKa5zvyP1s=; b=ZLyRrHkmK3WZi15EQDSJ3jp+9beahM
	FiLxMLC2syN82XZERbvUVCU9KyAi/XmaCfm2hAQGjZWzTXSxTqBoYa7kDZ3TNhBX
	hTD5xAAPR4Pvh+5YV67aiCkYCHHY+iGkcrJ+qJ9KLZET0ZOJYegJa/bsyUf+ogqB
	Pu1zuR45+PG4aST1HH40jPvMGGsjWy6kFnBcmg3UEUesYaxucLsxnZLJBuyxjc1G
	PnWZGLLRxwhTI61AG9A/YBQOoSn2NY4Kqf5GHm1YlAS/lv7ctgb8lDi1Vjd5hPMY
	zWBTv4gC9TvJdAz4XYtLY7SaGzK0wX//X8UN/mFhTHNhcDotG4HNgShA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3wd2024nuu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Feb 2024 13:38:10 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 5B0F040044;
	Fri, 23 Feb 2024 13:38:01 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E2EE528CFC4;
	Fri, 23 Feb 2024 13:36:53 +0100 (CET)
Received: from localhost (10.129.178.151) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 23 Feb
 2024 13:36:53 +0100
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Subject: [PATCH v3 0/4] Add display support for stm32mp135f-dk board
Date: Fri, 23 Feb 2024 13:36:47 +0100
Message-ID: <20240223-ltdc_mp13-v3-0-7f92a59ca11f@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF+R2GUC/03MQQ7CIBCF4as0s5YGBrTYlfcwjakULIktDUMaT
 cPdxbpx+b+8fBuQjd4StNUG0a6efJhLyEMFZuznh2V+KA3IUXGBij3TYG7TIiRDp099o1GhMlD
 +S7TOv3br2pUePaUQ3zu94nf9KSiaP2VFxtmRay2cuMuzshcXiGpKtQkTdDnnD1Ic7xWkAAAA
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie
	<airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
CC: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>,
        Raphael Gallais-Pou
	<raphael.gallais-pou@foss.st.com>,
        Yannick Fertre
	<yannick.fertre@foss.st.com>
X-Mailer: b4 0.12.4
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-22_15,2024-02-23_01,2023-05-22_02

This serie aims to enable display support for the stm32mp135f-dk board

Those are only patches of the device-tree since the driver support has
already been added [1].

It respectivelly:
	- adds support for the display controller on stm32mp135
	- adds pinctrl for the display controller
	- enables panel, backlight and display controller on
	  stm32mp135f-dk

Finally it fixes the flags on the panel default mode in the
'panel-simple' driver, allowing to override the default mode by one
described in the device tree, and push further the blanking limit on the
panel.

[1] commit 1726cee3d053 ("drm/stm: ltdc: support of new hardware version")

Changes in v3:
  - [4/4] Allow every properties from panel-common in panel-simple.yaml
  - [4/4] Rewrite commit description to match changes

Changes in v2:
  - Removed already merged patches
https://lore.kernel.org/lkml/170729755552.1647630.4818786052103823648.b4-ty@linaro.org/
https://lore.kernel.org/lkml/170729755662.1647630.425379349649657352.b4-ty@linaro.org/
  - Fixed CHECK_DTBS warnings
  - Added missing properties in panel-simple.yaml

Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
---
Raphael Gallais-Pou (4):
      ARM: dts: stm32: add LTDC support for STM32MP13x SoC family
      ARM: dts: stm32: add LTDC pinctrl on STM32MP13x SoC family
      ARM: dts: stm32: enable display support on stm32mp135f-dk board
      dt-bindings: display: simple: allow panel-common properties

 .../bindings/display/panel/panel-simple.yaml       | 11 +----
 arch/arm/boot/dts/st/stm32mp13-pinctrl.dtsi        | 57 ++++++++++++++++++++++
 arch/arm/boot/dts/st/stm32mp135.dtsi               | 11 +++++
 arch/arm/boot/dts/st/stm32mp135f-dk.dts            | 53 ++++++++++++++++++++
 4 files changed, 122 insertions(+), 10 deletions(-)
---
base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
change-id: 20240124-ltdc_mp13-2f86a782424c

Best regards,
-- 
Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>


