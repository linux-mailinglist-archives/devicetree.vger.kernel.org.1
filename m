Return-Path: <devicetree+bounces-114919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFB69AD631
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 23:03:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A4ACB2366C
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 21:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 167AB205AAB;
	Wed, 23 Oct 2024 20:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="a/zK5lHF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CEF204F7B
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 20:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729717199; cv=none; b=TnR0vL0S7KSAYDjQzppw9QWF3vzh5o0F+HSA6GKsS8ClcAqjf0qKkvj+BhtsqbUd1PZ9iggC0OylPySnnywaPgMLUoWs6dINwa3LK9Xm5UoxPEEQ1ulORGiBtjWAusc3MDP0dYeCD5e/Hx38asnFbwBSshhodTKqxKtkrnKFa9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729717199; c=relaxed/simple;
	bh=2vnDwDqKD1Df0P4m8qAbdOZY07gv8Qe41/xtmVsFRRY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SSy/kBpl2Iu1nYBqER7dHLeVizM7yySPdSdWF53BArwaeBCueiUxWWeEEAiOU+hJ2e9dQYfFLGWsC1Sd2/24scDGOvYRdM9H+zvA1PmnNOTXxoX+doCaZke/nWdJcW33hiPm6/x23CWgwConiLazABF7ciUU1CSQNigw8ky5Q4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=a/zK5lHF; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7093997dffdso117680a34.2
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 13:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729717196; x=1730321996; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DfXBayzvmGl7Om53lQChDWQ5oJwLUn4oZetI5ml3dsI=;
        b=a/zK5lHFes0G51TH9SvSMiPzJlPUsMW/7zQVVufoJ9SE8/vdvYhbiZB3t1JEyyfYFG
         OHwiz9H5bu3J0ym4OsghCSVjUDHJOFYa3dH0xj3vCRvmeXCei+4PRC9bbvRD8edWEuyi
         5+qIrLGf3oYMypAbALREY+VMlJax+zWsg2K+40q9+zYJyJzjRx0hpwBkDAY0fyNmVomD
         vmVNBW4IZfQsmV9iIJxeq0hxRydntJZZAQMqI3eOmI5+c959VImQ+EjfLLXbAjdJ+LXk
         RDZ3PqMn0jWmCg7KGtkxcDD5msqzmQTAwcdo4fxOcxV7GgXZ/qcAmntBY5yDxxKLCL6W
         LvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729717196; x=1730321996;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DfXBayzvmGl7Om53lQChDWQ5oJwLUn4oZetI5ml3dsI=;
        b=Uzmw0alImJIoPKaba/TCINY4yet9azIAaNZL+hSGHf7Tgd4b7GYVnDuVU+dbVglK9X
         iNVrZVm4adz53YiGoVhTDzeHimNgKZhSXJNokARxVMbsfcyZEYAbty+ebaRCzw1YeGKb
         YUYKIhPxAoB7/+wvMGZ5CaCL5a7zc+cBg1G7iy6A6j4u+trqPFbEjuKbw5d90S9xorEP
         1MROjs3LH54y1STsHHVXaJKm314sl1DhhuAR/+SxiMFpmRw7JTkUlwG8fxWWHlwxVaqK
         xt0+6xjGlLrQ91O1e+UJDcgrvV6KX2JbAVHEf8gNXXB1P7vwhDY0KbGIIu8HBWKlnmX4
         B3hQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaHqZUo13UXqIvp+0C6yFYDCryC88YiPfNFzoDDbyURSPYJHhgbxdrb3osUFRKibHD/ZaCNZQl/oTi@vger.kernel.org
X-Gm-Message-State: AOJu0YzqCQcHzDn+OSDCSTKbpbxsU7RZZT56L80+jCsl2zLkNj8sJV1S
	RYcK1qeYlrcmPZ/t3RHqzctHPEs9tTaPdHc3QuA4BdkxbEOZHuF93+FJ/gTUosKePm/udHNN+tU
	O
