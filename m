Return-Path: <devicetree+bounces-39083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA4784B5D5
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:01:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 747021C24A6D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5739A130AEE;
	Tue,  6 Feb 2024 13:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="O1hqOhci"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9FE130E2B
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 13:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707224451; cv=none; b=IeP+4Yw67h2bMJxdBhTgfe7udCn+lWzN1T/z8zqgyOos/yfrUw+n/pIhWw3v022R/dwKbf4SUm6UmkRA6dBnhXZrma1JRErM3uP9nV3IZBGrns46tshkqeq6GeTq54Gy4Wu8Nr7m7EN3kWM2sDt3TUSoMDVJR440NbrjkhM//6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707224451; c=relaxed/simple;
	bh=2A1nbKwdDQ7tKewCNcRe1gsXajnatEyAUF4Sd29ET2w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=thu19NRcLFhjgwYh63/Z03rkh7tVW6jkgRPsI2FFbzWIs7/UHqKyaIGsU9cO4tKF45n0fP+PaXGaZ339+BzKlo56w4146eAnP8PU8cvW/PdSoyxyNQe0XwqzqiVu1wSo543PWe78/BerSmYx5AOlVVINBcrMF8+FFruUZZ1he6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=O1hqOhci; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1d751bc0c15so47722675ad.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 05:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1707224449; x=1707829249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NnMGYg5SKIByePnZTVg3AFDTX9DCKuF3p//SMkS6JHk=;
        b=O1hqOhci+T+U0X4N3GlDfA0bEeRV8MXTxmzKOA1q5zbWIxTaqvq6I57nEKaJxBUJHA
         JdqSE+sTYZ+b5YzsduFDFJ0wHF3t1Ui785OtaC5l/DWGHnDM1T/bmUbLD2zX4qWCbcyt
         MTcjWUcIqAyR6wDjv1o1T4v87fB6keVdEsg010RI+/ZiHkORiB0/TjvU2+f5k3QJA4KD
         Cel9oe5lYecs2yWUVLHKFLXksD2Ik6xHMxcpbCjZf+QF8yinwcqhl4YdU/FeWP0p+UNx
         2d5Y1+ewjVSAyVYcqsF4DyAPQ8uTmjc0e7sVRQexJ/2cyhx73ANorcOnqklzaJbouLIo
         bwIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707224449; x=1707829249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NnMGYg5SKIByePnZTVg3AFDTX9DCKuF3p//SMkS6JHk=;
        b=Fi9Qhm96YpV7O0AZYy47zocKN8Hejva6drFC4WKWHF60Uy57+rA8Xobx2GHz5z9zKO
         gG3nEULSBo5is5dmLVmPV8z+xxUK1ZBHa5htjYQmQc744w3j/0e3xtZpsbYrJC21wp5p
         pdM0faEz2xcASjYy0MNHJPMY1owQv9Kiv/+SRoQQaqZPSNMZZr1rzylWwINeJ2V+2eW/
         mNzeM+K0wIFL18SG+dtL9llAqiVk15G4O5OIMNMt3sjwZ7/5DA90FIDYO5Cub9ddaf22
         yvnshDnQbXYC19uqx8NUI2zQg/5JDGOf2Tula2ZIPK25wJyefGezcu5mLaN4cjfWHXWr
         4uaQ==
X-Gm-Message-State: AOJu0Yxh0eOX8b68Taovm8+FM3rHCfGsmZGAcb3I5Yd9uNKLftxUpXcb
	Lw1uwm47MOe+rHmpyIeAjNM+0Nkq02fL+ThMjTGhOoHTe2/ndGQ7DWDozIZXfdU=
