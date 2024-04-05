Return-Path: <devicetree+bounces-56734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA7C89A599
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 22:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCAAB1C20958
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 20:22:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6170617334F;
	Fri,  5 Apr 2024 20:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="M9yuZgh6"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDF717278B
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 20:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712348548; cv=none; b=K2FIv498++O2+xlFE8HLURXkagoIDDEqWiDitzyww5KFmoXXWshbUAFLdjEhrz4Zt9Gn9NAvjcMBlMBL83Cak8NZC9X8fycqJ+6qPhIef7DvypeuCZX1wcFQnRBIS4+ivxMTh0f5W8/Aj0mPicyYgxes0Rszp3490NgK8EuLAGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712348548; c=relaxed/simple;
	bh=2OuIUFurr8NhM6GBDjYwpo2d+Ip+j1SAcgeI5MUx66c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=D6w26MBSY37R8KW4pxCIXfwvYdzOBkhOSifDyt301KDuiwUmrAPdrQd2YtSn2uTMicPiRS9ty+zlBee67lYrNR/hIHxybgMSIon52zY7FjSGrCQR3iR6Kr3i1xGs0uPXgC0vUjec9dxbS+lPHjEuyXuR79u3OGiZWy7u0uzfPbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=M9yuZgh6; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 0C208883C7;
	Fri,  5 Apr 2024 22:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1712348543;
	bh=pizP7/g7zeE/aP4ut6uc/fUILj+RJUC6OhpyCk+z+sM=;
	h=From:To:Cc:Subject:Date:From;
	b=M9yuZgh6Ar8xVu4iLzxKQN4qCBwH6IQ8WhFriQnbnkf6OrM/ARIeHlQWwFOqJGFb4
	 GwJzJlS7OAnTDEIfEGW1c4x607X4fHPD6KLmQMuup14h7R1bMFdh/7MScbOzQYvEs2
	 zGeXWJyCD9EnoH4csh379Wv/n2f/tc7qPmLZkLpZbMNZQvtBFptvq3xwIlh5YzdeMD
	 qJUrXaqZEX1fOwXVLQ0llupY+nFa5/TtVwOwlhMwBrg5Ynqs9YIanxuFC9Vq3L6XtI
	 I1EbtgZUGFqzwKBy/LgwbksMAezDuYTlrKAZl9bz07IQt56iB3EMTAX0I+/fQ43iI9
	 ThcyVt1FiRWqw==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: [PATCH] arm64: dts: imx8mp: Fix assigned-clocks for second CSI2
Date: Fri,  5 Apr 2024 22:21:53 +0200
Message-ID: <20240405202214.46251-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The first CSI2 pixel clock are supplied from IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT,
the second CSI2 pixel clock are supplied from IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT,
both clock are supplied from SYS_PLL2 and configured using assigned-clock DT
properties. Each CSI2 DT node configures its IMX8MP_CLK_MEDIA_CAMn_PIX_ROOT
clock. This used to be the case until likely a copy-paste error in commit
f78835d1e616 ("arm64: dts: imx8mp: reparent MEDIA_MIPI_PHY1_REF to CLK_24M")
which changed the second CSI2 node to configure IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT
using its assigned-clocks property.

Fix the second CSI2 assigned-clock property back to the original correct
IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT .

Fixes: f78835d1e616 ("arm64: dts: imx8mp: reparent MEDIA_MIPI_PHY1_REF to CLK_24M")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9f3e7c23b2efb..1bb96e96639f2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1699,7 +1699,7 @@ mipi_csi_1: csi@32e50000 {
 					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
 					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
 				clock-names = "pclk", "wrap", "phy", "axi";
-				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM1_PIX>,
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM2_PIX>,
 						  <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF>;
 				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>,
 							 <&clk IMX8MP_CLK_24M>;
-- 
2.43.0


