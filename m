Return-Path: <devicetree+bounces-173003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A16BAA7392
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:29:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0025616F7A5
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 13:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDA8C255E20;
	Fri,  2 May 2025 13:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Cl9tbAis"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DBD252905
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 13:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746192501; cv=none; b=i2C0gMOqAAKNln3YR7p4+SsqEJu3QiHum6UaOUxlGX6hjB5F+KAm2o81CKJR/BISMl1LXSyApYnO49lGDtdwwYLq7Ln0s7S5QH/w46gz7fGrlAOKYgjrtQieASe3Tlnr1NUA47ZBBq2nAy5JR5pJIgy8uLbzFdw5ECqtJB2fi/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746192501; c=relaxed/simple;
	bh=9EK0Atp8rHdpu+X+rVm01GkzEyZtG4aZwO22eC6200s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=simlAt0UTttf/8gCUdeCkA9VRXUH0HZBH3xNhbutvkhavwfCzkrMVYoau9dEtKh+kIrWRtfmYD2WyBWG48DFXQU1lSmrosym1D5qmonF3KFqeXuXUGsdWfetsAimnMW7cCUfcxYX+eYsPn0Kk1ZvWRw7/7ir9A2iXbo4GBfmMzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Cl9tbAis; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so11913835e9.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 06:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746192497; x=1746797297; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RtntWz6cXKALzOhF2uJU1XcNxPBVH+VawQkBo5EZDg8=;
        b=Cl9tbAisCZ7CF6Omk9KfjX88GX8DuNq8qM6K4S2UAjQho5tXwOzShv6ZcYyd26kxKp
         k79lQaCy+wBogvwhPNRRyR4wUwEUTFP7uMk57hIyF7rUA3p6Okgrwj/AIFuZ6wZhiZtZ
         KZLrKMjYVUkoF+zY28k/7BYp25d4RdWR6tE38s+RpTDSvymnVysxn4KnxwLYmn1rw0to
         pCVRTupo37T4TaBdJkzMAVHzYhcVj12RfGubb6xtbWon6JNg5X4UdD4hOd1iLH75bBWo
         JPIZtNC2zUZTie4kx3/ZIij33F96QUZMmz17bP5j8D1U50O9VawJqXR5Q8Z/m2bOaQa2
         xoYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746192497; x=1746797297;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RtntWz6cXKALzOhF2uJU1XcNxPBVH+VawQkBo5EZDg8=;
        b=JHuCueuK0TQRUw771sJ1HCerm+i+DLkEetdU+SbEG0/YLHHq6NMYBPAIjx9jcPgzVY
         Ept4azhTrgIly2XgGf/a4+gU1r+vTgvRQmrkYG0WpeBEKWsvIPBOixyJoQSRhy/4dmk9
         8sTbNNGHJSoFpthuWzER9jJch+RqozkEl5exxKzsGJdGd9OgXVHsF91EA+a1RoyU0MRW
         73x0MZxWF/2v1pWbT6y732DnpgNQBx6b8MN3DkjXGl0/5PfgiKwKGWHUtFoJzQjzh/oI
         UXsH8TZtnQOYbjDys3lKXSk7WJjxu5SIX5Br6r2njs7WsHRmtieMorGU6fpGGNK0ON9Y
         GC/A==
X-Forwarded-Encrypted: i=1; AJvYcCVeWBXjjgUyDBHkakZHJ9eAsoRwn7+iLEzyJO6KH1nf1fG0c7qy5FsJsKDXpMquxar74VMPd6gwh5A5@vger.kernel.org
X-Gm-Message-State: AOJu0YyNTSnlEr3It/PuW6Ud4ba75vJURMK/Mem0mx/krOrbhiaV8HTf
	JAhi0y8Zc/UhO/UQMzZj2/9Ur5CB2OFtboWV1j9S5J8Q3zTIME7H/ARGjT5K5Mw=
X-Gm-Gg: ASbGncsG2b3f51F3ztSaAqSZAWItuNhAJXj9HxXohsdvkgDhHrtu4QW8TMg8NyhGImn
	PXaeCL+d22/dXU8Y9QYU9z48CW3E0Tmk8wXFDt4x+YR4m/fRlBZoSitGUSL3QMzRdzYLeVI4p6N
	2pK3HpsleDhdjDELqHx3ZS/KecNPmJick1Jnr9mPFItfeBbC8da3i39UkGo9FIDd7o6QHsUODDA
	L5ZrY5xxKiDZRPn9AbdUvW7zd6pHUGatML4SC37SBzyWrDm+FXrVzCSSFNgbtf1hoXSFhp21TIT
	SF3M8p16Diak6PRW1PPaZ6rE3EUDO/WUn4Sm2fpM8EHi
X-Google-Smtp-Source: AGHT+IHvcHbDPsyxb9la/dnjRvBkv8xkLYMqVH8JAhaqEDZzXIAl/dQSOfxdGlQyySBEP7xgydCKdA==
X-Received: by 2002:a05:600c:628b:b0:43b:c592:7e16 with SMTP id 5b1f17b1804b1-441b72b10f2mr62622585e9.3.1746192497181;
        Fri, 02 May 2025 06:28:17 -0700 (PDT)
Received: from [192.168.0.2] ([87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b89cc50esm45761065e9.8.2025.05.02.06.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 06:28:16 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Fri, 02 May 2025 15:26:58 +0200
Subject: [PATCH v2 1/5] Documentation: ABI: IIO: add calibconv_delay
 documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250502-wip-bl-ad7606-calibration-v2-1-174bd0af081b@baylibre.com>
References: <20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com>
In-Reply-To: <20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1694;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=vb/6wvniAJeAs3RXPvCaUldK2+XHWqS8d1UiRHckMTI=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsgQOaEu92fjy4WvJ6i+WvtB+vefQvkn91iMJ04SkPAp/
 iwdvlBLpaOUhUGMi0FWTJGlLjHCJPR2qJTyAsbZMHNYmUCGMHBxCsBEHq9lZHg5/+5PK6Ndsq//
 T9rMHcI767huytKE/SG+YtkdiibFMa8ZGfbznYxesN3kjHXf6nWF73ZutXnMoX3G+aH+yWXmN9O
 2SXICAA==
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add new IIO calibconv_delay documentation.

The ad7606 implements a phase calibation feature, in nanoseconds.
Being this a time delay, using the conv_delay suffix.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/ABI/testing/sysfs-bus-iio | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
index 33c09c4ac60a4feec82308461643134f5ba84b66..56eb42f88999660b5f93f2311b7d57e0303b0647 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -559,6 +559,26 @@ Description:
 		- a small discrete set of values like "0 2 4 6 8"
 		- a range specified as "[min step max]"
 
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_calibconv_delay
+KernelVersion:  6.16
+Contact:        linux-iio@vger.kernel.org
+Description:
+		Hardware applied calbiration delay (assumed to fix errors that are
+		introduced from external circuitry).
+		For the ad7606 ADC series, this value is intended as a time delay,
+		as an integer plus nanoseconds.
+
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_calibconv_delay_available
+KernelVersion:	6.16
+Contact:	linux-iio@vger.kernel.org
+Description:
+		Available values of calibconv_delay. Maybe expressed as:
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


