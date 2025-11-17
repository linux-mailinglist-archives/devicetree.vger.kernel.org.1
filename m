Return-Path: <devicetree+bounces-239337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E717AC6419C
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:39:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CA193A4B90
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F360131B800;
	Mon, 17 Nov 2025 12:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="BSpWB2mX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay50-hz3.antispameurope.com (mx-relay50-hz3.antispameurope.com [94.100.134.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97C9261581
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.239
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383048; cv=pass; b=f9yp9PUFJmmGkaDXWZDsD7i2tpexNRfbCIUFiCMbq8K/lqPrJDw/HHiOkxUCYg7SqqfKd9I84RRR7b9WPVDJAFYy/7dDzVFqVkv9jkeI+MwGjd7kOu1La0SazE4/c8VXH09zKbRbq9HEjG5oeL4PPK8/q+PDPBSB+8Txcy4ExPg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383048; c=relaxed/simple;
	bh=nmPAFYlLwYdLHsbfcU9mSYegvCAZChpys2/gU1VqB00=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TnbI2NuMIWctRHTtluqa780izRfe/WSm2DnxI5CNODy55Psf/iQoQdP2YF+R5Qgi4lHTLSmS+FwJl/ZU3Yj64+meDqLCW+R5Ua/kfaWQ7uK2Zb52NlVA0UUp9IcxfN7jGiOmLPQjvPvFceCFskdOhnlijroqQBQPK4/lvFa0/z4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=BSpWB2mX; arc=pass smtp.client-ip=94.100.134.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=A8W5mptCdk0S8QGbadr+z6jPfJ8L5En4UezduXTQKbg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763383022;
 b=mUZoOCe1LkLXpZSMwRlqsR2lkItEqCWJJb90e/itmU1CvnSCeLFXwyNn01LG5jID4+jyRQJK
 N3Ab0V/S0joR1pZ9xbc+Vnif29kcb/MquXZoUjrmTgpC5eS5K+bMPx463en4tR7RmGqJdOTyO1p
 nkkCva7XVjn/qJvXeSNRYK9HwkoGO8gXiDilMbhUzUtDlDp3N8bM17VOy/0VqbuCiJIQQ3ZVk7m
 984BaWHAhj76mg0vfVmbnKhnV9HAqoj13JmDuzDaGYZgKRnX6k0M2SOiFHmIxWNpCbPMLN5/FUS
 h6mt5S1ZB18R3AmOYVe6r9L1ANra0/pcMxPaeFOE6/K4A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763383022;
 b=K11tlvnzZBzfr5VKFk+InfzRLwm+BrCKRzYuVZVAcaGYWInpFIJFQzqe+/N7SiSzkPzbNTY5
 x7mNDvUXqVC3WMxG/zrVAhFdsShCuYB6Hz5Li2V4yGI/9aWZ09N3OyYkDU+9vtOqXuLe3CmpHXO
 OIpFy0j6aYRMztggmzP3LQsTnxm0Y0+aUNUgJ54ZAkKQxROoMCVfm5YqFdlKUSwdnVZRkmwdLxd
 bO17iyDO3AIjpOdATm1/JIfs56Zl78csh8d9jG/ifIFwQoK5myD8xnMQaORW6P//WOwZGruR0ho
 e0f81KHtUkzfD8SxVDgkaHzFCH1H13NpA9+rdFVNMPf6g==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Mon, 17 Nov 2025 13:37:02 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 82C15CC0E8A;
	Mon, 17 Nov 2025 13:36:54 +0100 (CET)
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
Subject: [PATCH 4/8] arm64: dts: tqma8mpql-mba8mpxl: Add HDMI audio output support
Date: Mon, 17 Nov 2025 13:36:31 +0100
Message-ID: <20251117123643.711968-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
References: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4d96gq1pMmz2nHWF
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:963b827203f1c42a2a4c49ed014a0b11
X-cloud-security:scantime:1.906
DKIM-Signature: a=rsa-sha256;
 bh=A8W5mptCdk0S8QGbadr+z6jPfJ8L5En4UezduXTQKbg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763383021; v=1;
 b=BSpWB2mX4skBLGEEqpIYK+MLaPVafWUjniPUwbYqYMsIuRYJ5XgIkJR4Ghp2lykaXSlaPdIv
 EsakV/nVZwD9jf1Vg1FQ4Hc4JAfflPzydtGn9J+lPgJ9wapBjMRsIy+wX98F/4lQIsKO+1BmbIL
 d835E/2o4SsWNrF9yOvz3kBWGXwKPYLfbDmM2WrxUfSDSrNEBf4RGG+dkW+SbSufeDbxi64DMxT
 QSv/Wr0uOW5crBgg+wmDGSvWAlrNqFSQaSRdtTAyva4RV6Ftd6ww2hBdgINkcV2RgyeXdTR1eJZ
 v2JQ/RH/WTgteaPs18Pj4WxWd/BKax6EeB5htfIrT6ASA==

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


