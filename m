Return-Path: <devicetree+bounces-171977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B8DAA0D29
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 15:12:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BB8318856ED
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 13:09:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99AE82D323D;
	Tue, 29 Apr 2025 13:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CbDyTsn2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838232D028F
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 13:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745932087; cv=none; b=RDHpGts7UhHJ+lG8P5FeJR5iAZEo+qJifSeCSoWUY/aZYWnbS/h6t2cDu5JUYTGg388Xa7Jlcq1hkzfJecnCTNmxUcAr2ent7X5zg6Xpw9FSX2tWaLIfAgLw2YwI+OLJLYCYlHQ53iNsdrYURPgsuBhlwaashhsl1090GvRonOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745932087; c=relaxed/simple;
	bh=y4T5PnGAIez+vg5VEqW5Do2Zya034gQDjDWVIv6UQvU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QFEHMuxd1rfewh8VttoDZHxfbsXD2/jcB0qlJ8Ix7Gonesng8LCrAB09uBcNMxOOsTrNr7vkQZiky5lbLNxvV0juSiV/CxI+XBo22A0dW3PzKipaPBllGSCXwHfHpNcCzDYPCyH7h11U80EFZGMZWOI9QpUFrVAo4WBAHLLxylQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CbDyTsn2; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39ee5a5bb66so3889698f8f.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745932083; x=1746536883; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=71H8UUaO7QsImpqjQAG98uxMQXL09n1x9j2TkZ5PRUE=;
        b=CbDyTsn2pI7HVkt+hdyGQrio2xwLj+c2c13ICwFIsV4lL4h0UcapVPNj71OAeXhSB+
         I4CikAkmP5l/6bFXIy6uLMlH9nBzPwDMLc6uzGN3uVwCpD956Xpp6PH/V+kGg0x63YJe
         AUQvBSOk5md69UfaUlA6BYX/ty4MyQ4zfDm9mjoNuBXghot4U2FyJ+dJNGEIIoFL0sz5
         S1dol0m62h3qG60efkLpEgWhgrFhALDFVbs7id3eF520FO0W6l45tjwRUw6ByALw5QJ+
         7oLv7bQkP48g7YGdtXOCu/KjQv8jkmkVr8Zn5A4yB1e4ZOiBEKsflZUnRVr3rKqhgiPF
         93Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745932083; x=1746536883;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=71H8UUaO7QsImpqjQAG98uxMQXL09n1x9j2TkZ5PRUE=;
        b=DRkJ32VV99LdfGyVBQGtdz99GpKvDTRVBRJaS4Q6f+8W04PzPORg1cg+Xv51lbd+mz
         s207NDAXFaBOqQYWb1fhszLudOvYHJv5HcqbDCZhJHJcQbjDGH5iIxyi9kgNx/oWI87x
         rJX2PyxjicaXNuOOJoJrlSmwziDxNjhTYCzI8lcyfdw7O0jxxu9x9hRGUuE4Mz4Vg0mf
         aCJVkAcCTtEYzGxmTSvDFAUyTwalGTfKG5IUhSSitBgBtoFjTXaoUFEhnfIZkJ48Ahi2
         NF709NGlfglBlXJQPOtpxIaVYiy3fftoT80U1bmneXR4vaC0hIl4VlMmuU962XVivBqS
         coyA==
X-Forwarded-Encrypted: i=1; AJvYcCUeFi01w6miYmMcfaeQzn01P/BVAyxqWRIIHNpLhd50dlCSm3+XtVUg6nBO9iVUFC5mXCl3vHNnRIXY@vger.kernel.org
X-Gm-Message-State: AOJu0YwyHPb5SZeqT9lLOfpm2EFE39obWzBlOOKCnrMNmZ2py7lBw3kC
	jnTMF9n1MZ+eHimscudp4TOZsnbKPrYSdca+7sUXy9rNYPFScozx590HYmtwFCQ=
X-Gm-Gg: ASbGncuNCXhH2zm+DIInwm/q2OOW/KJIColN0bse3+fH6SMFeRrJ/787ZZWM8WiFPjm
	gey5jAjKQALu70Rf2SshnJYwDNCFB69wyAFqbLlCoXLQoX/zgwipOolGWFMdV4bEhz2ID5EM22X
	Z+IfAvDYC5G6AuttNYg2vlB2hNgmSzTCtFbXSx/PKrgNKf3IuelgHzvondEHPBZCnnbMDJaYJ8M
	wsmqUEji5mxK5ut5u0heg0Yqq0U/B7OBrKTb2qWKOmhaMRo9GW5afoYaxtQO/fxQPqoENfywbGp
	fweghdBCCC54bTZ01X3GbH9vHCITDDsq8qXYM05VP2jZwLiRF9cK+HggY1zWJ0wlxBqom8NOMcd
	yCa1viiEm0RJ+
X-Google-Smtp-Source: AGHT+IHO1ZeiV/iQuKvbx3T1ivuh9m/Sgh9wluBgAayek2avyKi8im+bEMquo5wovrimdlQD3PC0ig==
X-Received: by 2002:a05:6000:2211:b0:39e:cbd2:986e with SMTP id ffacd0b85a97d-3a08ad28663mr2229582f8f.5.1745932082646;
        Tue, 29 Apr 2025 06:08:02 -0700 (PDT)
Received: from [192.168.0.2] (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a5310ad2sm155550565e9.21.2025.04.29.06.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 06:08:02 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Tue, 29 Apr 2025 15:06:45 +0200
Subject: [PATCH 1/5] Documentation: ABI: IIO: add calibphase_delay
 documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-wip-bl-ad7606-calibration-v1-1-eb4d4821b172@baylibre.com>
References: <20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com>
In-Reply-To: <20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1707;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=hjukJMP68wQDxrn4mu67NwCMge4a4swyLMg0ZA9HBaE=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsgQOPf8V6HIoj8yf61M6qJP1LE8+9yZedbpRuEWGYslV
 Q8eOvzh6ShlYRDjYpAVU2SpS4wwCb0dKqW8gHE2zBxWJpAhDFycAjCRLX2MDJtF9xz1qt7xgf/C
 Lim9GMvWN0eCndS/Oay9OrU14812rXiG/zX9U6+vXqYgZ5l41OB6lMXHnSorNKb9Xdu0tDjVpcS
 rhhkA
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add new IIO calibphase_delay documentation.

The delay suffix is added to specify that the phase, generally in
radiants, is for this case (needed from ad7606) in nanoseconds.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index 33c09c4ac60a4feec82308461643134f5ba84b66..f233190d48a34882b7fed2d961141cc6bec3ddb2 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -559,6 +559,26 @@ Description:
 		- a small discrete set of values like "0 2 4 6 8"
 		- a range specified as "[min step max]"
 
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_calibphase_delay
+KernelVersion:  6.16
+Contact:        linux-iio@vger.kernel.org
+Description:
+		Hardware applied calbiration phase (assumed to fix errors that are
+		introduced from external filters).
+		For the ad7606 ADC series, this value is intended as a time delay,
+		as an integer plus nanoseconds.
+
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_calibphase_delay_available
+KernelVersion:	6.16
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Available values of calibphase_delay. Maybe expressed as:
+
+		- a range specified as "[min step max]"
+
+		If shared across all channels, <type>_calibphase_delay_available
+		is used.
+
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_x_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_y_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_z_calibscale

-- 
2.49.0


