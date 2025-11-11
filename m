Return-Path: <devicetree+bounces-236952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D277EC4AEAD
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 02:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A19734F8981
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 01:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A4E22301;
	Tue, 11 Nov 2025 01:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b="XanAVJYj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B13255F28
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 01:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762824909; cv=none; b=n6fzOcHz5cBmRKKnU/5Mxxxm4fqEOz+CvwakrsEsGkj0mJPWDL5jDNdEJOGDVpcQvrB842dZtqTQqoQtsEpGeMUfSodUd3EZx6sdUmvlhFMeHNhorsSeIPsseLYAr/aX/XtQ26iq8D/je566NX1iwbtd+LCZ/yo8JWusuckhVqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762824909; c=relaxed/simple;
	bh=EEpirpK/l6Pxsdp58Zy1SYZgMnffAi4qGVL80OHpxDk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CyPRkz4pb9WralQcEegaMpjfJ3TCAysq9KeCFe0xlKXveyf+HZKbPaV/f3k54mgEtaVvzc9jmtvmFI8xmWfFjFRw00pt25halulmyKtqCa/ExA4SnTDAbLfkTJ1chUxwUXSG5Jm0G1J8ybfLOmpnZG/z5bkUzW7jqaUl0f6e1bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com; dkim=pass (2048-bit key) header.d=pegatron-corp-partner-google-com.20230601.gappssmtp.com header.i=@pegatron-corp-partner-google-com.20230601.gappssmtp.com header.b=XanAVJYj; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=pegatron.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pegatron.corp-partner.google.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-298287a26c3so15147265ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 17:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pegatron-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1762824906; x=1763429706; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dCRUjyzQWysqM14npqbWdyxPUdu80BrwtIvFA0r4EOU=;
        b=XanAVJYjW0gAdoRqJZEl7JyLoJ8O3xWmeDoZUS3vFWqAKbw5kBxjSelvaVWpCMozLR
         H6nZeGIb4Tl/EIBvn/uyvTjCqKcwStzarji+NRokwfcJKMEcjV/Fggbrf6TLsjMNerFE
         oPy/UoO3wfYQpw2JpagfJRqod9btzNR3C9UZ8rUVRk8/wo8ri4v3IcyOZew5EgPL+Lxj
         4Q9Bbpq2chFF/hhBy1b9480EUGYrgzFb7fKHBTtHXlN9+umLtnXZ46oWagvC/FhBOO82
         CUwoPAzpHR7xOJgXjrZ79RU+nyXivNRTFNz1tALpDBvWhC+QA5bv1PQVxhoUDSuYk3U5
         XjOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762824906; x=1763429706;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dCRUjyzQWysqM14npqbWdyxPUdu80BrwtIvFA0r4EOU=;
        b=KuPN4703cpD0uLTxODHNRlzHaj3UxuSLnPxWZb4Uili2DFAR0Wd/h+WHoXi/vCBSJ2
         sBVz7uR8Z0phuqosGCMATndKojWDFy1Uit8diCQIbn5gBg4yCQvTni62yeDFptjWFfTv
         o9w9LN8p2fdpEdiizYTzG7GRVm2sHylKHDxZGMF/Z48/HMZ0pSONt7GrlfAFZfB2jkyr
         bwnQg2eohowptEgpAGzM/XAS8S/iUpo26CVAAmJ+HPt8Vnux5boWjHD0QWqU19mztb51
         OE5RY8du2Wu60ctfQ8bMFme2c0DGTqSH74mWhEPmM6bAn/SvZnXO/LpJgyO/cH+oMtNb
         QBwA==
X-Forwarded-Encrypted: i=1; AJvYcCUje6tVp7IVYlMuyFOsP8rSn9BPMHN13ZJ345BW6OBMKof4XGD9GC4tew5dxS5fhP+8s9X9eCaHsHf9@vger.kernel.org
X-Gm-Message-State: AOJu0YyOvvuIbj/nC+4rUq8nf5kevKSfxL2im1B2i7WCv+8m0o5oFZUm
	Ivf17UwOfZi76PjhDvGT+qfb1UBgLnsKUR9ejmW1adpMFpUgruAE1WKyCWdqdMGKkA==
