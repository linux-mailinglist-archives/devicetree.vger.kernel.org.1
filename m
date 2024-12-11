Return-Path: <devicetree+bounces-130002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 288909ED7C8
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:57:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67008188AAE0
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 20:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAB9238E18;
	Wed, 11 Dec 2024 20:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AYiKK+jJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5D3237FD1
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733950521; cv=none; b=WR0tCGxbEfdY1tqnN0dmv/ftDPG0yaHY3UbWxht+tcy+EbDLJpsKIpD+IYQ+/53H1g6NRyl1khHtPvjFstuRu8FIgi3rcSycG6OMj/WMSCbPBPv3daSJtVOasPq9aEvpsYK603xgWv8L4ri8aVKFkWc4//kGcRjgZNpBTVFTRpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733950521; c=relaxed/simple;
	bh=UYLHEbjpteKpyTByveXONKGEj0AkeqixpmnNB5HL0qY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=md9/mlYIbBHLeErbz86ZmdWOYnmRhZbkfHhatUp6VOBLcsx6CgR6nXy/kzhqsKZOcOqy4WplDrBCz1eI8rqc0jbvV64NR9L6CmVO5RJ0uIsFmekqwQ8pcdW9ZPMdkd0PKqbHmrCeePasd2B5v6mSo26bXg6T3VhxOvwv7j+dGLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AYiKK+jJ; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-71e2764aa46so363037a34.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733950519; x=1734555319; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uaEMmQKe1eBEWaXARPDE8+THkZylgN8yfkMSg0+UhvI=;
        b=AYiKK+jJ/az7aaeTWOCYBM4v3KFL+b5u2VvytUCbTV7OQSR0S96Chx6a0nk4Bg5Soi
         emoFqlngYRp4mMBUVYXIhepj0jvABNMMiNobPIAWLl3u7N+ttyi1Rthv9laFoKnLYCna
         WnycJpeVDiCjO8V2rFKOJID7oOK32ZEEJtWxPJKhLUhfxwMFX7HoTEivZGIk/m3kYRY0
         48Ax4lFjudn9dlIssudfVhWpINJ//jh5MzRkJjNCQBdKYmzkEiGwfzSduWBbAeN7z5zk
         6nl+bHnvofRWPFrmHXTgGi9VGYkt5f6qNuH8tsVcEup3Njg4Km7EKoMsWdvcypg7Rh8D
         yQzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733950519; x=1734555319;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uaEMmQKe1eBEWaXARPDE8+THkZylgN8yfkMSg0+UhvI=;
        b=MYYxDfHeQ2xrPGhel6+AbyCo41+7K9LSi7q897+RO1IMxiUQRnPZuUWxmFLX4D8K2i
         Cf6ihh83WyB5pY5vQ0jlps5Gra+T3NKtVg19Gfwzv8LJX/Qsz08YOaYQ/C3gcxjr09ij
         KVtJnh7E9Ts51kVyqzzS7ttEWaAZarv93ST9u508ZtG60NrKIkYktJKyPTjfQMNOC2lT
         FAvKHir5SoHh1f8c2SW7tfTKaK1WdfcgTVk3t7vuOvoXwrWoiPp5Sv3SlWuhDTphlD6R
         R5xbwbJdSMZ073F460E6LyoPuOkIQA1XF+NipS/tJTIuZAEj6+xlY11waku31v9NEats
         WqyQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8RALAFZnyCdC7ztTD4u4x6xltOi7ou4O+TpKbgYRKcRStmuxeHKhMCdaxmwnvLuxtWnRD8H0daZz2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9o2xdOa0PW+ekec+52KufpOJYLWT8DVDE5Ccj/sGafOvhEKoe
	/rGx745e8QxAuAQXqmvoAxm1sOzhmolKJuigalLrr2NU5LkuXejQFsAK1w1BqRI=
