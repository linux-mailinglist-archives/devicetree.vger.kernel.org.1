Return-Path: <devicetree+bounces-65482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1435C8BE800
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 17:57:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37B3B1C20E3E
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 15:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D41316D9D6;
	Tue,  7 May 2024 15:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="mjs29lxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE7116D9B7
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 15:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715097332; cv=none; b=Yrkn5vagiKfgNdmTsXZzCe+UmC/pdJA0nSxOpLJ6ScCOuOX5oVXQYheZruukGwaCIp8rL5E0LwZx8bXp7LfzGrxgg0hd7IEFHDgrLPv1Qz0eB7jshUL9Qo+SNoA2g18MbsksZZKPHoRcAx8aL713WNkg9DWAgxeuc3cX4N4BRCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715097332; c=relaxed/simple;
	bh=5GcCSNxUB2nNT9lCSh3AsMpAmCe/+f8zkisiEdAT35g=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Y4m//IT6JmH43YI7ng5ZN4KPCPM2DgQBYdxT1LrbTiYHkTCnD7ySNlLboYGFBS+0Dws1KqlgNcxsVWGmu+iXS5bp7PuS4B9tV1v32G3KM8Hx07i207TLtSPnRFSxXsvuF42u16Lz2+9Gf/GQOv5ovL0h/gybep9vxPx9BheFIO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=mjs29lxO; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-dbf618042daso6367273276.0
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 08:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1715097329; x=1715702129; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Zg5aDDMOyqW00delol8Ca3GL2MBNFcyQ9gNrBCTWcU=;
        b=mjs29lxOy2t5vtKl2r+ttbjlF8d2YaZQlsbA9ycYxuedbA34Tkw8Ji2Yit0HLCi+fe
         j4Tep37l0fnA5FVVY1JMY8ha5gL+6uRd4yoQ1dHJEjZ2kPXml0wA/Q8O0x2pSN47rh0C
         dpTqnVe+q+8AMGSegaI/d5Sww9rZ/51a/A4+bpVEjce4xZ094ArH1elyDB+CyYlR1ZlN
         EAkLYqSCBRX53oyd4jjnmXd5QRJaEDp7kALM9SRzNS2pWqkw/eBu1TW2O5KScbapE3hp
         Y+0m+NcjdqvO5EjNIqCyjZjpJ64y0tFfu1NLDep+EF9pc6lgjIHlyN4T5B96Uv9xDdoa
         g5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715097329; x=1715702129;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4Zg5aDDMOyqW00delol8Ca3GL2MBNFcyQ9gNrBCTWcU=;
        b=jvElzPbmXAhm0tl4XtVPwWf26fS3efuvk7l5Dg5sWq4+KGEY8BjwnRsA62L39sJJX3
         UCWWTs7sL2E/zY1Y4WkS57FFNpRo8KLnBChygsnD1+zVV2yWMNgwAu0jC4VBtmz5dtgm
         SzKRXWJL5BNaWuGTZchqzL6OWqefbFIr2XOVxyLX5rQih5Oy6mUXuuxx10DyR6FgBR6O
         ZZnf9wADuGcePvndyxc8vEp8qPRhQI0wk7JxBD6PH4Iu16YMwvpO2J8cHxFz2A/Ez532
         fRed8kSbuP83+WOnPM23H00sRysC8sjgQyMmAdnUP3JVkxOKSd4Uka1/OXMeFsUGf4vn
         Qhdg==
X-Gm-Message-State: AOJu0Yzw1UoWuMwkd6JdQAwJrvzJsY93lPxRAlDSt+3JVC7z51By7CTZ
	LG1ZtSIllYd340BpBqfoAqvQtcBtKACGN4ncGyRRE5CrTlbxmY1aFLvYmzttmqLiXizS5IBqx7a
	YUZRZrH+p7A==
X-Google-Smtp-Source: AGHT+IFl69D5om/H+B54ETJ2PMG3nixPpLSKdXlaMOhDwBY7IXqpN0xGnNqZTl237/xQEoI2pJqnIU8A60Nk+w==
X-Received: from szatan.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:2d83])
 (user=panikiel job=sendgmr) by 2002:a05:6902:1007:b0:dd1:38ec:905d with SMTP
 id 3f1490d57ef6-debb9e0bdeemr176276.11.1715097329468; Tue, 07 May 2024
 08:55:29 -0700 (PDT)
Date: Tue,  7 May 2024 15:54:12 +0000
In-Reply-To: <20240507155413.266057-1-panikiel@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240507155413.266057-1-panikiel@google.com>
X-Mailer: git-send-email 2.45.0.rc1.225.g2a3ae87e7f-goog
Message-ID: <20240507155413.266057-10-panikiel@google.com>
Subject: [PATCH v3 09/10] media: dt-bindings: Add Intel Displayport RX IP
From: "=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
To: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	chromeos-krk-upstreaming@google.com, 
	"=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Add dt binding for the Intel Displayport receiver FPGA IP.
