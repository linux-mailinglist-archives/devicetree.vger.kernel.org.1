Return-Path: <devicetree+bounces-98827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B272967667
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 14:21:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 755ED1C20AE6
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 12:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E17178372;
	Sun,  1 Sep 2024 12:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E+hcvsat"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4D361FEB
	for <devicetree@vger.kernel.org>; Sun,  1 Sep 2024 12:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725193301; cv=none; b=CR/QNVPLdIp/vB5V+aWC8L4EL+9QwDZMA0mqb5hFOXN2ms2qmLvMmRq/XsbohdnzMsU6gkFUsxlHr68/oabi2+yR9DTepA9WMT6Ee3lvnke0HZqm8F6GTMf8wh4DkvEjjv/FzwdGqu7nedBm3/bxdnUE+284AjrofLGBkZdtbUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725193301; c=relaxed/simple;
	bh=w7JvkxpFs3aIiEobCg3ZLPNGzLbw3r8mGAVW38488CA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ISsdYMlAF+li7DCojhFHHQr1hYoeXKJfLbLqCBEhFudPIvctnIb5/fc/o9YQz3Z95K/TouwN/8W7/Zt070wL3YLC0zsAqT5mVzr82UmbuJ0EnuXH80U5TJjGbPdZt3EyXk78/zacvhUQTYXhcQxqe9E5/8UeGpmTM61n7PL0E3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E+hcvsat; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42bb8cf8a5bso24398895e9.2
        for <devicetree@vger.kernel.org>; Sun, 01 Sep 2024 05:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725193298; x=1725798098; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S3QqO1DNWoq6azA2+M6iG5kCR4SnEiL6Nm4BqEihvJE=;
        b=E+hcvsatZDXu20OAltIBnfJSXe99ofPRTUm+L5OKAKF6LtQVsgn/v5ltZPN8svyv5j
         rLUmcEElih6FPP5fk8zCaig4aU2kedfZgyAyJCGiN1K9v2L/JHnd0km3oNbY7/hEu/Dg
         LHgojxl2YJ5i9aAeD9+H1oJKCvnMFkhJ0aA9WxsmYAZ4z8xXqWJ7t9Ji+4aRg7FTQiM4
         p3bCFjeqOSUG4ZPKjIk44fS5WrhKpGrwtfr4zLgcP6rdoPQWSHt/Q0wmG05ul7mLeWGb
         jjQwxX9IIsWeu4luLCzITAaOW5cH6j+/AkXTOMlfHjiegIo9tWs/9dKjQwCce+kRpHIv
         xcvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725193298; x=1725798098;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S3QqO1DNWoq6azA2+M6iG5kCR4SnEiL6Nm4BqEihvJE=;
        b=NM047oX1YCBMlyNqAn0JN2x5h9XbATgd/ivdOPjS8yFBS0BjP851iWIISCS7Pc3NSs
         CCYzzJvktOjULsgVAo6LGn3eanELyAZ0U5PLJ8hnDHCnG2tN2JjpWhk/sullAldXYiBL
         E7VHelMZaR4a1V6/mJLYBcXZnulKekEfoL3ouLYOyfwS1/qgpQXMgoK3qQbJoSfWM9s4
         XkEONcuxa7du67i4Q9Uuu4BenLCh4sRtwunk7a3O9sCJdYdQOi3NexvASzjqMXvDwjkM
         d3rSW+KqOflOBiiExngQ2nQH74n9mmGqNkCfx5f7K/X0JdFSD8c/y7BtkxW4wR1oTui7
         qaGA==
X-Forwarded-Encrypted: i=1; AJvYcCVDahXgUPgAI46fjzcSLfy0th9/f/++Kyn3fTGDEXbu1DstHpB1DLjJQXW7FkBc7kHVLIMqoLd3UIlr@vger.kernel.org
X-Gm-Message-State: AOJu0Yy45A6/rDvsedfruwmoJB+cqKf7aQ/jk8+tT71VvlnHK+qJjsF7
	nZ2r6nU8Woy2NnTJI/qp5h3mHzQOH3BepG/JpqskrwESoWslSEC3
X-Google-Smtp-Source: AGHT+IHrFigHK4m4sNfpXR7aEdiOm4KSC59yNn0eiFWD1Uc+I8s/Uk57fGk+MERhoR/1tLQHxgz+tQ==
X-Received: by 2002:a05:600c:1c91:b0:426:5440:854a with SMTP id 5b1f17b1804b1-42c82f4844emr5021875e9.1.1725193297737;
        Sun, 01 Sep 2024 05:21:37 -0700 (PDT)
Received: from morpheus.home.roving-it.com.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-42baf1b0c18sm121363695e9.37.2024.09.01.05.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 05:21:37 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 1/3] arm64: dts: allwinner: a64: Add WiFi/BT header on Pine64
Date: Sun,  1 Sep 2024 13:21:29 +0100
Message-ID: <20240901122135.1389702-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.46.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds all the pin mappings on the WiFi/BT header on
the original Pine64. They're disabled by default as the
modules don't ship by default. This includes, where they
haven't been already, UART1 for BT and mmc1 for WiFi.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../boot/dts/allwinner/sun50i-a64-pine64.dts    | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index 09e71fd60785..f04f0f1badc4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
@@ -35,6 +35,11 @@ hdmi_con_in: endpoint {
 			};
 		};
 	};
+
+	wifi_pwrseq: pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
+	};
 };
 
 &codec {
@@ -124,6 +129,17 @@ &mmc0 {
 	status = "okay";
 };
 
+/* On Wifi/BT connector */
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&reg_dldo4>;
+	vqmmc-supply = <&reg_eldo1>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+};
+
 &ohci0 {
 	status = "okay";
 };
@@ -286,6 +302,7 @@ &uart0 {
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
 	status = "disabled";
 };
 
-- 
2.46.0


