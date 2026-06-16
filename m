Return-Path: <devicetree+bounces-312511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ff9pJc05MWq8eQUAu9opvQ
	(envelope-from <devicetree+bounces-312511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:55:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E32968EFF1
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:55:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fris.de header.s=mail header.b=C0BFpcUX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312511-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312511-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fris.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BB6C93018633
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC2B4418EE;
	Tue, 16 Jun 2026 11:54:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.fris.de (mail.fris.de [116.203.77.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7129543E4A8;
	Tue, 16 Jun 2026 11:54:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781610845; cv=none; b=hBhhHDHKKlchz144C8ObeJlG8CEbIMi5BLO6d96kFHJKmEVrQLMZj90eBIVDPn6j9poTU3HgicwYgF86fumzTofMmmj7dMsfcJrjVmztrggJeJKA0rsex7luBfr3LPyGs7TPsDHFxAo6k83ilHtXk6g2T+63QhAl+dw8jYgLFb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781610845; c=relaxed/simple;
	bh=u+ruuwrklwhOk9OcsC5eXfPkO9zDlE0ouEt9a6sQmBM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CYsqnGot9xURe0mtbI6tLe0fOkcr9znDPlkWj4yt4sdoMuBHOq0icWZmUwQ1dn+7bvVyBAfWBbE9/gz3qsrGvSPJigr87Cg7uAVmNr/dfeTQLd+yP78+odavNL/dLlSUgXYag7PWLpqhiwWnvHDuui5YHhZCQvOsrAFVDcivhLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fris.de; spf=pass smtp.mailfrom=fris.de; dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b=C0BFpcUX; arc=none smtp.client-ip=116.203.77.234
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1781610841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qph6fZPp83f1sbs5oxI4xqT47tWglnS8YBVXxfJa43c=;
	b=C0BFpcUX5KYPwDmHzUcKuQ5MLzYxTsSZ6F8bOFqYWkML8xjGwEPYmmgBLa+VdpYstgGA23
	sox2mbkgjikmSoyFCbxdk6uOsBYKz6oXCFLbJ6jQRCrp/sdzVZqPKF3yME6oEgw4BoqrIW
	BsUnRAO9wldhj8XPpQW1a0PMWrSGORwW90p7UIycuj5ui8V4mxq+cxQf2crWKMFTX9x2Tu
	+7i4ceyfuBZ6Js2RP706OzFVkV+gnrEm+taMzqMFg8hdLyDuyN3XiGdl3NS5vm6aQW83lz
	NpbjSgCn62fjzNbLWsIZjbmYDawSFcT2zit4J0ZXCPO/t7XZv7c+5zDderghJg==
Date: Tue, 16 Jun 2026 13:52:24 +0200
Subject: [PATCH 9/9] arm64: dts: imx93-kontron: Enable ELE firmware driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-9-cb7f3698c3e6@kontron.de>
References: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-0-cb7f3698c3e6@kontron.de>
In-Reply-To: <20260616-upstreaming-next-20260609-imx-ocotp-ele-v1-0-cb7f3698c3e6@kontron.de>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Frieder Schrempf <frieder.schrempf@kontron.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1625;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=bsVi7wbNH1vPEz1HqDAKSx2afoxcj6Bu6jRCJWSKcoY=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JIcvQMjSV76PimaeBKVbiXxYx7ExdUD8h0M82/ntF1s6LA
 byN/D0dpSwMYlwMsmKKLFL8Fq9tzWJ95I9VR8HMYWUCGcLAxSkAE1m3jOG/j9+Lmym2AZ/rE+o/
 Z8q/cOLf/KEjkGWiTf7/PQofrnGeYPgrUXLF+8Wzvp9rGN1vrbBjNJmzZT2LisXKFUrq31nPu0a
 yAAA=
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fris.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[fris.de:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:srini@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:frieder.schrempf@kontron.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312511-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fris.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frieder@fris.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fris.de:dkim,fris.de:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,kontron.de:mid,kontron.de:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E32968EFF1

From: Frieder Schrempf <frieder.schrempf@kontron.de>

Add the ELE firmware API node and pass its handle to the OCOTP
driver. This allows us to gain read/write access to the OTP fuses.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 .../boot/dts/freescale/imx93-kontron-osm-s.dtsi    | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi b/arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi
index c79b1df339db..c1da4b52c878 100644
--- a/arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93-kontron-osm-s.dtsi
@@ -24,6 +24,15 @@ chosen {
 		stdout-path = &lpuart1;
 	};
 
+	firmware {
+		hsm0: secure-enclave {
+			compatible = "fsl,imx93-se-ele-hsm";
+			mbox-names = "tx", "rx";
+			mboxes = <&s4muap 0 0>, <&s4muap 1 0>;
+			memory-region = <&ele_memory>;
+		};
+	};
+
 	reg_usdhc2_vcc: regulator-usdhc2-vcc {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -57,6 +66,19 @@ regulator-state-disk {
 			regulator-off-in-suspend;
 		};
 	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		ele_memory: ele-memory {
+			compatible = "shared-dma-pool";
+			alloc-ranges = <0 0x80000000 0 0x40000000>;
+			size = <0 0x100000>;
+			no-map;
+		};
+	};
 };
 
 &flexcan1 { /* OSM-S CAN_A */
@@ -253,6 +275,10 @@ &lpuart7 { /* OSM-S UART_A */
 	pinctrl-0 = <&pinctrl_lpuart7>;
 };
 
+&ocotp {
+	secure-enclave = <&hsm0>;
+};
+
 &tpm3 { /* OSM-S PWM_0 */
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_tpm3>;

-- 
2.54.0


