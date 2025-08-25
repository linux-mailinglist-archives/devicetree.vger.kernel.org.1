Return-Path: <devicetree+bounces-209145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EF023B34F50
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 00:56:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE8181890B84
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 22:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5C32D0629;
	Mon, 25 Aug 2025 22:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eFFVFINB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ECE2C15AE
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 22:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756162546; cv=none; b=QS8lVo50Oq7Xmt90mlIGJHXFR3hdWhmI+osmPphoQWu7Go/zCPzYGuLgFp/fj373mwOkl2RcjaiAWtpkx9i5obqKCtg2/enzQ98dw5iF+5Fk3yNN0J52dAqLuOlnjgXYa9BU21GSYSnSkyjw2ZqNnThguucIHctBHWZo/eUh79I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756162546; c=relaxed/simple;
	bh=tjk3gE0WrgpzRG+qNpzFNmWAh/0bn0ThRzR4E4Bla4Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kWoMDXl/dsmfc1IXJGUXh/Zf3vFxt+b1vKKOLWHfMG4ucNoB+FTQBRjErpYx8NN6op/VdHTgUfG3njoxrEshtzaXL4CYAYLvuRA24VksI4R6YWZSGkkrdxpZS3QrH/DwT5MlnA9E+Jz/f9MtRwFfioip7Nsjs1eeQE73fq1JW2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eFFVFINB; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7452b1964f3so563180a34.1
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 15:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756162544; x=1756767344; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tUg+X3OovrLl3jRGXt22VZgAMJQUCaveNyIMtY/SHNs=;
        b=eFFVFINB0OWJam8eW2scaoJSVXpLiOYU1XmDLjPaVZrFBR7sYqbzgm6FnfmSe9h273
         AFMi6lmy167YsAHJ93i4+ND+Erhqjj0qlU1nAoDvWOkf+lN0GvQZ8bxCucTkWyE+Iozc
         EgxZof8Vo5sEv0aBJfNlMGwl9myodi310mK9qjQYTLMvWmkenLzAqmhpK/BLDVzEaHju
         7pjPp7ZONuZahG9IKIFoMrcIeYOLmngkSDZwkLA+q39SLPaLKmWuacZcalttJOGgGU5C
         H9jU4zVRRSOM/eJjcMQTGG5cXhzf7XjEGagWs+x8J7b6vUr2mXqWG4Vi4xLZEJokXzaF
         uymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756162544; x=1756767344;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tUg+X3OovrLl3jRGXt22VZgAMJQUCaveNyIMtY/SHNs=;
        b=lfZjIuS/0BShrZAxT4ftxiKulTFJKzygY6XsE3QYEm7xknaFOZeMs3/O4gWQErDAot
         lbMbpkXlsZ4cHLSNDZBpixbG+IewFJz73k6zLhcc03sU5R+fa68GpV1ZtbsjsoUXHlqJ
         JnWvJ4CxyZhJ4kS7bmcWLqfqJ8XnHsGj9ZYnIaiqRnooZDa81jxk0mMfv+G9m7eKWUcg
         or5oJ6ZU2BDhWilF47VtfyMczMBoqILjnTMwUnuh3wvZWnCgWduoMwtpSIS3I81nx7/g
         DOcfkRzwKSuf+AzDIcn/ULOh7iHV2rJ4k2gor1e8kU+demOwXjEwTxvHNWq023BwKJs2
         8L6g==
X-Forwarded-Encrypted: i=1; AJvYcCWK5hDIAFz/FccVBUhhgOALcfChvtAll8TVBGBrIvixHHD7FoUxf+opnD7T5+6ysbWo3m3ILpd/YfBO@vger.kernel.org
X-Gm-Message-State: AOJu0YyBCd+GIyWh/XW+rfiK3ppC8duee+chXEONPqJdSL8dUC61U17G
	/VP0J2A0OsNW7q1pCHZNRBl22nydIwJxH9GPhgNIxwBEhqcEzZuzP5S9QcOpSYrNQYY=
X-Gm-Gg: ASbGncsFqBLH5Y9+ev3BDJHYp+CqO1/z2q76o0d4h9BoPyVuVH1SXL+kYWM4AEIzySw
	AIfhSwHGjm0bb9Zt1YUbTKcHxkiO59ReDRlLTISG/iXkk+l0wz92Uz/KARY6hKQouxatxvbeycY
	70PHQpWhRPmhf0inC4RYTOiDk4wf5DZ+fxb3VGCy9fdR/xHMrKgjaDlrX570D8O6fpsafLoaura
	nOrE7ExK8tfbD5i8/fy5eWHzVqYzFtWOBkzfOuJFAYt6BZbJ+kLDvgvxPa8yBpNo07iFoSVpiYU
	tz91sMYBQGxMwbHFREGn2TQADEDCz3pfBIrrh2uxpHqep7cvjr6xr1s6PuQNsFj4zyKDs07llwq
	0X1clneKxdCjTA0ffdOa+C55NTucn
