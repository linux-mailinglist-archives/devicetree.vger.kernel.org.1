Return-Path: <devicetree+bounces-272663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELOgGcg3rmlyAgIAu9opvQ
	(envelope-from <devicetree+bounces-272663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:00:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2372F2336A5
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1D4CF300A512
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 03:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 250192367D1;
	Mon,  9 Mar 2026 03:00:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE46127587D;
	Mon,  9 Mar 2026 03:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773025220; cv=none; b=DmUxURtyqlKYV1MEb7gNyPthsOT5VqAt6srZuJNokFsfFv6KpflTybtuGOTz7r5MkYGc6ROWHO+61SM+bl322b710KGr/E7p9zCHaFuCLbjGg0QrmZJXTxAchgYCLYCSRv5XIpdQR25FBK8zPaaf4P/v8ipL4TIkDsft9C6oqME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773025220; c=relaxed/simple;
	bh=wOByeN28U500aRlyt5TiYPPlyULkXcdC8HcZaurn6ik=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IHS8lcwuohn85HyJKPV7HEtnhZckoZ/fUWAijxDMTvbkSppx5oMDz/RPhUmj9O3Rr3+ksfuiQleW6RPqVhfaajR9AMjZS/61m/HcQFXeQjRBasZRpcbhSSFtO8ojKTkX7vuwCs0gNxnO2CCFMNAtOHhPMFPftxvS5J/X5SGeHTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [58.61.141.9])
	by smtp.qiye.163.com (Hmail) with ESMTP id 362f93ee8;
	Mon, 9 Mar 2026 11:00:05 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 1/1] riscv: dts: spacemit: Add 'linux,pci-domain' to PCIe nodes for K1
Date: Mon,  9 Mar 2026 11:00:00 +0800
Message-Id: <20260309030000.1157040-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9cd0899e1e03a2kunm4cb197698fbcdb
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSkMeVkJNHkofQhlMTB8YTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVQllXWRYaDxIVHRRZQVlPS0hVSktISk5MTlVKS0tVSkJLS1
	kG
X-Rspamd-Queue-Id: 2372F2336A5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272663-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.678];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

The SpacemiT K1 SoC has 3 PCIe EP controller nodes. Add the
'linux,pci-domain' property to assign a PCI domain number to
each of the controllers instead of assigning it randomly.

This creates a stable sysfs path, allowing userspace scripts
to reliably target specific PCIe devices (such as PCIe NICs).

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
Changes in v2:
- Improve the commit messages
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 529ec68e9c23..d2015201f8e5 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -1033,6 +1033,7 @@ pcie-bus {
 			#size-cells = <2>;
 			dma-ranges = <0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>,
 				     <0x0 0xb8000000 0x1 0x38000000 0x3 0x48000000>;
+
 			pcie0: pcie@ca000000 {
 				device_type = "pci";
 				compatible = "spacemit,k1-pcie";
@@ -1044,6 +1045,7 @@ pcie0: pcie@ca000000 {
 					    "atu",
 					    "config",
 					    "link";
+				linux,pci-domain = <0>;
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges = <0x01000000 0x0 0x00000000 0x0 0x8f002000 0x0 0x00100000>,
@@ -1087,6 +1089,7 @@ pcie1: pcie@ca400000 {
 					    "atu",
 					    "config",
 					    "link";
+				linux,pci-domain = <1>;
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges = <0x01000000 0x0 0x00000000 0x0 0x9f002000 0x0 0x00100000>,
@@ -1130,6 +1133,7 @@ pcie2: pcie@ca800000 {
 					    "atu",
 					    "config",
 					    "link";
+				linux,pci-domain = <2>;
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges = <0x01000000 0x0 0x00000000 0x0 0xb7002000 0x0 0x00100000>,
-- 
2.25.1


