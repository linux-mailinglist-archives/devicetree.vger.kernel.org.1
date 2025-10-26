Return-Path: <devicetree+bounces-231081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B9DC0A3DE
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 07:51:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 09F584E34C9
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 06:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3CA026E6F0;
	Sun, 26 Oct 2025 06:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="NJSGOybT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FC01DF970
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 06:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761461463; cv=none; b=AzgEcRDhCabNWg7SjWlV4W9YEi8hrZU8j/X1cgSuZbLzRH8wzTAkEONOVHRmtMPD+5piAb5GjBNjGKQSEMHhkkdxuYjnFfSvK6CLE1leNMfHENpIfjl6cDHrwX/r/dubcTMcNyDd4cLyldaj/eJsoib/GC+HC/VUD36+MsC4TRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761461463; c=relaxed/simple;
	bh=91eutbdiqidC/G4kon+Q++aT9/9DTzorL8tQ+hqakE4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SjTpQMN5lHbuA6AAG0mMUq+RozAjmaP2g1rV2ZUZWFCSsGaEMJhPp8pN02wKT/Wg+H+gS1dfvfph8JA/IkO4BMpA+bGtSlPOvAG7puFMVVoC1uactLi3FU9y21J1HIv16v6veHfmU2xBpoCacRC2IqNM7xEG4yCsC88Nxr4CM6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=NJSGOybT; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-269639879c3so30851525ad.2
        for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 23:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1761461461; x=1762066261; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dz7xWRpvEc8yOS8Ty/nPJaqOcnmga2XcXY7rl8nMBM4=;
        b=NJSGOybTdhQytV5T5cTzLXX1PHHiP0Xcfd0dExykrGIhpI0ItSrs+5k/8TWCwxQktE
         FQa/xSjNpde2yqTQ27j9X5GP6pGzT9VE4189t9HkSC4eT9Yrc07UYfPAGZ64LqFV9BzE
         XENPapCqv1Zd9NsiQDHC11Kd5MZZabpEyHQlN+NA3/izBsTSeLKW6l0XWaGtyIwD7Pa2
         z5IaCs40xwlMOuhCkqpNzBlZPVJ6mDfVaY30skxr/T+Dl4euV2pYYoFM5g781nDB/hXz
         QIO51Xiz87uM2nGrowua3tX61YEfEUw3uWCriQx7f5jV1NjMj8PA2v7uTzwVwIGArgZS
         RB5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761461461; x=1762066261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dz7xWRpvEc8yOS8Ty/nPJaqOcnmga2XcXY7rl8nMBM4=;
        b=Z+v7Pb1IkXgbg68rE61iA4E2wfeDHVnLQ5pyiKrDgVhS//k58SMAVqLumNl8sS/BUC
         L9mXN7xh6MZbCwWHUBYN2pbmwUpCrA6xECWWXLbOCVTBZopfhtUF17PwY2IV4UpRFlp/
         9UEQgoj7cxVmIomsyfr2uTT6pdfEgXEOpHLe9Mf1CqE8VfWy1udkbmYAPVYbBEJc3Bdj
         bBtZkQwwOBdy6fORIy2HAiDx4lBbI/mm4jVuck58E9Ov9n6zeVlGj1FmU+wFGYI2SRVJ
         wHEqetC7HRf662MUQX/416fxEq64o1xJY7L37BhAHtKrmUIJVCXWygbG6NfbA9CcNxeW
         uzmw==
X-Forwarded-Encrypted: i=1; AJvYcCXhvopaAoccEm7OQWMkRcstmI4B3a9X8wI8RGnUEeGUOR/iWbKV69dg6bx/4qRiJj4dTR2Zc2b6uI+Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5vPz8oD7DBJrE9RqoX3vz13/okTaS0XLzxTOi3IGem8lwufXv
	jlzmxdQ8RwV0NA3SnYCYyd7sk6mteNi61Xn+l1VQrlVNuqeSFxyS/mfTI2sDMpC8RXM=
