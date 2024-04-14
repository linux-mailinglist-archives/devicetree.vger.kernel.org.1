Return-Path: <devicetree+bounces-58243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B64E18A0FFE
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:29:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E85C81C21ACD
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 011C6146A90;
	Thu, 11 Apr 2024 10:29:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva021.nxp.com (inva021.nxp.com [92.121.34.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F045145330;
	Thu, 11 Apr 2024 10:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712831383; cv=none; b=iiqblv+JpQvSLDksIqhrZyHeC2/rVqyFdihL9MUbX2GCx4WA7aSyAwjdl55HemiNbBxjOVAHvHtWW+B+fCOhfU5FtJq+pYfo4zWxqdtv+pYU7kfcAXam0o4+yjS74ULoqruro8DwjE5evAchL/17SAbzTDMRLM4jQXLI1f3mvmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712831383; c=relaxed/simple;
	bh=zmStaJ3K2y1OHTUxUlaA8HgWp5SThfzUtWtIqXMw4FU=;
	h=From:To:Subject:Date:Message-Id; b=bGvsfNfpwq1+m51DLPyy39T4qwjw/C2iN9qthYdVVi9l/01aC0tvyhxKEBwgY+UZ7eL305F+KvfNSPITVIN+QsSbCeOGroQFS4IYBDQdzUWQ1v1Z1Q0dInSc0cRMuSbiSFZpEzTOxyY4SIkagIotLjepjuucYAIB+1aoBcQ8GWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7024B20053D;
	Thu, 11 Apr 2024 12:29:35 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 28F63200D1A;
	Thu, 11 Apr 2024 12:29:35 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 1DF70183AD14;
	Thu, 11 Apr 2024 18:29:33 +0800 (+08)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shengjiu.wang@gmail.com,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/2] convert imx-audio-spdif.txt to YAML
Date: Thu, 11 Apr 2024 18:11:43 +0800
Message-Id: <1712830305-31350-1-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

convert imx-audio-spdif.txt to YAML

changes in v4:
- change the enmu to const
- add more comments in commit message for second patch

changes in v3:
- change file name to fsl,imx-audio-spdif.yaml
- change example name back to sound-spdif
- exchange the fallback and specific compatible string
- update anyOf content

changes in v2:
- change file name to imx-spdif.yaml
- remove |
- add anyof for spdif-in and spdif-out requirement
- change example name to sound

Shengjiu Wang (2):
  ASoC: dt-bindings: imx-audio-spdif: convert to YAML
  ARM: dts: imx6: exchange fallback and specific compatible string

 .../bindings/sound/fsl,imx-audio-spdif.yaml   | 66 +++++++++++++++++++
 .../bindings/sound/imx-audio-spdif.txt        | 36 ----------
 .../boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi   |  4 +-
 arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi     |  4 +-
 4 files changed, 70 insertions(+), 40 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/fsl,imx-audio-spdif.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/imx-audio-spdif.txt

-- 
2.34.1


