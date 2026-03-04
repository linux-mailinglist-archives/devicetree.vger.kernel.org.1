Return-Path: <devicetree+bounces-271239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gB6rFXKHqGn2vQAAu9opvQ
	(envelope-from <devicetree+bounces-271239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:26:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B49502070DF
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9455930FAC25
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E0D3DBD5C;
	Wed,  4 Mar 2026 19:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GiWmBH14"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3459A3DBD46
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772652285; cv=none; b=XwynXxXmQ+1DZSt98vffyKHgFsnNBRhNaCsTkJt20+quJujVdftq0HlSltDVgYKcF67UkCGYoqrevcKJfwtnk8p968Pz4Ax4uomJZhUPWewzPUIHPcA2Vs/0unKzedKKWbr4W8Jb2/xnGWyHpRJk2UYjMi/fYtUeOJ7k1U38fNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772652285; c=relaxed/simple;
	bh=1d9k6xl+VMxUAdRWa2Zv7vI1xB400afBYAIxrxf+PZE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OuHcK/pckdsQXzIAT9lRMkWFVfHf8cRHy9veUMnVyQdB8zxQ0oXn+sFaHjaTFLkD+uEURE7mfjwfStq5ZE2RJmmcTYmRSl4/pSkRBJdXB5ZupBp42q7lA+TWcGLMKibeTyoXe6u53dXDJ0RLhuDeR8+3lRPYnWWAQVeBE/fRWY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GiWmBH14; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-827307b12dfso3883188b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772652284; x=1773257084; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FsB+Xdpfe1keNrhw/zldpf6GnRg/8hjm+EhbmvXeiAs=;
        b=GiWmBH1488jcoLdHLpkPW4/9t5uQONMLMjw103cG4Rjwd7tRdyayivFgFq3QbuQhZi
         OTN7adM/NtDsT1v/uA12ePaQbRRCFh6QQqwGq2YTLWKQKr5IVuR9aHUI+o7+4TYU5K75
         gW3m8YZtVXLWqoB2NGpvOh2C0CAgsFSiaEPsysn0a6Td/uFUjVqNNvzNhwVNLR08QVfc
         D1hM50KK8uZS4Ghp74xXywCgEYvpHjNHuux81HwTdyWI3Ml1UIj4UtszHhPBmat56q96
         lkInXv6KYU0gXDEzEkrCAsmOpbGfoo1hIFPLXa3OGTaF2SP6PPabvuRmwXl6/9r3RFdH
         GN6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772652284; x=1773257084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FsB+Xdpfe1keNrhw/zldpf6GnRg/8hjm+EhbmvXeiAs=;
        b=UqtDrgAu2cntI71MyBw0hQvwY1n0xeZPRrl3jJKUvJDEUph61SkaLdRE4OjToUKFl9
         Bum1t0hckevMJ1NqCz5FfITn49h4aPK/kpM5eVE5NT4mXefKhS6YLz82h1Kk1uI9E7Zz
         ClXuon0kp1FjpDU9uP9ApiGByk1J3e3QLJqulJ8YEavnGTVkaCox7JZE0llIz506J5KG
         /5KtJrxgOlleiCzEbrcazDVaS9G4J5ki3VD6T3XIqhOdfgFfeZoxMn1wtBqOFluEdRp/
         Bp9RE06z2kJ3o1dtsrribGfiA2wHDPhDFWQCyXvOAQ7bBuOkUZNykZRCaLKME1Rs5TvP
         ILoQ==
X-Gm-Message-State: AOJu0YwRtmG2Z9zVsOt8NOWkXdt6ELFzJWoRSTrTIl0KcIVY7mTzbPkI
	syn5vYBY1Ud255Y91Pc/xKcYLM+Mj7vk3h7xraSx3K1dnCNeQ6LtFp4q
X-Gm-Gg: ATEYQzycmocTjeXlxuBpxhykQlPy1i2l4jiM2ZoK1q0Sswx+mYcmVN1I00xHpm+Scuc
	VHKxDFirxnc/U+KB4oxmJSsDiQaKLKpYXmRXcwykpPATO7zZEnQVZztPmhcTUgaPFWaZPosIsbQ
	GevUpsP/444kTjcmXS7HdzXane/hCrJgU/uUvz9UMB3A19pjIkgWrP/kJwazVodr/NND3qjNAOZ
	sX3uiS4LP6B2tMZ7BChr/u/Ebw88IPXzbKMCEl7wOkqN3+z6jE4TuUL/CU6C8if0KLbWqorbhLk
	vlZK+JL2gcxyyx+8aTojC2QUkpOf7nz5IzNMKVwgYNOmfxoxcPZ62h3Nj9J+VMighPSrrF6xitR
	S+fyg1qhEmXU6v2UbrxREu1MOdpHmFlL3utu39rW0urPX6nl4VjeYJn2+YsPvUEpuye5i97YH37
	pgMUgI7UprnJP2ZJo5H3q34/VP3VsbQ5RuRvrQfmnmtHWUVuU0Xy4ClxzzRrLLQodwLChsbkD1e
	Spsqug=
X-Received: by 2002:a05:6a00:3004:b0:826:ccfd:282e with SMTP id d2e1a72fcca58-8295d8447e8mr5694658b3a.2.1772652283484;
        Wed, 04 Mar 2026 11:24:43 -0800 (PST)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d8805esm20233563b3a.16.2026.03.04.11.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:24:43 -0800 (PST)
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
Subject: [PATCH 2/2] arm: dts: mediatek: mt6589: add basic support for Lenovo B8000-F
Date: Thu,  5 Mar 2026 04:24:17 +0900
Message-ID: <20260304192417.818211-3-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260304192417.818211-1-akkun11.open@gmail.com>
References: <20260304192417.818211-1-akkun11.open@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B49502070DF
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
	TAGGED_FROM(0.00)[bounces-271239-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,128.0.0.0:email]
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
 .../dts/mediatek/mt6589-lenovo-b8000-f.dts    | 15 +++++++
 .../dts/mediatek/mt6589-lenovo-blade.dtsi     | 39 +++++++++++++++++++
 3 files changed, 55 insertions(+)
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
index 000000000000..2a83e023d2f2
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
+	compatible = "lenovo,b8000-f", "lenovo,blade", "mediatek,mt6589";
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi b/arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi
new file mode 100644
index 000000000000..99af92539e93
--- /dev/null
+++ b/arch/arm/boot/dts/mediatek/mt6589-lenovo-blade.dtsi
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Copyright (c) 2026 Akari Tsuyukusa <akkun11.open@gmail.com>
+ */
+
+/dts-v1/;
+#include "mt6589.dtsi"
+
+/ {
+	compatible = "lenovo,blade", "mediatek,mt6589";
+
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
+	memory@0x80000000 {
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


