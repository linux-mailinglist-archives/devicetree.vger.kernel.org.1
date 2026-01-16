Return-Path: <devicetree+bounces-255930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00722D2E740
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FF1D30A21AD
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10772314D2E;
	Fri, 16 Jan 2026 09:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CbK4WM0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D2B314B84
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768554015; cv=none; b=GSpI5uSXDk5+RDHT+ZFZ769wqqKW4BoaEy1XXaA1wDZI+5oNntAGeFXWCfftyPZPs5Jrw+reP3PlcJ/l5XBOyR4/IgujLDIF8BoAJlYEkDhWVKZ6IgWf7gWI8+Oo+37br1jucN5FF3iEmeqMPq21Qr4VIn30B62Z7eUr13E6GXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768554015; c=relaxed/simple;
	bh=k6kJZK+mSCtSaeQ/Na3/Nw6zleT4XQn7IR5BvpypeEg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aBGTGlwS9Z0afUpqTGWGznWqFqToCj854GyM9w+VQNSz9aj+pli8YIwM9RzGwrMemICHJEY2bANC8GR5qtCfDgGWL1g6Dg7sIO1avIVvTfQjzPch3oP4OmvRt+wd/milcsmVwmKeICf8HbQRsoK8QH4Yg2nGSR5cCf8bjMPd4rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CbK4WM0o; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a07f8dd9cdso11283905ad.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768554011; x=1769158811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i4V8XqUH2nzegFm44X+jl+a+Lf24yE7XhsC0KU3eBG0=;
        b=CbK4WM0oNmsiD4PuBpttHMGmWa8udqCN0IRYH8sJvepkJ2xGw506y/B8bCNq0zEYDy
         DRtfcHSNnVxYiN/7pg6EC5oR19qTS4rCnLPknXYqeeBT6cJJMo1a0Wn7fwztWmUy9WXW
         kwngtE4yyptAAJLo78Km0tDZu6MRrBfmFt8wzTjs0w7Cp4mJA+Rc9jdTfg2N92g3KTRU
         yMh/Gua6lCcO20O+y4By8HtBe7/Q8aFUt4r0ggrrH8t60AX29CFoWMQD+or5BpfQ0vqt
         ZfparrEP9174vNVg0JsnqJrPIujnepKAMSqXILoU19L1TIodJeXdCox3fNwLGZ2bNGxZ
         XydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768554011; x=1769158811;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4V8XqUH2nzegFm44X+jl+a+Lf24yE7XhsC0KU3eBG0=;
        b=bvjfqlpWyMEqoUt6NCZnigc5e5zKLdAJYuE01fqNQEaTlHoOGHQtXvzq+FoIqDLxGm
         6eb8X15lxEZOMW6bDXy1tWVgVfTzRvYrivDXHNU06rZpwURCGwU5k03Bxw5K8tUaRdEd
         B5WUHWbZjEHy0el2Oj+dwfc629GWM2gzRebC8v0pQa44aMBtUw6P/lpotOBw5mdyeX4k
         luwtVGUE/rimEZTrnNIRN2ozqgjoDChf9a/g/yyDeu4AsgQTJL5RMlByB6Cf3GfVPAv0
         NRsHSafGTBiJ75VtVBEwvFavnD9VirZD9bNHJeJ5LKezBMYugDje7mruT0FuFhWroROi
         45qA==
X-Forwarded-Encrypted: i=1; AJvYcCVlHMsWuxP8rIkKw4LVPeGHDIkJdnWH4pvxyTcz2IcqH+lQH1gaxeVOrlA0Qd70QUd4fi5n1r46cpAi@vger.kernel.org
X-Gm-Message-State: AOJu0YxJNYhXwKJQaBELPK4daNbbUbUqPaQq/HI0zPCak4E919wEvcnZ
	nPV5eZuwS/OjDJsNeGygxG+gBOnJq9awdinyw5yfzVNrZlUrnWI1Szay
X-Gm-Gg: AY/fxX5aLEKS/6/jwvT0a77+5ha2lh8qNle5EmL8aXNA2r7ERweR+2kM49vNR7TGwgO
	HSqvMvHd8TTiIz/s0hIphNgP5uFyu8GB6jstyLvDAFE5CNRo5Iw7XGUDKeIo8/KRwCKuY/2TcI8
	OmOD+2j6awMfcTsTwqw3LvAnzgz2RpeB3Ey4tqYldXrRI838cEMrHpd17zh8K+rarGrmrDKUTCJ
	7OxVMHOYBDurrT888ZjSNhzYgMrni881pF31gXvCb3QrmRN/EJ523A2SUS11RAgT7BSqZSfu6eJ
	RrpjfokYigpGfDj+8l2tU5KWlO5JnaO9fQ447Wa3CqKgs8XS3WSH67hPdnh1bhN42Ct/OHJXF3C
	BEYJZnL7sASMwD0IEf9NiTbfUuVEgHv6LcjgG1Yz1R5n+Is9hMDwUmIyOlpcYoCxFZI/065JgYV
	18ipUof2tBWD3LU8DIqK/cldqM0xS380keEHmSDu/4PSRxfz2l4zCxI7S/ko0BM/QHj4YqckjyR
	qpEfLt2Ozr3vcoA/Arn+nI1DdOLeig=
X-Received: by 2002:a17:903:1cd:b0:2a0:be68:9457 with SMTP id d9443c01a7336-2a7177d0da0mr26039185ad.44.1768554011456;
        Fri, 16 Jan 2026 01:00:11 -0800 (PST)
Received: from charles-System-Product-Name.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a71941b915sm15304445ad.90.2026.01.16.01.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 01:00:11 -0800 (PST)
From: Charles Hsu <hsu.yungteng@gmail.com>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Charles Hsu <hsu.yungteng@gmail.com>
Subject: [PATCH v6 1/2] dt-bindings: hwmon: add STEF48H28
Date: Fri, 16 Jan 2026 16:58:01 +0800
Message-Id: <20260116085802.696661-1-hsu.yungteng@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the hot-swap controller STEF48H28.

Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>
---
Changes in v6:
- Fix patch formatting issues.

Changes in v5:
- Move the change list into the commit message.

Changes in v4:
- Fix an incorrect datasheet URL and update it to the correct reference.

Changes in v3:
- Move the STEF48H28 Device Tree binding from
  trivial-devices.yaml to pmbus/stef48h28.yaml.

Changes in v2:
- Fix the entry in trivial-devices.yaml by correcting the comment
  and compatible string ordering.
---
 .../bindings/hwmon/pmbus/st,stef48h28.yaml    | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pmbus/st,stef48h28.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/st,stef48h28.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/st,stef48h28.yaml
new file mode 100644
index 000000000000..c6a4b02bcd84
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/st,stef48h28.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/pmbus/st,stef48h28.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics hot-swap controller with PMBus interface
+
+maintainers:
+  - Charles Hsu <hsu.yungteng@gmail.com>
+
+description: |
+  The STEF48H28 is an advanced 30A integrated electronic fuse for
+  the 9-80V DC power lines.
+
+  Datasheet:
+    https://www.st.com/resource/en/data_brief/stef48h28.pdf
+
+properties:
+  compatible:
+    enum:
+      - st,stef48h28
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@11 {
+            compatible = "st,stef48h28";
+            reg = <0x11>;
+        };
+    };
--
2.34.1


