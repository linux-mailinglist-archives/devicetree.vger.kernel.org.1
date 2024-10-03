Return-Path: <devicetree+bounces-107627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BC398F527
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 19:32:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 886AC2839BE
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 17:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C01D1AC421;
	Thu,  3 Oct 2024 17:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NT5Odzan"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643151A76D2
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 17:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727976642; cv=none; b=RxM9RLv9TYseCLwJYb6xyPktgJsji5MkXGHdrNmhAFa7yehcqOw1+s4a2/aU8ESLOTuckDo++uSChRd3GMMRE94BbBzJZN3CfARs7aO4Kb3OHeZZHl8mw5eHze8hI/Rx66iOK8zLwfCwCWqsvpcHXBZQNrnCg7l9YBPu0jx7UU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727976642; c=relaxed/simple;
	bh=MIEEwkhOG38M5YbxH7EoM65zJvKWZr3llNeZYrc+gKc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GlF9PtfbVzBAVtagKU0rVwupaEbGgYXku1XN6D79lqV+L4gTi10JcUJY9mgdX6yLrd3zJuhDM0AXt1LbdcVOhcsFO4+R2hXmy5cnHtkPVLDMcQbK/EkXgg8Dh41CeUNuPdcxpAMhvADWNkS0TKa5rsUlaGqsTQX9oryqBVHzvts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NT5Odzan; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37cd831ab06so781100f8f.0
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 10:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727976639; x=1728581439; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OQNtccmxgXmF+t4Bajj5fcsgTgHr+MMu0di7epZS8fc=;
        b=NT5OdzanMOqHTkseI4R/mdLNXDln6vnLuH7fxVizTAiWi/7YonS1BvhFGOXsPAQwbm
         7I55Fcvxtao8UBAui/UzCqKRxtrqmdRRs+j5uysS/ld0l/7sJuHvQIKGsL/WdbGLubrv
         8po79+aliDp4eeYT6XGmnWQRDUaiLZK9/3jgIZl/+DBvUgXVgYQcwrmiEuw/RsmdRxcZ
         OzD2PZtrWCYki1oFfvoLPwK+2o9cM4op6gyY3HlFcpWJJdrkJ0DufCrnz6glhk0/3urt
         MZNajS8E450IiHr8dPrahSHiaTcHoBmtW8aGLLlvXJUJd+JufeOiXT8UDcMgYoCoMN1f
         mabQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727976639; x=1728581439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OQNtccmxgXmF+t4Bajj5fcsgTgHr+MMu0di7epZS8fc=;
        b=OKinncCrZNoXLgHZV1qzTnGuHrN10GHpP1fkhdNymLf0LDf45roxrY7oWcrkkf5vCw
         MN42bdTkPXeshTiK2Z45kXKU5jSyWBEFi8tQ5V7SZ9/JUpxoJpEGDgMHLZ6ev64kiIs9
         zyFV4w6uurif2dGNowpk9fbFocAqVPxLbHvTNNUItDIq9pdbKVOyk1C1uZ+B3pHoj/gb
         C19MjJaTE2z4ScCA4r/ec8xSQcwI/f2r6XhldreU/XIVg8jtm3A6UuJFI1ioWIskUEaE
         6SpmNEtFFLWx9JsCmxR7UaQr1ZvsmalryoOudXiaNzQeChOZCX8KOGvnSor1mScMpvhw
         M5kQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKEqhdGeoPulLhXIfKnZBXL1n3pomLm5+LYTuncfmywCjBiUSwuN3HZrYBL+HOchBXvySaRh2d1iOD@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcp7tAtoPT2qP2gyqE8vmFE7KcZ+Gr7DWSf4mrnpAXTjvRgckS
	DtdFHSUptGXkie8qB9SBo+uHsthfgy60cm8fh/tWWAwowc87g3o09FmrsKTfTjA=
X-Google-Smtp-Source: AGHT+IFWFa/T8ohFET/z2ApjgDzCWK+faSk91oifc7Bz+kdUCIvf6iPYh8V9AH8b7A5z30jFcZMdTA==
X-Received: by 2002:a05:6000:184e:b0:374:becb:d9de with SMTP id ffacd0b85a97d-37d0e8df8dbmr100042f8f.44.1727976638546;
        Thu, 03 Oct 2024 10:30:38 -0700 (PDT)
Received: from [127.0.1.1] (host-79-54-25-3.retail.telecomitalia.it. [79.54.25.3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d082d116asm1703735f8f.90.2024.10.03.10.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 10:30:37 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 03 Oct 2024 19:29:02 +0200
Subject: [PATCH v4 05/11] dt-bindings: iio: dac: ad3552r: add iio backend
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-5-ceb157487329@baylibre.com>
References: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-0-ceb157487329@baylibre.com>
In-Reply-To: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-0-ceb157487329@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Nuno Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mihail Chindris <mihail.chindris@analog.com>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org, 
 dlechner@baylibre.com, Mark Brown <broonie@kernel.org>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

There is a version of AXI DAC IP block (for FPGAs) that provides
a physical QSPI bus for AD3552R and similar chips, so supporting
spi-controller functionalities.

For this case, the binding is modified to include some additional
properties.

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


