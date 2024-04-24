Return-Path: <devicetree+bounces-62202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8408B0481
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 10:39:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C1141F22A23
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 08:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC9F9158A01;
	Wed, 24 Apr 2024 08:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b="AR+gfgSC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpcmd01-g.aruba.it (smtpcmd01-g.aruba.it [62.149.158.217])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF48413E3F8
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 08:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.149.158.217
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713947976; cv=none; b=ObrRa3zF2mhLvVgKDFoXOwi/GsIpn1iUlYY4mX3c1qhfhWZhZGE7fe0OhMqyTv85MEM4dFJ5QHL1HW79+dCDG1Qjupw8oTJ50ObiNCgrIoNlJNJmhKvU12UG1tEpAtz+L6Y0Ugfykhmf6ougiMln21Z8reEbvNsHW6Y5BYHcfew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713947976; c=relaxed/simple;
	bh=3+0nlzHW2JT0q5k/SQ97Gsuh5F72SEJngTlpyLTO/2I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=TgDmIZ0+ArrIQTGlE5ylvk+j18ziL/l7XtO1Hf4fiObgdhSVhd7JauqVlpE/LZJnOkXub/4w4kMQj7eRONmPib6rIbEbAJQrU7PpJw+atEMcaLtNnn365vqEaUp0CpGcYk/H0yR9Me26t/du5mgN9XbaypwZhTzjexbQXI5bSRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=engicam.com; spf=pass smtp.mailfrom=engicam.com; dkim=pass (2048-bit key) header.d=aruba.it header.i=@aruba.it header.b=AR+gfgSC; arc=none smtp.client-ip=62.149.158.217
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=engicam.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=engicam.com
Received: from engicam.com ([146.241.29.4])
	by Aruba Outgoing Smtp  with ESMTPSA
	id zY75r7sLxwy3rzY75rdAoY; Wed, 24 Apr 2024 10:36:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1713947785; bh=3+0nlzHW2JT0q5k/SQ97Gsuh5F72SEJngTlpyLTO/2I=;
	h=From:To:Subject:Date:MIME-Version;
	b=AR+gfgSCukrCyVF+RQqon2vcgZK3OMxsvdFMCDTP3HYyjC0Bxn9vAnh2w+Oqy6hqv
	 onwoiiP0Pt7fm9wIkItkY42dfImj8bCoUWrPXjpBPa9A6rTtlG6rozebDEi2A59ZgR
	 uZqs5hTpnCshY+LxESmg3PyCIawr+tYqaPnsuxcBGbluQyhZIbURL7vz/MM4PRfbpt
	 lYWffLUvU16t0dhy0xCnirzDHJ5u7a1i3syveqidUX/YNmqbCd7fecXh+6HlMnWTW+
	 6bs3oiND7M6Igj1oZgrLswFRPyMHbzGWY//dh/MO+gNmoZ6ocZwh+Xj4QrW9jl+UBm
	 E7QoMAzkTWaLQ==
From: Fabio Aiuto <fabio.aiuto@engicam.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Aiuto <fabio.aiuto@engicam.com>
Subject: [PATCH v4 0/3] arm64: dts: imx93: add i.Core MX93 EDIMM 2.0 board
Date: Wed, 24 Apr 2024 10:36:04 +0200
Message-Id: <20240424083607.11162-1-fabio.aiuto@engicam.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfLnkJ1sozcfJ7Qr4uSLykER/wdjEN2xKC/4+pcCxAVGWkQWGbemRyNplRye8aE0lehC5Jxfro8d+ukwv8DIC9nEd2yIJbjatQyQzzw90sNFQsMKmKIbM
 I/9cQb4rIuioNRT8hd1Jr9wHNBzr3eX1DtEFP8JGautdX0Tj20acemKUVYnVTtGX08948yMityF6UDebQTT8+9uoaIp/OkvcxXb2lDfCVFeTnHrvHT2j2cm0
 l/QNhof5Xkn+wUSgq8BYPxSpR+JBezFkrvlg8EJ9UDYiV4iTJ0JniSsWJQMMjhOFx4S9fGeSaBBnwVVCPcPW41A9/W8jRBhm9chKByD7kBTTZRvSipGw2umk
 vYeiRKL6DIMOmjQdErFaeKw2y7Cy0nt/0yFHmo77oi36K03Xge+XNoCBzXZLDNOePzWdosvd+WyKJLHGesVJ7xRweO27TyB3RmOhTK0aZJijDa7Z9eVpBEvg
 zUdXZ29cA+AXs2HS4G8sX/yzZeRe1emWMlrlkIydpLNIbj9F3lCkypZgXEU=

Hello all,

this patchset adds support for i.Core MX93 EDIMM 2.0 Starter Kit,
a SoM + Evaluation Board combination from Engicam.

The number of patch has diminished to 3, for I dropped the
patch introducing a change in nxp,pca9450 binding which has
been already submitted in regulator tree.

(Dropped also regulator tree maintainers as recipients for
they aren't anymore involved in this patchset)

This patchset introduces just basic functionality for board.

Thanks in advance,

fabio
---
v3 ---> v4:
	- drop wl_reg_on regulator in favor of
	  mmc-pwrseq-simple
v2 ---> v3:
        - fixed dtschema warnings
        - added Acked/Reviewed-by tags
        - removed regulator-always-on on
          bt_reg_on
        - fixed clock rate assignment on
          sgtl5000 node
        - added wdog_b-warm-reset; property in pmic
        - fixed indentation issue

v1 ---> v2:
        - dropped patch updating nxp,pca9450 binding
        - fixed indentation issue
        - fixed missing space issue
        - improved naming of regulator nodes
        - removed unneeded include
        - fixed email recipients

Fabio Aiuto (3):
  dt-bindings: arm: fsl: add Engicam i.Core MX93 EDIMM 2.0 Starter Kit
  arm64: dts: imx93: add Engicam i.Core MX93 SoM
  arm64: dts: imx93: Add Engicam i.Core MX93 EDIMM 2.0 Starter Kit

 .../devicetree/bindings/arm/fsl.yaml          |   7 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx93-icore-mx93-edimm2.dts | 344 ++++++++++++++++++
 .../boot/dts/freescale/imx93-icore-mx93.dtsi  | 271 ++++++++++++++
 4 files changed, 623 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-icore-mx93-edimm2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-icore-mx93.dtsi

-- 
2.34.1