X-Gm-Gg: ASbGncuwE8OXkwccZ0JlUZqy9i6zsPSrdQNXq/B95XFwx9CfhC8iRVoh4YmM5clINMT
	1yue4hfjHBeFDOvK2NosCUsQzcE2/YDqkk8O6/Wdk3Bwd/HNRyHysdrJLJhojDtrSJkL7QTV+6s
	5kY6zVahsXq1gLZ2ZJIS3ZAbrFGeHHXIYGepKwrliKONX8Oo3Lmqcm1o8B2h4cuq7qx7+sCpslc
	UZ6MIbdci5Whl2uG8HOwL9SiK7I26TyBx6UO11HKecne0BtADZgw1fmHNJKUWrmUZpudeSHFVZg
	yA4cduY8gWMOUZ8olFPazMTtFgWyYUR0eadFV6NPwtNQvP+lxo+7bG6AoyniqcRF365KMv36+km
	2s7RRBotW1aTyjAp/Ypgn0alJyF73o6DDM93gF3WuQ3gtJ3adQhp9dLwqGN1qtX9zHgoOuXNDrv
	VA+DLxifyDiGrES+a6
X-Google-Smtp-Source: AGHT+IGUfSpO1SH+sIklCLC7sSxmHonNYEFcnwWc8ZIBDaDFBHRdSpDdt7EYFZ3pJ8lJ0K6h8hWNag==
X-Received: by 2002:a17:902:ec87:b0:24b:24dc:91a7 with SMTP id d9443c01a7336-290cb65c5a6mr393908385ad.45.1761461461459;
        Sat, 25 Oct 2025 23:51:01 -0700 (PDT)
Received: from z440.. ([2601:1c0:4502:2d00:640c:95e5:94c3:cc2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d4288asm43184905ad.84.2025.10.25.23.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 23:51:01 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: linux-hwmon@vger.kernel.org
Cc: conor+dt@kernel.org,
	corbet@lwn.net,
	david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@roeck-us.net,
	robh@kernel.org,
	skhan@linuxfoundation.org
Subject: [PATCH v2 1/2] dt-bindings: hwmon: Add support for ST TSC1641 power monitor
Date: Sat, 25 Oct 2025 23:50:56 -0700
Message-ID: <20251026065057.627276-2-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251026065057.627276-1-igor@reznichenko.net>
References: <20251022044708.314287-1-igor@reznichenko.net>
 <20251026065057.627276-1-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a devicetree binding for the TSC1641 I2C power monitor.

Signed-off-by: Igor Reznichenko <igor@reznichenko.net>
---
 .../devicetree/bindings/hwmon/st,tsc1641.yaml | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml b/Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
new file mode 100644
index 000000000000..cfa0e2cca869
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/st,tsc1641.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST Microelectronics TSC1641 I2C power monitor
+
+maintainers:
+  - Igor Reznichenko <igor@reznichenko.net>
+
+description: |
+  TSC1641 is a 60 V, 16-bit high-precision power monitor with I2C and
+  MIPI I3C interface
+
+  Datasheets:
+    https://www.st.com/resource/en/datasheet/tsc1641.pdf
+
+properties:
+  compatible:
+    const: st,tsc1641
+
+  reg:
+    maxItems: 1
+
+  shunt-resistor-micro-ohms:
+    description: Shunt resistor value in micro-ohms. Since device has internal
+      16-bit RSHUNT register with 10 uOhm LSB, the maximum value is capped at
+      655.35 mOhm.
+    minimum: 100
+    default: 1000
+    maximum: 655350
+
+  st,alert-polarity-active-high:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: Default value is 0 which configures the normal polarity of the
+      ALERT pin, being active low open-drain. Setting this to 1 configures the
+      polarity of the ALERT pin to be inverted and active high open-drain.
+      Specify this property to set the alert polarity to active-high.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        power-sensor@40 {
+            compatible = "st,tsc1641";
+            reg = <0x40>;
+            shunt-resistor-micro-ohms = <1000>;
+            st,alert-polarity-active-high;
+        };
+    };
-- 
2.43.0


