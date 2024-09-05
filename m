Return-Path: <devicetree+bounces-100304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D01A896D205
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 10:25:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01BA11C24FEF
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 08:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D223198A06;
	Thu,  5 Sep 2024 08:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FgC2of+e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3DC197A97
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 08:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725524665; cv=none; b=K1WKs90OcHrz/Nn3SnaKwXZg6jM4qBf3mEuI4V4l1xEodCQWAJaX2AkLVeBWT5GA+jUp6xh//1qHk0V+y19nWvs+RwziWc78UHDChzL5uY0cj8oSLDvOlPYkWJ9PxrORLHhK6k+/zK0xtWvXUY9tJt7ssJl2XoYJbuAXhPZ75OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725524665; c=relaxed/simple;
	bh=8FC73oa/MEVkefisa/HgJYpYyiCAGwvKNzN6qaTlHSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q4h6JwVgVGhJmlKCJTQYz573o23UCKcCYT2aYmCV2LicXk3YnGXYZFuOuP5w7IfMVlq+ggTyn19cB8bVwS1rqkfMD8B0VDXD4x2vqRTSmlHI1dhNf56HJx1VBcv7/udT8PSV7cwO1HsGz08qJ0c2r1EDcgsn7ZJWqf+q66Gnxpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FgC2of+e; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a8a16c53d3cso71970566b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 01:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725524661; x=1726129461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6E91591mSBml3TNwKKH/V0e8w+Xe8oeQd2rUoP5TY7c=;
        b=FgC2of+eXcyHWqeJ6B14BGgkFf4hdFQrGXVPtQEIObKR8/j8ahjBvQS3J5Uff1V9Yp
         uu+hJZ34Gfs2O6EP9dB1ajL8xEU1TJ8eVDHeoH9r9qo8TDa1y6dR2D0hD31WamkywiMD
         Y07VWlSEBf9S8asLORbcLcrZw/SybL9cPP05T6JkNzRqdqJbjsoBe0Uc0lRzPyAXdSom
         MMNWXJQ0+gWahap+m0hgTHH+8KjJe9eH5GyH+9MOXq01ICcTCAduHPDhspawBE0I3KLv
         T8dBcaoXqVw8gHrLAkm+syUepu5fVicePccYccgC52lPl/20sR9lb2uWGSxnheMZh9Je
         eEAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725524661; x=1726129461;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6E91591mSBml3TNwKKH/V0e8w+Xe8oeQd2rUoP5TY7c=;
        b=JMrw8MgveNpDkWO2Mn2N7F55lfFKtWsDjfEtn04/q6PpQe7+MdZ0aUR/EDR1P3zsP4
         59Xdl1W9hBFgTxJGHv3SEe6debc6rTPmAcT6vTQUHA+cwxKFavDo2EtD3zTGghZlMJib
         KV8aVYH0JhCwohe57cwjU/Tvv6b0dDh+krlurpOQdMMVKCwePuwRQ18RnaKMZruDudJD
         /XnNgCqd+OACQNl6D/aOjH3MucJ+z9RWxzRPhIdJ8u8QuYtP16rDs8btfvAo0aTPyrGd
         HT5GsVHjIBMapYL9xlzXvMdg/KhEddAxIJipCMKW1GLCva3rrP/L3aKjmxpBhx9udpeI
         jb1w==
X-Forwarded-Encrypted: i=1; AJvYcCX26rqdDif3wCvw+wWLLNVVnSxzhqUoKRT1CDOxbOin6/KJTU+4Ya+xEHlo4+P/R3hwIOf6Mk7fAsLC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz40MOPL7LtdaqIBcBwfLlKe/TXsyFyp3kWTr2LX0ZkFjc1y0S8
	t46+dUMOD0WsSRcx31+3IS79bvLFmcRhncJ4MewPQLYzHPO4M1HNNU7RIRIDk90=
X-Google-Smtp-Source: AGHT+IEue6KQB0cxF3glXoNKRtA7TVZTKr6ANWpW3YsE7FVumztajZG9HSuommv6910riT26/HM/MQ==
X-Received: by 2002:a17:907:9725:b0:a88:b90a:ff30 with SMTP id a640c23a62f3a-a897fa74dbcmr1786881366b.50.1725524661282;
        Thu, 05 Sep 2024 01:24:21 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8a623a6c80sm102300366b.174.2024.09.05.01.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 01:24:20 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v4 7/8] dt-bindings: iio: adc: add docs for AD7606C-{16,18} parts
