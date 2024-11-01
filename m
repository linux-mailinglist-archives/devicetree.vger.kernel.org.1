Return-Path: <devicetree+bounces-118202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFF59B955D
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 17:30:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F203E282564
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 16:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023841CB512;
	Fri,  1 Nov 2024 16:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r/g0/hGB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9594C1C2456
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 16:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730478606; cv=none; b=jQGOcMB/L6f0SZffIPdRbWZpC/W74iKFM3ZR7W0sifEpThdPvtROO1VmHM48dHIE3dnLyJMOY7o+8wRDNuxsfk8RLnzJOeYJRzXQ2FrtVF+OgbOSwTqz0fPQSIowp5SjHCkuxqrTdvpkJrgeSz9Vx9hsCL3bOloYcDEWcTjb/cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730478606; c=relaxed/simple;
	bh=K9iMqgN+waI8uGOPXNsJWOxwYzCG83bdA7bAnBjFZjs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C8gvnUqMdJhPdXu3hb5FwRYusaHCq5lvLrrwom8i5IG/gWjpLQXDVVLp7LNZykBMXU2P45XowB6EDSgxOlyxk6R56lSggKvouKZSTogIiLepTySGdbMU04YMX/5DRHQXugh5O6zUn+sH346KF6V+H506YuSxOUsTWga6WWoVfCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r/g0/hGB; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37d47eff9acso1379827f8f.3
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 09:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730478602; x=1731083402; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fFcyZJs9jyFHU/kR7jvKoaA/Sdtv4OFx7L9iEZ8oM20=;
        b=r/g0/hGB9GRDJ+opmfi77dyd262JBxSIItaMn8j4Ilue/C4vm7deJecvSayCoukPR2
         zEA6EKhTDCo3eDY3Gye1i8qg7k/IjeSTZSfq/ZIwcyib2HfVdpWnhiocFqg/Hr/+wULd
         1tpJ84n4Wvu6QgEjAQOsEo4niVDpiT3A2vqOfNlkG/4dNZKYTXnt2tp0D8RNtl1lkztB
         tySpqhxNAr7QYtGVq+mkqjG67DKTLlN6Y7mooWngV3nM0b7pBbJub2q/N+LjcV8rReAm
         hcdzoYUux4aASJFDBG2A6vm6mg3NXvcRe5NrbmpDjIGtZg8b7QXZdeO1PU5QXQzY6ctl
         AI+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730478602; x=1731083402;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fFcyZJs9jyFHU/kR7jvKoaA/Sdtv4OFx7L9iEZ8oM20=;
        b=cH38HoFD0/s1+ZGPJO+EYfwsfvlOHx17FCdrdnp/N1gPgVzRfY/QoKmqZn869pq/QU
         +ifdO7BR2J36fS6/LrtIaBcY9Arz1MGYa4gJQZ1Hwe89bkNpfZ0RxPn40Lj0FlLvptXS
         xznnuCXiOI1BEWYFG4YqVQERk/g/hQ42E0kusrOJEEPejMorV2dD0SGplMUqKJUQ+0cU
         EnEgzgLLMMIi3FjKGQ1RJJtgAa+rPqKNqK1aS2L1cqq6/hsxDBnTFG+QEZ6A8Qhb1zW6
         HYXyok0Sj9DxN6Hu8rOmNaVMdHXuRwcRQYDz2nxeNYyrxdNiu3nsS8kTBT72VKdM9SBt
         IKQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdAX5hbz8PCDIB/LOwNXlRxsuEBnuicuQs0GV5QJ92X5pumkQOCq4qvfTtb35KE8kKtvUrLj6POOdr@vger.kernel.org
X-Gm-Message-State: AOJu0YyihvcP9sB2EeDE/Vf4KZVfn0eFTx2n5oXM0/30uDPBE10IkRr3
	b+eYKXvEsFskbtnLRisHS1wMvyYqkska+rGmgdoPe+dbhjIf1oEvGWGXaTjgWjg=
X-Google-Smtp-Source: AGHT+IH32+1k+frdIm7aiM64e/1MaxzisiGIw7xkJFsBSZtKK/H83BvobquHfpCOdNQBFfFM+DEXqw==
X-Received: by 2002:a05:6000:2a1:b0:37d:5257:41bd with SMTP id ffacd0b85a97d-381c7a47c08mr3444805f8f.3.1730478601909;
        Fri, 01 Nov 2024 09:30:01 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d69845csm66697555e9.47.2024.11.01.09.30.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 09:30:01 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 01 Nov 2024 18:29:39 +0200
