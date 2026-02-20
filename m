Return-Path: <devicetree+bounces-266977-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAbICmpwmGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266977-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:32:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 867F61685C4
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:32:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81E673084F11
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F4426C39E;
	Fri, 20 Feb 2026 14:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="KJTV1kUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1787122DFA4
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597900; cv=pass; b=tHQcE9yTCEnm0eikPE2W+Xag1MNFRSZEQh1FzmDzIpl8EIW0nKHKGdYtxcBPyTMVKY5uPq5Jufb55+DFoyRdnGrTGTR7BZhKvq21j0bmtqyZHEgS2p7EnAqpzpkaaxAhjED1/4KPAj98njO4c1tm2DWNc7t8Idg2KBFg85fhkw0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597900; c=relaxed/simple;
	bh=9adFiLf/3aoD178kX9YPYxjWWPmRlnssIJbGisN7jsk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EHr3zwoQOYj/CeLAvYRmiHZHx9oTa1UFYxcPix6ucniwB26xBV5NpJISxfxDWNdcpazyKkOSEhw5lAJBM6Txtdsof5LCqA0PxRjLvyRYy6BP8YQJ9YlTZ2gp3/8911sOt+EVDmynq9mWyw4tl/waqjXj5DQM/6hfiF/LvZkm9yM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=KJTV1kUo; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=8Wg8hhuphaDA1KXI4FRar5JXbbzUBqxPKxV6zXxqMdA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771597876;
 b=OjCLzbdMCleCxfnX4WDRkv1Xu0gW8SMgF5n9ODl5dT5RGnO7e/MV780SR/5SnfzBNQxVryG5
 T65UQT4P5jQsxWsd9EpNKdHAj8Bd19nqZzVJmn80vJ892BHC99RMo0twmLNdgXbhhCpGqtvNsdc
 UicPubllHXzufCyNiMmI8eiw/YY4qze0fqYDwdnDNc1Wd1cvgI/s9Pzl11Lh+v3fLDkCQaPbf/d
 uczDKtNT8ySjZUKg0CjnU5J6WlWdash6//FlZafk6RlM2OYxcYyA/qrTg6AkGuMHzv3ZZqCNkpw
 TsXndc4fGC2DoWIeiuEQaP8C6ZwMouf9I374bDMlnCRrA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771597876;
 b=n/wObKUkVIhJ1OfyYHVLqAkB/sOHy5lUmIS9Sq62Vnq2tUil5PvGOzuhKFpzI3rPuQIA0M/4
 ZgbI7XvBWx3tVKfflkTro0Lr+tPjXqBTq1CKoIQxXByBHOH2Uk5s06iiKpH0CISwb0QUzFbjfkT
 /lJ0bBYuRu5fIlDk1TnvNiAKv+IMnR50euDndhlpe3G+v12pxs7HpZNJFQO8WUQ4QT2PVw75nCk
 FuygjxtaQb6LKy7y2NCVgBdvXD0yOTUCz1rPGmByY7cE6VYDTr1RqG8B2BCO3EMZIOx2p5efQ2s
 nCfm+maOfbwiCG3MPssu0WRN58AcbLFLIpKZEXx+GFWQA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Fri, 20 Feb 2026 15:31:16 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 6C8982205DE;
	Fri, 20 Feb 2026 15:31:10 +0100 (CET)
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
Subject: [PATCH v2 1/4] ARM: dts: imx6ul/imx6ull: add boot phase properties
Date: Fri, 20 Feb 2026 15:31:02 +0100
Message-ID: <20260220143107.186956-2-Max.Merchel@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4fHXjq10Y0z1kNt3l
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:b31b8f68e1352bc9e8374fc850558ebc
X-cloud-security:scantime:1.849
DKIM-Signature: a=rsa-sha256;
 bh=8Wg8hhuphaDA1KXI4FRar5JXbbzUBqxPKxV6zXxqMdA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771597876; v=1;
 b=KJTV1kUoepVE1/rV/7RwW2SpVBT/5d9pLh6jpTNqlxqtWS+1FlYqO2nwN8+x0dCNT9einXHa
 F4nlDRMlHMHZQDfWv0AtQMggEMurNvU6hfSzcjZQrK62+SumfKk+Rrka//FD3nxxCqd+aC/glUQ
 Pmpp/Miv07JaEn3cLlL1OdkaXq+cLR0dVZhK9UJSPGK3Swmc0noWkNeqn5hYX2w+EXXZazBnAFv
 ybT5Ny5wHEosg5KGY6iMA9+SdFnaDZAX686p+tDF6r2mxgK146Og36Hpwzb5cZDmtBLyRgsxLv2
 enGZnD5nN0y0/aTdBe8GrmS0Z1p9zv4506pr4yoPE9FvQ==
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
	TAGGED_FROM(0.00)[bounces-266977-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 867F61685C4
X-Rspamd-Action: no action

dtschema/schemas/bootph.yaml describe various node usage during
boot phases with DT.

All SoCs require buses (aips and spba), clock, iomuxc and SOC access
during boot process.

Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6ul.dtsi  | 7 +++++++
 arch/arm/boot/dts/nxp/imx/imx6ull.dtsi | 1 +
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
index 6eb80f867f50..24541fdf49ce 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
@@ -115,6 +115,7 @@ osc: clock-osc {
 		#clock-cells = <0>;
 		clock-frequency = <24000000>;
 		clock-output-names = "osc";
+		bootph-pre-ram;
 	};
 
 	ipp_di0: clock-di0 {
@@ -143,6 +144,7 @@ soc: soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&gpc>;
 		ranges;
+		bootph-pre-ram;
 
 		ocram: sram@900000 {
 			compatible = "mmio-sram";
@@ -202,6 +204,7 @@ aips1: bus@2000000 {
 			#size-cells = <1>;
 			reg = <0x02000000 0x100000>;
 			ranges;
+			bootph-pre-ram;
 
 			spba-bus@2000000 {
 				compatible = "fsl,spba-bus", "simple-bus";
@@ -209,6 +212,7 @@ spba-bus@2000000 {
 				#size-cells = <1>;
 				reg = <0x02000000 0x40000>;
 				ranges;
+				bootph-pre-ram;
 
 				ecspi1: spi@2008000 {
 					#address-cells = <1>;
@@ -580,6 +584,7 @@ clks: clock-controller@20c4000 {
 				#clock-cells = <1>;
 				clocks = <&ckil>, <&osc>, <&ipp_di0>, <&ipp_di1>;
 				clock-names = "ckil", "osc", "ipp_di0", "ipp_di1";
+				bootph-pre-ram;
 			};
 
 			anatop: anatop@20c8000 {
@@ -745,6 +750,7 @@ power-domain@0 {
 			iomuxc: pinctrl@20e0000 {
 				compatible = "fsl,imx6ul-iomuxc";
 				reg = <0x020e0000 0x4000>;
+				bootph-pre-ram;
 			};
 
 			gpr: iomuxc-gpr@20e4000 {
@@ -826,6 +832,7 @@ aips2: bus@2100000 {
 			#size-cells = <1>;
 			reg = <0x02100000 0x100000>;
 			ranges;
+			bootph-pre-ram;
 
 			crypto: crypto@2140000 {
 				compatible = "fsl,imx6ul-caam", "fsl,sec-v4.0";
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull.dtsi
index db0c339022ac..ba0ea10c7b74 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull.dtsi
@@ -57,6 +57,7 @@ aips3: bus@2200000 {
 			#size-cells = <1>;
 			reg = <0x02200000 0x100000>;
 			ranges;
+			bootph-pre-ram;
 
 			dcp: crypto@2280000 {
 				compatible = "fsl,imx6ull-dcp", "fsl,imx28-dcp";
-- 
2.43.0


