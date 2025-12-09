Return-Path: <devicetree+bounces-245357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CDACAF994
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0340F30088C6
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5749E2D77F7;
	Tue,  9 Dec 2025 10:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="VkZ7kgBz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A45A2C0270;
	Tue,  9 Dec 2025 10:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765275490; cv=none; b=qJp0IuqLrcBbzhgnKxlHX5SlYd5YPkkZozSZL6GjrlvU3XMKpQvCLwvGiFu4OLAViUguAgz4gX8fwxOvAMT7QuXKTsXVwjRlMVYdDzbMxcXmDn+qR3uVZo456bxMGCWoJqWz9p5MSqr0eVal++9vimhc3h+RTZ7PbUwGis5+MHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765275490; c=relaxed/simple;
	bh=4Zgn7GprbAuv99vOInmMtrZVoNyOJkNC5OdineAte9A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D2PJU/XOpwojBnV4T30bwa2ylaKvMVrupY75pH+0oZN4JoRPL3XO0vOlUTSJ7BM1ogW+48N3huF9VBwD6jJ9tfg3yHTL7tSvPavMAvq38lIYoWacFTOQCDpOE2hvtjb/kPTh3LUquxwUXiSgD8SlNNQSBsKw2W4Uc8SOSQx/VJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=VkZ7kgBz; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from localhost.localdomain (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id 894E122B28;
	Tue,  9 Dec 2025 11:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1765275486;
	bh=P+JFtEDU/oKUi/rr51XwyYzzIDWFw8SGvZN3B2/eueY=; h=From:To:Subject;
	b=VkZ7kgBzwHHZfMY9gd/n7EvwJq7XU0BJ/4CRbn1RdDQwSqYPjDwrL2jHEJgu3flXH
	 Qx9wfPEOM1YGD6sQD+JYIV7koXl5TYQ2hQDs9zqzdtLbXvoZC85wxJjbL9RXa3dx04
	 yX5hhoATWS01NKfrfHAHFOKK77LzioiuS1vOrJ/yOvUj9hM1VvZ8kpdcxAa30jm3ux
	 GtfjXEes4aZKjfwVAQif2dFvBITu/Qdk52+nXcjWDb1/8nTNP8KKv1YTXuSIaBY8yp
	 SG+kdpm9PEDeX8sTXnHfLhROvPvjiXcrxxV9WfUq3Husenhx02J6w6H4oiKZ8DiJtV
	 0d3penjE09kTQ==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] arm64: dts: freescale: imx8mp-verdin: enable hdmi_pai device
Date: Tue,  9 Dec 2025 11:17:50 +0100
Message-ID: <20251209101754.54067-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251209101754.54067-1-francesco@dolcini.it>
References: <20251209101754.54067-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Enable the hdmi_pai device on the various iMX8M Plus Verdin boards that
feature the related HDMI interface.

The hdmi_pai device, together with aud2htx module, hdmi_pai and hdmi
controller compose the HDMI audio pipeline.

See commit b21f87b8322f ("arm64: dts: imx8mp-evk: enable hdmi_pai
device") for the equivalent change on the NXP i.MX8MP EVK board.

Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi    | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi | 4 ++++
 arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi  | 4 ++++
 4 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi
index 1493319aa748..0e218e6b8e29 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi
@@ -112,6 +112,10 @@ &gpio4 {
 };
 
 /* Verdin HDMI_1 */
+&hdmi_pai {
+	status = "okay";
+};
+
 &hdmi_pvi {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi
index a38e7c947a42..72a4f846d694 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi
@@ -121,6 +121,10 @@ &gpio_expander_21 {
 };
 
 /* Verdin HDMI_1 */
+&hdmi_pai {
+	status = "okay";
+};
+
 &hdmi_pvi {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
index 11cf3bdc95c4..846b36706821 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
@@ -109,6 +109,10 @@ &flexcan2 {
 };
 
 /* Verdin HDMI_1 */
+&hdmi_pai {
+	status = "okay";
+};
+
 &hdmi_pvi {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi
index cc389cda2af2..f3d28e23ba6c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi
@@ -123,6 +123,10 @@ &gpio4 {
 };
 
 /* Verdin HDMI_1 */
+&hdmi_pai {
+	status = "okay";
+};
+
 &hdmi_pvi {
 	status = "okay";
 };
-- 
2.47.3


