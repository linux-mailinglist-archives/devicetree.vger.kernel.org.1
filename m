Return-Path: <devicetree+bounces-295624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMWlLtDnAWqemAEAu9opvQ
	(envelope-from <devicetree+bounces-295624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:29:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A476510287
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 140BC3059A52
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 14:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 968523FCB37;
	Mon, 11 May 2026 14:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=muenchen-mail.de header.i=@muenchen-mail.de header.b="U02IAbxW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F2A3793A8;
	Mon, 11 May 2026 14:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.18.0.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778509090; cv=none; b=G0gGg24PxPRenxfErervtnG6Nb60CeDvDjxCBZ+Y/SvHfctwm7+U+aibfVkaTeoLC1wzsKN8LBd06N3RSNyyaVPgeevGgUijsPaD+GXIpahbGvjvLKeqYGhZdcgxfBSExN8AEyzvUqEBk7Hzk/0/925+975w746Yb8u9gGVjKcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778509090; c=relaxed/simple;
	bh=4QyT0UWEVlQTF92NkKEQyWtE2QfME160oNWsoG1Ze1A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aPzAdOnU0ML07zBwKF5mKesUv7TApyy9m4C+LGORVl3L/XE8Q/aJVwWy+VwsB2obGo38T1GB7K+UgywsbKhiUrNDvvJ89AZWo9OPorxgImlz/Ad0+aFrAOyzgrlcpO/wXGiaD7aDAgFFC2Obvhp7wGQ50bER+rbZCjKBvQencvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=muenchen-mail.de; spf=pass smtp.mailfrom=muenchen-mail.de; dkim=pass (2048-bit key) header.d=muenchen-mail.de header.i=@muenchen-mail.de header.b=U02IAbxW; arc=none smtp.client-ip=212.18.0.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=muenchen-mail.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=muenchen-mail.de
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mail-out.m-online.net (Postfix) with ESMTP id 4gDhVh2cNsz1sHQ3;
	Mon, 11 May 2026 16:11:56 +0200 (CEST)
DKIM-Signature: a=rsa-sha256; bh=+CbS3bNUQzu0MAu8sUeYRjSUd4GKuS+acJBUfMpwj0I=;
        c=relaxed/relaxed; d=muenchen-mail.de;
        h=Date:From:To:Message-ID:Subject;
        s=r1; t=1778508716; v=1;
        b=U02IAbxW20+mLDSXSBnL//yWnFw0cmpReQdinMv0+pecTG1oO5yrn79TV/rc8UAw
         nZcBEpxu95fKg9txa+QlR1ATCfyvt+bVbVYvkOdXtobLmrb1nSKYeLN24wJMgIkO
         TuEmi8PeSOFw3QwYmM4FPKk5QfLv6TaPQRVFHTJD2VPYrSV8M044bi/IwePXKvLY
         i3sBF4V5xqk61kOO1VAR2omwG0hc5B2U4jxVwgP06WAKct2p5A5GcWKLmn1gPRh/
         XtrnPgJrwIMY6SFFOe38kp1krlZ0fJUefyrZA5L+tpPe1Z+8rtzvBTQzAAxXAHv+
         vgqHze0tc+OZ5yLA9h+38g==
Received: from frontend03.mail.m-online.net (unknown [192.168.6.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4gDhVf063Sz1sHPP;
	Mon, 11 May 2026 16:11:53 +0200 (CEST)
Received: from localhost (dynscan3.mnet-online.de [192.168.6.87])
	by mail.m-online.net (Postfix) with ESMTP id 4gDhVd5llqz1qqlS;
	Mon, 11 May 2026 16:11:53 +0200 (CEST)
X-Virus-Scanned: amavis at mnet-online.de
Received: from mail.mnet-online.de ([192.168.6.182])
 by localhost (dynscan3.mail.m-online.net [192.168.6.87]) (amavis, port 10024)
 with ESMTP id O6uJPu1FxYTY; Mon, 11 May 2026 16:11:53 +0200 (CEST)
X-Auth-Info: I0mXDoX6Dm3detU0TSzjhH8bSxf2eJ7TztcK6TYWMP4+A64YrwUfpb9WocUPFC0f
Received: from wiesel.intern (aftr-62-216-206-65.dynamic.mnet-online.de [62.216.206.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon, 11 May 2026 16:11:52 +0200 (CEST)
Received: from murmel.intern (unknown [IPv6:fdea:9b79:8984:1:8514:c35a:5b34:1596])
	by wiesel.intern (Postfix) with ESMTP id 7DFCD79A0378;
	Mon, 11 May 2026 16:11:52 +0200 (CEST)
From: Thomas Gerner <thomas.gerner@muenchen-mail.de>
To: Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Thomas Gerner <thomas.gerner@muenchen-mail.de>
Subject: [PATCH] Enable wifi on the BeagleV-Ahead
Date: Mon, 11 May 2026 16:11:00 +0200
Message-ID: <20260511141119.155369-1-thomas.gerner@muenchen-mail.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 3A476510287
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[muenchen-mail.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[muenchen-mail.de:s=r1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-295624-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.gerner@muenchen-mail.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[muenchen-mail.de:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email,muenchen-mail.de:email,muenchen-mail.de:mid,muenchen-mail.de:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

The BeagleV-Ahead board uses an AP6203BM WiFi chip from AMPAK Technology
Inc. connected to SDIO1. The chip is compatible to the broadcom wireless
driver.

Enable wifi on the BeagleV-Ahead.

Signed-off-by: Thomas Gerner <thomas.gerner@muenchen-mail.de>
---
 .../boot/dts/thead/th1520-beaglev-ahead.dts   | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 91f3f9b987bc..5e0dc47d263c 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -86,6 +86,11 @@ hdmi_con_in: endpoint {
 			};
 		};
 	};
+
+	brcmf_pwrseq: brcmf_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio2 31 GPIO_ACTIVE_LOW>;	/* WL-REG-ON */
+	};
 };
 
 &osc {
@@ -239,6 +244,28 @@ rx-pins {
 			slew-rate = <0>;
 		};
 	};
+
+	wifi_pins: wifi-pins {
+	    host-wake-wl {
+			pins = "GPIO2_25";
+			function = "gpio";
+			bias-pull-up;
+			drive-strength = <1>;
+			input-enable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+
+	    reg-on-wl {
+		    pins = "GPIO2_31";
+		    function = "gpio";
+			bias-pull-up;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+	    };
+	};
 };
 
 &sdio0 {
@@ -247,6 +274,29 @@ &sdio0 {
 	status = "okay";
 };
 
+&sdio1 {
+	bus-width = <4>;
+	max-frequency = <198000000>;
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	non-removable;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&wifi_pins>;
+	mmc-pwrseq = <&brcmf_pwrseq>;
+
+	wifi@1 {
+		compatible = "cypress,cyw43012-fmac", "brcm,bcm4329-fmac";
+		reg = <1>;
+		brcm,sd_head_align = <4>;
+		brcm,sd_sgentry_align = <512>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <25 IRQ_TYPE_EDGE_RISING>;
+		interrupt-names = "host-wake";
+	};
+};
+
 &dpu {
 	status = "okay";
 };
-- 
2.43.0