X-Google-Smtp-Source: AGHT+IFCV21ITWeFB/BXbML1vk/uK4JJ4ZrnOgbjhNvnAGJwuaXDQhCv0Qf5XpMdn8BAGIcG78CRpA==
X-Received: by 2002:a05:6830:2589:b0:744:f0db:a19b with SMTP id 46e09a7af769-74500a7d191mr7861655a34.31.1756162544133;
        Mon, 25 Aug 2025 15:55:44 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:5075:40f3:ff25:c24c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7450e49d36esm1991747a34.40.2025.08.25.15.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 15:55:43 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 25 Aug 2025 17:55:03 -0500
Subject: [PATCH v2 4/4] iio: adc: ad7124: add clock output support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250825-iio-adc-ad7124-proper-clock-support-v2-4-4dcff9db6b35@baylibre.com>
References: <20250825-iio-adc-ad7124-proper-clock-support-v2-0-4dcff9db6b35@baylibre.com>
In-Reply-To: <20250825-iio-adc-ad7124-proper-clock-support-v2-0-4dcff9db6b35@baylibre.com>
To: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3180; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=tjk3gE0WrgpzRG+qNpzFNmWAh/0bn0ThRzR4E4Bla4Y=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBorOnjBfnNftKxcXPip3vtWX6R8Nzqt2xFFn5Pv
 Nd3Gtwnnv2JATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaKzp4wAKCRDCzCAB/wGP
 wM9hB/9bQSHHNCRs1R1WBE+5kN22Qdp9kRZ1pAPQHgEqDvV7LPi5fvY/upvaQGZ4hKjO5orPq+V
 SHqoWM4glZS+lBd0Gy1TawX4/SXikGEtyRLRT5nGMeTkupcTtm9jBUT8IKHNUX+h587B/fAF6Au
 qzuTEjV9yz+vhGYkTmwpa10oTNTdpZ+J0MEWolPiaFA0kYE5HoK0rx27t08//E+tDLyXt6OOdBP
 bGOcXEyuM4hozDE+CvFLIVNAfa7RrusuI1a3lW1lN+SDCV3e4AdutyInmAifAIH2G4VXYN1E4Ji
 /XlU5D7fseDr/AORNUa5dUS1Pgvar/H3eZ2poDxq5G/28kLy
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add support for the AD7124's internal clock output. If the #clock-cells
property is present, turn on the internal clock output during probe.

If both the clocks and #clock-names properties are present (not allowed
by devicetree bindings), assume that an external clock is being used so
that we don't accidentally have two outputs fighting each other.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

We could make this fancier and only turn on the output on demand of a
clock consumer, but then we have to deal with locking of the SPI bus
to be able to write to the register. So I opted for the simpler
solution of always turning it on during probe. This would only be used
for synchronizing with other similar ADCs, so implementing the functions
for a more general-purpose clock seems a bit overkill.
---
 drivers/iio/adc/ad7124.c | 37 ++++++++++++++++++++++++++++++++++---
 1 file changed, 34 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index 4112c484c2371cfa6f26acb0d7c5b2a308a5fb35..a1c5f059b284c4f8797986628b92b70fd84e90f4 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -7,6 +7,7 @@
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
+#include <linux/clk-provider.h>
 #include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/err.h>
@@ -18,6 +19,7 @@
 #include <linux/property.h>
 #include <linux/regulator/consumer.h>
 #include <linux/spi/spi.h>
+#include <linux/sprintf.h>
 #include <linux/units.h>
 
 #include <linux/iio/iio.h>
@@ -125,10 +127,12 @@ static const unsigned int ad7124_reg_size[] = {
 	3, 3, 3, 3, 3
 };
 
+#define AD7124_INT_CLK_HZ 614400
+
 static const int ad7124_master_clk_freq_hz[3] = {
-	[AD7124_LOW_POWER] = 76800,
-	[AD7124_MID_POWER] = 153600,
-	[AD7124_FULL_POWER] = 614400,
+	[AD7124_LOW_POWER] = AD7124_INT_CLK_HZ / 8,
+	[AD7124_MID_POWER] = AD7124_INT_CLK_HZ / 4,
+	[AD7124_FULL_POWER] = AD7124_INT_CLK_HZ,
 };
 
 static const char * const ad7124_ref_names[] = {
@@ -1164,6 +1168,33 @@ static int ad7124_setup(struct ad7124_state *st)
 		}
 
 		clk_sel = AD7124_ADC_CONTROL_CLK_SEL_INT;
+	} else if (!device_property_present(dev, "clocks") &&
+		   device_property_present(dev, "clock-names")) {
+		struct clk_hw *clk_hw;
+
+		const char *name __free(kfree) = kasprintf(GFP_KERNEL, "%s-clk",
+			fwnode_get_name(dev_fwnode(dev)));
+		if (!name)
+			return -ENOMEM;
+
+		clk_hw = devm_clk_hw_register_fixed_rate(dev, name, NULL, 0,
+							 AD7124_INT_CLK_HZ);
+		if (IS_ERR(clk_hw))
+			return dev_err_probe(dev, PTR_ERR(clk_hw),
+					     "Failed to register clock provider\n");
+
+		ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
+						  clk_hw);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "Failed to add clock provider\n");
+
+		/*
+		 * Treat the clock as always on. This way we don't have to deal
+		 * with someone trying to enable/disable the clock while we are
+		 * reading samples.
+		 */
+		clk_sel = AD7124_ADC_CONTROL_CLK_SEL_INT_OUT;
 	} else {
 		struct clk *clk;
 

-- 
2.43.0