X-Gm-Gg: ASbGncvkwkszo7N2exhjIBW4PqyLuAOLnteywfVdE/Pmy47As2r8BJkt6F23H8FwhDC
	HzuhGGOO99E2CF3YVrlju5Gijx9ssDFeTVWIx/WfhlhfxLElGSWEXXD8bH6YlBcqm+yPGA6RoAc
	BIG72km5fUPX4Uv0P6TnLZbBnpM42llBVUOtx/cPewWW5+NpKwO76SLJ0spnm0gVELBn7Z02gIa
	5u2lOATaqzmQrgcwnWs8Y1i6VehqMdP9lJ5NmYtjZgn1aDq8Vb6pZFZkyZT214zH1e5CPylZEu1
	owdjLMgUVQ==
X-Google-Smtp-Source: AGHT+IGUzdKsvaTRtHxTiEWjKj3hLdxdeJfviWcxZcSQceDS7JqJbsC6BjcFiXkD92kELNmUCpnaNQ==
X-Received: by 2002:a05:6830:903:b0:71d:54cd:5289 with SMTP id 46e09a7af769-71e29c4298bmr622234a34.21.1733950518930;
        Wed, 11 Dec 2024 12:55:18 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71def651fb2sm1888288a34.27.2024.12.11.12.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 12:55:17 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Dec 2024 14:54:49 -0600
Subject: [PATCH v6 12/17] doc: iio: ad7944: describe offload support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-dlech-mainline-spi-engine-offload-2-v6-12-88ee574d5d03@baylibre.com>
References: <20241211-dlech-mainline-spi-engine-offload-2-v6-0-88ee574d5d03@baylibre.com>
In-Reply-To: <20241211-dlech-mainline-spi-engine-offload-2-v6-0-88ee574d5d03@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2

Add a section to the ad7944 documentation describing how to use the
driver with SPI offloading.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v6 changes: none

v5 changes: new patch in v5
---
 Documentation/iio/ad7944.rst | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/Documentation/iio/ad7944.rst b/Documentation/iio/ad7944.rst
index 0d26e56aba8862a8d2ff541012bb4681d05c7bb5..e6dbe4d7f58cffd9f700f931ad2641d336526129 100644
--- a/Documentation/iio/ad7944.rst
+++ b/Documentation/iio/ad7944.rst
@@ -46,6 +46,8 @@ CS mode, 3-wire, without busy indicator
 To select this mode in the device tree, set the ``adi,spi-mode`` property to
 ``"single"`` and omit the ``cnv-gpios`` property.
 
+This is the only wiring configuration supported when using `SPI offload support`_.
+
 CS mode, 4-wire, without busy indicator
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
@@ -106,7 +108,6 @@ Unimplemented features
 ----------------------
 
 - ``BUSY`` indication
-- ``TURBO`` mode
 
 
 Device attributes
@@ -147,6 +148,27 @@ AD7986 is a fully-differential ADC and has the following attributes:
 In "chain" mode, additional chips will appear as additional voltage input
 channels, e.g. ``in_voltage2-voltage3_raw``.
 
+SPI offload support
+===================
+
+To be able to achieve the maximum sample rate, the driver can be used with the
+`AXI SPI Engine`_ to provide SPI offload support.
+
+.. _AXI SPI Engine: http://analogdevicesinc.github.io/hdl/projects/pulsar_adc/index.html
+
+When SPI offload is being used, some attributes will be different.
+
+* ``trigger`` directory is removed.
+* ``in_voltage0_sampling_frequency`` attribute is added for setting the sample
+  rate.
+* ``in_voltage0_sampling_frequency_available`` attribute is added for querying
+  the max sample rate.
+* ``timestamp`` channel is removed.
+* Buffer data format may be different compared to when offload is not used,
+  e.g. the ``in_voltage0_type`` attribute.
+
+If the ``turbo-gpios`` property is present in the device tree, the driver will
+turn on TURBO during buffered reads and turn it off otherwise.
 
 Device buffers
 ==============

-- 
2.43.0


