Return-Path: <devicetree+bounces-278663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL5iNnuDv2nK5gMAu9opvQ
	(envelope-from <devicetree+bounces-278663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 06:51:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D65C2E8536
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 06:51:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81F59301015D
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 05:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2A303328FD;
	Sun, 22 Mar 2026 05:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="mBPVmYPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-173.mail.qq.com (out203-205-221-173.mail.qq.com [203.205.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE112BDC0E;
	Sun, 22 Mar 2026 05:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774158661; cv=none; b=k9zwDRzwUoyMaSdW8JCmifcCBhH3IfBzdwYRyyKJgr5vayPjOUCPdd8nzGtO6FlfFu+qRfCe+KwPc0epmHM5CGImoimI090DspTdgzHAX5E2dWW52J0nKYd/BiurJar60BqIyMA9fWvdZRzCXOxvbEuZe5K9LeUAsU1HB2Yu4/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774158661; c=relaxed/simple;
	bh=zkHXbqjuH7xNDRcO/cDCnZPkcfwtiLZWj/z4NWNS16w=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=BCyvFs7W3YOaJ4hMkLnC9BVZONgsczypk+fyXVLvIAVwqtJ/x0stVF0DMIiJkCMJXD5V+4MDc5ognmv+PAR6SVqynVe5PVo+rmTcUn6oYBhY9/M+l31qZsB+UKIweP2aOALdccz54swnAV1P8yjPb7VfOdxL9JgTCxGyIex1WoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=mBPVmYPZ; arc=none smtp.client-ip=203.205.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774158652; bh=/0ewG1jfRqw2ZDFlfiYehEmV8RlvaqJ8CTQftNgJvdA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=mBPVmYPZijVIW1w4TVve2vQR7iGv3KtcD65aWyS1Y438PvQl93lcKObmNrOCovx5/
	 6NyyYv38WChSAEw1d5Cae61br6K1mnFNsW+O65Mc4woMkESUgzBXBawy5jaoRuoHTR
	 teXRmk/OEKzFDO3th7leRVyTdgSXMPpTQDuU0dJE=
Received: from MYJGMC.tail4697e5.ts.net ([122.195.139.226])
	by newxmesmtplogicsvrsza53-0.qq.com (NewEsmtp) with SMTP
	id CA83BCED; Sun, 22 Mar 2026 13:50:40 +0800
X-QQ-mid: xmsmtpt1774158648trkw18uvm
Message-ID: <tencent_D25EB9D2D600E55537676D2E18523BA72709@qq.com>
X-QQ-XMAILINFO: OR5rDBBXAGpMzU5fUQmHOJmwCZ+gTqz8/8kxDl/sYVLmYegJNACkyPekzJh518
	 fW4kJIMfeSCbt+6GGi/gZyH4n4VAF6TQRyTPAbcrfrIlZLLtqExIxPzyLIvxsQohWGvdqJ+NFMLI
	 VkELKOxITBgwOShNb9hIsFRwcpSjsDxRDbPsZfv0hEI1c4tb9j3iSQTUshm0QYZDETwymrAMuTSO
	 7pphmkkzonfUG0UDzm9HfI5SnHaRf6AZWsJs/zM+M5/NZbZKQcasnEQNxxTeoVl8OWTp2UeLPnCH
	 oosTzgE/v0zGjqmtyuAy3aesDMhkTPJILo/1qRQAS8z27JQcOfCnjXVsmSOoeVusOB1eS7eCqzde
	 /y+A7Gh1yjGqhnuUtWh/mM2BvNAXTtljbfAHd4Ps5B7W5BZ9h3gI/CZpm5jOC5ZmqSIPzJFzP13L
	 yBrXXLyLhThQAc8N9BZZkFupTBRNeyZAEkPbFgrMQhsQgmYi9TNSOBA16HsExv+YmY0m8rLG03+o
	 qGw4BjCMr0s0iy4JMuMpIc58QRls5lUv2HbnrxsKBcp+Mz31RP+fnIaC2oUfKHrowevXcJkWDZmP
	 OR6NkpKZI5PfhlwqiclHxiOGgc7OSfARx3dA5GZEOvXoIvnTvzryKP78RkbuSCylmPf3LZLEt8u2
	 ILS4YoTqfHgD+UB9JXXJCIdlOtwnfcClbV21V4KG9LLV0QqEQv2ga4zZNHYk3VZHf+ahCD6POcUF
	 0nR4UmgE/JotmjqKKYIzswHV3OSUyE9l7NFgrkwAGGxHGtLSWVSZv2iOtGQ1Z84k5c4fujtFD1l0
	 JLVVftXSeaj1gJQjHuUJWOrnrErYyNN21xBmQCC561Q9Vd1o/17WrUcg6ZER7QIjaTBeH/NJ0wiY
	 tJmslujE3dEcy97f7OLzTkmdYc4qs8M6x0pAZ8mcwnlHMJPB3XTxb0S9zoTp/qgMaPxCn04nuX/m
	 CogMI2HsdxK/nadLmqxuoEKPLu1svMCrRhexqlV5HLm/637pbnqVuCLHkqq5KLgVxQP/Wi8SVJpG
	 lXZcWz9WXyttP00IvHjhauKBfbssF5waz28Vw2k19QUr+k7KuiUCfEKXAsA2CJgoBci371CHGG+M
	 4tppJKgElxTu9r95bPiNJayj2MMA==
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
From: wjjsn <wjjsn@qq.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chenhuacai@kernel.org
Cc: kernel@xen0n.name,
	devicetree@vger.kernel.org,
	loongarch@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	wjjsn <wjjsn@qq.com>
Subject: [PATCH v2 2/2] loongarch: boot: dts: Add Loongson-2K0300 support
Date: Sun, 22 Mar 2026 13:50:37 +0800
X-OQ-MSGID: <20260322055037.1358712-3-wjjsn@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260322055037.1358712-1-wjjsn@qq.com>
References: <20260322055037.1358712-1-wjjsn@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[xen0n.name,vger.kernel.org,lists.linux.dev,qq.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278663-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[qq.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wjjsn@qq.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.244.41.160:email,0.3.13.64:email,0.245.170.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,qq.com:dkim,qq.com:email,qq.com:mid,0.244.37.144:email,0.244.41.120:email]
X-Rspamd-Queue-Id: 3D65C2E8536
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Signed-off-by: wjjsn <wjjsn@qq.com>
---
 arch/loongarch/boot/dts/Makefile              |  2 +-
 .../boot/dts/loongson-2k0300-ref.dts          | 34 +++++++
 arch/loongarch/boot/dts/loongson-2k0300.dtsi  | 95 +++++++++++++++++++
 3 files changed, 130 insertions(+), 1 deletion(-)
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0300-ref.dts
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0300.dtsi

diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/Makefile
index 15d5e14fe418..4a096608cfad 100644
--- a/arch/loongarch/boot/dts/Makefile
+++ b/arch/loongarch/boot/dts/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-dtb-y = loongson-2k0500-ref.dtb loongson-2k1000-ref.dtb loongson-2k2000-ref.dtb
+dtb-y = loongson-2k0300-ref.dtb loongson-2k0500-ref.dtb loongson-2k1000-ref.dtb loongson-2k2000-ref.dtb
diff --git a/arch/loongarch/boot/dts/loongson-2k0300-ref.dts b/arch/loongarch/boot/dts/loongson-2k0300-ref.dts
new file mode 100644
index 000000000000..f85d2caa94b0
--- /dev/null
+++ b/arch/loongarch/boot/dts/loongson-2k0300-ref.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Loongson Technology Corporation Limited
+ */
+
+/dts-v1/;
+
+#include "loongson-2k0300.dtsi"
+
+/ {
+	compatible = "loongson,ls2k0300-ref", "loongson,ls2k0300";
+	model = "Loongson-2K0300 Reference Board";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@200000 {
+		device_type = "memory";
+		reg = <0x0 0x00200000 0x0 0x0ee00000>,
+			  <0x0 0x90000000 0x0 0x10000000>;
+	};
+
+};
+
+
+&uart0 {
+	status = "okay";
+};
+
diff --git a/arch/loongarch/boot/dts/loongson-2k0300.dtsi b/arch/loongarch/boot/dts/loongson-2k0300.dtsi
new file mode 100644
index 000000000000..91062b388e77
--- /dev/null
+++ b/arch/loongarch/boot/dts/loongson-2k0300.dtsi
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Loongson Technology Corporation Limited
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/loongson,ls2k-clk.h>
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	interrupt-parent = <&cpuintc>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			compatible = "loongson,la264";
+			device_type = "cpu";
+			reg = <0x0>;
+			clocks = <&clk LS2K0300_CLK_NODE_DIV>;
+		};
+	};
+
+	ref_120m: clock-ref-120m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <120000000>;
+		clock-output-names = "ref_120m";
+	};
+
+	cpuintc: interrupt-controller {
+		compatible = "loongson,cpu-interrupt-controller";
+		#interrupt-cells = <1>;
+		interrupt-controller;
+	};
+
+	liointc0: interrupt-controller@16001400 {
+		compatible = "loongson,liointc-2.0";
+		reg = <0x0 0x16001400 0x0 0x40>,
+				<0x0 0x16001040 0x0 0x8>;
+		reg-names = "main", "isr0";
+
+		interrupt-controller;
+		#address-cells = <0>;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cpuintc>;
+		interrupts = <2>;
+		interrupt-names = "int0";
+
+		loongson,parent_int_map = <0xffffffff>, /* int0 */
+						<0x00000000>, /* int1 */
+						<0x00000000>, /* int2 */
+						<0x00000000>; /* int3 */
+	};
+	liointc1: interrupt-controller@16001440 {
+		compatible = "loongson,liointc-2.0";
+		reg = <0x0 0x16001440 0x0 0x40>,
+				<0x0 0x16001048 0x0 0x8>;
+		reg-names = "main", "isr0";
+
+		interrupt-controller;
+		#address-cells = <0>;
+		#interrupt-cells = <2>;
+		interrupt-parent = <&cpuintc>;
+		interrupts = <4>;
+		interrupt-names = "int2";
+
+		loongson,parent_int_map = <0x00000000>, /* int0 */
+						<0x00000000>, /* int1 */
+						<0xffffffff>, /* int2 */
+						<0x00000000>; /* int3 */
+	};
+	clk: clock-controller@16000400 {
+		compatible = "loongson,ls2k0300-clk";
+		reg = <0x0 0x16000400 0x0 0x2c>;
+		#clock-cells = <1>;
+		clocks = <&ref_120m>;
+		clock-names = "ref_120m";
+	};
+
+	uart0: serial@16100000 {
+		compatible = "ns16550a";
+		reg = <0x0 0x16100000 0x0 0x10>;
+		clocks = <&clk LS2K0300_CLK_APB_GATE>;
+		interrupt-parent = <&liointc0>;
+		interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+		no-loopback-test;
+		status = "disabled";
+	};
+};
-- 
2.43.0


