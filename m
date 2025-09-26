Return-Path: <devicetree+bounces-221876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C37EBA3CAD
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:12:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14FEA1C022A0
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F15CB2FBE10;
	Fri, 26 Sep 2025 13:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BmGX5Z0P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468A72F7AB4
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758892300; cv=none; b=gTnujbMQVI9mZTctBk4ILypOVM/EI9Wk65aT3GmzZaYwjfQgjAcVbguZW/1KK5dGUVdIZ8EO95Co2MXLPsASjpme/XC95M61UyqkHcvcuCWDmTF0V8tgzSTjiDgg/VkvFnQbUHUxrC3QVS+DiCdWQ0gfSuodOO5kJwK9858c2Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758892300; c=relaxed/simple;
	bh=7+uj94r/7LeT/xAkBfTGJ8aSRCSPNzAL0fCA+D8DD2o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UvdNYFCc/whpQFWWLZujNm1U1ai9BAIBRpQoXE6eTK/zW+YlBk2uE0Z3vdp3R0qvaqIGFYZEcwmXt9QyZIp4b6/K9vvAhvfCMyaHFGkjf4ZTRdFtJUhYmoy8t4aPgVIBSFkk3HDnsk2r95jLtH/5Bdskt/FLQkVrTIOziqefQBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BmGX5Z0P; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-57bb7ee3142so2297509e87.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1758892294; x=1759497094; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aCy6Bk8e0KycgUL3e8TXrZ2btc+fiyl+rPdd78IS8Is=;
        b=BmGX5Z0PvX78ztmXsmk/MgO7YHO5kshdUTFo6L3WtxQhR3b37olVG9YSfVpI3QmYAI
         EhK0fDcsUSUO3HgE8vLcFK4A664M8X+Bzz0LHtyT64tXMPIS3PsEW6oAJDGLJiSNZl7E
         dXCAQzyq95/E8D537XqgOO3WqhOEOUoH1rkh8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758892294; x=1759497094;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aCy6Bk8e0KycgUL3e8TXrZ2btc+fiyl+rPdd78IS8Is=;
        b=b1mzGD36DRXl/+vqaXv717o259rldQNQzvrbyqmxZQ0qGxQVfM3+oFUMg3Y+LkqwDK
         +arhHd2H1DGTkoOCSjUge4QWyYkHfMb60Bg1nNcBeF3TY6nXfVlOntLAIyseKfKkLMoD
         0nDK4h14gePebwoINCCTfIDqfF4JAchTRgfyEvYnIE3vQBFTY3nq3lCh0PEvkrJGwLRL
         H8HGOWLVPZnf1JbRH4D2YuPU5+fXL3wi8o0wIHWaoFD94u8HNFBAOA/t60/UcCPDCDD3
         CkL6csVKOaaY/dWtRgN1QN+UWJPdonbEU43Um4rhh3R7vHrsLSuT8ETVU+LRC01RaiPZ
         oLKA==
X-Forwarded-Encrypted: i=1; AJvYcCWqUeNFyDZNNXhXmFTCUHSnUxvIX5/OLA075I4bPiAG3AjVmHu/2rtEPxnOgfHcJF5czHMdq1yaZPKt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1ZiameL04Q6u7ckY5IcDBXQ5xMox/2JgKbfEgCp9BniRsO31k
	ITBq9j9lLEladS8ym95m+OzTeGx2V4xt3mhBFGcPhL+3hJ98UhmYpgpfG82nQ6Rhzw==
X-Gm-Gg: ASbGncvSX7T4eSrqHjNspwoLdBYOSQFpG0HoNLtnaUncKXuIyl8gIOjUfexotZc2Cse
	B7dnp4h9d5FhMgKp1hi8EEt89BEnw2tjEIuAKcvJWYp4tUNkrv4UlvBOJD7Xfr8y/Fye2GaV6Ky
	8qH6v8UO3RX+fqYWwjDcEoqmxHVvi+FNUPrVcVyc5AA2/QUSCJcUYi3OWxYHiYSN0r9c2BKrVmw
	5TqFA/pcTf8z3zp9TOV3zj5ooT53pQ6n4X8zeHVwzG8hLyijbJ4D2i7kcjABaRLQUPtDS1+cJ2q
	Uvoj1vv8dIGW+E44V8JED4QvFEE/WlHHMUHanYwAfT1/IgbpH39m65qv8aJNfkmVbPUirDcTUgs
	0fyF5Z04OPO8+5p87j5el1mGdnNP/ZzLy62X7Bn5ofkvid+F1lEImOSlToK+KwMQr5uAzwG9Nx4
	buUg==