Subject: [PATCH v4 1/4] dt-bindings: usb: Add Parade PS8830 Type-C retimer
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241101-x1e80100-ps8830-v4-1-f0f7518b263e@linaro.org>
References: <20241101-x1e80100-ps8830-v4-0-f0f7518b263e@linaro.org>
In-Reply-To: <20241101-x1e80100-ps8830-v4-0-f0f7518b263e@linaro.org>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Trilok Soni <quic_tsoni@quicinc.com>, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3684; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=K9iMqgN+waI8uGOPXNsJWOxwYzCG83bdA7bAnBjFZjs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnJQH9mR9SIi8lpmcuumrIAKlX7H50esFslgOox
 Nl44Va7mSqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZyUB/QAKCRAbX0TJAJUV
 VrDCEACyKtOUVHZdN4SB+TsmgI9wjH7vc9Mp5UpgCC0Up8S0xF3mmxo09rRvB55sUXcZz3kIzYq
 gennokKMey9xy1e5L1nXHCz4FjgQ8qnBFmEs2NY3l/ViCzk/Ch9uHs5P5VidCcHyVgs1yDed/mc
 dMkeLBcXa6fBnen1D0FRo6CYIE7FQQRmVZ8txQy5dPMOP9+Ue8FD6DqWMu39eZvpCU+sKyK8GEw
 OekriBn6v0rZ3edb8lH4HxXA/3cgKrIFVc4SOJOJ5ZQe5g/8B0kmTjd17fkRx3H/GnmZ8LasiW8
 fRPd4SDCqOsZdlqiBEdSJ3n+17Td81ShEOXsZddnbFxgnIS6Tf8Q7TjC9LmdNvgr46x+ADM8LL/
 /k9cWuTYELjnpy2HYrvlStNNm6vte/o8X9b98a4GMxmkF47qyRtwpcFAFLcDNOZBUBrJxs1DhYq
 DwjYnggIK4dGYMk7+KGor0I+CJgMiNnttgA5juDr3gjL58fhoB973/Uo01xUu5yKemmL2Ygyl8z
 WTbaydOCVmRmYQjdIr2y8CL8vlO7RDFiVSkQpO9/M4PzMRZTzFpFw1g20IrjIh9y8torprQI7zz
 YU9SdZKVoCQtaOJzIsVszrJTSlqcqdWbaeq8EKOiBuVsN05MXaTIejDprf7T4YpZ3a3rLPlXQK2
 C2zxkRnM0s9PjCw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Parade PS8830 is a USB4, DisplayPort and Thunderbolt 4 retimer,
controlled over I2C. It usually sits between a USB/DisplayPort PHY and the
Type-C connector, and provides orientation and altmode handling.

Currently, it is found on all boards featuring the Qualcomm Snapdragon
X Elite SoCs.

Document bindings for its new driver. Future-proof the schema for the
PS8833 variant, which seems to be similar to PS8830.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/usb/parade,ps883x.yaml     | 123 +++++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/parade,ps883x.yaml b/Documentation/devicetree/bindings/usb/parade,ps883x.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..4045714e487a43681336c961143b27264c081856
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/parade,ps883x.yaml
@@ -0,0 +1,123 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/parade,ps883x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Parade PS883x USB and DisplayPort Retimer
+
+maintainers:
+  - Abel Vesa <abel.vesa@linaro.org>
+
+properties:
+  compatible:
+    enum:
+      - parade,ps8830
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: XO Clock
+
+  ps8830,boot-on:
+    description: Left enabled at boot, so skip resetting
+    type: boolean
+
+  reset-gpios:
+    maxItems: 1
+
+  vdd-supply:
+    description: power supply (1.07V)
+
+  vdd33-supply:
+    description: power supply (3.3V)
+
+  vdd33-cap-supply:
+    description: power supply (3.3V)
+
+  vddar-supply:
+    description: power supply (1.07V)
+
+  vddat-supply:
+    description: power supply (1.07V)
+
+  vddio-supply:
+    description: power supply (1.2V or 1.8V)
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - reset-gpios
+  - vdd-supply
+  - vdd33-supply
+  - vdd33-cap-supply
+  - vddat-supply
+  - vddio-supply
+  - orientation-switch
+  - retimer-switch
+
+allOf:
+  - $ref: usb-switch.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        typec-mux@8 {
+            compatible = "parade,ps8830";
+            reg = <0x8>;
+
+            clocks = <&clk_rtmr_xo>;
+
+            vdd-supply = <&vreg_rtmr_1p15>;
+            vdd33-supply = <&vreg_rtmr_3p3>;
+            vdd33-cap-supply = <&vreg_rtmr_3p3>;
+            vddar-supply = <&vreg_rtmr_1p15>;
+            vddat-supply = <&vreg_rtmr_1p15>;
+            vddio-supply = <&vreg_rtmr_1p8>;
+
+            reset-gpios = <&tlmm 10 GPIO_ACTIVE_LOW>;
+
+            retimer-switch;
+            orientation-switch;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    endpoint {
+                        remote-endpoint = <&typec_con_ss>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    endpoint {
+                        remote-endpoint = <&usb_phy_ss>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+
+                    endpoint {
+                        remote-endpoint = <&typec_dp_aux>;
+                    };
+                };
+            };
+        };
+    };
+...

-- 
2.34.1


