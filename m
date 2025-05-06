Return-Path: <devicetree+bounces-174368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A20F5AACF32
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 23:05:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58A3D7B2E2F
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 21:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835A3217F40;
	Tue,  6 May 2025 21:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cglRShN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2916A2153F1
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 21:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746565526; cv=none; b=BJnxoSKBOuxOLho4yAW30p44u06glS3IqfWVLgQxjMyDy4sWBWfgfuhPkQy6w8EmZe1c9OaK/9EBC6NrW1tJJeIaaaKiHsy2x+IVsan1n1PnSOguKeygoOjpQmxiwvx+vloPPISrSd3r83tkC3iT/79ygEL2S2vkzt0Ysu+8rtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746565526; c=relaxed/simple;
	bh=c34LXBKOq4PSMyWSsSO+ts9OsCRuGWRV2pACF1PcxII=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aUzzsY/Ae0YaaLJpMzacl1iVp++y1EW+AsMBlJ6HGYmD1uAgpvOkbhfMzbEKeQZKq2SSFw+vlsMASmkH7Ihv2luHZzEzyVs6LmsnKeOd+j/1w8qYiGonqhPIcBgciPFjFR8613JtlDpGnlSihkBQb5vLh+MoeQTxrL1hc5nCw6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cglRShN1; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cf257158fso34336505e9.2
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 14:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746565521; x=1747170321; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6MqbGpHAL54CKQrNSXS159TQ/VcIh5UIaMuWVdpOfj8=;
        b=cglRShN1iKHpMwZrL0Tl2tGB4HD9J/qgalp26S5nZTJvRJ9iLZeDL1NIk3R8EPOPJS
         /Ka/qsptGPF4PucW7AXzlV5zTfYW1FEPKX48qODipEckL+Bbva6uywVytnhsjH8wMGP9
         DznGag8Uj4WVS/gTFxEMicmF/mFhJ2MKOpKXO26YiR5FiqPspTV9mH2rolHf17pITdfp
         Oqw6gGtqFlaEP8uPPCiYhWeYiJ7MLgpcHVAQup1p+kA7OqFp++Zn382sq484DGW7qj5A
         Wk4jMHmvhn5jvEqcdFEPemLr5wTtZ9kIJnBUa2TRiEsqxRykbjmgv3TNh7t9du/LJ1pu
         uSTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746565521; x=1747170321;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6MqbGpHAL54CKQrNSXS159TQ/VcIh5UIaMuWVdpOfj8=;
        b=JFTJHwEwuLiS/FrKpduBLAv2qafa7xYnykq3cQUCGbRlg9syg1jTm9449H74aykvKf
         XMCJxjlVtgWAKhkn2NisVkEiLgnE+fQoA2VzFqtJ/sRmCOw165TdzoOjZiMUcQzLObbA
         oVoFXCnpeLCCDiqDJy1V7LctfAomCGpHTy0wtUOH9/jS299NFkUbwWxj9bQGlSBCFQgh
         nJlcUQ+LAZzTN9bWgDcm24DKhDj/mU6eO9mbBum7uPcZj0hg5H1okFt8le2j5WLXpffB
         p96wuAjtxDsLIaLtcJPc9U563LtL7EcIoCjVjPszGhFDiD74M3ZrQ4ciHbw+F0Tnl0Yh
         shWQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/IKybvli/qWe1uWHLzIFIikWyNfkjdAiEqTav5xCh6LIWQBIvRnqOlbx+0wJv6JevPKQqShPj1u68@vger.kernel.org
X-Gm-Message-State: AOJu0YzsopK7dnJnYPGDixeEipZ2FptlmWjVHmBBjfLRcOmIbKhd9wVc
	oqMDK2FpPtqKS1AhnR9H6azmNZehFhWyu+06dFVK69HqWw04Nt/az/MW9KRPQ6k=
X-Gm-Gg: ASbGncuWZvyLjoTjY/6juMYOFuJiMK64kagUfnFMBtFPdK5m297KRqXsoajD5FJwvty
	RrTxA8F0wVARoeXddrJjzcH8fu2LrD10zdvn/w4vzngMuAkYkb2h4SrVWeEVZG6bqYVMK1dnw4C
	gWS5pO1xgEqJkJyNkNTbU7PNS2V3Adzzv2Pguy7h0yBjBlLy3QIjx4g2Tjqpm7wWT6r2KfrnOgx
	uk1JOMgHCw1rO9MTho5OGBB6hr7JuyBgucTzwdRkEMFh2ZNW15zhzcR+kacVSZSEzc3HUZjeXGN
	f4C3xNpSkjyYovovRVvE3VR9RK/5kL6CQ555nDD4rTpGm3v8i+Jg7CfZ0AHNx7r+8Nz5Y20b55u
	tlgMcb07rW55t
X-Google-Smtp-Source: AGHT+IFlUTNk00U/jOod4LoWdgj3uhED7W4B+2ckuAXgwyDyPponiM8zC2OfHdl3IjRP7wkbTjSvKA==
X-Received: by 2002:a05:600c:3d05:b0:43c:f6c6:578c with SMTP id 5b1f17b1804b1-441d44c75c8mr4539225e9.15.1746565521351;
        Tue, 06 May 2025 14:05:21 -0700 (PDT)
Received: from [192.168.0.2] (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441d4351abdsm6794475e9.23.2025.05.06.14.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 14:05:20 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Tue, 06 May 2025 23:03:47 +0200
Subject: [PATCH v3 1/5] Documentation: ABI: IIO: add calibconv_delay
 documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250506-wip-bl-ad7606-calibration-v3-1-6eb7b6e72307@baylibre.com>
References: <20250506-wip-bl-ad7606-calibration-v3-0-6eb7b6e72307@baylibre.com>
In-Reply-To: <20250506-wip-bl-ad7606-calibration-v3-0-6eb7b6e72307@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1880;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=oTr2y1KzI44sJPbPH4SmBsKovzD+NKhk9SBNTTYhjpc=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsiQqnT/5zg79e//urexjcsPrzU7UmXRvdBHa/dT5WlRd
 1Ot76YXdJSyMIhxMciKKbLUJUaYhN4OlVJewDgbZg4rE8gQBi5OAZiI3QGGP7w6jXO9/NPfbXN9
 sWHJzuQ7f+afWbf/8Cv5yObz13S5zn5gZNj9dMclxYqJIV+PszkEdu6Om1Jg7H7M3OjUj/MeQSU
 rvDkA
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
index 190bfcc1e836b69622692d7c056c0092e00f1a9b..9ced916895fbef146d46d17b5fdc932784b4c1df 100644
--- a/Documentation/ABI/testing/sysfs-bus-iio
+++ b/Documentation/ABI/testing/sysfs-bus-iio
@@ -559,6 +559,30 @@ Description:
 		- a small discrete set of values like "0 2 4 6 8"
 		- a range specified as "[min step max]"
 
+What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_convdelay
+KernelVersion:  6.16
+Contact:        linux-iio@vger.kernel.org
+Description:
+		Delay of start of conversion in seconds from common reference
+		point shared by all channels. Can be writable when used to
+		compensate for delay variation introduced by external filters
+		feeding a simultaneous sampling ADC.
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


