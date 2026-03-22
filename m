Return-Path: <devicetree+bounces-278766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIkVB6NSwGkxGQQAu9opvQ
	(envelope-from <devicetree+bounces-278766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 21:35:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DD52EABED
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 21:35:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0FCEB3024297
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 20:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 896043803F8;
	Sun, 22 Mar 2026 20:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="z2FEIz/a"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2990737F74D;
	Sun, 22 Mar 2026 20:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774211656; cv=none; b=dnCQkPMaQQUorScfHPjEbkeCUx1GeAXVYOGFYTZSmWgq/Al2yWTX8cIILzUdp3/stKxUOUJsjo7QTfUDdUbjYAOvx49vDKldFtTxdERYMNNZmdBQLq1i9EzYMZIJOQuuj3U2WwDzYvxz8MmYOHTdZCfxNQTqfhugFay6rl4nADU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774211656; c=relaxed/simple;
	bh=hXtOE/S/BD2vKjhdLlu+s5UL9v4tk7IWjKSM57AF9c8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BCaNeYJ90TgrIBmQPgAKrPUiuPuxPdS4g1+x3B0xEnwGKC03k1hdJUTDJGTrnRMklBAIYm+xv/KJWXrbiC92Z33HS+KDHLU1x2RV6mrVP6UUCY9DBLjYBaegkVicKHhRsstcfPhBMvPCDO5pnE/KVXLHQqNnqPE0kUnluy9C5PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=z2FEIz/a; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=h2XgC87QhZKmEL4LkPO3nDr8p/ZxtRxNQZuSqKpeYJM=; b=z2FEIz/aZkvVPsY+4chklYQSqG
	1zReuu4agcLAYpOn3ZCy5IuZfOtmhvYyPv8UUUb+JZK0Zk5cBfuwczkp9pF5C5I/ARmp0n+zvRVR/
	CeeMZOLEI5svyOAqG1/z9B8ULt7LUMykz41/+MRiMJTJ+M8liim3bZAzrgQLnLVOcyVfWs/WdofEv
	c2FVVC5YOl5xOg1n84N8holWP03pE+9an5satwv8n/sNkiSHXqtfuOSH+QkEzjzTam1ELTnmoXYs+
	7bs9pH+eENW1clTkVdq7Z6QExVIvrd/cyyqxCOf8lTVLIp3SeMcVsUxZndipaDMdcvRume/MKp1z1
	eN/lSsgA==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1w4PUz-0000000AsfJ-2PHS;
	Sun, 22 Mar 2026 21:34:13 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-riscv@lists.infradead.org (open list:RISC-V SPACEMIT SoC Support),
	spacemit@lists.linux.dev (open list:RISC-V SPACEMIT SoC Support)
Subject: [PATCH 6/6] riscv: dts: spacemit: enable PCIe ports on Milk-V Jupiter
Date: Sun, 22 Mar 2026 21:28:37 +0100
Message-ID: <20260322203356.2206927-7-aurelien@aurel32.net>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260322203356.2206927-1-aurelien@aurel32.net>
References: <20260322203356.2206927-1-aurelien@aurel32.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-278766-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[aurel32.net:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,aurel32.net:dkim,aurel32.net:email,aurel32.net:mid]
X-Rspamd-Queue-Id: 97DD52EABED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the two PCIe controller along with and their associated PHY. They
are routed to the M.2 M-key connector and to the the PCIe x8 slot.

Add an always-on regulator sourcing 3.3V from the DC-IN input, to power
the PCIe ports.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 .../boot/dts/spacemit/k1-milkv-jupiter.dts    | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index 4432f8287eb5c..d59dea4149ae7 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -40,6 +40,16 @@ led2 {
 		};
 	};
 
+	pcie_vcc_3v3: regulator-pcie-vcc3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie_vcc3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
+
 	reg_dc_in: regulator-dc-in-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "dc_in_12v";
@@ -291,6 +301,38 @@ dldo7 {
 	};
 };
 
+&pcie1_phy {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie1_3_cfg>;
+	status = "okay";
+};
+
+&pcie1_port {
+	phys = <&pcie1_phy>;
+	vpcie3v3-supply = <&pcie_vcc_3v3>;
+};
+
+&pcie1 {
+	vpcie3v3-supply = <&pcie_vcc_3v3>;
+	status = "okay";
+};
+
+&pcie2_phy {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_4_cfg>;
+	status = "okay";
+};
+
+&pcie2_port {
+	phys = <&pcie2_phy>;
+	vpcie3v3-supply = <&pcie_vcc_3v3>;
+};
+
+&pcie2 {
+	vpcie3v3-supply = <&pcie_vcc_3v3>;
+	status = "okay";
+};
+
 &qspi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&qspi_cfg>;
-- 
2.51.0


