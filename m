Return-Path: <devicetree+bounces-245371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE58CAFB27
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1300E30BA6CF
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4C731985B;
	Tue,  9 Dec 2025 10:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="pyEyEWtk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79668296BD5
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 10:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277647; cv=pass; b=o+TkEWyfvdp2SgReQNAhL1SBps6oemMjXNvHprLTroCv494/R7G0DlS3LGFCZt8P6LRgo4n+J42k0h4ARnUfKMPioJMBNtE19ammdz/YU675O1iZshmQAtk2fHSP0DGvo2ANVX9adzkAwbHzLGIEQASudaam0LDkgxxPQYauQmE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277647; c=relaxed/simple;
	bh=nmPAFYlLwYdLHsbfcU9mSYegvCAZChpys2/gU1VqB00=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nS1o36f9mpxbzOwUq1RTToAva8xBSLDg5zAK6JsTfX72Yc3QBFDSkMXUbUj+LyC84C4VPKZSiM6eB56JZRRw5aznxt958tE1U4tiF7Yro2AMgLIUEF0sQ2NXMRv6BSeqP41Gs6z73s3Ca16ua3fjHwh1wa9i3iAE2MzFNtz6wh0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=pyEyEWtk; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=A8W5mptCdk0S8QGbadr+z6jPfJ8L5En4UezduXTQKbg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765277612;
 b=Oi/8mR7zYoXDwB4RBc7ZEGllzrJobaDudYgXCC8vAovwvL6f29jkJOZv+XXH2JgjH9+thg+C
 GWA2h12ui78SzHGJ/MJ6Rpc/34oEnSQWBB8DCDF+sXgmR8Pa3aDLLTTB77bz9UpCG0wbv4tBqLU
 5GFUuNhJ/3S/8Jg4YsUYYJWd1nyfZEEfmM4EfswteecatYw0FlPkBklxdFrM0u7+Om6WJmTmAVs
 xYy72wlpkr1mikJXazM41KFZQDE96xKcRDdhDgNCQ3NVSwBI2oDwbfaToZjl/yo6+Qn+kbjWKKA
 oL5t2wPNURhM8ByeckyTt8o8ykffpZ+Yh9LIdcQUnTSHA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765277612;
 b=EmQf4alFzyIIJ1LH0nub83eZO9cwsgIIxfb8F06Xi1YZFaVRFcGEMClHfAzFUQ2roFwTCAQ0
 DM8bY0ydWxoF7LaJG8VnTTUesBDS2pfLNwVZEVIf5UKu+fOw/qHzc31S6DVhdZ6cwX9Uj59fG5B
 3LILeJTgx3t03ZI+dbpV8zrVHTU6BtyUsKy36Csq7xSy8evvvx7RZWbqFnjbTTCcdlKXgcvqoMh
 jomxiSYDqIVax/r3kx/OS4566uhxPFswb3ACiRAXIuzDAfkHzMQj/FB2cY5SVeNb1hhDg1wYXga
 cz8QASNATVevL85vo9gVPaj0UZR3LCYcpDOCSPqbD8A1w==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Tue, 09 Dec 2025 11:53:32 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 5A481CC0CCB;
	Tue,  9 Dec 2025 11:53:25 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/8] arm64: dts: tqma8mpql-mba8mpxl: Add HDMI audio output support
Date: Tue,  9 Dec 2025 11:53:10 +0100
Message-ID: <20251209105318.977102-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
References: <20251209105318.977102-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4dQbLG0GZzz1kNh54
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:f72542e298952ecd7d6a450cc7cae500
X-cloud-security:scantime:1.806
DKIM-Signature: a=rsa-sha256;
 bh=A8W5mptCdk0S8QGbadr+z6jPfJ8L5En4UezduXTQKbg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765277612; v=1;
 b=pyEyEWtk2wIPwtoxej+STf2WKM14HpDSdF5DhVi/7Z44FpoUwpMeAxC8SSnFk6TRzyF+e3mz
 GdJJ4l624LZSeZQ2kRtBMtkuw5V6n3kyuxGl/U+G2E44+aG5AjAQa+3vyPaVGA14/YpnUF6rfe4
 lC+abeZJzSHPXXsHpoBnGGTujW+UggiwM0QtR9LchqznQN+9O6orKXKEvEtVd02bwEQxUihyB0R
 TVdjXuEAi9d9uYYLcaVjwjWvrXdmZlzmTfUKwQNeJM/fHG73iDuC8TDlhUH+cEjyyTqbXM9OYPb
 RbSkT/9jk3ImOUPsHCy6/SutfLzEA7H6myzexcpTc+ycA==

Add the HDMI audio soundcard and enable necessary nodes.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index 03b75d4cf699a..ac889a69da69a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -248,6 +248,13 @@ sound {
 			"Line Out Jack", "LOR";
 	};
 
+	sound-hdmi {
+		compatible = "fsl,imx-audio-hdmi";
+		model = "audio-hdmi";
+		audio-cpu = <&aud2htx>;
+		hdmi-out;
+	};
+
 	thermal-zones {
 		soc-thermal {
 			trips {
@@ -290,6 +297,10 @@ map3 {
 	};
 };
 
+&aud2htx {
+	status = "okay";
+};
+
 &ecspi1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi1>;
@@ -486,6 +497,10 @@ &gpio5 {
 			  "", "", "", "";
 };
 
+&hdmi_pai {
+	status = "okay";
+};
+
 &hdmi_pvi {
 	status = "okay";
 };
-- 
2.43.0


