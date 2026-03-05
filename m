Return-Path: <devicetree+bounces-271695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDJaID7RqWmYFgEAu9opvQ
	(envelope-from <devicetree+bounces-271695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 19:53:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D71D821724E
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 19:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 379B730E103B
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 18:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50B132E173B;
	Thu,  5 Mar 2026 18:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C6Fr/sb3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9C02DC359
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 18:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772736711; cv=none; b=dmmPgeO7fBU93/gW+vcTYYeZmVeX0C1apteogHJ64HLjrqEPbTjE1KXA9DJgR1XvyQK8fihLc/t8tBPvstMXaJnykVYAH9d06JEU9pD9R+dG47UBxIVoeTJFiyC6u8PvCaS1x0phT7WE74nifn+hwU4Yjpo5APaczH4Ir40Anas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772736711; c=relaxed/simple;
	bh=e/3NeMasgaoa9mivTiZ8FWdq0ogXzAMrv3lXrarEAL8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h/cHRV0zalZv7ua5dBYev5qleIpenBhj4+k83kiYGS6d/U6CFpd+KFrb4Z+OlHk1qUobIFNE3q4EgfDhZPf+eIP15DVluVp78jROi16EMcRDQ1Yjstp/5Kz0RV5m0+gxp2JNnB5ytddxLGOwcFQzPuL+6mwiq+jZ3MFYKZ/GPDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C6Fr/sb3; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-c70c112cb61so4584899a12.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 10:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772736709; x=1773341509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tQKhQUi+swdzg9il66n4f9gaOL84j82V5dgnOB/FgF4=;
        b=C6Fr/sb3cVBRedHTZgTMhmhR+qwSkzpdwiWUu6iyu51h8CY7+X3HFAVpa3njYiLL9u
         50cimN7far4fhoCwZP7B75I3ADT1ejkVSmdKH6qIfgoMKAs3EbAB9P4/13pwUt5GZPAh
         38ieihShORzx8mjLL16CGX8CcSuMbs27OsqFtcuOk0axBRCQB5fkHGI59T8z0i5F14l0
         DImeFvnTdq0HgrXM2p4PQfFDFFqKvVKV4ZuMl1d7qYJLJ2m2h9gkBWQriN0ByX/LpQYj
         G+cdXbtjVyjmzfMDYLQHC9ZoKQfQT027DEnA63ZvQ981DUMhEDgq79VzQGz95lUpIQaa
         aq7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772736709; x=1773341509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tQKhQUi+swdzg9il66n4f9gaOL84j82V5dgnOB/FgF4=;
        b=F5w5PWP2934jEHbeIuTj/wqPpfggX05JtxBL5oI0xxzQzHObZiNj3HiGLh6tv4ROY1
         Qo+sXO2nF/1DPgHoKHlew0yoFpuJ1JeC1Cmj/eDugJCNz1DP05sKEVrrNDffT37B1+LP
         qQFIyTndDyDwybrj/x2AP8M7najO9x0Y3h3b7nxg4Mk351fr6+z7+6VZRRn1ZMmg1OWS
         FGq1vnGNfSSj6rnoXRBqkT2RhuyrFMkIQ5Q8v22Q27dfU1jFZskCPAekjLC+5Yte7PO0
         McqqF8Axqpq46FRJV6v87UCcOcZEGoqgKhK1n5usfrWFxmJ1B13aBG8edczH5544Cq6u
         eZqQ==
X-Gm-Message-State: AOJu0YzH6CDpbDC/yltYrZ8FJk0Th7kNj+Rg1KRIAaZK/19j8ln185vO
	wOsB6+MO9lqYicwOu8UCIsFgFA4lXGx49cYDpkp6Iqo7Y6RnGJAsHdWf
X-Gm-Gg: ATEYQzyfRhnU8bJfqgvTFTlcajWxcdZLMs3SRlRCtOhcKIqQyo8XnVBJCLeIWMlGX01
	0K66nhMYV2k+19/QwfUv6PTMCZ3O0FRvdRoiWvVK6im91GFKdkGbSzgz2udAjDyZtx9UgWO537+
	wX50HuiTMoRar79vUfRETnwuHrdX2dOg9VhE3jKE9Ilm9AiO3Y08BtSoEKDsIRGe1LhrCfALWZE
	PcP853g+TAjWZc8kEQkdcSgN9haM4dd6v0fH3vPKM1dxtHvRik7TWdP5zHTK+GjzDQuXC17q07T
	2bumWlZa+Ig1AXQB+ZuClTiA7aa1/HeWXS+JRaD8eE9nbYIsb8uKtHZVrfMbaSSHC38yvAc+ZnN
	j9hMuPoKqoVjSOqrMxZPA5ePPaPiymm+Eh9MpoDX+PtTfeMDoRd/BTz7NWaYttYHkOErx9mtn+z
	J+pJKoSfNXH7FUyzoAwsiEDMPeu/6sH/mYR5Va3/RpOcT7M8mlqazY3h6a7OWptg+YPmWv2tqy8
	X9DqrDQrNaZTBjUNQ==
X-Received: by 2002:a17:90b:2f8b:b0:356:4c1f:98d4 with SMTP id 98e67ed59e1d1-359bb3ae591mr494840a91.13.1772736709067;
        Thu, 05 Mar 2026 10:51:49 -0800 (PST)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2e14821sm2769158a91.17.2026.03.05.10.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 10:51:48 -0800 (PST)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Akari Tsuyukusa <akkun11.open@gmail.com>
Subject: [PATCH v2 2/2] arm: dts: mediatek: mt6589: add basic support for Lenovo B8000-F
Date: Fri,  6 Mar 2026 03:51:16 +0900
Message-ID: <20260305185116.781184-3-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260305185116.781184-1-akkun11.open@gmail.com>
References: <20260305185116.781184-1-akkun11.open@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D71D821724E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271695-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,4.196.180.0:email,bf600000:email]
X-Rspamd-Action: no action

