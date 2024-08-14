Return-Path: <devicetree+bounces-93563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4675A95179B
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 11:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B9651C21D0A
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 09:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F22F1448EB;
	Wed, 14 Aug 2024 09:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="GxUh65K+"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6122A1448E1
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 09:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723627604; cv=none; b=I9EaBL4MUGm8SoEalO6i37O0RzeytWhEmfN/AYortu7bxiOSFg1gNSQB+13ryscSCOelQxKulbKoq/4uWESsBKoSNqAQeoEZk50Gyi7gm9WlJiFL+HkCTA+4LPJhhXKR1SSVhRJhp7xqYj4YMaqLZrslnn6UWPQ2wJlHVyGPi/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723627604; c=relaxed/simple;
	bh=6ugJAJqrvlJi5B4rNhsPn1v9zNMwxOg0oMGs3o0rSXs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=DVlOn87SxVCK8L/Lh6xL9yqXAcLqbnEhNTYekRSPUe1XYm8QAO3M/fpeIgTCtbsBT8Cjpl9ptyGuLXAsvrRtHGh3Ae4vlaAlfgFuHtgi0Ne8GtoH8D15zCr0p+k1/h46JKmRYu8F7vOFEVnIwOvUMV0wrEq6xA8EnReopd+i3pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=GxUh65K+; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1723627599; x=1726219599;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6ugJAJqrvlJi5B4rNhsPn1v9zNMwxOg0oMGs3o0rSXs=;
	b=GxUh65K+xUjqb2X6L5OvgxlIzqzp4vctO9W9Uk01ZLsW5TofBxFmSZdkeJk6SQ9T
	vyBVrYRnSVx+y2+RQ9QN7eBIMY/V+RsCWoqLu3pnpoe//fvSNrIdYwZSypsArSPt
	jbKErV8M+257XS12CURouBgr81wMusMUx0wwvDLb2i4=;
X-AuditID: ac14000a-03251700000021bc-b9-66bc784fa6b5
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id C5.54.08636.F487CB66; Wed, 14 Aug 2024 11:26:39 +0200 (CEST)
Received: from augenblix2.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Wed, 14 Aug
 2024 11:26:39 +0200
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 14 Aug 2024 11:26:08 +0200
Subject: [PATCH 1/6] arm64: dts: imx8mp-phycore: Add VDD_IO regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240814-b4-wip-t-remmet-phytec-de-bspimx8m-3392_upstream-v1-1-e2500950c632@phytec.de>
References: <20240814-b4-wip-t-remmet-phytec-de-bspimx8m-3392_upstream-v1-0-e2500950c632@phytec.de>
In-Reply-To: <20240814-b4-wip-t-remmet-phytec-de-bspimx8m-3392_upstream-v1-0-e2500950c632@phytec.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
	<kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
CC: Yannic Moog <y.moog@phytec.de>, Benjamin Hahn <b.hahn@phytec.de>,
	Yashwanth Varakala <y.varakala@phytec.de>, <devicetree@vger.kernel.org>,
	<imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
X-Mailer: b4 0.14.1
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgkeLIzCtJLcpLzFFi42JZI8nAo+tfsSfN4MwEEYs1e88xWcw/co7V
	4uFVf4uZ91rZLFZN3cli8XLWPTaLTY+vsVpc3jWHzeL/nh3sFn+3b2KxeLFF3KL7nboDj8fO
	WXfZPTat6mTz2Lyk3uPF5pmMHv3dLawe/X8NPD5vkgtgj+KySUnNySxLLdK3S+DK2DnjJkvB
	So6KU3N3sTQwdrF3MXJySAiYSHzs/wpkc3EICSxhkni2/Q0rhPOYUeLj+cMsIFVsAhoST1ec
	ZgKxWQRUJR6+Ow9mCwu4SnRsn80MYvMKCEqcnPkEqJ6Dg1lAU2L9Ln2QMLOAvMT2t3OYQcK8
	AskSdxb5gYSFgMzp0+4ygticAikS12+eA7tBRGASk8TRaycYQRxmgT4mic5p56EuFZb4vHsN
	G0S3vMSuSycZIeLyEtPOvWaGsEMljmxazTSBUWgWkpNmIZw0C8lJCxiZVzEK5WYmZ6cWZWbr
	FWRUlqQm66WkbmIExZIIA9cOxr45HocYmTgYDzFKcDArifAGmuxKE+JNSaysSi3Kjy8qzUkt
	PsQozcGiJM67uiM4VUggPbEkNTs1tSC1CCbLxMEp1cDIobv3ddD56Qo8b+52OAZPTLWVzPzT
	a3YxeJ9IxcZlEorqjS9CH2dbRF3Icft78WhDivaSiMVvVL6qV0Zvn5B5xyefvb28/6gK59rI
	SQqLFYyLjkR2iZw89P3cLfX++Xwnv6ROmunV2ytdrsz2fso8I5OOwkety4rKZvTdOpaqbWT6
	r2bxkZ9KLMUZiYZazEXFiQABD76BkwIAAA==

From: Yashwanth Varakala <y.varakala@phytec.de>

Add fixed regulator VDD_IO (3.3v) based on the SoM schematics to reflect
the connectivity on the phyCORE-i.MX8MP.

Signed-off-by: Yashwanth Varakala <y.varakala@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
index e6ffa6a6b68b..9c5272c6931a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
@@ -20,6 +20,15 @@ memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0 0x80000000>;
 	};
+
+	reg_vdd_io: regulator-vdd-io {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "VDD_IO";
+	};
 };
 
 &A53_0 {

-- 
2.25.1


