Return-Path: <devicetree+bounces-245369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BE7CAFB24
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:55:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD7DC3028FCE
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD85D2FD699;
	Tue,  9 Dec 2025 10:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="LXXK0qpC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay20-hz1.antispameurope.com (mx-relay20-hz1.antispameurope.com [94.100.132.220])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562182D7393
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 10:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.220
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765277647; cv=pass; b=Pm5/x8frjQ6sWDnbi9YYS9bar7pdWTLkdUh5A6qbhqernfCRaAp2GYLtphWHKVvYm5TG+cFvaQmpppXM2gE/VbJKbUK/7MlASFLDPDRk1d1qCTxe2NIq41uyefiIQ3Dy2XCyOqsDIipyHyKhS0ffQdACV+tCRYZF8g7ahZAKEPs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765277647; c=relaxed/simple;
	bh=hB0nbX6tYiAHle8PBHNp9gI53FQFd/DI687o3Fj9g4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qb2LRZVCq3A4P0Qfomrth2Y4ubxJOxp/zWCono+Zf/J04awEz6Bfu6JSyAYbTfdrP/ldq0xAxySZFxCcJn3+LX9hlBrJWTj5Gyjfdf2ebu4CDgF5qn2WsvLLf0SUwumGGhqZr097974ED5oe+kO4DoN74vVz/L8dvUx/2kslANQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=LXXK0qpC; arc=pass smtp.client-ip=94.100.132.220
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate20-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=yYiuMB4tO54AzIeDH3kmJFpjruAX6cuTTrgN+LVCJSA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765277617;
 b=Tgxsrh4HoCrqjUI2FDn8a0+eAumBo46JOSjjw8dJq5S6bgfp+kIfzxjZzpH0fKMhLRNHbLw/
 YW6aVTmQR41uahcNUyORdS4WwpUuZySrlgUKuP+KcGZRZuVEqDP3uuXDGJgv06kJdSKxNAI5jcn
 AhsCXuEyxzDf+Vde4MIUwTVM052Bl+yF+FAS0KVGg7ercdhezAIFDH9UhxYSEWTmk7x1peiWCb/
 LLDXuIGGpakJK9m+NNXAnMzaHLK2XOjrXDTq8byCDnOkZAajBjWmStDN6IvHKqdevwXNXGDXFf6
 gf1s5LoJ/jxFwLqKDbidJE0359qoXaW6ucChjF3ks4zFg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765277617;
 b=WQrdb9Orj509fpCC+5tv7oEqdEDD0Iu9Dat1U+FN9X+eMk9Se3RRCwR1K1beyVdSTeYnn3Wq
 bJO7SjSB6dE+q9koLM+AP+8Q+zhDL1sqbO+W9cYbCuEEuurqPFqaqkE8+z3Qq+DULlO58KPYsFs
 X5W4wP7BLz8AQR7RPdzlkhrfgr7bjDDxLyzCG+S2hF8D4dNKAg1eLr7tcGrOgnRmr4iaVIGTKo6
 kN6B8NDpLBXj+7C9G3f/S5Ay3Olj5LlY1604FZNuaL7t30ZbyyMkB1pjUt1m4OaVg58Fvh7a9eD
 OCMcDdtRsYavon4dH+ZIiy39ok7FfAtFD3zOy3Mju/9Eg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay20-hz1.antispameurope.com;
 Tue, 09 Dec 2025 11:53:36 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 0FEE7CC0E8B;
	Tue,  9 Dec 2025 11:53:30 +0100 (CET)
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
Subject: [PATCH v2 8/8] arm64: dts: tqma8mpql-mba8mp-ras314: Add HDMI audio output support
Date: Tue,  9 Dec 2025 11:53:14 +0100
Message-ID: <20251209105318.977102-9-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay20-hz1.antispameurope.com with 4dQbLL55ZWz1FXT7
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:cf2a083042aff1afc5f4aa02c5603dcb
X-cloud-security:scantime:1.605
DKIM-Signature: a=rsa-sha256;
 bh=yYiuMB4tO54AzIeDH3kmJFpjruAX6cuTTrgN+LVCJSA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765277616; v=1;
 b=LXXK0qpCA8k4F7XxgPA6mXNa4GsqJp68Q5z3RFQDFaKW9i8HwYYoGbm0mXGehoASRlXkqQpT
 UFpfngcY+IuQWTHALN7OK91vfOPuEIoWSyr5XzHZuIeGTnscNUCgXNWBeGEXPXpbBbYNjUa3sE0
 +NwpiBWGGbiJ1YAATVdxHq/Npcwgn1YfSEun7qYq86MB8TbjTa7JgPBBwQdOiYUotdc5EHCCycy
 ffiRBMPMI73844V64k8On36/DKPvH1DxOnEnuOVyrYDSYkFm3jMWAGS4X3nV18mtykbxyFNJmTK
 zag0/i4L6G06bxmfH8QRFyc0QYcev/UBgKKKIj67DVQxg==

Add the HDMI audio soundcard and enable necessary nodes.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts  | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
index 30f0e81c4be00..6e927ff1e967a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
@@ -159,6 +159,17 @@ sound {
 			"Headphone Jack", "HPL",
 			"Headphone Jack", "HPR";
 	};
+
+	sound-hdmi {
+		compatible = "fsl,imx-audio-hdmi";
+		model = "audio-hdmi";
+		audio-cpu = <&aud2htx>;
+		hdmi-out;
+	};
+};
+
+&aud2htx {
+	status = "okay";
 };
 
 &ecspi3 {
@@ -335,6 +346,10 @@ &gpt3 {
 	status = "disabled";
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


