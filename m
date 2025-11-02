Return-Path: <devicetree+bounces-234179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C185C2984B
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 23:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 910BC4E9C67
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 22:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 688AA22B8B0;
	Sun,  2 Nov 2025 22:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JxkFtCeU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA58924C068
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 22:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762121825; cv=none; b=Sj6ZJW0/2cRhDIO/uJr40HtQ9EyQfJbvNotBnCmFezLWsbx5U6FY7JcoGv/2eWdd4wCpnHh/zGCromGv3duCIwrljcdwotUxmwop401ifwJISHsZCmL2q4g0NbjR0DjjRku9UWkqcS9IxKdwhVZ64qP6gfXfXZoH+ywr+Fcf8EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762121825; c=relaxed/simple;
	bh=IQsghSGvLe3p8fZkTsq1elt5Nv2/GiuRfy/EmyAJNFo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IlnWrl7x54v5U8duETS+JAzUmPZLyTzZO1Uf5YZDocibMhJj7j1WaAZKtC0+FEI5gKGvRiht9D1AiFVtXeLqU0/G/tiP05XR8E1ZoNu1PlNo9JU7HXD/c61ZoIeDJ/h7COonDkq85p8hFDasw/OelBMOMs2Uqva24qvSLH9aOiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JxkFtCeU; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-29599f08202so7422475ad.3
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 14:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762121823; x=1762726623; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=47gxy7zp7dlvgIc5dJ/R0rsLAgFmWqzWMMGs9uW3ML0=;
        b=JxkFtCeU3lMNq9SuwBaNM+UoJA+iU5NBKWt7Ibx5G8oNxWAJ2OxCwYH5RBTR3K9JD2
         skIHF/K7V5ur/TXSRDoEWBN8ayPpu4YaNqNZjEFy+krpIb1MGlSQSJ951g31dmwgbsFu
         YRul0PDR9ABc6K4XAb85lbt6aQ9jXH0NIfPgGkPfZutCqBEnJbdZsYR8318XuvSO56/4
         l0r3s7EAkayC8YznvAbChjarkN2bDaKqsv6WDLcQx25cCHyT/NIaadntTJlrzyO79biX
         iI2g5atS/EtpHiLZUp2NfoiGx6jK4528bwge0nIpNnRQOy4VTG+OjhziRcVom06bjUWt
         P1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762121823; x=1762726623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47gxy7zp7dlvgIc5dJ/R0rsLAgFmWqzWMMGs9uW3ML0=;
        b=e+P98tpOl5VQh5frIMD89PB9bjcW/LpoaPX88kvoQ/K1EaNYjA6ObcFgCkXRpBaA2I
         hty5UlXBCx971Ej5fxYD3nh8HKSkd/kbT1kGQznYSwkwJ16qy0K+5sePC7CKIm/xu9TT
         TqQ6/Qu27oOR6uAFHNvP4ktjazgJCIhgEL61j9AUSSnexCPcBw0m52kIuvDf7bf88+Y9
         xrxuObioEhSNlyOU3gUMKJFb6V+GenkCBKtXFzxntjpHc4q+bywib8YZHgOZ8tjxWerW
         vjWix/PvREi6hgZP3ymqsHDccUzU3tTjueVjYoPLLAqSKmVWA/cNvy/VI8uobBs5p/pM
         k+Pw==
X-Forwarded-Encrypted: i=1; AJvYcCVvkp56YO7Vy8SIAOQ5i8cEBUxzDmHPpec8rr/JTWolaJw/Q+V7k2ec0xlo6ptewLrY1o7N1N6cSniM@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/Ag1H+J+EPjXaWvSLwVc9ESJMmE5MiFFYgEt2uoKiP/4STMPE
	sYW0C3gzEIyxSFppm2H9wX2NOWNRkjYD/h//DuVJMtW7tMoFl4e2C4M+
