Return-Path: <devicetree+bounces-102390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D6A976E12
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 17:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 221CDB20EA3
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 15:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A851B9845;
	Thu, 12 Sep 2024 15:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VehWAvBS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06A71B12F6
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 15:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726155899; cv=none; b=e3PUZMRAbcVgRhKh91Mx3PU7a+bZrl7+vf/ZjpZaIm5/X5CXXSH60W0kjcBDjYQyzusWfMzq2DmDPwNNWJd+KD02dJWIE2lfPqAp/3sYgfVfc7HU08muGQ3jrWfM7dS3SpQJF8qf/FkBsZCiq/jqIXC8u+meUqMZky7Bg8U+NQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726155899; c=relaxed/simple;
	bh=0Q4daddME1ZWVBbmR9Rv5khcgp9FUk7H1xTRNZQAhO0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oII7yLP2t0lp1HbJvTIwndul8sY59OBXl4/zbtWXNkvWb5gcCO2RNUxIUM/RHeiwZbYWwhCvlI9Bhn8s5RN5CqXqrBN5DrDyGdRcytD1fCm/RYzs8H15T3mpVxLE5G+rp0Ws7RVcC4vu2kfGftlGTA3P895ovyN5yjXOW53OsXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VehWAvBS; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-6c5bcb8e8edso1007065a12.2
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 08:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726155897; x=1726760697; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c1KFFXITdKh/UNVDhGRYZ7z1/sXibi1fC5DJLFmUObI=;
        b=VehWAvBS3DFFsHgyykpAxpflpYIYu5A7pLQPu6XU8y+FiyNaCc0A6PthyzbyiQPxT5
         3hsd7wfmrC/zhBjdLwValjiSiETdJzDzDg6UOCEp+NLgNg9E4ud1etvJM7PpMYklNayM
         4ZRNHldY0BXJGJe+yprn0c/sX6s0UzH0GcIZw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726155897; x=1726760697;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c1KFFXITdKh/UNVDhGRYZ7z1/sXibi1fC5DJLFmUObI=;
        b=NuT8fnU/S/qWxw1Oc6dx2XfXDir1q6hpfkdAv6GeYJTJGHwguiKKHJbptjx5YjXRxg
         UOCBfC9MIg4VGU0xLF+XzpSvd6VTb3WAR/hm1nY2BTWzWXLc++Usr4ApMmkyv/0e1p/5
         Pezi7D/Q5IrEM6CWIcXbXAK4+pJ8lK16HKmKikmmOMRfqea6E1208EGP14d6jd2TGSc+
         iK/Ar5iIOc0S01+tIZtkggK1AY4TbQTB0fGwApW3G1zydoiuqjLh7bMGqKswV/59PuDr
         5h0kIsM+ZoHnZt5yfNM6CAuutyMZ/ZxtkdZNxMD1slnEr0XXQLf7D4/cSkns2nAgUruJ
         GqkQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2ewpXByIMAy3S1Poa3V/BfuGQz7xv9NB3QIGN0qWspARMc4W2EVXDxgAehJnhkslpQS0euKYP7gno@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4xZDZH11IK7GbBrSta98yOagpX2ewxiFvNcO3YXToMHIufIJn
	r2V7/3sQl1/YXarl68ja2upOZh1Jj4iUgCVfLvVWhNNXnRNUIsoJF40fyP58o3Mmn6xUm6aJ6RA
	=
X-Google-Smtp-Source: AGHT+IGceJb5ON2QNnGfniNjs+7jlg3UmQfUeN5Y/7jmG/+KHg45rsa/zeM5LdGm1y6Xl8ZubgzSaw==
X-Received: by 2002:a05:6a21:10a:b0:1cf:6629:f42a with SMTP id adf61e73a8af0-1cf76253369mr4671233637.42.1726155897269;
        Thu, 12 Sep 2024 08:44:57 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:8638:897f:b6cd:8c44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7190909235csm4751353b3a.134.2024.09.12.08.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 08:44:56 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH] arm64: dts: mt8192-asurada-spherion: Add Synaptics trackpad support
Date: Thu, 12 Sep 2024 23:44:29 +0800
Message-ID: <20240912154451.3447081-1-treapking@chromium.org>
X-Mailer: git-send-email 2.46.0.662.g92d0881bb0-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some spherion variants use Synaptics trackpad at address 0x2c in the
I2C2 bus with the generic HID-over-i2c driver, and this cannot be
distinguished from the firmware compatible string.

Support both trackpads in the same devicetree by moving the trackpad
pinctrl property to i2c2 and adding the node for Synaptics trackpad.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>
---

 .../boot/dts/mediatek/mt8192-asurada-spherion-r0.dts  | 11 +++++++++++
 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi      |  4 +---
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r0.dts b/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r0.dts
index 29aa87e93888..8c485c3ced2c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r0.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r0.dts
@@ -79,3 +79,14 @@ headset-codec {
 &touchscreen {
 	compatible = "elan,ekth3500";
 };
+
+&i2c2 {
+	/* synaptics touchpad */
+	trackpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&pio 15 IRQ_TYPE_LEVEL_LOW>;
+		wakeup-source;
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index 08d71ddf3668..8dda8b63765b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -335,14 +335,12 @@ &i2c2 {
 	clock-frequency = <400000>;
 	clock-stretch-ns = <12600>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&i2c2_pins>;
+	pinctrl-0 = <&i2c2_pins>, <&trackpad_pins>;
 
 	trackpad@15 {
 		compatible = "elan,ekth3000";
 		reg = <0x15>;
 		interrupts-extended = <&pio 15 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&trackpad_pins>;
 		vcc-supply = <&pp3300_u>;
 		wakeup-source;
 	};
-- 
2.46.0.662.g92d0881bb0-goog