X-Google-Smtp-Source: AGHT+IHcc2KQj1iOOqWOOogxpx7Ye/U3BnxQ7ARe1DkUoVtDbb5HPRAYcUyzjh6Vi+OdGMJp0G3/SQ==
X-Received: by 2002:a05:6830:658d:b0:718:1a11:79e2 with SMTP id 46e09a7af769-7184b2b51eemr4907344a34.13.1729717196368;
        Wed, 23 Oct 2024 13:59:56 -0700 (PDT)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec02c2c157sm52730eaf.44.2024.10.23.13.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 13:59:54 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 23 Oct 2024 15:59:21 -0500
Subject: [PATCH RFC v4 14/15] dt-bindings: iio: adc: adi,ad4695: add SPI
 offload properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241023-dlech-mainline-spi-engine-offload-2-v4-14-f8125b99f5a1@baylibre.com>
References: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
In-Reply-To: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

Add a pwms property to the adi,ad4695 binding to specify an optional PWM
output connected to the CNV pin on the ADC.

Also add #trigger-source-cells property to allow the BUSY output to be
used as a SPI offload trigger source to indicate when a sample is ready
to be read.

The $ref for spi-peripheral-props.yaml is moved to keep similar $refs
grouped together.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v4 changes: new patch in v4

For offload support, this doesn't actually tell the whole story. For
some use cases, it would be perfectly reasonable to have a PWM directly
connected to the CNV pin, which is why I have made the bindings like
this. However, in order to work with the the AXI SPI Engine SPI offload
and allow for non-cyclic DMA transfers, the actual signal that is being
connected to the CNV pin is:

    CNV = (PWM_OUT && !DMA_FULL) || CNV_GPIO_OUT

RFC: Is this binding sufficient for this use case? Or should we consider
something that describes it more accurately?

The gory details (mostly of interest for those reviewing the driver
patch that uses this binding):
* The PWM output has to be disabled in hardware by connecting it to an
  AND gate where the 2nd input comes from the DMA controller. This is
  necessary to ensure that we can only trigger conversions as long as
  there is room in the DMA buffer to receive them. If we continue to
  trigger conversions when the DMA is full, then the advanced sequencer
  in the ADC chip keeps advancing and we will end up starting the next
  batch of conversions with a random channel when DMA is no longer full.
* To get out of conversion mode, we also have to toggle the CNV pin
  manually one time. If it wasn't for the DMA mask on the PWM output,
  we could just use 0% and 100% duty cycle to toggle the CNV pin, but
  since the PWM output is masked by the DMA, we have to use a GPIO to
  toggle the CNV pin. The GPIO signal is connected to an input of an OR
  gate along with the output of the AND gate mentioned above.
---
 Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
index 310f046e139f..0d767d8b867a 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
@@ -18,8 +18,6 @@ description: |
   * https://www.analog.com/en/products/ad4697.html
   * https://www.analog.com/en/products/ad4698.html
 
-$ref: /schemas/spi/spi-peripheral-props.yaml#
-
 properties:
   compatible:
     enum:
@@ -84,6 +82,9 @@ properties:
     description: The Reset Input (RESET). Should be configured GPIO_ACTIVE_LOW.
     maxItems: 1
 
+  pwms:
+    description: PWM signal connected to the CNV pin.
+
   interrupts:
     minItems: 1
     items:
@@ -106,6 +107,12 @@ properties:
       The first cell is the GPn number: 0 to 3.
       The second cell takes standard GPIO flags.
 
+  '#trigger-source-cells':
+    description: |
+      First cell indicates the output signal: 0 = BUSY, 1 = ALERT.
+      Second cell indicates which GPn pin is used: 0 to 3.
+    const: 2
+
   "#address-cells":
     const: 1
 
@@ -165,6 +172,8 @@ required:
   - vio-supply
 
 allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - $ref: /schemas/spi/trigger-source.yaml#
   - oneOf:
       - required:
           - ldo-in-supply

-- 
2.43.0