Lenovo YOGA Tablet 10 (Wi-Fi) - B8000-F is a tablet which belongs
to the "blade" product family. It is powered by MT8125 SoC,
which is the tablet version of MediaTek MT6589, and has 1GB RAM.

Like other devices in the "blade" family, it uses a framebuffer
initialized by the bootloader at a consistent memory address and size.
This patch adds basic support including UART and simple-framebuffer.

Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
---
 arch/arm/boot/dts/mediatek/Makefile           |  1 +
 .../dts/mediatek/mt6589-lenovo-b8000-f.dts    | 15 ++++++++
 .../dts/mediatek/mt6589-lenovo-blade.dtsi     | 37 +++++++++++++++++++
 3 files changed, 53 insertions(+)
 create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts
 create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi

diff --git a/arch/arm/boot/dts/mediatek/Makefile b/arch/arm/boot/dts/mediatek/Makefile
index 37c4cded0eae..b67b94b7cbd0 100644
--- a/arch/arm/boot/dts/mediatek/Makefile
+++ b/arch/arm/boot/dts/mediatek/Makefile
@@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 	mt6582-prestigio-pmt5008-3g.dtb \
 	mt6589-aquaris5.dtb \
 	mt6589-fairphone-fp1.dtb \
+	mt6589-lenovo-b8000-f.dtb \
 	mt6592-evb.dtb \
 	mt7623a-rfb-emmc.dtb \
 	mt7623a-rfb-nand.dtb \
diff --git a/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts b/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts
new file mode 100644
index 000000000000..47bb6ab1fe72
--- /dev/null
+++ b/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Copyright (c) 2026 Akari Tsuyukusa <akkun11.open@gmail.com>
+ */
+
+#include "mt6589-lenovo-blade.dtsi"
+
+/ {
+	model = "Lenovo YOGA Tablet 10 (Wi-Fi)";
+	compatible = "lenovo,b8000-f", "mediatek,mt6589";
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi b/arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi
new file mode 100644
index 000000000000..3a6e0d8c8a64
--- /dev/null
+++ b/arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Copyright (c) 2026 Akari Tsuyukusa <akkun11.open@gmail.com>
+ */
+
+/dts-v1/;
+#include "mt6589.dtsi"
+
+/ {
+	chosen {
+		framebuffer0: framebuffer@bf600000 {
+			compatible = "simple-framebuffer";
+			memory-region = <&framebuffer_reserved>;
+			width = <1280>;
+			height = <800>;
+			stride = <(1280 * 2)>;
+			format = "r5g6b5";
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x40000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		ranges;
+
+		framebuffer_reserved: memory@bf600000{
+			reg = <0xbf600000 0xa00000>;
+			no-map;
+		};
+	};
+};
-- 
2.52.0


