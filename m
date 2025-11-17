Return-Path: <devicetree+bounces-239172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D43CC6235C
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 04:08:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 51DB94ED6DB
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 03:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33617265CC2;
	Mon, 17 Nov 2025 03:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="TPrsVtL3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DDF2641E7
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 03:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763348542; cv=none; b=Rz5h6zW+itwEH+o+iPAAqo4FJIfpsyboljh+ggO/USkP2I+GlwEzQmldAUbQ/HAE2CwaLGpAb66Nt2OjqrlTPIVq1MW7eNqNU1d/TvDzzQxGbQ+9l17iqzF2cpNNuQ5SwpaDMRiW+J0d1fPUZSinMWaPFo6sFvR3qZXsJ8VcwPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763348542; c=relaxed/simple;
	bh=E+w5CacVRy4NzRLVEY840KNx2+5vsVzY22VwXKt1zuM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=POGPc6ve3LTm7M0J5NMtrOpkt8AYQpZBlCIMj3jUXfNWWRqjGrx0LikDVrTJVsRgF6CjCHOkzhF2fBP/bEPpHyd30GRUJFQQ/QNy4ReOlBMHrfoBzaEDvVhqphkyOULb5dHPFHE8Y1gyFCrZOso7Ai0gAjwuDooJDlPh9S7VZXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=TPrsVtL3; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-343774bd9b4so3517443a91.2
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 19:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1763348540; x=1763953340; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wtkO/d0SFdmVJP9bxm0KAjJpnyfYOJRTu7hpl6oM4zc=;
        b=TPrsVtL3/7Jd6Kx6psP/f9/pm6lAe6OnXFfiWTNpnG+7XyagTi5CPiaFztSlMsa02A
         5gDdWHH8INIpsYoVg1AXaY/AehVW+XI4uH05/1lPD+LEGfR4d21ulEuF0WhQR+cpajgi
         Rb0bQbySDtNdzd9e71O+VL5V/ZZy28cOXWQt2tQqvL8L26MAfxPJyFXuMxF4UAlvzMVy
         77JFSi7AjwO1kTzsPo9fqXPYcIYQPC+PiBwVtNJ68wAHKniLnI4BnxvA7qUL3syMkAjq
         A6cz3yCDP0IUk2icGJSaEQjHjoQrz7x7XPbUC82NOnP8nVrf1UxJtgjJpZNU2MUcAc+L
         Yx0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763348540; x=1763953340;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wtkO/d0SFdmVJP9bxm0KAjJpnyfYOJRTu7hpl6oM4zc=;
        b=WcPPNDTZqI3BuhGOL7Pr0c7uSsLtPSgNy/ImB/rPcGASR4TJ2lW+r5vI3MpE3TaYDX
         s3G0gEkUHA2JLIypsq4jmZqEjhvYmRZEd5p7IN9Inc7C+5KP9QSmELhXq8l6y4efHAtu
         rsmJJ1lHRREuEWORVEf1QkaVdf9ccd44447in4097cUTeR18rwzfI+58gYVL3cGYz4UU
         DF2ggBLdJhX7VuSekmesW7tz9qtMzgqs5MNIKvNdXuiOhn5XxbSP5ZZl0YkOeKAI1iX6
         abxpS5y3PKzl85FFi+02Yrnvko8eLw2rAD4MsoVukeZ2RZBofdVTDvThuUfIh/6D421J
         siBg==
X-Forwarded-Encrypted: i=1; AJvYcCXo9vgPk9R2VcZBT0bWrdQ2KZFxaYa2MY7zHLpLSbJRT2GC77a1j3kmtRZ14n3rd/q8gJLVe3iKFJbi@vger.kernel.org
X-Gm-Message-State: AOJu0YylyCmNnxJWoR3Ldzr0TJqy7V8A6o5ZONW8tFs1dJTB9DysmB8+
	ZSDbtkMW4DtD8UkrdovM5trbhR9XSG/mo3FrQ5PW9TKRr3s8ZekMptz0IBrwonfVJA==
