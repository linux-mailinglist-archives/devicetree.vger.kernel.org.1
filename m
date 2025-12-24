Return-Path: <devicetree+bounces-249580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7EBCDCFB6
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 18:54:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49B45306F07E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A84F334C140;
	Wed, 24 Dec 2025 17:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WfcJ9mZS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A0D33F374
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 17:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766598747; cv=none; b=XLwtYY7D+/iWldMV886FSXDD5WXaIf6qcr04A1HQ03Z7cptrJEwHdvkAxrPrOBvogMjsk001pNZ9xz9TmfSo4mIhIYCR1OtO3e55rCelj/pbZvWDBzS6Qx6dvRLQrnm9rxaRIt69uIrJ1BDjtRkbCJizDRgERIqZ4yt9y+9Whfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766598747; c=relaxed/simple;
	bh=KlmvVYidi/b+GF8gj7jC9Ui3l0jxyM6Tto7halMyMdI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FQWO4hTwkws5Fw60YkCDRY5FUuAmhVucGs6I6J9DeHTLvU4odquj0bGN3LQwxmth7ZJIb3XmyRGkSbn++oMLDV5nus8EdOAjVu/w78+g+3QGKaNHADrANdjtWBlUEbudjpQqJL+LH/EmjpKpycmJuHCDLFiQNIKsLX7ejL0u+7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WfcJ9mZS; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779a4fc95aso34292545e9.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766598743; x=1767203543; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gaOIXxrqQCngZffYscFSrUnSSaaW8h0KY7Aw0tMh0SQ=;
        b=WfcJ9mZSz56C1IyBF5cheo9FybJe+SIRQLOoHr6QiJGAqQ+ORIfaZOiEZwoGbtS/KR
         iJUip8uKmZnAvd0Z5cqDEF7YodsaArRe0W73M5XUUeSziuvJEAnoGI4tXce4v2PFzeff
         zPBy6FpBAzF36lF95fl8Nqo3DHrIOy6ZYwn2gs5SFxu8xO5625VIjfgGG+g54qt6wZct
         pas5bcN/skXmSuoxOEPcv7WRca5AKYNHZEGglh339evHwx2V00523IgysnPe6ixL4V82
         iLSlmmTvxlSG4LBBUU4bqWTneyJQaVP7lPBGhqQYDPxEsK6f68PBu8/Mwmxps+UBwDXv
         ACfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766598743; x=1767203543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gaOIXxrqQCngZffYscFSrUnSSaaW8h0KY7Aw0tMh0SQ=;
        b=JE+qygNPcfNmxqlQyG26shr9NX8IPw+Z/QfKeYpRG3lYo/yCbIfOCyxonTebIGxuJb
         LwXiz1zlXqm7Q+ZRcGSsryaKYbem5g7l2HLEQeX9WQxOv6mZc7Zw/nin3X7IYcVQMHKS
         0j3c8u6BvPbEKLlecmMav6SvFhTlprEhm+Yy9qqYCFjA8w/0UJF5fHCo/m/jvcfjK/Wb
         Aa0OlI54buGs31t7PJ0jKRPIYnPu91xgkuccOniOBsLWErTTxQ/CWo2TmPxrG0/9f/8t
         8LDCVfDum7tqpUYGCGZZSjtpR1PWOmBfHf2IDQmrRUo/FzWLm/C9ku9EieuUXiV16+xS
         k8pg==
X-Gm-Message-State: AOJu0YzuXNXMg35BVUUuxWmX3T34IH6dVjxpTDzIZcXQ/7Wn3ZuKvSEG
	6oMzu9V9bdFcGtP9KWK5OKwC/4ZK8qj7GUDGAQOKw9JDhx/QrkHQj9Sp
