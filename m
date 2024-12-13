Return-Path: <devicetree+bounces-130508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0171D9F03F0
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 05:56:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B898D282B54
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 04:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E7DA17B50B;
	Fri, 13 Dec 2024 04:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hs1qe8z3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CBA15B97D
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 04:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734065803; cv=none; b=RCsQ50nmrYW3HoapWXNzVemZICEmjekhLuMsYFi4do3K77lc+S3hdsbCU7yiikWjQFHTVpZXPmEwljxcx+iZPH2fkkAFluEHLVFoPvdBWzQwwWNMswTRJUVQVqu1o88Mah9KSOGU/IuooZugptMQstGdLs+ho6Pdu2opVM4CUTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734065803; c=relaxed/simple;
	bh=+zgJeiahRYhOewDI4lhi7m6DU4J3ga4hUeXcPfIztsc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=FVyILbqA+EnHk2chfnrA7cjXV1XpmTZf6bBbmCWiyCYtERCnzl4x3Lq3gR84gpF+NP+68CYBfJvDVo2O/5UglCnAm60zUxHlTgJoEf2hAjOLs3qtmBz5BnNoUfkML8dSXBgaWeM7t1p2kRoK4lx/pIAhn8n2k5t6+lQt9eySqOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hs1qe8z3; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-728f1e66418so1201307b3a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 20:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734065801; x=1734670601; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I9SAvhC/1O9xhOgEJgltjPIiKB+jL/KUsbTgQGFrTOI=;
        b=hs1qe8z3ZlRtkmjx97uA855iKhUo3r0qCPuO+s5xECf2+DnsY9dlV9lxtYFZVMJqRC
         Tfid4ukT8EBAcs2517M9Nds/Dykv4DDDuOQaZEJzUhzki5UP0lzGhVTHHFZ7SHBvOlIr
         9Twyv70di2cLQijXLZsQ0sRcsQ6iVhRJek0Dw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734065801; x=1734670601;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I9SAvhC/1O9xhOgEJgltjPIiKB+jL/KUsbTgQGFrTOI=;
        b=Ru+y1H/tN03xkRtcHETwVIpCqmPGrjP52Bx6On8j5LA29IlhpcjymTZGbB1/duz3dL
         DzX5QpV559SNTVxt8HCDMcw8OaQA9//tlIiWfrreMHQHKYcexOHgrno1HAfMpwTqJrU1
         uW8NwRFCT3zwK8ekpWWU57k3u8XYnzsmAT7b8HdEb1dOCRb/bU42yqgkudFUCiEsRRb6
         UT0B5srlr/8NhgLdgMPm+4KkgedP7SwAwZpzbgYdCwdhJGr4Lp52nLa1SOpjompabCTc
         QnGEACywJ0BjqnIfcfbEUtnm4hDLjBWi0A6dGw748bQkqbBlgNlWPxM7sigS3ELQ961p
         MNOQ==
X-Gm-Message-State: AOJu0Yzg1XqSfLC54GprdSftxAbC/KkfYLkUwa+xT6S28tYcIeHayrx8
	iEmWweARSBEPhXaX8vx4NlC22BXDW9A1nuPKyXT/sOls9Y/PPUDU0dyEIgAX9A==
X-Gm-Gg: ASbGncu5suf47MWMnciJCcIIAYuE5jCUNQ2APDVw1Xt8My0YJJqLuctB9w50F/0VyuK
	Bjj8fncvuoLL4yvsd3/kmQEnGerGElXdxQD+YV//+yFWXWQEfQT+GqRIao8muiOmtiHn+iD1z/H
	JrwhQVMlKu3MzZOvTFFb5fb2Vm2jl6RagJ0Tmyuqhe7OvDZWcHBDRTddtTfr44VXEskZn2EgiV/
	vRi/ZVc6oaB/oT1A7aa+/2vdKYERjj/56zH8PSsnOFPdMBa75TzOfE++Xry8C/Ft5xR8dwp3I27
	g244OJBDU7oqn6IObdTihXzUA09ejGUNVVYv8LQUJVoDbQU=
