Return-Path: <devicetree+bounces-168764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A504A9445C
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 18:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5C21189EB6F
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 16:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42F511DEFD2;
	Sat, 19 Apr 2025 16:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ze/Wpo5I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715B01CAA62
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 16:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745078461; cv=none; b=jDpjvgsVlH0b2TmeGfYRGMhFEkRLnzFCBYdqR+vNXylJWobNv1Hoh75lGnj/A8dfSddS64vHperDpItUjRMeJurUKDwvzN2Di9AWF/PrzY2EQD6IET+xsffEWTdV6T5zDBZqdsz3TqxUcOVfGMAD0QIuAm1ca5C/CMuq+bmBCBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745078461; c=relaxed/simple;
	bh=jRS+m56yoBKWqlzJCHpQcuz1hc7SEoagmFxe1YwYmyY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aTq5/kWkvlGWMMkeInwH/5FJsPofSgBSi2LpB+rw97TrljoQp5jCEL26930X6O1tf0cxem+IB0dgcd9TdSjEwszBVpQy6VEJBCF6WlQGguL/bknTuG5CQFpZAM6BQiYFw3c2x2v6htmo7qZOqgPYjXnsj/0I4Vwrqr9tUj5oukg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ze/Wpo5I; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso21681415e9.3
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 09:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745078458; x=1745683258; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sWjhUwz//7evtz5HtoiKNduoxXjnJthBXIa+so1f8/0=;
        b=Ze/Wpo5IfAWPMpI6yVONIcmmz2Nib10mblWV+BtekUDHapXcfTas+i0/dryPd2s3Fl
         rrY6EWLEO+vNnSZ5vOyaFY9OL2H08BO38tbs6NTyDPIcrlsWurm720Yytkl9HY7JM727
         ttUAxRSJ+nRTs0u3afpIWJuZrmqKgPMry9i/6wm8uIR3L5xNEv4HwxfBHQ8xfmILmuiE
         BC7OLKzr+02l5DI1JMjcJY50EbKQHXh8AjJpzJwVZX2GMsqEjYJXAu4WK1WQKxa1Sbi3
         Z76kclQ/ed9u2ItejNvBy9A5/u2HY51HmwD456WKYNko6bKShDIyC2kOhN8B90Q0qtpx
         lWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745078458; x=1745683258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sWjhUwz//7evtz5HtoiKNduoxXjnJthBXIa+so1f8/0=;
        b=QVKympl8FldDVelSd0w6y4Yla2txmkkujkMZg5OW8RJFLRyDCfkZIghdXS86eT1P6h
         P5Tee4XjO9a1nYqdKrZkVmgS1ZBXJfknR4a670JOIUyagkr5xBwtxj/bh8MKgr6xJ32y
         B2fPNQVa1Fq0OwWwIy6VnUM/ivb+jfS6nHGEQVPGlJPK6n48c6XZXfp3lZlXSQLFtdgP
         5IHaMULwfdFgmP1gc5uPB3eV8DzlCwY/A4Wi8es+9cSFHU+N5VwK/BQwuuXeSsVCqqx/
         YhceSdHoJc7u7B+tV2D6CdU7AHEeK9l7KLGWhQRXGD5Vrvi2AdlaA2H1L09nv+V1Mxl8
         dJFA==
X-Forwarded-Encrypted: i=1; AJvYcCXrHyYI2+TVVY8mAfY3rQ30NG0bHTE33Y+OVBMbyl6w8CX9IE+mSY3t/VymxZ9J4eZEsmi303sL7THs@vger.kernel.org
X-Gm-Message-State: AOJu0YzXMvKjk4mDrUI7tmoyqroCFuhifpJrfs1RLrNq/l9Q9/tn+TSM
	yUAqnRgcBsbrl2SvlemyV3bJ2Sb2mtbmJ5gnDWd2ihz7b/mRvVIxbkcd7w==
X-Gm-Gg: ASbGncumqhdobOw7yaCru7h9dTwOE08MCVO9btfWEwDmOMI/wdbu2oH1wr0S4kvjrJQ
	QMi15Jnpu2termwW+zw/1/kQPcMLonoqcD5RT55cPXgfvBmIyvSaWJ31cN61Nb0diw4vsJLkhU+
	lX1zFmz7UU/161M+LAqZJrSOz+VHH1l7Z4+yHkk5VkOI0SAnvDYcALlsjyGKBMYQcteYAwna0ng
	zhhoqHmM5Bbe9MUYyU8lrm3eOY78LESj4CbzAyNhPrQPUTWJjikFiZHcK9fVYzDO5M/21dCEPAX
	nbzoMtd/pTfd6S+UqOg0/M15qabOWetooZibWueDHKIlsZ6h/C4QyLNegHPZV6Qn3EAup6fI26R
	mG0+t+w/iQY+jGJdbgGQS7l+/9anVMWVDG2jMf/yRMrphMC2T8tUg7V3cjaDvcVH94EC9jBUKX3
	U=
X-Google-Smtp-Source: AGHT+IFibSa/W5S20lX1ZIerWQ4r767y0JrMahGOeoqoY2ep9DudBt3/PDo2q3Eq1Dwy2DGxhmaTAA==
X-Received: by 2002:a05:600c:1d03:b0:43d:fa:1f9a with SMTP id 5b1f17b1804b1-4406ac6562fmr61019145e9.30.1745078457553;
        Sat, 19 Apr 2025 09:00:57 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4406d5acdd4sm65136215e9.14.2025.04.19.09.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 09:00:57 -0700 (PDT)
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
Subject: [PATCH v3 2/2] arm64: dts: allwinner: a64: Add WiFi/BT header on SoPine
Date: Sat, 19 Apr 2025 17:00:47 +0100
Message-ID: <20250419160051.677485-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250419160051.677485-1-pbrobinson@gmail.com>
References: <20250419160051.677485-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds all the pin mappings on the WiFi/BT header on
the SoPine baseboard/A64-LTS. They're disabled by default
as the modules don't ship by default. This includes, where
they haven't been already, UART1 for BT and mmc1 for WiFi.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index be2347c8f267..64d696f110ee 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -42,6 +42,11 @@ reg_vcc1v8: vcc1v8 {
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
 	};
+
+	wifi_pwrseq: pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
+	};
 };
 
 &ac_power_supply {
@@ -103,6 +108,18 @@ ext_rgmii_phy: ethernet-phy@1 {
 	};
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
+	status = "disabled";
+};
+
 &mmc2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc2_pins>;
@@ -175,6 +192,14 @@ &uart0 {
 	status = "okay";
 };
 
+/* On Wifi/BT connector, with RTS/CTS */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "disabled";
+};
+
 /* On Pi-2 connector */
 &uart2 {
 	pinctrl-names = "default";
-- 
2.49.0