X-Google-Smtp-Source: AGHT+IFIpbXYRTd3El380QwDq1PMwwKFCO3Ms3/xEE9xXC5xnupzcL2JkS3oDwAN63epYJvcxBFb/Q==
X-Received: by 2002:a17:902:f691:b0:1d6:fe15:b588 with SMTP id l17-20020a170902f69100b001d6fe15b588mr1608965plg.64.1707224448696;
        Tue, 06 Feb 2024 05:00:48 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCU9AIXsjlcEgmDluJXEvvPUxUvpeZXXo7NZU6blkj8DfKQmPdCgOZ4ErsncnBj8YN8jApgac3oVkDNGbI6oMp9YmBxU5yQDM0QrQLyk7uMZtKoyw2S5Fvha2EW58wzt0Pdt7WN5C+/aRzqoonOyBs61b6W4sDbRWREjI6wNpwVZ7+QKDRnY4wPBrR+1LfU8Dp3aj13pafNf/B3vjH1+lsLyHiHZG+lA7b93L384kiTgWHQIQeWzG9okNcGbddyHzqfpT8VikMOOvsEEtgZ3jFEkKWQTqXAEKvqLhUiqSp/zw13+2ZrrBJ44CR6LYavvSJ+z6JJcUv8+nPRklujRCiZxniVuY+zlk4TONFdUblBW+Xv8kk9M4MIKk4j6cJgqFwzALDUs0Lu+sNJls8g8lrZzUBF96ZFMvWUz79EEgM5uW6fkknune/TreThSdzf0jpTvR3N0CT5+mBkE0rQJbpX5MoX1v2pkfj/Q8jKSj/wnc04tJKchOBU3Tm6LFiCG2r8A+ZaliHajBc0pubMHrBoouWbJE7nYrnJQ4CtJ7Zuu3ahLOvOb7RVKN3L2qETyDB47wda7
Received: from localhost.localdomain ([180.150.113.62])
        by smtp.gmail.com with ESMTPSA id s1-20020a170902ea0100b001d958f8ab2bsm1782167plg.107.2024.02.06.05.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 05:00:48 -0800 (PST)
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Marek Vasut <marex@denx.de>,
	Anshul Dalal <anshulusr@gmail.com>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 1/5] dt-bindings: iio: light: Merge APDS9300 and APDS9960 schemas
Date: Tue,  6 Feb 2024 23:30:13 +1030
Message-Id: <20240206130017.7839-2-subhajit.ghosh@tweaklogic.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240206130017.7839-1-subhajit.ghosh@tweaklogic.com>
References: <20240206130017.7839-1-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Merge very similar schemas for APDS9300 and APDS9960.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Link: https://lore.kernel.org/all/4e785d2e-d310-4592-a75a-13549938dcef@linaro.org/
Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
---
v5 -> v6:
 - Write proper commit messages
   Link: https://lore.kernel.org/all/1d0a80a6-dba5-4db8-a7a8-73d4ffe7a37e@linaro.org/

v2 -> v5:
 - Removed 'required' for Interrupts and 'oneOf' for compatibility strings
   as per below reviews:
   Link: https://lore.kernel.org/lkml/20231028142944.7e210eb6@jic23-huawei/
   Link: https://lore.kernel.org/lkml/22e9e5e9-d26a-46e9-8986-5062bbfd72ec@linaro.org/
---
 .../bindings/iio/light/avago,apds9300.yaml    | 11 +++--
 .../bindings/iio/light/avago,apds9960.yaml    | 44 -------------------
 2 files changed, 7 insertions(+), 48 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml

diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
index 206af44f2c43..c610780346e8 100644
--- a/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
+++ b/Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
@@ -4,17 +4,20 @@
 $id: http://devicetree.org/schemas/iio/light/avago,apds9300.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Avago APDS9300 ambient light sensor
+title: Avago Gesture/RGB/ALS/Proximity sensors
 
 maintainers:
-  - Jonathan Cameron <jic23@kernel.org>
+  - Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
 
 description: |
-  Datasheet at https://www.avagotech.com/docs/AV02-1077EN
+  Datasheet: https://www.avagotech.com/docs/AV02-1077EN
+  Datasheet: https://www.avagotech.com/docs/AV02-4191EN
 
 properties:
   compatible:
-    const: avago,apds9300
+    enum:
+      - avago,apds9300
+      - avago,apds9960
 
   reg:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml b/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
deleted file mode 100644
index f06e0fda5629..000000000000
--- a/Documentation/devicetree/bindings/iio/light/avago,apds9960.yaml
+++ /dev/null
@@ -1,44 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/iio/light/avago,apds9960.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Avago APDS9960 gesture/RGB/ALS/proximity sensor
-
-maintainers:
-  - Matt Ranostay <matt.ranostay@konsulko.com>
-
-description: |
-  Datasheet at https://www.avagotech.com/docs/AV02-4191EN
-
-properties:
-  compatible:
-    const: avago,apds9960
-
-  reg:
-    maxItems: 1
-
-  interrupts:
-    maxItems: 1
-
-additionalProperties: false
-
-required:
-  - compatible
-  - reg
-
-examples:
-  - |
-    i2c {
-        #address-cells = <1>;
-        #size-cells = <0>;
-
-        light-sensor@39 {
-            compatible = "avago,apds9960";
-            reg = <0x39>;
-            interrupt-parent = <&gpio1>;
-            interrupts = <16 1>;
-        };
-    };
-...
-- 
2.34.1