X-Google-Smtp-Source: AGHT+IGVfeYguG/ILnnKexOgC8Dj9851hNf9D996FbgoQLKq1WGOOUB6A+Iz+5HK65u7tKV9Fecjzg==
X-Received: by 2002:a05:6a00:3d10:b0:71e:1722:d019 with SMTP id d2e1a72fcca58-7290c272caemr1997795b3a.22.1734065801174;
        Thu, 12 Dec 2024 20:56:41 -0800 (PST)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725e73f1e41sm9070244b3a.61.2024.12.12.20.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 20:56:40 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 13 Dec 2024 04:56:11 +0000
Subject: [PATCH v3] arm64: dts: mediatek: mt8183: Switch to Elan
 touchscreen driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-post-reset-v3-1-ec30df9b9381@chromium.org>
X-B4-Tracking: v=1; b=H4sIAGu+W2cC/3WMQQ6CMBAAv0J6tqbbWkBP/sN4KHSFPUDJFhsN4
 e8WjkaPM8nMIiIyYRSXYhGMiSKFMYM5FKLt3dihJJ9ZaKVPoKCWU4izZIw4S9eWZaOMhRKMyMH
 E+KDXPrvdM/cU58Dv/Z1gsz83CaSS1jnfVNYqZapr23MY6DkcA3diOyX9v9a51rW35uyrM0L9V
 a/r+gGvT5NC5QAAAA==
X-Change-ID: 20241018-post-reset-ac66b0351613
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, Benjamin Tissoires <bentiss@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

After commit 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to
i2c-hid-of"), the i2c-hid-of driver used by some mt8183 devices resets
the touchscreen without having enough post-reset delay. This makes those
touchscreen fail to get probed.

Switch to Elan touchscreen driver, which has enough post-reset delay.

Fixes: 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to i2c-hid-of")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
After commit 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to
i2c-hid-of"), i2c-hid-of driver resets the touchscreen without having
proper post-reset delay on OF platform.  From the commit message of that
commit, not to decribe poset-reset delay in device tree is intended.
Instead, describing the delay in platform data and changing to use
specialized driver is more preferable solution.
---
Changes in v3:
- Remove patches related to the race condition of pinctrl since they are
  not needed anymore.
- Link to v2: https://lore.kernel.org/r/20241018-post-reset-v2-0-28d539d79e18@chromium.org

Changes in v2:
- Add second source touchscreen patches since they should based on the
  first patch of this series.
- Link to v1: https://lore.kernel.org/r/20241018-post-reset-v1-0-5aadb7550037@chromium.org
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts       | 9 +++------
 .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts | 8 ++------
 .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts | 8 ++------
 .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts | 8 ++------
 4 files changed, 9 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 65860b33c01fe832f3a4b2e21d24ea6b4f0cba2b..b226dfee22669d596e5b45a7cc02133ee4aaa828 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -14,16 +14,13 @@ / {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&touchscreen_pins>;
 
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
+	vccio-supply = <&pp1800_alw>;
 };
 
 &qca_wifi {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
index 72852b7600383972d98d9b0edd40b6e99e34a85b..863f3e403de8577da41b17b144cdb17c578b2027 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
@@ -27,16 +27,12 @@ &cros_ec_pwm {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&touchscreen_pins>;
 
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
 };
 
 &qca_wifi {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
index 757d0afd14fb064fc1de4608e65eb1a561c4dfa6..e0a583ce4a0bb18095a77d23ab8409bb80898979 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
@@ -14,16 +14,12 @@ / {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&touchscreen_pins>;
 
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
 };
 
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
index 6641b087e7c5f3a957e43ac985137dfd84ac7878..7874c9a20e124c65ace3f90e2ec5bcaf59b69c40 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
@@ -14,16 +14,12 @@ / {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&touchscreen_pins>;
 
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
 };
 
 

---
base-commit: eefa7a9c069908412f8f5d15833901d1b46ae1b2
change-id: 20241018-post-reset-ac66b0351613

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