X-Gm-Gg: ASbGncuqA06UCPOQ+744XJ+zcSSanJnrarfjfPEoKzaid1MEOBMU+Y5p/lx15wfHJ3p
	3ZdXuAXi7RbYAAGRT8nw5hi8NhFhZ2+JamA2EDrragCXdQ42hfYCuCtG/h0lnJ9iOy7wnXP1SJD
	WaCJys6M1zaCzPbI+M4zpPv/4TprsNWusBNMqfL4xPJmKrrTMDIZ/c/YAvtCny6TZXVw9DZoytO
	8ax7PEgjCYKazQ6XmQRxzF8buj4iNBM/WiegmOKYIo05TOzP1lfuxo1uh27sUzvJ3jQkjEfpLiy
	uLt3If04RzZa5gbT33tkSy+UK4CKH49VklNbuOosHfKs5rWzyqUinlfLph9jI/DFahbJxFizIMS
	mI1BKTaPAPWsWVINz1PrSdN+ornj+e91SfHiNnQZ7JfJK6nu62wml2NRgHEiYZmR388nPBZqwi8
	lIAJHASY4EX0QrsV/RInen5yNccKYbAng6reX0ALeR67DRj2Zx/bGRSIfILnOHpjOlHp70UFyUi
	dRy6e0VL5m0f5CaUX5roMKulTUXOljSgKgcS7AIO5q92HPJun+dTtoDXYCtT0DiZdREMcYd6igc
	k2vj1A==
X-Google-Smtp-Source: AGHT+IEoPkCs8vCqIhXIUSAwPtzQOI5UWeRzCYLlSFpBEdA6K02beaMHmREUL1SrGBfmb/EP4eX+gQ==
X-Received: by 2002:a17:90b:4b04:b0:340:d578:f2a2 with SMTP id 98e67ed59e1d1-343f9d906c9mr11929182a91.6.1763348539622;
        Sun, 16 Nov 2025 19:02:19 -0800 (PST)
Received: from sw-TUF-Gaming-FX505GU-FX505GU.. (2001-b400-e2ac-65d6-ccc0-37c3-bfbe-95a4.emome-ip6.hinet.net. [2001:b400:e2ac:65d6:ccc0:37c3:bfbe:95a4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-343e07ba2a4sm16332114a91.15.2025.11.16.19.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 19:02:19 -0800 (PST)
From: daniel_peng@pegatron.corp-partner.google.com
X-Google-Original-From: Daniel_Peng@pegatron.corp-partner.google.com
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-input@vger.kernel.org
Cc: LKML <linux-kernel@vger.kernel.org>,
	Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: input: i2c-hid: Introduce FocalTech FT8112
Date: Mon, 17 Nov 2025 11:02:10 +0800
Message-Id: <20251117110148.v5.1.I894dde5015f4acad94cb5bada61e5811c5142395@changeid>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>

Create new binding file for the FocalTech FT8112 due to new touchscreen chip.
Confirm its compatible, reg for the device via vendor, and set the interrupt
and reset gpio to map for Skywalker platform.
FocalTech FT8112 also uses vcc33/vccio power supply.

Signed-off-by: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
> > From: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
> >
> > The FocalTech FT8112 touch screen chip same as Ilitek ili2901 controller
>
> So keep the device in that binding under enum. No need to create
> document for every device, even if they were different but here it is
> pretty obvious - same chip.
>
> Best regards,
> Krzysztof

Re-describe the commit message to make more clear why to create new document
for FocalTech FT8112 device.
Sorry for the confusion.

---

Changes in v5:
- Modified the commit description clearly.

 .../bindings/input/focaltech,ft8112.yaml      | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/focaltech,ft8112.yaml

diff --git a/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
new file mode 100644
index 000000000000..197f30b14d45
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/focaltech,ft8112.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: FocalTech FT8112 touchscreen controller
+
+maintainers:
+  - Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
+
+description:
+  Supports the FocalTech FT8112 touchscreen controller.
+  This touchscreen controller uses the i2c-hid protocol with a reset GPIO.
+
+allOf:
+  - $ref: /schemas/input/touchscreen/touchscreen.yaml#
+
+properties:
+  compatible:
+    enum:
+      - focaltech,ft8112
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  panel: true
+
+  reset-gpios:
+    maxItems: 1
+
+  vcc33-supply: true
+
+  vccio-supply: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - vcc33-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      touchscreen@38 {
+        compatible = "focaltech,ft8112";
+        reg = <0x38>;
+
+        interrupt-parent = <&pio>;
+        interrupts = <15 IRQ_TYPE_LEVEL_LOW>;
+
+        reset-gpios = <&pio 126 GPIO_ACTIVE_LOW>;
+        vcc33-supply = <&pp3300_tchscr_x>;
+      };
+    };
-- 
2.34.1


