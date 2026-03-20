Return-Path: <devicetree+bounces-278222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4G64JXcovWkG7QIAu9opvQ
	(envelope-from <devicetree+bounces-278222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:59:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3802D92DC
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:59:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 662FD3008E3A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83339398905;
	Fri, 20 Mar 2026 10:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AvvYm3Ig"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4F52C21E8
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774004322; cv=none; b=tft2fV9D4rEllUCHTuBVdjZ+5+ladM4RTnGxeW+jkGxhAaNywXrteiQ4EZLzswZIE66cCzIHCN6R0y0Lu7WxoKUy7IFkDFPpgCJ5IspuYEPaHoYDAf1Ro2uOaWc4VrT7hKPQ7arPNzqcUxRxtIg7ml5S3STMvHbM0QU0wQSGJCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774004322; c=relaxed/simple;
	bh=1WDWI/kLqrRGMsmpIa4gXjVUYGr0oVZNGcakVNZs+Tk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CVAVdLdR3n0vIBpkxwwFCi1xv7ds546oLXuBD5ZC2D7tXW4CzDR0N74NpFA1a5BzBd4rMj4dghVrof2ykneLFtb2YUl+P06eYmI6irGPuCG2d0s9/xai+tUxUOgmfWaew2wqe/Lz3bK7WDqKrrrqqBPB0+KXa3kCVimnZfBzPKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AvvYm3Ig; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2b04d051664so14820215ad.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774004320; x=1774609120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hR/3Iy9Wlowf1KzCMFQLQDZRWz2rtZK8yylHv0B+bZY=;
        b=AvvYm3IgIDlRJvJIpzhKCHc2lrZzKq1Q14C2kIk+qJFz6TQ1NFThIBnzSNZgsoga7q
         gq8KlG8iZEwHCCMrKE/I0Z3NKu5++fGCmoOkiaWPp9mbs91+jLjpE6oT6YHKiVJsL75M
         1Z/fwvMfiFJ5GadzCYB5w2JWXETgDgbFREFL4wNFopkfchYeYZMbu6pS1vKLsqD6ci6U
         uQg3fc3u3uSMRuzk/pRqJtw7Mrh9I2YJxZucKgSgkoJU5z09vwin+M4IQoWRhCu0YzVp
         QF9vJnvWMnb+imDMLyykBrtF/eYR0FHMZO1zFIKJy/Yd8qxmfh6oKem+VEQ2a43YzdsK
         O57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774004320; x=1774609120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hR/3Iy9Wlowf1KzCMFQLQDZRWz2rtZK8yylHv0B+bZY=;
        b=K0vLnRGYIQQ+N4uug+sAkflSvsyDSqP8sB0RqwGZcht2Kyw2smXGQGBXSo3XzWOyK/
         /MPCFD/tsegwuVw4pYfghAFaHES11PBp6PQz49Z9CfAlHl1H658fh7CHeWVcp3zlg6jh
         DEBT6RsTr1ZZZRhu9LwNB6xnfFppfeG88OkCXbdhyrNBoJ8xG7akkYI+/JLYZ3ILXgBu
         XCBTLTzsq4VbPZzB5pzHIUycI+eKie2qfINshlLTj7AXdC2DM+T2I5Ki4UQC9dQoWIFG
         LYLWFBXqID7dAjFN+kp2w5/W++7Dk6SwyFaNe1QKV/TBYH+KRIlEEQqhtAD7jBipCyo2
         yXtA==
X-Gm-Message-State: AOJu0YwHgPLO3+r9NmV16MTq6Onkr2X6Zm6tY3zit2v6mE9UcUtri05Q
	G7ggoHW0SWQTrO3kPLImPv/TcOnyye9foK0Ufr7A1MkBfHeLttEn0FwZ
X-Gm-Gg: ATEYQzy3pxvj7aUlR96akLXtLDQJVOjAb+VbF/dicmNoVmqfYpm62PiQ5fU180TFHkH
	3M/2dOVvp3KTUoF/LAX23O0TOs1S8/YaQ+B8qPDpgEbVDyMQ3LBtuRsRCYXqEeuOxAaJt3t1hTN
	FyPXBkSMjUeY19H++yuvlgy9mANvNrQTlt+9qv7lQ/2xb+EO8mxotMQy2XyJY9Lg9PsP0Iz1wEl
	IKFfoNh2Iu9T53Jb1YjhiFZG17X+sdgag7FmUgO2Y5paIRWG6FW3lB9ksaTLn7TMjVpQZMjztUw
	Ir4W50XpVu7woKzboBeDE3H3tXBKROhZT6KtAYu7EaB3jW12f1yH+6ZTubGssNzLR0gks6EPlil
	4/6CwJdEwjqOAHUaVWX6rLe4vCVulgIgblujrRTB2Ohuk6nckvHN7EuFmeu9FX5DdaQDitqxbiv
	Xg37k/WSP1FcVlWLhBp4pd30WKT+1WnAL0W46SMT3/+myhBMRwwnxV4Cdoh3aO2Z9mr8e2yebRf
	aNmRco=
X-Received: by 2002:a17:902:c950:b0:2b0:60f1:de58 with SMTP id d9443c01a7336-2b0827d1a18mr23865375ad.45.1774004319672;
        Fri, 20 Mar 2026 03:58:39 -0700 (PDT)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b083516eacsm25636405ad.15.2026.03.20.03.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 03:58:39 -0700 (PDT)
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
Subject: [PATCH v3 2/2] arm: dts: mediatek: mt6589: add basic support for Lenovo B8000-F
Date: Fri, 20 Mar 2026 19:58:22 +0900
Message-ID: <20260320105822.447337-3-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320105822.447337-1-akkun11.open@gmail.com>
References: <20260320105822.447337-1-akkun11.open@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278222-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.831];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: EE3802D92DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Lenovo YOGA Tablet 10 (Wi-Fi) - B8000-F is a tablet from the "blade"
product family. It is powered by MediaTek MT8125 SoC, (a tablet variant
of MT6589), and features 1GB of RAM.

The "blade" family consists of several variants based on screen size
and connectivity:
- YOGA Tablet 8 (8"): B6000-F (Wi-Fi), B6000-H/HV (3G)
- YOGA Tablet 10 (10"): B8000-F (Wi-Fi), B8000-H (3G)

This patch adds basic support, including a simple-framebuffer that
uses the panel already initialized by the bootloader.

While many parts of this Device Tree are expected to be common across
other "blade" family boards, they are kept within the B8000-F specific
file for now as it is the only supported device.

Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
---
Changes in v3
- Drop UART node
  It was probably correct, but I'm not sure and haven't tested it
  so I removed it.
- Remove "mt6589-lenovo-blade.dtsi"
  There are currently no plans to add support for variants other
  than b8000-f, and the Device Tree is also small and there is no point
  in dividing it, so I deleted it and merged it
  into "mt6589-lenovo-b8000-f.dts"

 arch/arm/boot/dts/mediatek/Makefile           |  1 +
 .../dts/mediatek/mt6589-lenovo-b8000-f.dts    | 40 +++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts

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
index 000000000000..b1f622ecf6fd
--- /dev/null
+++ b/arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Copyright (c) 2026 Akari Tsuyukusa <akkun11.open@gmail.com>
+ */
+
+/dts-v1/;
+#include "mt6589.dtsi"
+
+/ {
+	model = "Lenovo YOGA Tablet 10 (Wi-Fi)";
+	compatible = "lenovo,b8000-f", "mediatek,mt6589";
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
2.53.0


