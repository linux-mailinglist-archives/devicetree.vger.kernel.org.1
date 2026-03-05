Return-Path: <devicetree+bounces-271737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGAsMg/9qWl+JAEAu9opvQ
	(envelope-from <devicetree+bounces-271737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 23:00:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C945B218BE4
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 23:00:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8FD6A3009828
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 22:00:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D83C3361651;
	Thu,  5 Mar 2026 22:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="WbmwTcln"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41C9334C08
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 22:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772748041; cv=none; b=BRZuV1GAioWwYh+mPcsUu+sxeqyhP+h6UcYvR78g1F0sJDvRfGvFP9Sgxfkvae+e14517Aw1UTdpzf3fnBVTm9AvqUlVIrufbAlwClx77H1wR6jKE7+qzMLRfur92fMkTQJh3rutZzGRIcha5K2OJE7+4zW5TZCkRBOfC6HEkg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772748041; c=relaxed/simple;
	bh=NcyaCipCrb3L7ejX/E+xZZI3B4F+Kcp8rHWDP8HnOeU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Gh+LU9MNk1/O48BusQmRuAkVEQfgr2RKj5mCxzS1xe7Hhh7kSEKXOU8G+1AzMEFAbciEu3CfQ1zBDbJ4Bi9vFeBDzJswFNeZp2CghYVppCB5Aab0WJWTCBNpi9KoppXJCojqM/6t5sXAr8sLhr6NivTS9NrJaGvb/U+ooNxivxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=WbmwTcln; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=38fUtNK13Iz/fi
	0tPvgUDoQHQMIMQNDReTs8VIdeB5s=; b=WbmwTcln677sVckY2ZW9/zKaG2dj4p
	6tSyIINHtTI4+2lPaZrSjWyD0Vrgvf1eajH0EN12gblf4KE4v3LUqDiQEiA01dwV
	glU3xxuWvnlma1xbLnZ5SsPTFGxXYz/FNbnZduB29NkRN8dMRmJbQHPIaoYTRqmW
	WAqsLkzTOJw3KMmJJwCV03udQhX6t/hi90GI8efe9W+7IqiZxfceQ0L9oQETxZUI
	E93KJlm+fYbA/fF3OOq6QppIBpux1aph+5nW8dlXVGDHEa31+K6X9h07vUuUY0At
	hHS3izh+ZFWaPUuf+teyYAasqnVSCr6mO3Pi4r9SK+NzeGkzrGZILjaw==
Received: (qmail 1349977 invoked from network); 5 Mar 2026 23:00:33 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 5 Mar 2026 23:00:33 +0100
X-UD-Smtp-Session: l3s3148p1@x57OEE5MHOMujns5
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2] ARM: dts: renesas: r9a06g032-rzn1d400-db: add QSPI node including NOR flash
Date: Thu,  5 Mar 2026 22:54:04 +0100
Message-ID: <20260305220023.28257-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C945B218BE4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271737-lists,devicetree=lfdr.de,renesas];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[sang-engineering.com];
	FREEMAIL_CC(0.00)[sang-engineering.com,glider.be,gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Enable the QSPI controller to access the connected SPI NOR flash. The
NOR datasheet may suggest faster tuning parameters but those did not
work on my board.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Depends on "[v5,4/4] ARM: dts: r9a06g032: Describe the QSPI controller":
https://patchwork.kernel.org/project/linux-renesas-soc/patch/20260205-schneider-6-19-rc1-qspi-v5-4-843632b3c674@bootlin.com/

Changes since RFC v1:
* dropped RFC status, QSPI driver updates are upstream now
* use KiB and MiB
* use reg address in node names
* dropped "qspi0:" prefix from partition names
* explicitly describe size in the "remaining" partition

Thanks, Geert, for all the suggestions!

Works on my N1D board and patch passes 'dtbs_check'.

 .../dts/renesas/r9a06g032-rzn1d400-db.dts     | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
index 4a72aa7663f2..80f78998500b 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
+++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
@@ -300,6 +300,84 @@ pins_mdio1: pins_mdio1 {
 		pinmux = <RZN1_PINMUX(152, RZN1_FUNC_MDIO1_SWITCH)>,
 			 <RZN1_PINMUX(153, RZN1_FUNC_MDIO1_SWITCH)>;
 	};
+
+	pins_qspi0: pins_qspi0 {
+		pinmux = <RZN1_PINMUX(74, RZN1_FUNC_QSPI)>,
+			 <RZN1_PINMUX(75, RZN1_FUNC_QSPI)>,
+			 <RZN1_PINMUX(76, RZN1_FUNC_QSPI)>,
+			 <RZN1_PINMUX(77, RZN1_FUNC_QSPI)>,
+			 <RZN1_PINMUX(78, RZN1_FUNC_QSPI)>,
+			 <RZN1_PINMUX(79, RZN1_FUNC_QSPI)>;
+		bias-disable;
+	};
+};
+
+&qspi0 {
+	pinctrl-0 = <&pins_qspi0>;
+	pinctrl-names = "default";
+	status = "okay";
+	bootph-all;
+
+	flash@0 {
+		reg = <0>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <62500000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		cdns,read-delay = <1>;
+		cdns,tshsl-ns = <200>;
+		cdns,tsd2d-ns = <255>;
+		cdns,tchsh-ns = <20>;
+		cdns,tslch-ns = <20>;
+		bootph-all;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				/* 64KiB */
+				label = "spl";
+				reg = <0x0000000 0x00010000>;
+			};
+			partition@10000 {
+				/* 64KiB */
+				label = "pkgt";
+				reg = <0x0010000 0x00010000>;
+			};
+			partition@20000 {
+				/* 512KiB */
+				label = "u-boot";
+				reg = <0x0020000 0x00080000>;
+			};
+			partition@a0000 {
+				/* 64KiB */
+				label = "env";
+				reg = <0x00a0000 0x00010000>;
+			};
+			partition@b0000 {
+				/* 128KiB */
+				label = "dtb";
+				reg = <0x00b0000 0x00020000>;
+			};
+			partition@d0000 {
+				/* 1MiB */
+				label = "cm3";
+				reg = <0x00d0000 0x00100000>;
+			};
+			partition@1d0000 {
+				/* 6MiB */
+				label = "kernel";
+				reg = <0x01d0000 0x00600000>;
+			};
+			partition@7d0000 {
+				/* Remaining */
+				label = "data";
+				reg = <0x07d0000 0x1830000>;
+			};
+		};
+	};
 };
 
 &rtc0 {
-- 
2.47.3


