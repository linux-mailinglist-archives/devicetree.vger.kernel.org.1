Return-Path: <devicetree+bounces-200449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D754B14BAD
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 11:52:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5AAE93AFE8E
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 09:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A9DC28934B;
	Tue, 29 Jul 2025 09:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="yQK5Hc9G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7B8289803
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 09:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753782691; cv=none; b=VKhyWnvsOC+Auf+YlEjrAy996YmRHA9BoS3mUSqb2nPBPz1AeaXWQfr7ulD8ejgok0UyIKTrd/Kwokrrcn4+wJBN1i4mDa8IgExTDZbji2QQbIqqysPyEt2pE2SIsllp98BQobMdjFuKePVILfac3MIB7BQ7u+sBKv1jv8N57BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753782691; c=relaxed/simple;
	bh=ESeXGOrQ7Jk3sJKdX7eSWtreA2ap3wRm9L80hcxvyls=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kypar4sN5YPT+Tgvj+yFluMQt+PI6t0X+XMQzlpVoPheG+PQv8vEVcnLB9M2IABFe4DRnw3Y35a87WtUzE4rp9l2KgY6P3XzjDGzXfceKQ7n7SsapwBKhG2/ErOTXMw8s7mgg7mEwrKZmmUL51jxpkFm5BTW6+dGhow0pAR2cH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=yQK5Hc9G; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-76858e9e48aso1577423b3a.2
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 02:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1753782688; x=1754387488; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pbCvGrb5aAa9O95i6t5AjrtpUVmty9ze9Q5MhiAUKr0=;
        b=yQK5Hc9GZKlz+CqHlOTuW4ntE2Z0q/xO7JbFe1Tr0Q0EwK3S1X0CFyhJMXK+NyCtyR
         e0Xnv0dVNRIQPw6xgE+c9cEjeTsiHHDK1lMq3xaqRtuJzNqOmqPg3EV0Zremx9SkZEZ9
         DImF1yMrEBKU1uKFSYFYQa5vYtpOZju5lCTy+4m/K5TceiH85mkVwNEc9QHOnVrhFfWZ
         GjrgBuLu/gO60hc+Ly8d6HYfS/1/0SehykblzMFtHmVVqB8JyHs6skxuY02ZuNNP3YjN
         WDZCt6CpcFO86K9+54tcCCqwnoxuWpVD6nZskhbEMUBXpra2Swe4oQqeW5SF2vymOZAX
         NIaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753782688; x=1754387488;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pbCvGrb5aAa9O95i6t5AjrtpUVmty9ze9Q5MhiAUKr0=;
        b=xDf/9vVKaKzIX0pRvUfYnW3FiRHc6MWRZzF906T6Iw77BtoYzpHw2ki7P20Ef19aLC
         Sl3xC67pguI5wy5z5Vw9QFhfJZrvv1oABzRnsbFNie91cqmEu33rS3HSIBssxQ7O7qXx
         /VpI/x+gf/ymosLmQoeTyRGrKBhULAli9e78l+t043GRWKAqKqxJiBBvykg8hDtRKjVw
         QJgUdw2YJru1V2ypDrP8qTbxOQk93FlySNB3Pj2BMEnrOL/TKTy7elUr95VaiGg9T5Xk
         c6w38Icih0SgVq9zmsb5Cf1or0fiIWzeFsXiOypTZohPrFtHeyTepTj9RYAfsqw5H85X
         bcSA==
X-Forwarded-Encrypted: i=1; AJvYcCXtyLMR4akJRLye9whCPWLIyQXmYkX9TSk6LBtPLc22svTaZ93sThuqABRdQV8NCF9dio4trytxxOvi@vger.kernel.org
X-Gm-Message-State: AOJu0YyX2KAX5nMyBxBkO02FGX0k9fXY0V4WSf9WztUHrfnLFw05af0c
	ow9jL/4LPNeHJhYrAaJf3/9JJwOtRCK0rwHbLJKNSEFxL4LcmP9w79a8dLBjtodnKg==
X-Gm-Gg: ASbGncsIZX/3SzYo7dCZq5yDWhdjmyeGULaufRsAXSzDKGgmewznTo6aCRzpcsFExrz
	08FBCkAda9S+C1HA/gsK1kGk0q/4BWdyelHMMQKwekMbwNnE63Wx+WGgvB+gpKrDYsAdFtSkVSs
	eyB11nWsTaidJuW+CXdCyK4qSL6rnqQwMkOWvrJoyhw/FfCZJut56MpBVQpKsm2CJxQvdtXnpzO
	yxVbDAAUCZemzjjTU4TuL4WeXOklsls3fMubxt9h7gmkhwKGRZaswlAyjI+N//lihJOo4oIs/gz
	1N8gA6LSqavp1FDQZa0xYYWwuBx/jROmYGnhKTRDTUskMAwsF6xyvP+SqIf52jCInaTLcCRQQze
	kwBDOeiSjZ0rFk/nv5/CO/AC+lul7GaVPVMpJ8zxs8g==
