Return-Path: <devicetree+bounces-123486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8799D4A9D
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 11:18:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 255A51F228F4
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 10:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01311D0E00;
	Thu, 21 Nov 2024 10:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NEVF6SPv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7901CC159
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 10:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732184311; cv=none; b=li4NLUUTjIUgZngf+Nd/z6TmDdeYXjwollmlJ6LlC3g1MFTsbBj0wzAesYLd6+ALCzj/tQzj3RID81JaSxbXz5Ep6w7rUtHpMOqTSqI/vF7+F7snHFPxG/9KQr1ISxt0yTLAT/b6CCs1tiovI65xxMT9IVImHLc5Zo2/lS4xh7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732184311; c=relaxed/simple;
	bh=v67VGnWIkBdnUdS985qH7iF4x838r3raMc0/Xi1uuz0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FZAPgiPW0YowRYKx8CpITO9GoRhavnfrDvDNl+89+4l33jRcU9zOEEuP7Z8mcnCmX+Jh5EXQRlITaucfTG52nJmSAlA/vXH8yRdXZy+A/zLMkx/SCdoh0KvEEsydcJr29tVCjaOGC/ukv5kMOMd3FSS+gqEVLNs63JIevQzTchw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NEVF6SPv; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3825a721ae5so309904f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 02:18:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732184307; x=1732789107; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eIvcv/w9nbdD6Pqexc2MWqksh6TFH2yfbr5I0uzs1Ow=;
        b=NEVF6SPvXAK9CQP41gSpXHH27D25I3vUOlaGILU1E+idTIiXZYUyiE1nOQSDHs/zsK
         yy7ET7nWEcGBgqbvFtvLCE02hla9yrJSPrzNU21M5viPcOoYF7V5QiL/k8Br3vN7fw+b
         RlahcnK76wq0WauWfEiblUdfXKSftCSQ26E8pnI2X/L97wXyqlnfb1FPaGbsNLQ1e+5w
         lRvjCOMwW6TFDyt/FDaE5LjSiyp8DcWAus/9oimhlBKVFpOWDQ0KOcEf3KIFObgOmwO0
         JBnS8egmwzj753Ius/Hd/9jOFrkZMmimFQjMxQPOdH6UXViawkauL+pNZ650UKuScIm+
         b92w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732184307; x=1732789107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eIvcv/w9nbdD6Pqexc2MWqksh6TFH2yfbr5I0uzs1Ow=;
        b=vyhmrDoMrfd87VkJKQFtXndDq7AQITf2N1lrCHcObpIX2UYyC1ErxhTeYDYA3u/T+q
         oR5pyPyC2qmfSy+MMksfllAnlAiqGvPRKqncD7w1ehrDKFgFQIClniLpu7mmzJe20HUX
         ZqYBMbTpZdEQlokGLIuyunhNueLi/4Nno31hUFD9qwU7zsPSW+BrN2BG/2cw3WSSQF60
         UClXsYSNhdeJ5eDB3fmKPgrU2CzcYYU1+jHWFv1Y4BPJfjP15qkquDRbgwuqtRXga2h0
         mhPMYJu4zlC0HOt9OGGikEV5CFNOgyH+5wUDAB/2ukWvFNPLMUMSwyc23Y5UJKuYZyOV
         VWcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXflkwu7WeSQx0Fzgy2ph3OyX0yzIr41x8GAZZs/+m76ctYCtL2YzbU0posi96KYBcL5O2/kkL7wrRA@vger.kernel.org
X-Gm-Message-State: AOJu0YzyeHtP2U+KsCF/S4Y+Myd6YjDMVPkt6G8nVLgIEMVorYUq0zdK
	KQW+57TxrAPpuEdu9N7wc2ingEOLX+bnMhzbab7SnOQvTay506xZGEMWe+CJpOg=
X-Google-Smtp-Source: AGHT+IHW3IoGYshb8tI/heRPJw81Fxm5YJNDYBrO0MNrtp6fR81LenEdtACfP7PMDMzdfSEwm1RPBQ==
X-Received: by 2002:a05:6000:1886:b0:382:47d0:64b0 with SMTP id ffacd0b85a97d-38259cb82fcmr1930200f8f.2.1732184307226;
        Thu, 21 Nov 2024 02:18:27 -0800 (PST)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38254910796sm4598065f8f.47.2024.11.21.02.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 02:18:26 -0800 (PST)
From: Guillaume Stols <gstols@baylibre.com>
Date: Thu, 21 Nov 2024 10:18:24 +0000
Subject: [PATCH 2/9] dt-bindings: iio: dac: adi-axi-adc: Add ad7606 variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241121-ad7606_add_iio_backend_software_mode-v1-2-8a693a5e3fa9@baylibre.com>
References: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
In-Reply-To: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, dlechner@baylibre.com, jstephan@baylibre.com, 
 aardelean@baylibre.com, adureghello@baylibre.com, 
 Guillaume Stols <gstols@baylibre.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732184304; l=1599;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=v67VGnWIkBdnUdS985qH7iF4x838r3raMc0/Xi1uuz0=;
 b=BSCWsqYm2zQ3VQ9FR8Ee7VEGYr/D2HqyqSOK7+yxzAwrchTplIL+IiV03WSiO/t0OMzTyH4ga
 q/0j+S/DAu4BGe/8m+7zbfncy8M0wERcF1zDO9C1aR/lRwVTWu08Dw3
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

A new compatible is added to reflect the specialized version of the HDL
that is not covered by the IIO backend paradigm: We use the parallel
interface to write the ADC's registers, and accessing this interface
requires to use ADI_AXI_REG_CONFIG_RD,ADI_AXI_REG_CONFIG_WR and
ADI_AXI_REG_CONFIG_CTRL in a custom fashion.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
index e1f450b80db2..43bc0440c678 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
@@ -17,13 +17,20 @@ description: |
   interface for the actual ADC, while this IP core will interface
   to the data-lines of the ADC and handle the streaming of data into
   memory via DMA.
+  In some cases, the AXI ADC interface is used to perform specialized
+  operation to a particular ADC, e.g access the physical bus through
+  some special register to write ADC registers.
+  In this case, a different compatible is used, and the driver behaves
+  slightly differently according to the special needs.
 
   https://wiki.analog.com/resources/fpga/docs/axi_adc_ip
+  http://analogdevicesinc.github.io/hdl/library/axi_ad7606x/index.html
 
 properties:
   compatible:
     enum:
       - adi,axi-adc-10.0.a
+      - adi,axi-ad7606x
 
   reg:
     maxItems: 1

-- 
2.34.1


