Return-Path: <devicetree+bounces-182500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A093AACC94B
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:38:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B76EB3A8269
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3A8923A9BE;
	Tue,  3 Jun 2025 14:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YuZxYJUE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AE7238C26
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 14:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748961478; cv=none; b=QwRP63GraM1Y23xgsnP2Lnd4ispX6XJ/SpCDiUj9X3VKh1+5ctgyqFbl5cs9jHo1jlsBHJtWwEneeeOY/uHEKvBMp4wKxojJUGacR8LGYyvlOBsN5mxJJs8gSdMHpO3ZC+G8XbbposyXk769yDEfx9WSi1+E/XMgQtgz1nqMP9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748961478; c=relaxed/simple;
	bh=vFlQmUYfvlbdocc1660HFvFkLaTTtU9EJLRp4LGDp64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DI0FnzsCVnCWyyH4wrMIjsbRJlv3QEtN96U6JN1/r2bHhFNq1hUxSo1ci8QMdliVhFULX9Laq/1DDUCaCW3PrIKDZn2NJ1tU5D6cW3y/uzM7lnGnXL7hyxXGQyHwldj/w7Gj/vim4tTkrLGYOCcriURr1wn28md3qli2XSwB/Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YuZxYJUE; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-442eb5d143eso57876435e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 07:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748961474; x=1749566274; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q8aakW4/a4S4nlb27SNIiYOlQ/gC3M9NtCJYtqbcxPc=;
        b=YuZxYJUEsTYaEQowAoQreEgKrVEYlLdsiESbNeXAk9mbartslzVjXmw8pE0wC1QpBa
         7EaZcdTjS8/vPwlEkSvEFrE4RqxY71DuxZ/L0BzbZXF9zHomH+aD5QdlScuTMOoy0+9t
         +If7qpyQ7tfHXLuv55hNfScXz1Uh/ZqHjnmeN5pQoTjokw2O47n7no3Kr7XD9uiJhFpx
         PHjKwOwd7EdCy5Tcs2ymScXKc3OY8C2M0MJ89Zripu5ob5rEWLEX48agpXEQ6nj1Ux8D
         AJ1JXh+E2Cgus7p6+/AhcEFqM8Xr8h4oVlBC04lQ09j+Obf3v15/59sU28wwJZyBOk2P
         JQyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748961474; x=1749566274;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q8aakW4/a4S4nlb27SNIiYOlQ/gC3M9NtCJYtqbcxPc=;
        b=getTlyD0qcBdGVxhXGnqC8Zgi+UrE+Ky3rXFgym8yOTsQkVRAvei2QTSqOXjm62Hs7
         Vdopz3lMrbzx0BhK4fFsVyhzp/ClTX6n65t/y4dg8t9Cb6P95idJpL07cOJ5uN1I15o9
         bb9YcnsK2TqHsYX7ko19tvG4e97F0YM3Qq1PX/oEw2eCJY2CtTXh4LMy3skx5sk5vYdO
         OtgEkKW/zLryuGVizjzTsZFqUsIYfANigwtrfQUmBGyOtDhkGJz+tE1NVi0ToE7/gydo
         i8DuivtYwevOKe+KhcENIvcA/pFS3hz6ifeEF6Tfh87N6Ocg+pgKNtRPl/Nzo/AldmpX
         TRGg==
X-Forwarded-Encrypted: i=1; AJvYcCUxbIQFfU+OVbE+xYkjJQ25R6vwjSI0Unqf0HXGXng7nvHAcdsCrXme/rFbMQf9H3wfgx3t60eDbIO8@vger.kernel.org
X-Gm-Message-State: AOJu0YyZXwU4VeU4AP9SFhzDO29Kumk5e83bsapllNFTSo1uMCZLc3n3
	Xs9zLHtI7Sq6LCNJx2wWeq9RK8oypvyembgNd5+3Mi9/cOdkcBNSx4xtYxlprbPpUOk=
X-Gm-Gg: ASbGncvqabfeZ4nO42b0YZ3FLoSEDsWSAHlpPDIJEq12oy15YJToJaaLftYDFzZdebw
	2xWa7Ix3cYeWZcTt5cnNZ3z2xIr6u+n+lvhZx5nwrFSKFVcMJIDvVnYGPBrR1ElZmpBsiyrcEDZ
	4IO/Vea7fZVABmOqvkgdFVbFgey1qzgZ5HSGBSDQhIoH4rrtGypUltW3pIpYLqRKUNBVl8pTaDu
	kSjSkg/joq8SMKcxKTujNiFQkZqMTCMT/gjJwv536VOoCZz7TCSlNsDlXz6xXrQ/fWU7Xp7nT3X
	KBl5KP6mqT05RjGedwa/+39SfCiDeH5NjKEayR0ibxuP47mrg6K4i4Z9rtdT2tAbMJH8pKt+n05
	6x5Ogn5ySKgZeztVzi5O3RK4AghlRQ5B6/RAXQrL7JgWf6A==
X-Google-Smtp-Source: AGHT+IE63ru04iF+eA9B9ePzkthoe1PsuUeCbzbIdwhycOn2XyNJ7zYSmtNyfiB44EQBSpSKYQ6V4g==
X-Received: by 2002:a05:600c:8b11:b0:450:d4ad:b7de with SMTP id 5b1f17b1804b1-4511ecb9cd9mr125640035e9.3.1748961474126;
        Tue, 03 Jun 2025 07:37:54 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.pool80116.interbusiness.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d7f1afebsm164430945e9.0.2025.06.03.07.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 07:37:53 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Tue, 03 Jun 2025 16:36:23 +0200
Subject: [PATCH v8 1/6] Documentation: ABI: IIO: add new convdelay
 documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250603-wip-bl-ad7606-calibration-v8-1-2371e7108f32@baylibre.com>
References: <20250603-wip-bl-ad7606-calibration-v8-0-2371e7108f32@baylibre.com>
In-Reply-To: <20250603-wip-bl-ad7606-calibration-v8-0-2371e7108f32@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1850;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=m1V9a4luyCqmxst4hAeMv2hk5LxVMC81ZTSMIekPDQ4=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsiw56h49tXVZsOVs7u3tdiwdDf/nZHMUv2H/8LtpwfEv
 /EGfIxX7ChlYRDjYpAVU2SpS4wwCb0dKqW8gHE2zBxWJpAhDFycAjCRg1UM/z3k71Qw8J28dkH3
 eMmC78z5T+fOubQioWfO24vVc/LXbL3F8M9U6MrctPkCW7pqfZ/Zn1ob27zxJeesj0UPdIzabVl
 /JHIAAA==
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add new IIO "convdelay" documentation.

The ad7606 implements a phase calibation feature, in nanoseconds.
Being this a time delay, using the convdelay suffix.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index ef52c427a015cf47bb9847782e13afbee01e9f31..7e59cbd5acb85fd0909c1d56f9d76a84933d418a 100644
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
+		E.g., for the ad7606 ADC series, this value is intended as a
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
+		If shared across all channels, <type>_convdelay_available
+		is used.
+
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_x_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_y_calibscale
 What:		/sys/bus/iio/devices/iio:deviceX/in_accel_z_calibscale

-- 
2.49.0


