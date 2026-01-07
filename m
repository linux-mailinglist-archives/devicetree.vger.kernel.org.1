Return-Path: <devicetree+bounces-252404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2AACFE63D
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 15:50:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D24A5301FD20
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 14:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328F33346A9;
	Wed,  7 Jan 2026 14:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wcb8Wb08"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7782A32B990
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767797133; cv=none; b=cuxTETES9YVQ/p4Y9m526RXKMacF5UvMU+dkJDKrVwCKraqrQwiU1eDIqoKcGCngWXC8ir3BKouQu5ozFnNf7p06FZMCnO/h1IBCV7N10S9+IU67FhujXsgqKteitT5mTj3kjoMUG/UrZCHRQXeml8j6K6UzFUPkb5+hVCzOG+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767797133; c=relaxed/simple;
	bh=C3PuXB8/vmogehdLRgmO6JqzbNRqgyho+T5vwTziq9s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=o36gVupNL4VicDVH74JyR8kZAJ6q6i6bacqvpw1iK36RsqBKwenWgA9OVIchFOMhuIcxWshOQJUBX1w7mrcOwEB2c9xn7S9gcRCUL9wLKlhR4GhGlHF+B8CN8rk/rvYB/W0YnknqmWHRyw4MFyYsA8e++CzBoNKP17kjIdjXJeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wcb8Wb08; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7b9215e55e6so1296822b3a.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767797131; x=1768401931; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o+imUiIHloid1xlodOE3kjJS+euGW8NBjLDTeE2D+kE=;
        b=Wcb8Wb08vBpCe43oyVBzDFYUaNPIRp5kkz6m5KFYoJDr9TpJ06dwXCwbHs0db7QkYw
         WJQb+KVYg4E6AdQP8AcsJlPGQ2rz3gEd5Oafn0m1k67uVDf9n7hMFHXFb+ZPlGXL6Ld8
         1qmOjtWMBUCdMIQkWTkj/QcHJYX5VJEsE0U0QCB/4MBcHQpPG+DZSepRgmUA5RRK3UEq
         yDinm59Bds7zs2Wn5S4jTA4zLnmRkbg1Tw0ZOJmRsfA6MvhtZKtuqHguy06u1Pb6wUWk
         wm2jMwEESR/Q14vQOFjb9jXIw0tgSFe7daw94cV3eNdWY8Q/W+WaSqSwPbZ00QJwdSYN
         l1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767797131; x=1768401931;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=o+imUiIHloid1xlodOE3kjJS+euGW8NBjLDTeE2D+kE=;
        b=mMnogM/IXBIJKQRm0EHSwzh9w11uzJjaPmz4VHFV4vLYaxpPOytltwcpo4LN/tiVWi
         bX5WRXVlC7wg1Dj4BkZqyRfMddxImQheEkUzPVT/1z14zUrC1W6fhKpfhw+O53Dq/ixM
         7HSLPwXx2vhysNdvVARBtAMYYb4EUCSL5/tKkzfEcKrPv7t1MMnsWTDoEkAa1s+jaWJF
         AlIMDQ4QAVJi+Ezh8rLpPW9C0RMbFURmXKRO+s9sMhql8ZhRPEHx9B3OTUVPrDBnk73u
         eHObq2mXH1iBJxdha+M5tzaZGEHMoTf+RbJHntl17qX9pYgNz+BdZKPSCeUgZ4EalEVV
         J00Q==
X-Forwarded-Encrypted: i=1; AJvYcCVBs5pCSa+V948bau5do6+0Q6fpeaDu3U0FrQsLmr2JDA4jFATxQFfjMmAocRdCo2r+OvIzguJKKv10@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4TCgx0MflmKSbnyc766UyPQjBEr2zALJXxbW+CKJuXSVubFvn
	zeiZnAyNgekxf4Mg+IDjptP98V2zkwaoNBTu4Wb8GBkwvqv9YgzoPqLi+nubQQp/
X-Gm-Gg: AY/fxX6m/89t7jisGHvNqKGt2ygRMKtbIMVnI/QSwf+Y40SJrz1xI7kkvltzMsM8api
	b2LziZLlLAxy2Ll3OKhb5YHsH0ROD4Ralpm5KZ/RAObV82cjTf2YZ3CIJD3RcHq/kNMFRQ9j1iP
	Ra6vaK2NxuGTkdPpvS6kM1PlWpkjR+AX6pKdVNuRDdJ+dQ0U7+jOxfiQFQ3ZYKY1Z3Xpp3pqYCG
	FoMq60mHa77ULosmbU0mByp/A9otBxmQmFc72rixGYx9d+IqXG502lDiXz3/dvyBZGFfMq6//Tl
	rnGcKC08b/2iDq6uryVhQ/+6ekMUeGfc/EtlnhFex6TaftA0KQuYsegrz2xwxFhQ/vBTWYi15dE
	HeKOASA/UCV05VvyKaZdte14FpoTkyU/9PCSS67kwCXU81Zj6mOKHOYVWMv9E17DTKG6oViAQTm
	MzTX/pggmQiqye6vCCsJyIfGCR6x09kSzxkg==
