Return-Path: <devicetree+bounces-179562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AD1AC0CC6
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 15:30:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AF7F1887B62
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 13:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47A4B28C02C;
	Thu, 22 May 2025 13:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lWdas4wc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC0528C025
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 13:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747920590; cv=none; b=mJ5mHZqdlYfbmJS+HoeFvNIIQ2XSriH0tF1WoopfdiLQVWTK+2n5O29duO3eH7ilBj15/Yk9gi3IUDDLMkgq8/t/b80uexY9x1AwNgUdBPDffQ5w2czofNnRatroV6HbiqAH2DTGIiSQwZs1Ycs2SEW/PbkAvetaMSKt522+Xc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747920590; c=relaxed/simple;
	bh=YrwGPle1vRMvNrNyL9LQjc/TjcWTu0zCVNEro4vtr/8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VJlHQizh6J0rQlZsJibk7cl7TXfKL2f3O+z+/YylQm/VmpSlqIQ0zdLxv6iA/aiSvrVZXT1QX8Oi+Kx+NxoFRYt5OLxR718l1eBdO+skgSod2FGVJdzOAAxizQKd6TD3DUk1p5g32DnFEMcZTofW9Nv/1Hvu1vLT0k2i6HrYsXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lWdas4wc; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so66992705e9.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 06:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747920586; x=1748525386; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lWHo0zKDSXKOpTabSxCDlLtRaC1LPKcPJczl49PtBbo=;
        b=lWdas4wcgXox0vIq2oxalscsnmPOMlqFK57Fro6VF4/TSXNWItS+BjcRSx3lvCKmdX
         6PptKIGL6HJMJW0UnR+Y5gbgVIQq+2jQvRGl9rxc9AxQ85CdmpK9KPoJDw/dD2o7lEv9
         1vuLcmOotpM1Mjv/WWEh8zM4g+Ym3XTCOhJMMd7DcysIgKUgMOcxfyo7JuuXiUOUZtcV
         SGimVC44BlN2zxgPXTCA+SJ3U6qF/IRG0fIDTSrqM9czPNPODli5HVPxywtTV3YGP74o
         vyEYeGbucQB8iz3zmuRsVUi1mSytWRFxPsJUXYKN5nFnLOI6nFag/hHu4+xA6O75ejfV
         o6jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747920586; x=1748525386;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lWHo0zKDSXKOpTabSxCDlLtRaC1LPKcPJczl49PtBbo=;
        b=DO/tms+l3A7aU4ljMPOPqaAsQWMVJ56oGoK1DaY8n0Bo95oyZE0DVtvJmKANsd/FT7
         lst7FyQWqhO+C0WPgVpw6fmuPwnWeNPODHM1Kdbxx1IXMaz9iTl6tH/lViT9ZoDK8t7r
         P9svMmkVdchQalj7Gsi1xGBa6vIi6gEZhgslGSK7HHChlA4UgVqAAzacDlenoec24kuj
         eu24yfIRyQeNPljYa03V0WyFVonEHsejn4F/b39xCkm0IyIkjfXiUXpbjdVvY5oz4ohL
         7kDBZbrKcWW2SMPclWH578VHApcOr2qCVqeHG5h2to8ioGDZF/LouSeifUHIH5iwjqXY
         9r+g==
X-Forwarded-Encrypted: i=1; AJvYcCXT6dRewc0LIPLwSfCdA0kQs+oLuEfxs75yT3u2xW3/RB5Ex6HXZgbMxIPf2yeBc3RPre4L+U/PmDOx@vger.kernel.org
X-Gm-Message-State: AOJu0YzLnkcvJ/9rk0oEao6zR1MgBeHbL4Mpow/0MyUz1ruc/B+04eun
	9yp03VcSmDz44rPVeiWCN5T9v7shy7n3BXnFoFuQrGI9EfzeyFWVPjKatIkigz9/n0c=
X-Gm-Gg: ASbGncv2ThEjltVdV6POyu62I7BA2sR/gUxZ57VIsMZHsfgLdL/jN+PrcHlqzv9ngz3
	Pl7t/koLA4W6/oO8IeJeGKAMx3qi3TbuNp029dhu3W9/w//SnC2IdzlJXcwM9gJP2FjOLuYP40q
	wQ35Utdygqsl0xhyYUje6oHzyVFR1AuWjxhveeTAOTBVGYZjeqNlfT0ImnbPAxgqj92FuwKccXD
	enOVx879uWdcRwOQ+U4Zw47J00YM4CPbQoswDKWqRa9Uc0a4FZwDPdiYNzh7sYeh+aI9aWdUSsc
	9HamHbzzfmr6lfZ5N6S6A2W7ynfMy5WyqS5hYvpN+3NqnUZsA9DlWbZeKPaGXawQIwhCEzoZs36
	HmQKbdzFV2j144bD6kSmcVapirK1qsCk=
X-Google-Smtp-Source: AGHT+IHQa6LxPe67N/+IRPD2P4wAEMn4wUFXrSblbK1eqdEuW+gSKCrMe35vuj6svYp3ZWgCrVQ8OA==
X-Received: by 2002:a05:600c:1d88:b0:43c:fffc:786c with SMTP id 5b1f17b1804b1-442fd64dfbfmr252190045e9.19.1747920586338;
        Thu, 22 May 2025 06:29:46 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f1ef0b20sm109837585e9.14.2025.05.22.06.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 06:29:45 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 22 May 2025 15:27:02 +0200
Subject: [PATCH v6 1/6] Documentation: ABI: IIO: add calibconv_delay
 documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-wip-bl-ad7606-calibration-v6-1-487b90433da0@baylibre.com>
References: <20250522-wip-bl-ad7606-calibration-v6-0-487b90433da0@baylibre.com>
In-Reply-To: <20250522-wip-bl-ad7606-calibration-v6-0-487b90433da0@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1861;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=MnikOzSRNNhylv/Xr1wy9eMKECvl3Lvhp3h+t82FVuA=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsjQV/PsPPz4yyt1d0XL9WesOP3nzfLqn///Zqeg41ql9
 VqLcm7yd5SyMIhxMciKKbLUJUaYhN4OlVJewDgbZg4rE8gQBi5OAZjIPSWGv3LtbmferXqZPzGf
 63++a4TZk2QX97OSpeeY702ewS+R0M3I8Jj772/BPzc2T1S55Xozf3o4+77PCfeUXPZd+p396PN
 8Pk4A
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add new IIO calibconv_delay documentation.

The ad7606 implements a phase calibation feature, in nanoseconds.
Being this a time delay, using the conv_delay suffix.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index ef52c427a015cf47bb9847782e13afbee01e9f31..cd79c036b2ccdea016dcc17f4e8ac5fdb2d0e465 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -559,6 +559,30 @@ Description:
 		- a small discrete set of values like "0 2 4 6 8"
 		- a range specified as "[min step max]"
 
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_convdelay
+KernelVersion:	6.16
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Delay of start of conversion from common reference point shared
+		by all channels. Can be writable when used to compensate for
+		delay variation introduced by external filters feeding a
+		simultaneous sampling ADC.
+
+		I.e., for the ad7606 ADC series, this value is intended as a
+		configurable time delay in seconds, to correct delay introduced
+		by an optional external filtering circuit.
+
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_convdelay_available
+KernelVersion:	6.16
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Available values of convdelay. Maybe expressed as:
+
+		- a range specified as "[min step max]"
+
+		If shared across all channels, <type>_calibconv_delay_available
+		is used.
+
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_x_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_y_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_z_calibscale

-- 
2.49.0


