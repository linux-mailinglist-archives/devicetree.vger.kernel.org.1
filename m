Return-Path: <devicetree+bounces-87393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3DE939612
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 00:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13E26B220B1
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 22:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DDDA47A62;
	Mon, 22 Jul 2024 22:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MKnS9PXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D536E44C9B
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 22:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721685689; cv=none; b=eAQb7hnGMwg/sojI5qy1D56r7UcpKbQaKtAF5jvfHX5fMhkDjn3w/BbhyDk+j9e64JoTK6BTfyfgaBUfpVW1d15ewImZYrVOQ22/5NFmVn/fDoVPNPfSg1kzHucptZxfDdyiTxclh+RhJ2st3ok5VtwPBtSqkVhPqlIiVd2oOlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721685689; c=relaxed/simple;
	bh=wulqRuubMrgRAM7cMPkpHvYollCniUKOOXs7X5dxBfI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jNvnmT+DRac9CbFv7iZ1JtjiTVUZ8IuzuF6D+q1yM0ARMpwzq/zqVZb4bCggNobS5P3JsQqCzY6+WJpXINZJegA3uy3DRF7TbYbzHtpFKzqQjSB/3PaaUo7fgpC8Bq929DGs1isr+tVceFpFdhi99WPlzTXkVm0uq5SRhdkF7wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MKnS9PXz; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7039e4a4a03so2711116a34.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 15:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721685687; x=1722290487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ja5JNhTBrJAtUikvnEnwKbaUm2FfY83ptA2bQUTuqEw=;
        b=MKnS9PXzhioTmGHpkDNWAw8tFQA+5qLpn1Kjz6XRFIPRWrMxKyfGugbzWGu95JtTcK
         fkmD89klXmOD+aN/s4fBEEIqCjtaKqCvCb+I8HUb0WhkPeHgDGiesUNHA6u2jYwk/aXM
         0uuHwUvVUQ1yi9BV3lDHL1atL+kIcZh9wrWpvzIxfen8nav8Py6Mdcp1ggTleCiS5RuJ
         chaslxdIcS7xrQFliFSpFb7uCuPojalrIH3boIyn2pilFbwpbFtQDfaVbfIOINkHV53g
         C5PwOFqQl+H/SDnPGqY0ziVxnIr/nca0fKG3IqMC2VB31K3HmWMaBZ2mXCSk7E80rFt4
         KASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721685687; x=1722290487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ja5JNhTBrJAtUikvnEnwKbaUm2FfY83ptA2bQUTuqEw=;
        b=h+spA0lYA/siNSDF0vMyKSx1O8tikGHIEh5OEu4p8Wjip3NILyiRrq3NZ3T+R2gY2B
         P0fV0LFTvwhSw4UM8t7hw0m2gpyAg92YAO39s09Ky75v25gXAc86VRvZza3mqeekhD1c
         r6KUtES1DhugMHK6DWNEWnZulQEj9ZDzo3iGfNDQJrc5Y8maZqaaWt1+/4ORw0hldOEr
         DihqOuWwzJGZmHt9qVCQcBQT2vlL3VUUqgNU2GG41BCxQwwRu3N84NE5pGpMj0Nk+9fO
         Z+MO6pOEJ0aAOziM7ZwPh4AoY5Ph1UM1PjrUK+ord2iu53eGWuoodhZl8KjFRAt8pIOy
         CbTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOx18pIelwGr45CrHLjsvp06a3NsBFh0vWLX6Nv22YBj/x7JO8hQ4nMkjIsYJjjWBzVqc6BhSVW7M/V86P56/eDEOREYcCUoKVPQ==
X-Gm-Message-State: AOJu0YxA5KIGat6eI8nZgO7cxojLH4ms3lLTyGIo+t0KhydoNyzq42bz
	LpcdRKBZtSyneRi/0/GccloHO9s8O5rrOmbrP4ybwZgHhjg16JPwUH2DzPMqgsA=
X-Google-Smtp-Source: AGHT+IG+ELjG5K5NexgQuh6kX11Z7bpUaRB99zGM4WXSrAFQFtdiLR6aW3LuDQ0CxXhP8HJIaai2rA==
X-Received: by 2002:a05:6830:6f4b:b0:703:ba24:7320 with SMTP id 46e09a7af769-708fdb0c45cmr11516484a34.10.1721685686745;
        Mon, 22 Jul 2024 15:01:26 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-708f60a55e1sm1719911a34.11.2024.07.22.15.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 15:01:26 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: Mark Brown <broonie@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	David Jander <david@protonic.nl>,
	Martin Sperl <kernel@martin.sperl.org>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH RFC v3 1/9] spi: dt-bindings: add spi-offload properties
Date: Mon, 22 Jul 2024 16:57:08 -0500
Message-ID: <20240722-dlech-mainline-spi-engine-offload-2-v3-1-7420e45df69b@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240722-dlech-mainline-spi-engine-offload-2-v3-0-7420e45df69b@baylibre.com>
References: <20240722-dlech-mainline-spi-engine-offload-2-v3-0-7420e45df69b@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.14.0
Content-Transfer-Encoding: 8bit

This adds a new provider/consumer property pair to the generic SPI
bindings for use with peripherals connected to controllers that support
offloading.

Here, offloading means that the controller has the ability to perform
SPI transactions without any CPU intervention in some shape or form.

The spi-offloads property will be used to assign controller offload
resources to each peripheral that needs them. What these resources are
will be defined by each specific controller binding by specifying the
value of the #spi-offload-cells property.

SPI peripherals that use multiple offload instances at the same time
for different functions can describe the functions using the
spi-offload-names property, for example, for a SPI flash memory, this
might be "read", "erase" and "write" functions.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes:
* Added #spi-offload-cells property to the controller binding.
* Changed spi-offloads to phandle-array.
* Added spi-offload-names property.

v2 changes:

In v1, instead of generic SPI bindings, there were only controller-
specific bindings, so this is a new patch.
---
 Documentation/devicetree/bindings/spi/spi-controller.yaml     |  5 +++++
 .../devicetree/bindings/spi/spi-peripheral-props.yaml         | 11 +++++++++++
 2 files changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
index 093150c0cb87..0af9cce80be9 100644
--- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -105,6 +105,11 @@ properties:
     required:
       - compatible
 
+  '#spi-offload-cells':
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Number of cells in a SPI offload specifier.
+
 patternProperties:
   "^.*@[0-9a-f]+$":
     type: object
diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
index 0bb443b8decd..e27577bdae48 100644
--- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
@@ -113,6 +113,17 @@ properties:
     minItems: 2
     maxItems: 4
 
+  spi-offloads:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Array of SPI offload instances that are used by the peripheral.
+
+  spi-offload-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      Describes the function of each offload instance. Can be omitted if there
+      is only one item allowed in the spi-offloads array.
+
   st,spi-midi-ns:
     description: |
       Only for STM32H7, (Master Inter-Data Idleness) minimum time

-- 
2.43.0