X-Google-Smtp-Source: AGHT+IEW3vS6So5bdp5dCCtaao+ndsslJgUa1t4xRenMl39WnvL/VyQ3oTaO1ewKOatupavABkMs4Q==
X-Received: by 2002:a05:6a00:1483:b0:749:1c27:bcc5 with SMTP id d2e1a72fcca58-7633907b3b1mr23335028b3a.22.1753782687705;
        Tue, 29 Jul 2025 02:51:27 -0700 (PDT)
Received: from [192.168.1.6] ([2401:4900:8899:25fe:4fe5:6353:8b2b:942c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7640b4c8762sm7614498b3a.117.2025.07.29.02.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 02:51:27 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Date: Tue, 29 Jul 2025 15:21:03 +0530
Subject: [PATCH 4/4] devicetree: bindings: spi: Introduce SPI bus
 extensions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-spi-bus-extension-v1-4-b20c73f2161a@beagleboard.org>
References: <20250729-spi-bus-extension-v1-0-b20c73f2161a@beagleboard.org>
In-Reply-To: <20250729-spi-bus-extension-v1-0-b20c73f2161a@beagleboard.org>
To: Mark Brown <broonie@kernel.org>, herve.codina@bootlin.com, 
 luca.ceresoli@bootlin.com, conor+dt@kernel.org, 
 Jason Kridner <jkridner@beagleboard.org>, 
 Deepak Khatri <lorforlinux@beagleboard.org>, Dhruva Gole <d-gole@ti.com>, 
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5762; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=ESeXGOrQ7Jk3sJKdX7eSWtreA2ap3wRm9L80hcxvyls=;
 b=owEBbQKS/ZANAwAKAQXO9ceJ5Vp0AcsmYgBoiJmHMynii/fNqaV5wb0NWLzugrDvlxTwshzWO
 ZBPPNl3g5GJAjMEAAEKAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCaIiZhwAKCRAFzvXHieVa
 dAsCEACvuSrQzIHlXfE/7XtmaJyN+QnePqW744FsEhg0roKKvQoQro9gAFzaAn4H9EO8WS0C3zO
 BLfkQT8sRkSaAQiWG3VlrNz2Ws4bbxSULKUfV90N3IKdANHUG03l8fobBayJ1NvGVhXf/CBQwkh
 PEDkoWutEH2jI9OIo4u0gQ/1FVD8L+izgrHsnpgRLm9Zq8r2TeUBheqHFw83McMHMFtA7z/mtuw
 +WP9RyVCWMbVteuPH6kyEzLNlDt7c/XggWfWtOX8OP8AwFs5vw/VtI3DNk7UoPtdkLY6TxPaJNt
 UFgG+yQVPc6NPBCPKMhFgdNiBeU2I/wI5BuA6L+EDW2k4YbDWIHwcEO6+L9GyK5ZPOswV8gAspz
 NiogB3QSgLrBh8FZp2/jOyZsUZNrwBLbE8Q5BhO6LXQk1+OHv5PDjsbiOvA22G53XlFthFyAXcw
 GV5tGcyGqZJ/XkHYdxALgNf4HfydgOh1Uf9MC3NeKbdaVCP5d++rrLo11Q647Z44CsHdiLjnFEG
 8XVFMsXe8Zk6xJ7010xfNP/glSUTKsIqv8t9Oikfx9xv1IMr+pDsvhECx9GbjtLo4QWj/+eMkYf
 uj8yu3dCs/8eS4yixdM9FAvVub0Il9dd20WsHrhiOM2QstfckuB9Pq3uwks8jxkNIkGVyjXEwjC
 hJo0L0KtV06rBMw==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

An SPI bus can be wired to the connector and allows an add-on board to
connect additional SPI devices to this bus.

Those additional SPI devices could be described as sub-nodes of the SPI
bus controller node however for hotplug connectors described via device
tree overlays there is additional level of indirection, which is needed
to decouple the overlay and the base tree:

  --- base device tree ---

  spi1: spi@abcd0000 {
      compatible = "xyz,foo";
      spi-bus-extension@0 {
          spi-bus = <&spi_ctrl>;
      };
      ...
  };

  spi5: spi@cafe0000 {
      compatible = "xyz,bar";
      spi-bus-extension@0 {
          spi-bus = <&spi_sensors>;
      };
      ...
  };

  connector {
      spi_ctrl: spi-ctrl {
          spi-parent = <&spi1>;
          #address-cells = <1>;
          #size-cells = <0>;
      };

      spi_sensors: spi-sensors {
          spi-parent = <&spi5>;
          #address-cells = <1>;
          #size-cells = <0>;
      };
  };

  --- device tree overlay ---

  ...
  // This node will overlay on the spi-ctrl node of the base tree
  spi-ctrl {
      eeprom@50 { compatible = "atmel,24c64"; ... };
  };
  ...

  --- resulting device tree ---

  spi1: spi@abcd0000 {
      compatible = "xyz,foo";
      spi-bus-extension@0 {
          spi-bus = <&spi_ctrl>;
      };
      ...
  };

  spi5: spi@cafe0000 {
      compatible = "xyz,bar";
      spi-bus-extension@0 {
          spi-bus = <&spi_sensors>;
      };
      ...
  };

  connector {
      spi_ctrl: spi-ctrl {
          spi-parent = <&spi1>;
          #address-cells = <1>;
          #size-cells = <0>;

          device@1 { compatible = "xyz,foo"; ... };
      };

      spi_sensors: spi-sensors {
          spi-parent = <&spi5>;
          #address-cells = <1>;
          #size-cells = <0>;
      };
  };

Here spi-ctrl (same goes for spi-sensors) represent the part of SPI bus
that is on the hot-pluggable add-on. On hot-plugging it will physically
connect to the SPI adapter on the base board. Let's call the 'spi-ctrl'
node an "extension node".

In order to decouple the overlay from the base tree, the SPI adapter
(spi@abcd0000) and the extension node (spi-ctrl) are separate nodes.

The extension node is linked to the SPI bus controller in two ways. The
first one with the spi-bus-extension available in SPI controller
sub-node and the second one with the spi-parent property available in
the extension node itself.

The purpose of those two links is to provide the link in both direction
from the SPI controller to the SPI extension and from the SPI extension
to the SPI controller.

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
 .../devicetree/bindings/spi/spi-controller.yaml    | 66 +++++++++++++++++++++-
 1 file changed, 65 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
index 82d051f7bd6e09dab9809c85ff13475d2b118efd..9b44ce4542f9552c94cb0658ffe3f6d3f29bc434 100644
--- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -25,6 +25,13 @@ properties:
   "#size-cells":
     const: 0
 
+  spi-parent:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      In case of an SPI bus extension, reference to the SPI bus controller
+      this extension is connected to. In other word, reference the SPI bus
+      controller on the fixed side that drives the bus extension.
+
   cs-gpios:
     description: |
       GPIOs used as chip selects.
@@ -111,7 +118,26 @@ properties:
       - compatible
 
 patternProperties:
-  "^.*@[0-9a-f]+$":
+  'spi-bus-extension@[0-9a-f]+$':
+    type: object
+    description:
+      An SPI bus extension connected to an SPI bus. Those extensions allow to
+      decouple SPI busses when they are wired to connectors.
+
+    properties:
+      reg:
+        maxItems: 1
+
+      spi-bus:
+        $ref: /schemas/types.yaml#/definitions/phandle
+        description:
+          Reference to the extension bus.
+
+    required:
+      - reg
+      - spi-bus
+
+  "^(?!spi-bus-extension@).*@[0-9a-f]+$":
     type: object
     $ref: spi-peripheral-props.yaml
     additionalProperties: true
@@ -214,3 +240,41 @@ examples:
             spi-cs-high;
         };
     };
+
+  # SPI bus extension example involving an SPI bus controller and a connector.
+  #
+  #  +--------------+     +-------------+     +-------------+
+  #  | spi@abcd0000 |     |  Connector  |     | Addon board |
+  #  |    (spi1)    +-----+ (spi-addon) +-----+ (device@10) |
+  #  |              |     |             |     |             |
+  #  +--------------+     +-------------+     +-------------+
+  #
+  # The spi1 SPI bus is wired from a SPI controller to a connector. It is
+  # identified at connector level as spi-addon bus.
+  # An addon board can be connected to this connector and connects a device
+  # (device@10) to this spi-addon extension bus.
+  - |
+    spi1: spi@abcd0000 {
+        compatible = "brcm,bcm2835-spi";
+        reg = <0xabcd0000 0x100>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        spi-bus-extension@0 {
+            reg = <0>;
+            spi-bus = <&spi_addon>;
+        };
+    };
+
+    connector {
+        spi_addon: spi-addon {
+            spi-parent = <&spi1>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            device@2 {
+                compatible = "xyz,foo";
+                reg = <0x02>;
+            };
+        };
+    };

-- 
2.50.1


