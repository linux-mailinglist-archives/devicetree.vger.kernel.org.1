Return-Path: <devicetree+bounces-85007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3138892E835
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 14:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 457BCB23196
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 12:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359F714C5A1;
	Thu, 11 Jul 2024 12:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wxbz2g0P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7439715B132
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 12:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720700429; cv=none; b=t4A/61dtChnBjPEHc5SesP3LX7ojGesMrhIo54rNzhXobbS4ZGQN8FghMjEv3b87yiD+IoYpLfl+j6AxWuc3E7kZKhltngMmTtqpmrB29WwS4+SCVJXcGzipJG4Tulhd5TnrOCZG44O5/f/5AP9RN66nn59d+188Vyby8ZqoDcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720700429; c=relaxed/simple;
	bh=tZXUQmpUYccMnxKzZY+mp17ITA1jUU86+LGv5EK+ThQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gQUhajzCY8UVMMWEDvdoSx0VP3ESD4nufuukfbz4Zcst0VqI/qqxwNA8ZEK0DysM/1hgfaI4nx8A7khIsn/oM7fW2FJniG3Z8pIouXZ05N52T4FbysRHtY9rG4u2b7cXyP1fgcTgFoFR4up592h/7oAZ7Ess15BKP7SfLOhDff8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wxbz2g0P; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52ea5765e75so819363e87.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 05:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720700425; x=1721305225; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tk0i+1IBh11P9mmpTotHIXZYo1vhEJFxu6RJYG7MLmE=;
        b=wxbz2g0PPcum+oJhaPmEH5msECjon8tL3zBFEdN5MkAPIozh9gPOjoSA+8Uj8T6TJH
         qs8DoK3rEXNz7oVvQqNwkKNVijUxOv7RdDz/rQA7Q4YhuSlJBCOxbhID/sxUnXLiV4dR
         ip6PJvAMZpZn9vLuP5Bkpto18z6mUc4CCB3PvTmQ4fUzWK9bWvyQtshq0EdQuqaoGWJB
         5A/QgvorMB+OYxTQc60RvcqrEDuVCx8DRPubQoSSpqxDQqRDsSYgu/GXYczqFGOzw4kY
         N5dyGBhFP48MzRwMe307r3iXqS81MzdlU6IKpQS5L9Um1s69YJGKr3QEmMQe64HKAnu9
         +U8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720700425; x=1721305225;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tk0i+1IBh11P9mmpTotHIXZYo1vhEJFxu6RJYG7MLmE=;
        b=HTRtknAWG9WihysgH4y+phZMN3Es5Iw0R2Q7g3ioiKeYDeJ9ykLYdGz9j1v/+0qJq7
         DJj/5vZyo2QiQ8mwRdDXuVs+ABhXiyrnn8zppQF47OogQgGg9wi+asnQN8e65VQeyuww
         2V+t6R4o/YbmeXC2MHigaL6t+EwoAWGmIuTaOGqjpFVoMVn6/9iTX5ttMsM9xshW5fT6
         eW02Sahiau7pqaXPZR0FyNgKbDN0Q1lORsK6Y5UWGJo11SqYA2jy0xSocKUEFHib4eCr
         gZenYBHIANeAdKHO6o5MCybTfSyWZEkLLTIgWfsBQduQZKuN5Zwe1LrqnSxCP5MmZ9E9
         0hjA==
X-Gm-Message-State: AOJu0YxS4gQcxATCA4044gVbg7OoX3LgjEDPzQ4LFm834ooFamhjsr2K
	BwsYGj1nKRKF0cAgccZHi9K0LFMVTsvj64WEBU3rqqvWjME51mn5vtVgn9d6FY4A4TUzXPikMMg
	W
X-Google-Smtp-Source: AGHT+IE2GarJar26wbR5wgczKVRVcc8A1TGBP61n0DrJ48X2/q6ptsXXH+rJiIBLZWLXkYy2e/8qkw==
X-Received: by 2002:a05:6512:23a7:b0:52e:9808:3f50 with SMTP id 2adb3069b0e04-52eb99d20c3mr5849319e87.42.1720700425240;
        Thu, 11 Jul 2024 05:20:25 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde848e7sm7555021f8f.44.2024.07.11.05.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 05:20:24 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: drop obsolete qcom,usb-8x16-phy bindings
Date: Thu, 11 Jul 2024 13:20:14 +0100
Message-ID: <20240711122016.41806-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the bindings for the Qualcomm 8x16 PHY driver that was dropped
in commit 4756f35fdf14 ("usb: phy: remove phy-qcom-8x16-usb.c") in 2017.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 .../bindings/phy/qcom,usb-8x16-phy.txt        | 76 -------------------
 1 file changed, 76 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-8x16-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-8x16-phy.txt b/Documentation/devicetree/bindings/phy/qcom,usb-8x16-phy.txt
deleted file mode 100644
index 2cb2168cef41..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,usb-8x16-phy.txt
+++ /dev/null
@@ -1,76 +0,0 @@
-Qualcomm's APQ8016/MSM8916 USB transceiver controller
-
-- compatible:
-    Usage: required
-    Value type: <string>
-    Definition: Should contain "qcom,usb-8x16-phy".
-
-- reg:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: USB PHY base address and length of the register map
-
-- clocks:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: See clock-bindings.txt section "consumers". List of
-                two clock specifiers for interface and core controller
-                clocks.
-
-- clock-names:
-    Usage: required
-    Value type: <string>
-    Definition: Must contain "iface" and "core" strings.
-
-- vddcx-supply:
-    Usage: required
-    Value type: <phandle>
-    Definition: phandle to the regulator VDCCX supply node.
-
-- v1p8-supply:
-    Usage: required
-    Value type: <phandle>
-    Definition: phandle to the regulator 1.8V supply node.
-
-- v3p3-supply:
-    Usage: required
-    Value type: <phandle>
-    Definition: phandle to the regulator 3.3V supply node.
-
-- resets:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: See reset.txt section "consumers". PHY reset specifier.
-
-- reset-names:
-    Usage: required
-    Value type: <string>
-    Definition: Must contain "phy" string.
-
-- switch-gpio:
-    Usage: optional
-    Value type: <prop-encoded-array>
-    Definition: Some boards are using Dual SPDT USB Switch, witch is
-                controlled by GPIO to de/multiplex D+/D- USB lines
-                between connectors.
-
-Example:
-	usb_phy: phy@78d9000 {
-		compatible = "qcom,usb-8x16-phy";
-		reg = <0x78d9000 0x400>;
-
-		vddcx-supply = <&pm8916_s1_corner>;
-		v1p8-supply = <&pm8916_l7>;
-		v3p3-supply = <&pm8916_l13>;
-
-		clocks = <&gcc GCC_USB_HS_AHB_CLK>,
-			     <&gcc GCC_USB_HS_SYSTEM_CLK>;
-		clock-names = "iface", "core";
-
-		resets = <&gcc GCC_USB2A_PHY_BCR>;
-		reset-names = "phy";
-
-		// D+/D- lines: 1 - Routed to HUB, 0 - Device connector
-		switch-gpio = <&pm8916_gpios 4 GPIO_ACTIVE_HIGH>;
-	};
-
-- 
2.45.2