It is a part of the DisplayPort Intel FPGA IP Core, and supports
DisplayPort 1.4, HBR3 video capture and Multi-Stream Transport.

The user guide can be found here:
https://www.intel.com/programmable/technical-pdfs/683273.pdf

Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
---
 .../devicetree/bindings/media/intel,dprx.yaml | 172 ++++++++++++++++++
 1 file changed, 172 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/intel,dprx.yaml

diff --git a/Documentation/devicetree/bindings/media/intel,dprx.yaml b/Docu=
mentation/devicetree/bindings/media/intel,dprx.yaml
new file mode 100644
index 000000000000..01bed858f746
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/intel,dprx.yaml
@@ -0,0 +1,172 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/intel,dprx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel DisplayPort RX IP
+
+maintainers:
+  - Pawe=C5=82 Anikiel <panikiel@google.com>
+
+description: |
+  The Intel Displayport RX IP is a part of the DisplayPort Intel FPGA IP
+  Core. It implements a DisplayPort 1.4 receiver capable of HBR3 video
+  capture and Multi-Stream Transport.
+
+  The IP features a large number of configuration parameters, found at:
+  https://www.intel.com/content/www/us/en/docs/programmable/683273/23-3-20=
-0-1/sink-parameters.html
+
+  The following parameters have to be enabled:
+    - Support DisplayPort sink
+    - Enable GPU control
+  The following parameters have to be set in the devicetree:
+    - RX maximum link rate (using link-frequencies)
+    - Maximum lane count (using data-lanes)
+    - Support MST (using multi-stream-support)
+    - Max stream count (inferred from the number of ports)
+
+properties:
+  compatible:
+    const: intel,dprx-20.0.1
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: MST virtual channel 0 or SST main link
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+
+            properties:
+              link-frequencies: true
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+              multi-stream-support: true
+
+            required:
+              - data-lanes
+              - link-frequencies
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: MST virtual channel 0 or SST main link
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: MST virtual channel 1
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: MST virtual channel 2
+
+      port@4:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: MST virtual channel 3
+
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    dp-receiver@c0062000 {
+        compatible =3D "intel,dprx-20.0.1";
+        reg =3D <0xc0062000 0x800>;
+        interrupt-parent =3D <&dprx_mst_irq>;
+        interrupts =3D <0 IRQ_TYPE_EDGE_RISING>;
+
+        ports {
+            #address-cells =3D <1>;
+            #size-cells =3D <0>;
+
+            port@0 {
+                reg =3D <0>;
+                dprx_mst_in: endpoint {
+                    remote-endpoint =3D <&dp_input_mst_0>;
+                    data-lanes =3D <0 1 2 3>;
+                    link-frequencies =3D /bits/ 64 <1620000000 2700000000
+                                                  5400000000 8100000000>;
+                    multi-stream-support;
+                };
+            };
+
+            port@1 {
+                reg =3D <1>;
+                dprx_mst_0: endpoint {
+                    remote-endpoint =3D <&video_mst0_0>;
+                };
+            };
+
+            port@2 {
+                reg =3D <2>;
+                dprx_mst_1: endpoint {
+                    remote-endpoint =3D <&video_mst1_0>;
+                };
+            };
+
+            port@3 {
+                reg =3D <3>;
+                dprx_mst_2: endpoint {
+                    remote-endpoint =3D <&video_mst2_0>;
+                };
+            };
+
+            port@4 {
+                reg =3D <4>;
+                dprx_mst_3: endpoint {
+                    remote-endpoint =3D <&video_mst3_0>;
+                };
+            };
+        };
+    };
+
+  - |
+    dp-receiver@c0064000 {
+        compatible =3D "intel,dprx-20.0.1";
+        reg =3D <0xc0064000 0x800>;
+        interrupt-parent =3D <&dprx_sst_irq>;
+        interrupts =3D <0 IRQ_TYPE_EDGE_RISING>;
+
+        ports {
+            #address-cells =3D <1>;
+            #size-cells =3D <0>;
+
+            port@0 {
+                reg =3D <0>;
+                dprx_sst_in: endpoint {
+                    remote-endpoint =3D <&dp_input_sst_0>;
+                    data-lanes =3D <0 1 2 3>;
+                    link-frequencies =3D /bits/ 64 <1620000000 2700000000
+                                                  5400000000 8100000000>;
+                };
+            };
+
+            port@1 {
+                reg =3D <1>;
+                dprx_sst_0: endpoint {
+                    remote-endpoint =3D <&video_sst_0>;
+                };
+            };
+        };
+    };
--=20
2.45.0.rc1.225.g2a3ae87e7f-goog


