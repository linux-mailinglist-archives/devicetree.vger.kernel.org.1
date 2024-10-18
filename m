Return-Path: <devicetree+bounces-113001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A16E29A434E
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 18:08:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF8131C22EBB
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 16:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2342A20264C;
	Fri, 18 Oct 2024 16:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fx6oy7bO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C31B200CB8
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 16:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729267727; cv=none; b=uVGgnD7Ecr+MP02rZ0BlkTkn2beIxUJzNzT2YwbEoUSQ4fhxgfcIP1iw/sKoRhOG1K+uBjwchZ95C/MKhhNXizd16DTiXyEKxwlDFcieUklQEJ+BoXnQv+FpNcKgsy9pFmnvwfl17ZCHFmZQjAfSQQNNP4q7AdtLV8ByNWz+Y2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729267727; c=relaxed/simple;
	bh=xraqAccI9artWrwaRZh4MU6AFyK+WqkuUop2ha/9yRE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JNGWjYyF1seYigdk0ykOkwRwQLa9rUFZGCTPaqsM+sPlJqGeydE+le4i65z57sTSJFR5nOgx6DoSNzq96Z2MxfSBQq/3TkGqpA9moEfY2tP5v0aOzsEUmkgx+Lk4Ji2Y53ZFrwU/gQ7Y/3fNeonmm19xb++XcDL6IEZmtknHbx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fx6oy7bO; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2887326be3dso1045444fac.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 09:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729267724; x=1729872524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ZBgOs7gndVxY2K9bPnYQhdzvUk2WIcolOLAArh+X8o=;
        b=fx6oy7bO7uADokB8GzlrIK5X7N9byqMZL4ag7PuCflgECUro7jqB+ZM8Yq0aNfZY6W
         7R9loUHWdTKPt4VSRPLoTt8JLPaQwcr0vubVAy5NC6s57Zn+PQ5URNADky33dbkv6Ax+
         XNs0TKbIVRUwU+Lr6CGHRPJMQEBfFyWwE/cofPLZ2i3QKafgVjDg1gmZdJk2BKWjY8Ge
         EW2F+VdB+a3GqH/Rk+9x4pORFa5F8JTRBN+tCtfpkO6Hx7O/Mo6xKWeX1iW474Z4+6J2
         EOl+W1JCIyHy7+1kEh6d5F2P78RN2ELY2epyDOghT+ymLQZX/PInufJDO8sHF/ES5xkp
         5cfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729267724; x=1729872524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ZBgOs7gndVxY2K9bPnYQhdzvUk2WIcolOLAArh+X8o=;
        b=aZOJ2K0/k7WnGVYcevt3VEJnBKHGEofZsDZyPq92rd2F0i2KlRL90BG1VLOw8xPxi7
         ujmwh3zVdbNvaVtQQ4Smev0X+7TOPRAl3h6HdF14i6Ncwnmu4xwSihGt6+/pJdoMjjZe
         plDEK+P9FVwvjLWbdLDMshmF6Xn+VdPC795pFsHTECyNZsTH/CVZrm/CAqio0s8qjBdL
         BWWSKmxsqc2tcYdLTQ8iOx+kxkjjzPoA6kDaS4a7gOztsQTzSGTOk8xdDGutuOD1Z18N
         Bw5rH35C2ASsjp29DM2hl8OsxQaQ02XVWXQDnCnlB3YMahk5TWQ8fAtBdXVvPtoIYQH5
         hXIw==
X-Gm-Message-State: AOJu0YzHQT0bKs/wtKA7ID+XgFf9ForMQEbJOSNG5Oqhy+5elmn46I2u
	q0jDp2yRqtynQ4bYW8vY54hOghJ/qSOaKPGJB1RATP0pMd5nRuVOHXTL+Q==
X-Google-Smtp-Source: AGHT+IHblnU5+A+Nk05NuN5q/WEZ0TcOm9e5Bd+X/wO/YtePlWbz/GpFamcaOw/HPBiGS0GR6as1sA==
X-Received: by 2002:a05:6871:5823:b0:288:563b:e48d with SMTP id 586e51a60fabf-2892c24f4f8mr3037582fac.10.1729267724031;
        Fri, 18 Oct 2024 09:08:44 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2892afb01ebsm507350fac.50.2024.10.18.09.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 09:08:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: allwinner: h700: Add USB Host for RG35XX-H
Date: Fri, 18 Oct 2024 11:06:17 -0500
Message-ID: <20241018160617.157083-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241018160617.157083-1-macroalpha82@gmail.com>
References: <20241018160617.157083-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The RG35XX-H has a USB host port in addition to the USB OTG port used
for charging. The host port receives its power from two distinct GPIO
controlled regulators.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../sun50i-h700-anbernic-rg35xx-h.dts         | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
index ff453336eab1..e6dc29a38dd6 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-h.dts
@@ -71,6 +71,25 @@ gpio_mux: mux-controller {
 			    <&pio 8 2 GPIO_ACTIVE_LOW>;
 		#mux-control-cells = <0>;
 	};
+
+	reg_vcc3v8_usb: regulator-vcc3v8-usb {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&pio 4 5 GPIO_ACTIVE_HIGH>; /* PE5 */
+		regulator-min-microvolt = <3800000>;
+		regulator-max-microvolt = <3800000>;
+		regulator-name = "vcc3v8-usb";
+	};
+
+	reg_vcc5v0_usb: regulator-vcc5v0-usb {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&pio 8 7 GPIO_ACTIVE_HIGH>; /* PI7 */
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc5v0-usb";
+		vin-supply = <&reg_vcc3v8_usb>;
+	};
 };
 
 &gpadc {
@@ -113,3 +132,7 @@ joy_mux_pin: joy-mux-pin {
 		function = "gpio_out";
 	};
 };
+
+&usbphy {
+	usb1_vbus-supply = <&reg_vcc5v0_usb>;
+};
-- 
2.43.0


