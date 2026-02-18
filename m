Return-Path: <devicetree+bounces-266429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OF/yIN+9lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:25:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E12D81569B7
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:25:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1E423038F49
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA2E2D0C9D;
	Wed, 18 Feb 2026 13:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Ynks3kU5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay99-hz2.antispameurope.com (mx-relay99-hz2.antispameurope.com [94.100.136.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8621F2D12ED
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.199
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421105; cv=pass; b=Pd8LWQ0K63hZvvLnCcwb0IYwPfNH97B6pWsLS+vhxKsK6Rtn8kGMw3NXSOffi7h0rOkmYZT3kFD1/Kse6CnOFXUpkmlUU6kjEfLn3Rykm8z0LOOtBAbIFiiH8+X/VM2iBvTz/eK8MSdE+907QfRFWPTzP2joGiCprMT1x96m60Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421105; c=relaxed/simple;
	bh=+VRdDjYGjOAQQR44GAINSO0rtHT3czjpLLS9e/uiIMk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NJTR2yS3UJ7YZOGrvhmz+KPf47EQPob0CwpTb77S49x4sJFXjYa0dQXMyMIZP5TEHKq97vi5TREpLQ52sv2a6hgIAEWXTbkA4b3pZFaFiLQYm8q+mwXPgWDM/lhselHm7yqPE5Zt43ueygMQFS3QptjcA3QciYJfOuF+eJYi6gk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Ynks3kU5; arc=pass smtp.client-ip=94.100.136.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate99-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=MoTbc/oD0OyhhEGqv2giwAcUy2p9JS4wITvmke3ZLCc=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771421031;
 b=ANpKujiZHvIrlwE7XT22/pakXBLtl612OA/IpCtmCwRNXcE4iRBk+4r+aEWm/puQs4qPvCI2
 SYR6je63pc47ZTNabYPmtjDYehXy+RQlDU4WF5mWalNCWCvVtFDoHasw6XwqgNrdhy07FeswmDz
 abw/h//W7YPVIZg/cx5/BiKMQ6qbaRaLdR4B8xYNSakEG99caBSjAc/Z78fSroERHVyCzlcsz7i
 KhsuwzgcFFZ3I9TBF27OUSUXdcgPpwIrYsoRfEYmIerHU1Z5lfjIJxjCZhmBsHW0oZDhvYgCr9U
 FceTIQ8bVsFTyC2+Buh4wIeJ50FTCnrqRo5OZAH/m/Ktw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771421031;
 b=aE6gjgqL932o81RpbDX90gwSPqHmbJuvvyKVfYN4p2ensBYNqnST+NPJQ/yL8cYhczIPLTRe
 d/hzbr0VDSUCfImTYDZKhHegDCISmZ4I8utqH4grUSEsmZaqS3AcHFP52aMhSgmfN8nPhRRTMW1
 gl6Sm8WIL6jJ4V/1azXy6p+FPWtWUtsOcTylCqaK0j7v9QDqQ9VGdIaELRWwPv7kpHtLCC8UpnA
 q6gAntXoM4kBlQqBG00IdRMKoHwQBhLEzF2pN25G68Wsl2xEjkJcv64l5lkGpEptGtLgqPHXhx5
 SFf5hcTXs9CzZrLuFwxnH90BB2fTVEmxhdj5uExcxGKsg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay99-hz2.antispameurope.com;
 Wed, 18 Feb 2026 14:23:51 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D5AFB220714;
	Wed, 18 Feb 2026 14:23:44 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] ARM: dts: mba6ulx: add boot phase properties
Date: Wed, 18 Feb 2026 14:23:36 +0100
Message-ID: <20260218132339.32157-4-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
References: <20260218132339.32157-1-Max.Merchel@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay99-hz2.antispameurope.com with 4fGHJx4N4Fz28mW9
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:bfaa624291ef2e7c54e646dbcffdbd37
X-cloud-security:scantime:2.078
DKIM-Signature: a=rsa-sha256;
 bh=MoTbc/oD0OyhhEGqv2giwAcUy2p9JS4wITvmke3ZLCc=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771421031; v=1;
 b=Ynks3kU5X0IAUf5ZHg/tGSMFWgbbqt8k7PIE/OC6fYwTFhF35baKnI80nkXWt6UtaaHkdfa0
 yTFFpoXNVCdreWmxGn39AN1fpFnmeXUVlovjdEjSyZC4ZhM/37NQt7biTxRQ70a8fBoGh9DhM6D
 puPsT5ZYW11YqqxZrCIoi9xzCL5M+djOXFlQaLN1LpjfPFgw7kS3Z6nKuN2s18IcctbpwPTXEUo
 bzXyuNFHjS/TrNl6Dxj68LHnFVVhX9zTV7kE1Z/iheRhOBM+T37qb5IXwhPgTfjOIRzcJYqQlvu
 V06iGIeegP9tKbmjJNajmcEtz6AGrN33OeL2OrJI5vcRQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266429-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: E12D81569B7
X-Rspamd-Action: no action

Add boot phase properties to MBa6ULx device tree.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
index 65fde4f52587..1fda60d62ffe 100644
--- a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
@@ -95,6 +95,7 @@ reg_mba6ul_3v3: regulator-mba6ul-3v3 {
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-always-on;
+		bootph-pre-ram;
 	};
 
 	reg_mba6ul_5v0: regulator-mba6ul-5v0 {
@@ -336,6 +337,7 @@ &sai1 {
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
+	bootph-pre-ram;
 	status = "okay";
 };
 
@@ -392,6 +394,7 @@ &usdhc1 {
 	no-1-8-v;
 	no-mmc;
 	no-sdio;
+	bootph-all;
 	status = "okay";
 };
 
@@ -399,6 +402,7 @@ &wdog1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_wdog1>;
 	fsl,ext-reset-output;
+	bootph-pre-ram;
 	status = "okay";
 };
 
@@ -494,6 +498,7 @@ pinctrl_uart1: uart1grp {
 			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
 			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
 		>;
+		bootph-pre-ram;
 	};
 
 	pinctrl_uart3: uart3grp {
@@ -542,6 +547,7 @@ MX6UL_PAD_UART1_CTS_B__GPIO1_IO18	0x0001b099
 			/* CD */
 			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x0001b099
 		>;
+		bootph-all;
 	};
 
 	pinctrl_usdhc1_100mhz: usdhc1-100mhz-grp {
-- 
2.43.0


