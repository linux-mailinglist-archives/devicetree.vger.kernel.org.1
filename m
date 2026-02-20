Return-Path: <devicetree+bounces-266976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIwDHmdwmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:32:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3D31685BD
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 419B53083263
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F335B26B2DA;
	Fri, 20 Feb 2026 14:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="by5aRTs4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE8D258EE1
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597899; cv=pass; b=nv9fEleHbxma/6XNL8EmJPz3djvFGnubQXy9KktlwZvYPTJQ4OHdOF3plsdkTchxUhjc6eWzjrU0ovm+vC+hEyLI9mZSHxAqPOvX5Wcsr8poEwJupEh4QawGOROKjP/D2I4YGbpq/QivWb5WCsepjLAjSh/scf+fC0Yhs+FhOH8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597899; c=relaxed/simple;
	bh=XZuxOTf/kiVaWWPgSbCLGs4MElww/Lm9TiUtT+MT+ps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W7skN3yJY3m9DFUlhyu/IFfcKZ3ruwuCTeIZmYI9ENJGrItJwCL0Zz+egzOghzh+3cz0xJvBSeUUQrleGo5/DSyOQnIPha1UOCh0OXtaXxkBhHpGGaVMBSea/4UKpZ8gya6sB+dF+vq7tuwrJjjC7BbdoBQxlpD2bIRyKjOajW4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=by5aRTs4; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=99ZE7SYGvViA3Bdc/s5b6uYab0kctnMzOeoylTWBVgU=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771597878;
 b=TSyaJyNYuZHxVFtCZQMTKYMyBT2MK6/IURUTyj5VEroUTF+E4aeoy5/g4/z+pipGSc57gDBK
 8cdTk02O/8zNhS3el7q7o9P/ee1QdL6y8j6H0+RaBGvnrmInTZV9cOlNaStirS/EEv5atoHkCsB
 JYe9ClsHwVJita33bmk726pjbBqbFU7LcEkOijiOZBasOJnyaLDXJz2GDV79l8PkgDvnxAjDjtD
 wss6FlzhmMrqEtwIwH81SLDcoHl1IJbh4trmwlK+PR5LFRXxeEfzllE6V6KmBoOQsMCl9vQOZ0a
 2Y9eC8YTJ9f/1DNot8Eb2JmN/onfwAap3HY1F7DB8uYKg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771597878;
 b=MikiILBauGGcEDgUV3NWLLkpDazBMPjrMpRFScoB7sTVdL5X1j+imgYkTk9Bw2sLrQnd+p3e
 DIXTuM60JhSHhPVZB10B1zkEQHp5Ip4Nl5tQ0izz577Gno/xdPdZstolTFQ0z64DLy7wFd2J3ey
 hfk5mXUZyFwnwFMotpgd/YWmEuaHmPmzJx4WrPzlSxwg8lmcLpOdM6C7J1bqrHjZMk9ud18spDn
 kvRf6FnmolPM5n6ZUTN3yaP5juADSo072gv3TfKowj87SLJyBoykzfPXQNbFXB6ja/7iZPd4aY7
 Yl5HU7g4OSUk6oWabmSgiV2XHYj4npHiVODUM9DIFZBqQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Fri, 20 Feb 2026 15:31:17 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id AFE04220DAE;
	Fri, 20 Feb 2026 15:31:11 +0100 (CET)
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
Subject: [PATCH v2 3/4] ARM: dts: mba6ulx: add boot phase properties
Date: Fri, 20 Feb 2026 15:31:04 +0100
Message-ID: <20260220143107.186956-4-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220143107.186956-1-Max.Merchel@ew.tq-group.com>
References: <20260220143107.186956-1-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4fHXjr2Yjjz1kNt3v
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:783503c191e8dbba864f0297b7a7db60
X-cloud-security:scantime:1.857
DKIM-Signature: a=rsa-sha256;
 bh=99ZE7SYGvViA3Bdc/s5b6uYab0kctnMzOeoylTWBVgU=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771597877; v=1;
 b=by5aRTs4UvGVG2ScujwMTBk/rymQY0rxjG/I8f2Mkx79vWSqhS1nuU0d6Il4e476ZrLJ8cC2
 cn1Uu8Avw5adKtfwqMAMHviKAq7q62TRdZV40w4MjhP70OzWtZ0vVAwQj+n2UrGDzqWVv3oW2So
 mYYHTW7/r9pSdkwm8JB3V1b1VJqBjeFxMN8ZzsU5/gLZmCFECega7vSFJGQSHRTcao0SlPzsJ1g
 4ORdxCvD+xm1FQWNwGszDmgyps++JV+A3jfIxkOE6o3K1ii30izhNaNsmeg0bxpWhC/BjovkrTJ
 4Wc/PXOWxlg7AjD9Br17d+nBmNbaLM0QAtJgyFfk6gxKQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266976-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: CC3D31685BD
X-Rspamd-Action: no action

dtschema/schemas/bootph.yaml describe various node usage during
boot phases with DT.

MBa6ULx need regulator, SD-Card, UART and watchdog access during
boot process.

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


