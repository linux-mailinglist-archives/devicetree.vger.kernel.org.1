Return-Path: <devicetree+bounces-298624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBTrMp0lCGoGbgMAu9opvQ
	(envelope-from <devicetree+bounces-298624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 10:06:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C48555ABA7
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 10:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A09283016EC2
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 08:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB84380FE3;
	Sat, 16 May 2026 08:06:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6119A171AF;
	Sat, 16 May 2026 08:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778918806; cv=none; b=JgukKdrP87tVYe3vc5uNpxjHSheVi12CcRXiICF09T65+gLUZu9B9ClRdZvy30ueKfj4IvgJ7O+Zz/Zpx43I04T4zpU1AL/KPDnzVMnBjpk0MhvfYOPffwaTRVcLpylS+LLfPa8RLHwQ7P02/tS8UWA3+BFhToui2vQhyBlQqAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778918806; c=relaxed/simple;
	bh=kwAb+8t7n6fTixn8aUsPP7FN/BlIfXS+yinz1sN4Ei8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aK0zpR9GC+8mqRfgWU8iD2PXghkQOlx6EH0FkZQkOZQ+ptfGYpTt9WPL+UqBkrG/BUTcbbUqOqsYmhMBTtMnMpy9vBvnsSM8S3GwA2sruDDcwxP9yTdSGb66/0Fa5aQk5quGF1ygXX/H8bOI1hDVHLWt8w/lXOGZ6YoaxrQeucg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from Vostro-3710.. (unknown [119.122.215.211])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3ea911568;
	Sat, 16 May 2026 16:01:23 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	spacemit@lists.linux.dev,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/1] riscv: dts: spacemit: enable QSPI for OrangePi RV2
Date: Sat, 16 May 2026 16:00:30 +0800
Message-Id: <20260516080030.1736836-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e2fcde40103a2kunm3c86e68bda47e
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSR9IVh0ZQxpLGB1OSU5CHVYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVJSkpZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0tVSktLVUtZBg++
X-Rspamd-Queue-Id: 2C48555ABA7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-298624-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	DBL_PROHIBIT(0.00)[0.1.17.112:email,0.0.78.32:email];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,jmu.edu.cn:email,jmu.edu.cn:mid,0.0.234.96:email,0.0.39.16:email]
X-Rspamd-Action: no action

Enable the QSPI controller and the XM25QU128C SPI NOR flash on the
OrangePi RV2 board. Add a flash partition layout from vendor UBoot.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 .../boot/dts/spacemit/k1-orangepi-rv2.dts     | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
index c95ca38e3d4a..3081065cec0e 100644
--- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
@@ -288,6 +288,51 @@ &pcie2 {
 	status = "okay";
 };
 
+&qspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&qspi_cfg>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <26500000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		vcc-supply = <&buck3_1v8>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			bootinfo@0 {
+				reg = <0x00000 0x010000>;
+			};
+
+			private@10000 {
+				reg = <0x10000 0x010000>;
+			};
+
+			fsbl@20000 {
+				reg = <0x20000 0x040000>;
+			};
+
+			env@60000 {
+				reg = <0x60000 0x010000>;
+			};
+
+			opensbi@70000 {
+				reg = <0x70000 0x030000>;
+			};
+
+			uboot@a00000 {
+				reg = <0xa0000 0x760000>;
+			};
+		};
+	};
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
-- 
2.34.1