X-Google-Smtp-Source: AGHT+IFSULi7NpOrywI1NGNOQUbBJbkaKZRrtRNyEnHKO4o1kB5FT5TGBNkhNPYRfI8ePxwjL+x0fg==
X-Received: by 2002:a05:6512:15a9:b0:57a:2be1:d773 with SMTP id 2adb3069b0e04-582d406b8a4mr1982976e87.53.1758892293940;
        Fri, 26 Sep 2025 06:11:33 -0700 (PDT)
Received: from ribalda.c.googlers.com (64.153.228.35.bc.googleusercontent.com. [35.228.153.64])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58527c6b014sm123872e87.43.2025.09.26.06.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:11:33 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Sep 2025 13:11:31 +0000
Subject: [PATCH v3 07/12] dt-bindings: media: Add usb-camera-module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-uvc-orientation-v3-7-6dc2fa5b4220@chromium.org>
References: <20250926-uvc-orientation-v3-0-6dc2fa5b4220@chromium.org>
In-Reply-To: <20250926-uvc-orientation-v3-0-6dc2fa5b4220@chromium.org>
To: Hans de Goede <hansg@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, 
 Robert Moore <robert.moore@intel.com>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-acpi@vger.kernel.org, 
 acpica-devel@lists.linux.dev, Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

For fixed cameras modules the OS needs to know where they are mounted.
This information is used to determine if images need to be rotated or
not.

ACPI has a property for this purpose, which is parsed by
acpi_get_physical_device_location():
https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/06_Device_Configuration/Device_Configuration.html#pld-physical-location-of-device

In DT we have similar properties for video-interface-devices called
orientation and rotation:
Documentation/devicetree/bindings/media/video-interface-devices.yaml

Add a new schema that combines usb/usb-device.yaml and
media/video-interface-devices.yaml

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 .../bindings/media/usb-camera-module.yaml          | 46 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 47 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/usb-camera-module.yaml b/Documentation/devicetree/bindings/media/usb-camera-module.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..e4ad6f557b9151751522e49b72ae6584deb0c7ba
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/usb-camera-module.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/usb-camera-module.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: USB Camera Module
+
+maintainers:
+  - Ricardo Ribalda <ribalda@chromium.org>
+
+description: |
+  This schema allows for annotating auxiliary information for fixed camera
+  modules. This information enables the system to determine if incoming frames
+  require rotation, mirroring, or other transformations. It also describes the
+  module's relationship with other hardware elements, such as flash LEDs or
+  Voice Coil Motors (VCMs).
+
+allOf:
+  - $ref: /schemas/usb/usb-device.yaml#
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  reg:
+    maxItems: 1
+
+required:
+  - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    usb@11270000 {
+        reg = <0x11270000 0x1000>;
+        interrupts = <0x0 0x4e 0x0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        device@1 {
+            compatible = "usb123,4567";
+            reg = <2>;
+            orientation = <0>;
+            rotation = <90>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index ee8cb2db483f6a5e96b62b6f2edd05b1427b69f5..1503502a3aed2625e8ff488456ccd7305cc74ba7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26258,6 +26258,7 @@ L:	linux-media@vger.kernel.org
 S:	Maintained
 W:	http://www.ideasonboard.org/uvc/
 T:	git git://linuxtv.org/media.git
+F:	Documentation/devicetree/bindings/media/usb-camera-module.yaml
 F:	Documentation/userspace-api/media/drivers/uvcvideo.rst
 F:	Documentation/userspace-api/media/v4l/metafmt-uvc-msxu-1-5.rst
 F:	Documentation/userspace-api/media/v4l/metafmt-uvc.rst

-- 
2.51.0.536.g15c5d4f767-goog


