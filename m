Return-Path: <devicetree+bounces-25392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1538131E3
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B18A91F22197
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 458F556B6B;
	Thu, 14 Dec 2023 13:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="lLk8zjQm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D43AB126
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702561382; x=1734097382;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=iXSwRG/rx0OyRIYjDnfQMbcylm/rWyCaSZ8s8e+AQ8U=;
  b=lLk8zjQmiZe0k/Z6Bt0rlAb/aV30gu60LipuIuo4OKF24jm9QMfMUZ9M
   +d3dGMgf0lpDKRKfm/Hgvkybo6KSQZH7Fm3md56SqTR2iDkzWOYnxwohi
   r+7Ka3IagqibEV+SlOpHaUMYVVVRTGuXEWOiGSJmZvjvfWLkSLecOAfTz
   E/us6GJYtpde5sTwnTrV954ubXbGQ8uwPoZYPq5W4ZVXPNfRmVdexgmf+
   zvv/y5Ak8aog77ZVKNkPjZjc2skBfAZZ95oaOFsk5jegVJ8Nhiuy4R4El
   aWMLt9TIBGmJsQA1sxXGBga6ZMJSDEfnQyn/Hgg/my+5BJprY8qIyA1jP
   g==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34510776"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 14:43:00 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F1376280075;
	Thu, 14 Dec 2023 14:42:59 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: freescale: imx8qxp: Disable dsp reserved memory by default
Date: Thu, 14 Dec 2023 14:42:59 +0100
Message-Id: <20231214134259.1933541-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Even if the 'dsp' node is disabled the memory intended to be used by the
DSP is reserved. This limits the memory range suitable for CMA allocation.
Thus disable the dsp_reserved node. DSP users need to enable it in parallel
to the 'dsp' node.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Apparently imx8qxp-mek is the only in-kernel user, so it is enabled
again to preserve current state.

 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 4 ++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index 6c3d8715bc11e..7888570c15e19 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -50,6 +50,10 @@ &dsp {
 	status = "okay";
 };
 
+&dsp_reserved {
+	status = "okay";
+};
+
 &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec1>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index c80c85a4b4059..f014d0a764ea4 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -184,6 +184,7 @@ decoder_rpc: decoder-rpc@92000000 {
 		dsp_reserved: dsp@92400000 {
 			reg = <0 0x92400000 0 0x2000000>;
 			no-map;
+			status = "disabled";
 		};
 
 		encoder_rpc: encoder-rpc@94400000 {
-- 
2.34.1