X-Gm-Gg: AY/fxX40uN0yV1exhLMGLkZXcImIwBX/k27bshE/OVLqBRNRuDY7aJmeci/ZMncnSru
	vDzfWb+8rJ90+nyqStNq+Pd6NnIXElxUQzWDxdM8LRW1lRHKz51SilmfhtGlOH/p4JWktZtz7aE
	kICeWM0buikVFU7AjEXSNbdpTnz72c39184OiqKOEjUpyfGtHbEkJX2KVhEUPsi2T6zaCM7KK7h
	SAZcMwsNKn0FOXSMTf980HAxEj12QSH+jww3eXlYRSwKoeTfgROqEnjFE5P+VWMAhGXPRPS3qgp
	YkyPrvC8Q3Z2QbkEdZcK36D75P7TBciLl0Zn2DutUqVfgOsMNJVoeCOFUQ1T5ywkbmummWwo5+n
	chEbd6azHzGdsgo5bwb1x5NTCCBfVQVBWwyHQXHjKU/TAgJl3Of4m7Bp3XXxGpv1FzSukfinZkM
	CdrI71z9ah5eg07O6sbcb6pmLqLgiPU6TVCyQAaoIw+ZfMeQDYpYbbSUP5AP9Xl6pK0rFlT+nBk
	NbEBT9PLc/XZT75LGl/ya+E
X-Google-Smtp-Source: AGHT+IH8xpipIn0XYIQGn+wpBcL0Tro/gfFbgAogNdzCAHfKgQSv/rfI6oWpY03P3Y9XGAmaRo4w+A==
X-Received: by 2002:a05:600c:8b11:b0:479:13e9:3d64 with SMTP id 5b1f17b1804b1-47d2d273999mr133650515e9.15.1766598742312;
        Wed, 24 Dec 2025 09:52:22 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a4651bsm140167935e9.7.2025.12.24.09.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 09:52:21 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 4/6] arm64: dts: renesas: r9a09g087m44-rzn2h-evk: Enable CANFD
Date: Wed, 24 Dec 2025 17:52:02 +0000
Message-ID: <20251224175204.3400062-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable CANFD channel 1, which is available on the CN35 connector.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../dts/renesas/r9a09g087m44-rzn2h-evk.dts    | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
index eaf73868783b..ff18632a4214 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g087m44-rzn2h-evk.dts
@@ -27,6 +27,13 @@
 #define SD0_EMMC       1
 #define SD0_SD		(!SD0_EMMC)
 
+/*
+ * To enable CANFD interface disable both eMMC and SD card on SDHI0 by
+ * setting SD0_EMMC and SD0_SD macros to 0 as pins P12_0 and P12_1
+ * will be used for CANFD interface.
+ */
+#define CANFD_ENABLE	(!SD0_EMMC && !SD0_SD)
+
 /*
  * P17_4 = SD1_CD; DSW5[3] = ON; DSW19[1] = OFF; DSW19[2] = ON
  * P08_6 = SD1_IOVS; DSW5[3] = ON
@@ -173,6 +180,18 @@ led-11 {
 	};
 };
 
+#if CANFD_ENABLE
+&canfd {
+	pinctrl-0 = <&can1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	channel1 {
+		status = "okay";
+	};
+};
+#endif
+
 #if I2C0
 &i2c0 {
 	pinctrl-0 = <&i2c0_pins>;
@@ -209,6 +228,16 @@ &mdio2_phy {
 };
 
 &pinctrl {
+	/*
+	 * CAN1 Pin Configuration:
+	 *
+	 * DSW5[1] ON; DSW5[2] OFF - Use P12_0 and P12_1 for CAN1 interface.
+	 */
+	can1_pins: can1-pins {
+		pinmux = <RZT2H_PORT_PINMUX(12, 0, 0x19)>, /* CANRX1 */
+			 <RZT2H_PORT_PINMUX(12, 1, 0x19)>; /* CANTX1 */
+	};
+
 	/*
 	 * GMAC2 Pin Configuration:
 	 *
-- 
2.52.0