Date: Thu,  5 Sep 2024 11:24:01 +0300
Message-ID: <20240905082404.119022-8-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240905082404.119022-1-aardelean@baylibre.com>
References: <20240905082404.119022-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The driver will support the AD7606C-16 and AD7606C-18.
This change adds the compatible strings for these devices.

The AD7606C-16,18 channels also support these (individually configurable)
types of channels:
 - bipolar single-ended
 - unipolar single-ended
 - bipolar differential

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 .../bindings/iio/adc/adi,ad7606.yaml          | 109 ++++++++++++++++++
 1 file changed, 109 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 69408cae3db9..57537ab0ec82 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -14,6 +14,8 @@ description: |
   https://www.analog.com/media/en/technical-documentation/data-sheets/AD7605-4.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606_7606-6_7606-4.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/AD7606B.pdf
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-16.pdf
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-18.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/AD7616.pdf
 
 properties:
@@ -24,11 +26,19 @@ properties:
       - adi,ad7606-6
       - adi,ad7606-8  # Referred to as AD7606 (without -8) in the datasheet
       - adi,ad7606b
+      - adi,ad7606c-16
+      - adi,ad7606c-18
       - adi,ad7616
 
   reg:
     maxItems: 1
 
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
   spi-cpha: true
 
   spi-cpol: true
@@ -114,6 +124,46 @@ properties:
       assumed that the pins are hardwired to VDD.
     type: boolean
 
+patternProperties:
+  "^channel@[1-8]$":
+    type: object
+    $ref: adc.yaml
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description:
+          The channel number, as specified in the datasheet (from 1 to 8).
+        minimum: 1
+        maximum: 8
+
+      diff-channels:
+        description:
+          Each channel can be configured as a differential bipolar channel.
+          The ADC uses the same positive and negative inputs for this.
+          This property must be specified as 'reg' (or the channel number) for
+          both positive and negative inputs (i.e. diff-channels = <reg reg>).
+        items:
+          minimum: 1
+          maximum: 8
+
+      bipolar:
+        description:
+          Each channel can be configured as a unipolar or bipolar single-ended.
+          When this property is not specified, it's unipolar, so the ADC will
+          have only the positive input wired.
+          For this ADC the 'diff-channels' & 'bipolar' properties are mutually
+          exclusive.
+
+    required:
+      - reg
+
+    oneOf:
+      - required:
+          - diff-channels
+      - required:
+          - bipolar
+
 required:
   - compatible
   - reg
@@ -170,6 +220,17 @@ allOf:
         adi,conversion-start-gpios:
           maxItems: 1
 
+  - if:
+      not:
+        properties:
+          compatible:
+            enum:
+              - adi,ad7606c-16
+              - adi,ad7606c-18
+    then:
+      patternProperties:
+        "^channel@[1-8]$": false
+
 unevaluatedProperties: false
 
 examples:
@@ -202,4 +263,52 @@ examples:
             standby-gpios = <&gpio 24 GPIO_ACTIVE_LOW>;
         };
     };
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "adi,ad7606c-18";
+            reg = <0>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            spi-max-frequency = <1000000>;
+            spi-cpol;
+            spi-cpha;
+
+            avcc-supply = <&adc_vref>;
+            vdrive-supply = <&vdd_supply>;
+
+            interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-parent = <&gpio>;
+
+            adi,conversion-start-gpios = <&gpio 17 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio 27 GPIO_ACTIVE_HIGH>;
+            adi,first-data-gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
+            standby-gpios = <&gpio 24 GPIO_ACTIVE_LOW>;
+
+            adi,sw-mode;
+
+            channel@1 {
+                reg = <1>;
+                diff-channels = <1 1>;
+            };
+
+            channel@3 {
+                reg = <3>;
+                bipolar;
+            };
+
+            channel@8 {
+                reg = <8>;
+                diff-channels = <8 8>;
+            };
+
+        };
+    };
 ...
-- 
2.46.0