X-Gm-Gg: ASbGncvk6Z/IklIbcwYVDpt6xrpf+xG4XqaQUJ0WOZX0aomde26r5/CgCeX1PyYB48p
	lZ4ZA/tBh1oobLXtf8pr0Sg+FaPaDoQMDrahZObOl11i32HIMYCXWETTO2agNlhJfGiNSd9iXJD
	3hxmgAilLinGfrW2UxXEPoevC6tMwO96DisHd8vplzNSktOHYxukgxWkTW4XJEAmk6wZjg3K4A7
	BmKvMriG9g2D8cxopZgANfEnhKP0MREI3GfxxsJIYGLGvw23HYVO6JwGupFCXBgqR0J5ovF14So
	5lKicZoQ/spoXN1KEXzHcIg7LW1Euf/IfvKnQUrja9SBcUnvB4Uv9hsvxa9LPDcoXa6pCQGQWxI
	x8hfEA5RjBuZb701h5MObgUwCfDcCMCO/cgYrHYtG8SwQMhq7OCwdIRTqymnldAerfVbwPQeWEl
	bQm/7DApcQq/Dn5cJsRt6aFcs=
X-Google-Smtp-Source: AGHT+IEFC4JM18TyNOFrkGvzBG1fq/R2wBUS8oX8Gf9AFUcfwbHwXBghvsyHwZcbBHBtEeXO2qd8tg==
X-Received: by 2002:a17:902:db10:b0:295:50cd:e759 with SMTP id d9443c01a7336-29550cded8bmr102841845ad.58.1762121822800;
        Sun, 02 Nov 2025 14:17:02 -0800 (PST)
Received: from localhost.localdomain ([2804:14d:4c64:860f:2214:33ff:7c70:4d9b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295357a1851sm83362835ad.27.2025.11.02.14.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 14:17:01 -0800 (PST)
From: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	conor+dt@kernel.org,
	mranostay@gmail.com,
	wbg@kernel.org
Cc: ~lkcamp/patches@lists.sr.ht,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 2/2] dt-bindings: iio: proximity: Add Lidar-lite-v2 and v3
Date: Sun,  2 Nov 2025 19:10:27 -0300
Message-ID: <20251102221643.9966-3-rodrigo.gobbi.7@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251102221643.9966-1-rodrigo.gobbi.7@gmail.com>
References: <20251102221643.9966-1-rodrigo.gobbi.7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since v2 is not a trivial device, add it to a dedicated place. The v3 is
similar to the v2 version, so add it as a fallback to the v2. Both versions
are already supported by the driver.

Signed-off-by: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
---
 .../proximity/pulsedlight,lidar-lite-v2.yaml  | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/pulsedlight,lidar-lite-v2.yaml

diff --git a/Documentation/devicetree/bindings/iio/proximity/pulsedlight,lidar-lite-v2.yaml b/Documentation/devicetree/bindings/iio/proximity/pulsedlight,lidar-lite-v2.yaml
new file mode 100644
index 000000000000..21c9239c64dc
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/proximity/pulsedlight,lidar-lite-v2.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/proximity/pulsedlight,lidar-lite-v2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Pulsedlight LIDAR-Lite v2 range-finding sensor
+
+maintainers:
+  - Matt Ranostay <mranostay@gmail.com>
+
+description: |
+  Support for LIDAR_Lite v2 and v3 laser rangefinders. These devices
+  can use a simple I2C communication bus or can operate in a PWM mode using a
+  mode control pin to trigger acquisitions and return the measured distance.
+  It also have a power enable pin, which can be used to shut off the device.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - grmn,lidar-lite-v3
+          - const: pulsedlight,lidar-lite-v2
+      - const: pulsedlight,lidar-lite-v2
+
+  reg:
+    maxItems: 1
+
+  powerdown-gpios:
+    description: GPIO that can be driven low to shut off power to the device.
+    maxItems: 1
+
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        lidar@62 {
+            compatible = "grmn,lidar-lite-v3", "pulsedlight,lidar-lite-v2";
+            reg = <0x62>;
+            vdd-supply = <&vdd_5v0>;
+        };
+    };
+...
-- 
2.48.1


