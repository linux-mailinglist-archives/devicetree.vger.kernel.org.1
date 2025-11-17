Return-Path: <devicetree+bounces-239346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1CBC64207
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9C7EA4F2A64
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B011C32ED4A;
	Mon, 17 Nov 2025 12:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Hc3+xALP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay26-hz2.antispameurope.com (mx-relay26-hz2.antispameurope.com [94.100.136.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1AC32E6B2
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.226
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383089; cv=pass; b=dmhmqt5eWfTC+4EWpGVIgex8z5Bl6dE+oHp8wWgcfEckqjoHGpOipNu7WAnc/HXz+3BLsOlJrP5hmbt6SN5/8ZJX457nuKZk5QGuh/Lk8hli+tKbklYdyFVofTel4s5yccBBGFrs3lrwU1CrKELccpIDfRnGYurX+GjCjxzbKfE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383089; c=relaxed/simple;
	bh=PpAWKVuNgKtQEKqGLkxH2In+DG4oYvwEX15NccYojt4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WjmaEFmqnZz26tQEH//vJd15R4p60rA9EfZKmRocCDmqw7dRFa95mjKXvE2aLvonBC7rgESzkPALUGgo/YFPTi8pWGxLBTYS6r8885+jnzs6eEppa1l8Fi9QOehNr/d9jrNZiSjPBfiVtePAv73xFq8D1gMAjM4z8mnVR+VStb8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Hc3+xALP; arc=pass smtp.client-ip=94.100.136.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate26-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=9pJ5eqwsRiOt65RV7so49519D0zNC8o9Y8EmhxoJEHY=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763383020;
 b=QJ0Gx+cBYwPFw3DoX5EJfq4fFmZQ85RkguPbPaZUc8Bnprm+QrsZRXsa+KG4Jp9ugl/YQ65q
 9RqKBU7PhlUgtrUQtSahr74hpEzc1sXWFyXCp+YvGFRStx6mNaPDDLfi44ImeFvhvcFUbOvJffw
 SHhb624SLWO16kkJKVlZOSBBkd6hDKQCw1W84X9xQstHSxoB6TdXmloEaoCkVDtUMXQwTqwLL18
 r3fvAOvqPLO1WJ62OBT1rHWGMcO2cIuj6kiLwhktdtQjue3AoqpfYp9aIood+sEfLB5CVInitYN
 W5rXMRfPKOykg1AGf6MeQHFz9L04IVeChzVzImlkreWNQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763383020;
 b=XFqIrmvdZFzOtWDf4BNxU44A7OThius0XppGwhl+UonptLYUTMlZfRbJFFaJid0bA+0DQSTN
 G7v1Ex4Mg8yvrSdSiTqLDrqln2zIreBNj68+oGCpgRYrzK+Ltvtp6LbNw/0kgHf/XhCNYBms1T6
 4vwpBhyG6JuMppsSWdc8lqQhsTVfn69ahKlCQP8OjcqmDTuYHwXaaGUszhIutS+hgvePBEBpME/
 Kef2zZkHWVexalIudGSNPe3MtvPOVTCw0cJrLIWCLvP8/30osiG46mFt05/ELtuqtLMcd4YL36M
 x+BHNd962o+9reaLPd+Fs+vKK0Um/hksaFH+pJm9nehDw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay26-hz2.antispameurope.com;
 Mon, 17 Nov 2025 13:37:00 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id E4E9CCC0E93;
	Mon, 17 Nov 2025 13:36:52 +0100 (CET)
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
Subject: [PATCH 3/8] arm64: dts: tqma8mpql-mba8mpxl: Fix HDMI CEC pad control settings
Date: Mon, 17 Nov 2025 13:36:30 +0100
Message-ID: <20251117123643.711968-4-alexander.stein@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay26-hz2.antispameurope.com with 4d96gn57Xmz2CqVx
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:4c76057e9791c4f80819dc8ef33cc562
X-cloud-security:scantime:2.123
DKIM-Signature: a=rsa-sha256;
 bh=9pJ5eqwsRiOt65RV7so49519D0zNC8o9Y8EmhxoJEHY=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763383020; v=1;
 b=Hc3+xALPXlQxfulEQkIs1/1WGVgnskuV0Ge2mpuK+8gIUL2kzp/+XX6UjwRMUN8xiHrL49QP
 VCj4Q3VQ+CiN8PQx8jli9sCSe2XHQQlERct0/48R26MzJ0qP6YGpCS9Dkar6MddAmYIcJ3n7Zku
 lzrtpL6txrjqvraMwctoLvdUbs3RyjgKGfCx/37PP5JI7+wA3gbQo/9DuJfJkMKlalp6votNh8L
 NJdX6/X1znfC8cOy1Pj/i4W6V9mJSgkPmXcwvSFePOm1BYKS2XpScgIUcsN43qMuxarjKeDWJV0
 Eq03nEylL0BrpZjP4hKWQY05E48/HDM1HHZL/+hUn+/OQ==

As per datasheet of the HDMI protection IC the CEC_IC pin has be
configured as open-drain.

Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
index ff2bacf24bfd2..03b75d4cf699a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -868,7 +868,7 @@ pinctrl_hdmi: hdmigrp {
 		fsl,pins = <MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x400001c2>,
 			   <MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x400001c2>,
 			   <MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD	0x40000010>,
-			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000010>;
+			   <MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC	0x40000030>;
 	};
 
 	pinctrl_hoggpio2: hoggpio2grp {
-- 
2.43.0