X-Gm-Gg: ASbGnctcGlbUS44zFxHA23GlHR2wJjsxYC6+puk6nlBOFkCOjMjG6NGZcsf7gW+qawy
	NHffTpF3qj/5i7bICE/eGpfs/a6caM8tug0ViLXndN41nefc1y9Lf6rmA3ypSVMEH/hmp24Lbr5
	X4MMq/WoPKlx/b1mV6HwKUv1++S1WLGUtA/d4V9IYrwT0IS2HIS673QEcYsNuqbBcbaKQza5/Ak
	gaq3hejIWkIfdJtnEq9MGASBKaJzSYGpMvI02rPCZdAoJXKWrr+6f05krSkfKyOj2SsQGArJdBb
	BFejgNgypH0XxWoT5Rfg/X4G2CPjRHKqtZGN5XVrD9qEhMkVHqwdhP69p0SwAzs0GEZRz3ohNNj
	yxspBLnttbATT5rQVENStBUqa3XqSWhZ1h6WZLt6G/sGqkHpUPtOKpmVZy761mANmsGhghPCwNc
	im1G5a86+qE/69XOVSm28PjVg9ObmwYg7tB9nU+8vsF3bXy0afna1Wg0tJtwktW2VlkkptiFCct
	/FVdhY8yM/7umUvt9xc9hStOvKpv0wHn8tz5SQV8kTaMDCy+hemXPDZqQVcnPONSJPw4w==
X-Google-Smtp-Source: AGHT+IGRoXVLZ7agvfhSDaP/AeheoEMsIJIdYyiaZZNnoHcNgq2mN8gZOGSrD/OnhlDdhDdOfevBZQ==
X-Received: by 2002:a17:902:ec82:b0:295:4d62:61a9 with SMTP id d9443c01a7336-297e56aef0fmr135124385ad.38.1762824905979;
        Mon, 10 Nov 2025 17:35:05 -0800 (PST)
Received: from sw-TUF-Gaming-FX505GU-FX505GU.. (2001-b400-e2ac-65d6-0959-d540-843d-31d2.emome-ip6.hinet.net. [2001:b400:e2ac:65d6:959:d540:843d:31d2])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651c740b5sm163666485ad.70.2025.11.10.17.35.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 17:35:05 -0800 (PST)
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
Subject: [PATCH 1/2] dt-bindings: HID: i2c-hid: elan: Introduce FocalTech FT8112
Date: Tue, 11 Nov 2025 09:34:57 +0800
Message-Id: <20251111093426.1.I76ee34ac45e1469dbeb11de0d1e47d794af7dc88@changeid>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>

The FocalTech FT8112 touch screen chip same as Ilitek ili2901 controller
has a reset gpio. The difference is that they have different
post_gpio_reset_on_delay_ms.
FocalTech FT8112 also uses 3.3V power supply.

Signed-off-by: Daniel Peng <Daniel_Peng@pegatron.corp-partner.google.com>
---

 .../bindings/input/focaltech,ft8112.yaml      | 66 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/focaltech,ft8112.yaml

diff --git a/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml b/Documentation/devicetree/bindings/input/focaltech,ft8112.yaml
new file mode 100644
index 000000000000..391825b24fcb
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
+  - Dmitry Torokhov <dmitry.torokhov@gmail.com>
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
+        interrupts = <15 IRQ_TYPE_LEVEL_LOW>>;
+
+        reset-gpios = <&pio 126 GPIO_ACTIVE_LOW>;
+        vcc33-supply = <&pp3300_tchscr_x>;
+      };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index ddecf1ef3bed..69f54515fe98 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12326,6 +12326,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/dtor/input.git
 F:	Documentation/devicetree/bindings/input/
 F:	Documentation/devicetree/bindings/serio/
 F:	Documentation/input/
+F:	drivers/hid/
 F:	drivers/input/
 F:	include/dt-bindings/input/
 F:	include/linux/gameport.h
-- 
2.34.1


