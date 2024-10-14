Return-Path: <devicetree+bounces-110974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC0399C6C5
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 12:09:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAE221F21FBE
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 10:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D66115C122;
	Mon, 14 Oct 2024 10:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NJlMu+/F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041841591E2
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 10:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728900579; cv=none; b=Gmph9ctglmCE/9Trs0gT22i1/kyC+0bC2OtIgvpdcFjWpoUUthLZUnDpKODEjsC/48MH+tIHdgBTcHA8XlP9qaRClMj/KQxB5ZXMWmQUI5kvy59KpjtsATZJeRcXtZrfhJPBCxlVAtaDrinTEeSgBgwR//OeCQmEf1pqhlWp4bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728900579; c=relaxed/simple;
	bh=MA2oG/y7V1+Goz7xziXlVN+hyrEb/+ZFaEcTpQoHM1s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ecfaSo9DeK5o3lpiAi4LxLo3zf9eeBf97aBE4SyqpaZSCqD5mWZQzH0fn4GfoxYjtsetf9JCIsdwcLDON4kes13bftnMOIkUTDM763L6TR2YhqOGx9cQmDzDMyAXyAX/RqRUMOSWfWO4/4Iq7KXWtJSOOnsKz9tdu3Vk9r3oe+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NJlMu+/F; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d3ecad390so3226401f8f.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 03:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728900576; x=1729505376; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y3Jl9+VGm0G8JZ+DzIDolKuvv4I1MhBsGUOVMggicwA=;
        b=NJlMu+/FENSDBaWx/LlC7rpRsm/0XIRD0Fe7kec/4vEKiqyfxSS7LLc3d7TUHQdk5Z
         G5AL8IpDtWmVy1KepNAx8Iyht1Z6Nbnt8/ZwLRG2AD/DbPaoi2qRXizuciDN4uOySxMj
         NXso8ZBbYwisdRWGh7oti5B9CtyK+vRzhV9ZzWkM4DbZHo0Mx9DHay8kWkJqJtlHyPQg
         deed9Ms4QJ8zDhWKjmwfof9XJ0CcOTSKWgjpZNNZ4YGBe7tQyOm53oz/6WUhe3Itt7MO
         CQdlgASRKcAbfHZDAD1EfVykh/WF3bYZvKMFRT0UvGJdkckM+IIYdmsljcNpw1zXOyF7
         COmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728900576; x=1729505376;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y3Jl9+VGm0G8JZ+DzIDolKuvv4I1MhBsGUOVMggicwA=;
        b=tnL1eTLkKETzezI+/qK0E7+FmUnE3Mkloj/Y8IryjVGNeumcpBbe6xHhG079wpZuUr
         Ojk5Hsi6N1gx91LKhV4mDGa+6NvCbl4S/NDvCgWcnPYfBDV86Pq6GFyjZBw1eqjiyB14
         Z+FNwtljlfHP1hl42k5Zn+R8PsRoq0yTcdsumXlkb6xwmSx1glMf+sc71v81saOWhZnM
         7Xk9NJdoDd6oeSQknw2IaY3SH5FsUf5s/TKCs5mgTjN3NbOHKEbCnpsRSpJcgRqiXCMN
         a2vR8JsXrljqH9TxSeqydRjeCa6Esw2ZEifKjvg+eQ1tuuWSE+jfE6jBl4WTROj3q13+
         hZYQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3bG0zIAv5pnPR85Ct9oyXP82XIAaM9Z4gv2k7uu/j0A8WBZslPEUPEDgzWCLv34WoYvDHKdSRp6HZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwDymdmS/s6Da2ByeXmeelTfFO41XTRXv9cHkFMx30/yutasVZJ
	flKglvO25y/2q56R7lXF7Ir7COj3LSKFOpoB7tIANJtvhQ/rtDQRTrYLD5uV5+g=
X-Google-Smtp-Source: AGHT+IHF3YhzE/CA1/de98AvUHoQtXj+IjSWvcx1ppS+xtI0yl5M2go45mdcvcnfBxeoQJOV4x//wg==
X-Received: by 2002:a5d:5108:0:b0:376:dbb5:10c2 with SMTP id ffacd0b85a97d-37d552d4a14mr8440596f8f.29.1728900576323;
        Mon, 14 Oct 2024 03:09:36 -0700 (PDT)
Received: from [127.0.1.1] (host-79-45-239-138.retail.telecomitalia.it. [79.45.239.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b7ee0afsm10969352f8f.102.2024.10.14.03.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 03:09:35 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 14 Oct 2024 12:08:07 +0200
Subject: [PATCH v6 1/8] dt-bindings: iio: dac: ad3552r: add iio backend
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-1-eeef0c1e0e56@baylibre.com>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
In-Reply-To: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
To: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dlechner@baylibre.com, 
 Mark Brown <broonie@kernel.org>, 
 Angelo Dureghello <adureghello@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

There is a version of AXI DAC IP block (for FPGAs) that provides
a physical QSPI bus for AD3552R and similar chips, so supporting
spi-controller functionalities.

For this case, the binding is modified to include some additional
properties.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
index 41fe00034742..2d2561a52683 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
@@ -60,6 +60,12 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [0, 1, 2, 3]
 
+  io-backends:
+    description: The iio backend reference.
+      Device can be optionally connected to the "axi-ad3552r IP" fpga-based
+      QSPI + DDR (Double Data Rate) controller to reach high speed transfers.
+    maxItems: 1
+
   '#address-cells':
     const: 1
 
@@ -128,6 +134,7 @@ patternProperties:
           - custom-output-range-config
 
 allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
   - if:
       properties:
         compatible:

-- 
2.45.0.rc1