X-Google-Smtp-Source: AGHT+IGVIIUAyKJEL4qfFHtG9fa8Ev4S5xmvFiU0OxGYUXCjRAcJDFiq7gUC+3c2jKMhNBrI2qdk3w==
X-Received: by 2002:a05:6a20:4308:b0:366:14b2:30e with SMTP id adf61e73a8af0-3898f9cd7ddmr2791110637.65.1767797130773;
        Wed, 07 Jan 2026 06:45:30 -0800 (PST)
Received: from localhost.localdomain ([2405:201:d025:c012:f249:6c16:3004:d03d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819ab137711sm5283720b3a.0.2026.01.07.06.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 06:45:30 -0800 (PST)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ASHISH YADAV <Ashish.Yadav@infineon.com>
Subject: [PATCH v2 2/2] dt-bindings: hwmon/pmbus: Add Infineon TDA38740A
Date: Wed,  7 Jan 2026 20:15:07 +0530
Message-Id: <20260107144507.46491-2-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260107144507.46491-1-Ashish.Yadav@infineon.com>
References: <20260107144507.46491-1-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the TDA38740A/25A device tree binding.

Signed-off-by: ASHISH YADAV <Ashish.Yadav@infineon.com>

---
Changes in v2:
 - Review comments address:
https://lore.kernel.org/all/2ee75453-0869-4348-ad92-f7ff71aca75d@kernel.org/

Driver code in review process:
https://www.spinics.net/lists/kernel/msg5985470.html
---
 .../hwmon/pmbus/infineon,tda38740a.yaml       | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38740a.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38740a.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38740a.yaml
new file mode 100644
index 000000000000..cd4102350a15
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/infineon,tda38740a.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/hwmon/pmbus/infineon,tda38740a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Infineon TDA38740A and TDA38725A Synchronous Buck Regulator with I2C
+
+maintainers:
+  - ASHISH YADAV <Ashish.Yadav@infineon.com>
+
+description: |
+  The Infineon TDA38740A/TDA38725A is a 40A/25A Single-voltage Synchronous
+  Buck Regulator with I2C designed for Industrial use.
+
+  Datasheet:
+  https://www.infineon.com/assets/row/public/documents/24/49/infineon-tda38740a-tda38725a-datasheet-en.pdf
+
+properties:
+  compatible:
+    enum:
+      - infineon,tda38725a
+      - infineon,tda38740a
+
+  reg:
+    maxItems: 1
+
+  infineon,vout-voltage-multiplier:
+    description: |
+      TDA38740/25 pin strap parts are available in two flavors of 1:1 & 1:2
+      vout scale loop.
+      For the 1:1 vout_scale_loop version, there is no need for any resistor
+      divider as output voltage sense pins are directly connected to
+      the output.
+
+      For a 1:2 scale loop version, it is recommended to use 499 ohms each for
+      top and bottom across the feedback path.
+      However, in some applications customers tend to use an intentional
+      resistor divider across the output with a different divider ratio other
+      than 1:1 or 1:2 to alter the actual output voltage.
+
+      For example, if pin strap part is set to Vboot of 0.7V,they use a
+      resistor divider to generate 0.75V using the equation provided in
+      Section 13.3 of the datasheet.In this case, as there are only two
+      vout_scale_loop options of 1:1 and 1:2 that the IC can identify,
+      Read_Vout would still read as 0.7V in the telemetry and the baseboard
+      management controllers would use this telemetry data to monitor the
+      rail parameters leading to false tripping of the system.
+      This multiplier is used to offset the telemetry output voltage Read_Vout
+      so that the telemetry data is reported correctly to the monitoring
+      controller,in this example the multiplier would be 0.75/0.7 = 1.071.
+
+      This multiplier is required only for any external monitoring of the rail
+      output voltage. All the other Vout related parameters are used
+      internally by the IC and there is only a slight impact on the fault
+      thresholds.The impact can be calculated using equations in Section 13.3
+      of the datasheet.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 2
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        hwmon@40 {
+            compatible = "infineon,tda38740a";
+            reg = <0x40>;
+            infineon,vout-voltage-multiplier = <75 70>;
+        };
+    };
-- 
2.39.5


