Return-Path: <devicetree+bounces-278670-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHD8AS+Mv2lh6AMAu9opvQ
	(envelope-from <devicetree+bounces-278670-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 07:29:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 014DF2E8684
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 07:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 26DE3300808B
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 06:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384FF37FF68;
	Sun, 22 Mar 2026 06:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="hleI1itc"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-155.mail.qq.com (out203-205-221-155.mail.qq.com [203.205.221.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C422C15AB;
	Sun, 22 Mar 2026 06:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774160915; cv=none; b=iMmRO1FRPK/iIHuBV9vHLJ5VUF7WQ10RkmosSdvdCu5hjBPfMVMIwtM+TADzM5D1ZiWVrzHqgdN4+8pfjhqhg0rAc9wysjqnDHcgt3k9os88ZnqEaqB9yD8yxcZ/NisRGRgW7fiuGJwf9943F1byeaKBYZ55pgdZQnq4gQwlWGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774160915; c=relaxed/simple;
	bh=TuAyOgWhUe0GtY/rYlo3zvV40IwTLph41CGn+rLckGQ=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=NEj+YLHLIv0SYYypmT6ont09FP32jyOkcTFxafU/bD1FOtDjpeRK1EGGCf0gVvvUf+klL0wvkndgizvdiFAy3Aavd77Y/juxZX7Ny3ygT2jnwyCwNowhZXIZO2KNeObiJWkOJr3kksUUh2ydI9aARGMm9BEb0g2zeI94iVZ6JDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=hleI1itc; arc=none smtp.client-ip=203.205.221.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qq.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774160911; bh=/wqqhVcJIXV/1Y+9f56u3OWXBX5wi0enEqRxN6dQcKk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=hleI1itcfQYwwTABCgC3fB40G+iQjyzwo0tG769q0qzXruQNa9cZ9Buhbtl6JRK+e
	 uUa7mXgwN3ItDjiZixAVGW2Z6yfOA9oNmlEWxlrUn5UBN8eRv00GGnQogRV1RXtNfy
	 1hzVnDQx3RdgKy6EmSzp6J6BsLi6JZ9jT+d/ohiM=
Received: from MYJGMC.tail4697e5.ts.net ([122.195.139.226])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 7198DAC3; Sun, 22 Mar 2026 14:28:25 +0800
X-QQ-mid: xmsmtpt1774160908t8wnnuf7b
Message-ID: <tencent_0C4E5C48A63E4C03BDE6A455032AA9B2CC0A@qq.com>
X-QQ-XMAILINFO: OTDiW3m6JtSJOQJ4nHiZ05wnMlxEbtftWfPQvJmUTZxhFf/8m2dI/YkyEArdZ1
	 8UMPNHxTfcEB9Q/V2KKzkDzeNgrHKOLSw4NHfSL1EdaH4+Ltrx7zhY+mAMe35sptdmvK7w9G1DTz
	 HLlzFxGY8jyoPL5f3+xVmm/qOxwTBBVb5+pwsqGAqPvsNMN/n730NBQe6X0cjxaTTVIKF/UphVsT
	 izIHIQFw20qxhd2O5oglNb5rzD5teltmiELWIlj0GPNzEfaBOjQlWlopXecTsR0qdmBKNEF5dViu
	 +fCXzYmIW+reRQytVXiRRWHWONIiOnCMISJN50/TNvkmBYPTFTYaK7h0tk2O4c5amnY0TzXQNmTd
	 TB3HtD+Txt/rilWCKBZhBG9Y2+MzquRfIMOHhfHRsLhFweqLhq/iXZRgXl8kvez/Paqe22Iu0Uh4
	 XK4UUvDgTm46w2wg3bh7Mpxu5BGqJzePP7H3kCg4R2t4k57W3sZvzRVommLVbmxVVbnW8QKUUne2
	 XLWVNY6MRjo7fodqdwAOqRwx/++UdhFErGTMdz8tpo+XrY8NC319tQ+zVOPBF8yZukn3GVsyGxUX
	 EvUbqVdcsxBb8Z/vxOygmupGD0uDVrPO0jcsYItDvT5YEoRAEXxW9X/uzyMHAZFiaaQQ2fWNB2SZ
	 26VISqcMdKjAR6titEFYE5tspsVB95VFVnJ+zCYNAjZcCIvw1npodrnyll90/B6riKowBh/6wrLw
	 0o1dwYY0Jxst2uc5d7kSJyEQQdhqBY6c6dqV6XeWBXxWAYpPYflRN7VDnROnNSxkhFFsNLp7r487
	 R6ZmzFUiCFXb/Y0QRMXMgzVjuP2fX4ybci2uy+y4oCQAFmhme8SJQYPnDui+zJbBShAGs4KXySYZ
	 Cr7ctQutgM7QYKnvdcArfw0q3qLzZmxSn+xN/TUD0KgDqOuz6zicrqKiGMsdhXa6Ok5E5JPcNYyi
	 V4HNMmjMZxSadZLZWB/NDOt8Pwvp5g0+oqOLi6Ei9CZSQopi669mFy95FXzmCuRTBc6Pl5FgeUJA
	 wpTq8X60wxZszOVuKz1QPrSnegjxUszv63UkHqP7Zb6GWYDR0dFIwv1jPXtuPVEsd47mxo7Pkplx
	 Yw8Rg75Kd4jUevE+4=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
From: wjjsn <wjjsn@qq.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	chenhuacai@kernel.org
Cc: kernel@xen0n.name,
	devicetree@vger.kernel.org,
	loongarch@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	wjjsn <2858482031@qq.com>
Subject: [PATCH v4 2/2] loongarch: boot: dts: Add Loongson-2K0300 support
Date: Sun, 22 Mar 2026 14:28:23 +0800
X-OQ-MSGID: <20260322062823.1413724-3-wjjsn@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260322062823.1413724-1-wjjsn@qq.com>
References: <20260322062823.1413724-1-wjjsn@qq.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[xen0n.name,vger.kernel.org,lists.linux.dev,qq.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278670-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[qq.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wjjsn@qq.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.244.37.144:email,0.244.41.160:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.245.170.160:email,0.0.0.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qq.com:dkim,qq.com:email,qq.com:mid,0.3.13.64:email,0.244.41.120:email]
X-Rspamd-Queue-Id: 014DF2E8684
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: wjjsn <2858482031@qq.com>

Signed-off-by: wjjsn <2858482031@qq.com>
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


