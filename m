Return-Path: <devicetree+bounces-100498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD08C96DDE5
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:21:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBDB21C23A1B
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F4B81A2555;
	Thu,  5 Sep 2024 15:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="G2LzPf2D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972671A0B13
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725549567; cv=none; b=LrDzfBLvykQy8FJb+c0h2Dth530mzwW7M9v9iJA+Te4WFAwG4R3TSMSCkasnAoNuvhbbKHz/bAFWe94PBMWz7kvW4EEgtcMWOLHFI73s0/P1ceOZv+agpV6Na5TymJdNLficDeeR8llA5efYq/8dglTH4uLnyIg07h+70+ElTc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725549567; c=relaxed/simple;
	bh=qn4Pz1FllPoafjD4D/Ys3jtfWUZjxE9556qRfvpMii8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QgaWUu6/X04b34ltapXtBMzNnbq097lVzWT+ns6a/WEe9JnlnIhXrsszCWb3yTB21h65WDTJF8NxYBqgWT8Rd131VHkqSl0KNbPKG67zQIfJKYliZ5X0uExs2Bfgk/1MwnsTRYZ1z3tRQda0i4Xw2oc844znmPJ0+3ggHLL43uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=G2LzPf2D; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4280ca0791bso7446915e9.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725549563; x=1726154363; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=driisr0A3MH4MgRKuQS7KG+TfR2Tlhzey12qVcFwLZA=;
        b=G2LzPf2D21heF38NkGLIviwTrIilT7IgpccZlVSko2SWS8wTjsXsmA2w9SCOu47Qtx
         45xoiu6oM68HtzzwhrNR6f6xg6hpnshJMWpHiMS+TPG4QtsKd+R5sNw/u1wPNntJu94R
         KAcYQYMEibfkDp3ML2C6m5phHaT7KdlLFFTk/s60Owa9dzOV755pS9c6r/FaecJpl8Uv
         3O60s9B5xLTFzgCNsPyZwS3T9v5Byy2HQBIHo6yPStyAkI9FYPbIWYPmyYhUuih9RmFy
         48W0v/lImCbDhc3cxmYyRmtwn0ALBl/7A19+ufW22r5ENtMVBaz8aasXtSVjS/9PjC0n
         AamA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725549563; x=1726154363;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=driisr0A3MH4MgRKuQS7KG+TfR2Tlhzey12qVcFwLZA=;
        b=HRASpgJUmNPnPu9zhlmUODBhOuoaVecUaDuFs1aOa9FM65F0sY8iANRNy0LSMAdmcm
         oM/rnxigz+6kYKe5a0oGW0RRdOVt+j4j0IyZ8EgH3lIz5uD1GeZHjt5blWWHY0/cd9sW
         JFZeWrZuJXtrWxFiPIQhXifwv5J8EVMNoMq6yuc7EZjcTR5ErRWBw+scy2UDe0qn3QNm
         +8C1/6pSUJqlj96yJcA+HtqdahLS2AyVADN6Fh+b8BRa2K6y7RmGlbc0WRs06MXvksPf
         Y1nxEv/KjNlCqExERaUCk4CuODiGCvl9b3iN9nI51P1Qtu2PYk4EKH73viAbrxhjzIWg
         H+Jw==
X-Forwarded-Encrypted: i=1; AJvYcCUnylqHqpOvtnzPo7+Ucuz6sKIiAGgDR0ZZ2O64BLVkVcQDtIHl3kkn/J644vTPOgIJ/UX4O/dxiZr0@vger.kernel.org
X-Gm-Message-State: AOJu0YzDG0VboYiqIhG3iuRztdOqwVSt3aLqc5YxJVdTXnTzwzn3CfOW
	Z09uzDnMkHSjSjaGAaFWM2PVSNseXr0PT4WsvHtdAS/5PGxC1NWFqM4nlVh8K7M=
X-Google-Smtp-Source: AGHT+IEC17EB/IJUmMU3G5MrSDuKVOJd/AkOUmfnYOuz4m0Ufmsilaa1BcxFoMVn0wGFcbEWuW6q2w==
X-Received: by 2002:a05:600c:1c90:b0:426:6d1a:d497 with SMTP id 5b1f17b1804b1-42c8de79fdemr60732675e9.12.1725549562913;
        Thu, 05 Sep 2024 08:19:22 -0700 (PDT)
Received: from [127.0.1.1] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374c1de81b2sm14031076f8f.30.2024.09.05.08.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:19:20 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 05 Sep 2024 17:17:39 +0200
Subject: [PATCH v2 9/9] iio: ABI: add DAC sysfs synchronous_mode parameter
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-9-87d669674c00@baylibre.com>
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
In-Reply-To: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Some DACs as ad3552r need a synchronous mode setting, adding
this parameter for ad3552r and for future use on other DACs,
if needed.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/ABI/testing/sysfs-bus-iio-dac | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio-dac b/Documentation/ABI/testing/sysfs-bus-iio-dac
index 810eaac5533c..2f4960c79385 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio-dac
+++ b/Documentation/ABI/testing/sysfs-bus-iio-dac
@@ -59,3 +59,19 @@ Description:
 		multiple predefined symbols. Each symbol corresponds to a different
 		output, denoted as out_voltageY_rawN, where N is the integer value
 		of the symbol. Writing an integer value N will select out_voltageY_rawN.
+
+What:		/sys/bus/iio/devices/iio:deviceX/out_voltage_synchronous_mode
+KernelVersion:	6.13
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Arm or disarm a wait-for-synchronization flag. Arming this flag
+		means the DAC will wait for a synchronizatiopn signal on a
+		specific internal or external wired connection. I.e., there are
+		cases where multiple DACs IP are built in the same chip or fpga
+		design, and they need to start the data stream synchronized.
+
+What:		/sys/bus/iio/devices/iio:deviceX/out_voltage_synchronous_mode_available
+KernelVersion:	6.13
+Contact:	linux-iio@vger.kernel.org
+Description:
+		List of available values for synchronous_mode.

-- 
2.45.0.rc1


