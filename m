Return-Path: <devicetree+bounces-248376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8907CD1FF7
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 22:35:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8FFFA30A2187
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 21:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D765B34403D;
	Fri, 19 Dec 2025 21:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ST1yCF7g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com [209.85.210.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BBC3446DF
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 21:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766180019; cv=none; b=CFjetq0NyILNTVBEfs7CJOPZu49gfhziM/LIBl0CG8JyGy+5wV1A3JwduSaXH3ibyDC3Dkr01IO6UbSPQ7SRJyWGKxv7lmAamMj7gdCR4YghQrHcwSb/J6gsDc5dtwWoP1EpPF92GhNDFxyTERacgH10rbSeIs+p31CSm3mP+Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766180019; c=relaxed/simple;
	bh=aXmv3z0/ZmZ8Ofn+73gLo6clj9Ab1P+H1oMNVIM3T5w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RGxNTlwlsQ0rQAkG8f6fGbT4TqG8m/61yfIi6idHyPZOv0UG2fZ4MWwF7SQ4IvOuF3ScZVvqvDHpGBRX2iNm7osfmnrjrA3eRme8rnloRHpKLwbx87ImTZrDGBZAMGHv0nIghT8Lp37DNh/5Z4dt4hpUgG0d2QbqL474dF4Sojg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ST1yCF7g; arc=none smtp.client-ip=209.85.210.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f68.google.com with SMTP id 46e09a7af769-7c75dd36b1bso1617622a34.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1766180013; x=1766784813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eweM9jT54taVa0b1bGSFhKXxW1qHo1mGh87AZPt1Jc8=;
        b=ST1yCF7g+t4Bs3yMoDGwjx/XZ7N37nbRfgPYLpbP9cZAem7zVP1TXtRVcQJjG0nMeD
         9EI/fGKVr6swS5GVPoThrYF48O9J6fPq8FARYNsjkfXqwHS8pjIW3O2+SSOcR6/Ll81X
         XEGj0XGoVCxKbb12+Kcbw6eJ9GJXs7ERGZLrMdnQH74Rc8WiSXnqlD//U0tuU52LPg+Q
         kMty/Y9vd7wsql0IPZKDTUFgLEOKs0qjqb/ny9Q/z20u7VpgvbLohe+HFndMyeJmydBb
         vjmKpQAVXPOZmVHZJ2L5JztnZtxiCrw0IUhxN5b+Gdd+69zOZZfMROivQAMB9kACyQej
         acqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766180013; x=1766784813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eweM9jT54taVa0b1bGSFhKXxW1qHo1mGh87AZPt1Jc8=;
        b=mCl7nspxKiB2HKOjl0rYXmEq7CQVP2M43l6vHR3eRU0naT/ac+/FOrmr27uUu3TPQk
         r21mrPKBMEmZZN6JteA+V4MrlFwXASWQCGauVIGzuoUABOma14E3C7n3vl6PXlAemZVo
         jLZZBZwRcONoJi3aWpDcKnqb1X8CcVo/paOFKn2CTTlIqi3fZBjROk7QtW+Eoyy/c93U
         s1+hd2W+ETMEN012lWY4+2Qe24AAMaGVJrDF0f6PG4bgeTqh2b17zhNx/dy/Yw1qfVkD
         9COGmsRS+CAsBWKBiBzMiHy58g7vcGiuHcW3obDxzSn4l8RXtSaKcDpH2qIavVSROiRB
         jZtQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHb66t5XwyZVtHvPmGx4Tnmg8wlHfwpBiQjNJR61OHrswSjwkr+j2kBZlTYyisZwaDeTv3DdV02iNS@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu8xtPaXvTMH4PDAUEWiXJzsr6deeLyNn14TOLrPzn6xw+TDHr
	nSlZXBHo7SUNhaJgkPiXnFxQdugt5RrqmNw8uCmQHsInE90TCMaNA2/g+u1KQP43W1g=
X-Gm-Gg: AY/fxX7vi23fBBi3V7ykRUnzV/saYQYuuQmzQYFI5eONYwl9sS8TMGyDWicznX7Vtsf
	5hQDBQFLZlvhpbyqeDzIubUngY02fFQvRs7joonhJAhvPdJTi4DIJ9amM+h/mWPSWuA5Tpiwwlq
	nCiRuNBkRoFFNX6qlIjQa6DTHER/R6ESRG3L6jgpZxhVTBbFm/4b8sK4PCYrOWy2ua0fPLknNwX
	MWOBhMR/BJlUxEBP7ec4FJm2gJkpaFsnZ0Ndt9qw8WIe4NNRTV/8ek3F+xd+MOiqH+ALIwHjY+V
	DisVtErvhbLA2YXTMeL8rFaI/fu1NBQRCg7eLgnhmpyisMv7iUXEuIhkg2YpQuUGQO435qtfY/P
	Iw8b8JekET2X5kasN3m8XB/34xvNUCwBOEr42Rr4w7OEyyaYDnREAeKaSYUCTZgqKjsgfaAPQIZ
	JMrhQHvoTq+d0t+A==
X-Google-Smtp-Source: AGHT+IHPFvj1q6b2mgObZX2EPwKdIr9WKAX+NXfMIaaHSJz/qkfbu5KspscVUz1GusDDrfj5q+9c9g==
X-Received: by 2002:a05:6830:348e:b0:7c7:7099:97f4 with SMTP id 46e09a7af769-7cc66a0b759mr2556677a34.3.1766180012868;
        Fri, 19 Dec 2025 13:33:32 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:9b20:bac4:9680:435])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc667563ffsm2485045a34.13.2025.12.19.13.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 13:33:32 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 19 Dec 2025 15:32:13 -0600
Subject: [PATCH v4 5/9] spi: Documentation: add page on multi-lane support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-spi-add-multi-bus-support-v4-5-145dc5204cd8@baylibre.com>
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
In-Reply-To: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marcelo Schmitt <marcelo.schmitt@analog.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=8776; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=aXmv3z0/ZmZ8Ofn+73gLo6clj9Ab1P+H1oMNVIM3T5w=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpRcSEM0oStjcDbIK619jZO9EATivi9D0G3dcSV
 GNICFSEiX6JATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaUXEhAAKCRDCzCAB/wGP
 wCFsB/9QJ/fcbtVgn+HO+hBBx1tEvp5ySdzkcwkzDiGAssEzMNHo8uTKZmxJyoDtrUIBO+jsSdE
 j18VCARzcVSgwD2yDlewF6LxJiOEL1vj3sVhXGSOOPjm5/kpyLkYzNpebDkQ7CMDuZOfhPlUgPN
 EpHoL5AANmiK9C0Feq7jON7Y74OtA2FB/NlhTG43NUrYLvY5SgxXt/6bK42i1nelwsd723PeRHl
 dBthSlqkr7T93HuhQEnN9Lmpxkrq4ZiHaB7S3ADa9fI1iXPjt8lx0J4vig69hpN1wd/zzvIKTwT
 Bj0j+FWsVJo0uQhI7nDiHAhRnDxxN2aFz9QKDCVKlYoogykf
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add a new page to Documentation/spi/ describing how multi-lane SPI
support works. This is uncommon functionality so it deserves its own
documentation page.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
v4 changes:
* New patch in v4.
---
 Documentation/spi/index.rst               |   1 +
 Documentation/spi/multiple-data-lanes.rst | 217 ++++++++++++++++++++++++++++++
 2 files changed, 218 insertions(+)

diff --git a/Documentation/spi/index.rst b/Documentation/spi/index.rst
index 824ce42ed4f0..2c89b1ee39e2 100644
--- a/Documentation/spi/index.rst
+++ b/Documentation/spi/index.rst
@@ -9,6 +9,7 @@ Serial Peripheral Interface (SPI)
 
    spi-summary
    spidev
+   multiple-data-lanes
    butterfly
    spi-lm70llp
    spi-sc18is602
diff --git a/Documentation/spi/multiple-data-lanes.rst b/Documentation/spi/multiple-data-lanes.rst
new file mode 100644
index 000000000000..b267f31f0bc8
--- /dev/null
+++ b/Documentation/spi/multiple-data-lanes.rst
@@ -0,0 +1,217 @@
+====================================
+SPI devices with multiple data lanes
+====================================
+
+Some specialized SPI controllers and peripherals support multiple data lanes
+that allow reading more than one word at a time in parallel. This is different
+from dual/quad/octal SPI where multiple bits of a single word are transferred
+simultaneously.
+
+For example, controllers that support parallel flash memories have this feature
+as do some simultaneous-sampling ADCs where each channel has its own data lane.
+
+---------------------
+Describing the wiring
+---------------------
+
+The ``spi-tx-bus-width`` and ``spi-rx-bus-width`` properties in the devicetree
+are used to describe how many data lanes are connected between the controller
+and how wide each lane is. The number of items in the array indicates how many
+lanes there are, and the value of each item indicates how many bits wide that
+lane is.
+
+For example, a dual-simultaneous-sampling ADC with two 4-bit lanes might be
+wired up like this::
+
+    +--------------+    +----------+
+    | SPI          |    | AD4630   |
+    | Controller   |    | ADC      |
+    |              |    |          |
+    |          CS0 |--->| CS       |
+    |          SCK |--->| SCK      |
+    |          SDO |--->| SDI      |
+    |              |    |          |
+    |        SDIA0 |<---| SDOA0    |
+    |        SDIA1 |<---| SDOA1    |
+    |        SDIA2 |<---| SDOA2    |
+    |        SDIA3 |<---| SDOA3    |
+    |              |    |          |
+    |        SDIB0 |<---| SDOB0    |
+    |        SDIB1 |<---| SDOB1    |
+    |        SDIB2 |<---| SDOB2    |
+    |        SDIB3 |<---| SDOB3    |
+    |              |    |          |
+    +--------------+    +----------+
+
+It is described in a devicetree like this::
+
+    spi {
+        compatible = "my,spi-controller";
+
+        ...
+
+        adc@0 {
+            compatible = "adi,ad4630";
+            reg = <0>;
+            ...
+            spi-rx-bus-width = <4>, <4>; /* 2 lanes of 4 bits each */
+            ...
+        };
+    };
+
+In most cases, lanes will be wired up symmetrically (A to A, B to B, etc). If
+this isn't the case, extra ``spi-rx-bus-width`` and ``spi-tx-bus-width``
+properties are needed to provide a mapping between controller lanes and the
+physical lane wires.
+
+Here is an example where a multi-lane SPI controller has each lane wired to
+separate single-lane peripherals::
+
+    +--------------+    +----------+
+    | SPI          |    | Thing 1  |
+    | Controller   |    |          |
+    |              |    |          |
+    |          CS0 |--->| CS       |
+    |         SDO0 |--->| SDI      |
+    |         SDI0 |<---| SDO      |
+    |        SCLK0 |--->| SCLK     |
+    |              |    |          |
+    |              |    +----------+
+    |              |
+    |              |    +----------+
+    |              |    | Thing 2  |
+    |              |    |          |
+    |          CS1 |--->| CS       |
+    |         SDO1 |--->| SDI      |
+    |         SDI1 |<---| SDO      |
+    |        SCLK1 |--->| SCLK     |
+    |              |    |          |
+    +--------------+    +----------+
+
+This is described in a devicetree like this::
+
+    spi {
+        compatible = "my,spi-controller";
+
+        ...
+
+        thing1@0 {
+            compatible = "my,thing1";
+            reg = <0>;
+            ...
+        };
+
+        thing2@1 {
+            compatible = "my,thing2";
+            reg = <1>;
+            ...
+            spi-tx-lane-map = <1>; /* lane 0 is not used, lane 1 is used for tx wire */
+            spi-rx-lane-map = <1>; /* lane 0 is not used, lane 1 is used for rx wire */
+            ...
+        };
+    };
+
+
+The default values of ``spi-rx-bus-width`` and ``spi-tx-bus-width`` are ``<1>``,
+so these properties can still be omitted even when ``spi-rx-lane-map`` and
+``spi-tx-lane-map`` are used.
+
+----------------------------
+Usage in a peripheral driver
+----------------------------
+
+These types of SPI controllers generally do not support arbitrary use of the
+multiple lanes. Instead, they operate in one of a few defined modes. Peripheral
+drivers should set the :c:type:`struct spi_transfer.multi_lane_mode <spi_transfer>`
+field to indicate which mode they want to use for a given transfer.
+
+The possible values for this field have the following semantics:
+
+- :c:macro:`SPI_MULTI_BUS_MODE_SINGLE`: Only use the first lane. Other lanes are
+    ignored. This means that it is operating just like a conventional SPI
+    peripheral. This is the default, so it does not need to be explicitly set.
+
+    Example::
+
+        tx_buf[0] = 0x88;
+
+        struct spi_transfer xfer = {
+            .tx_buf = tx_buf,
+            .len = 1,
+        };
+
+        spi_sync_transfer(spi, &xfer, 1);
+
+    Assuming the controller is sending the MSB first, the sequence of bits
+    sent over the tx wire would be (right-most bit is sent first)::
+
+        controller    > data bits >     peripheral
+        ----------   ----------------   ----------
+            SDO 0    0-0-0-1-0-0-0-1    SDI 0
+
+- :c:macro:`SPI_MULTI_BUS_MODE_MIRROR`: Send a single data word over all of the
+    lanes at the same time. This only makes sense for writes and not
+    for reads.
+
+    Example::
+
+        tx_buf[0] = 0x88;
+
+        struct spi_transfer xfer = {
+            .tx_buf = tx_buf,
+            .len = 1,
+            .multi_lane_mode = SPI_MULTI_BUS_MODE_MIRROR,
+        };
+
+        spi_sync_transfer(spi, &xfer, 1);
+
+    The data is mirrored on each tx wire::
+
+        controller    > data bits >     peripheral
+        ----------   ----------------   ----------
+            SDO 0    0-0-0-1-0-0-0-1    SDI 0
+            SDO 1    0-0-0-1-0-0-0-1    SDI 1
+
+- :c:macro:`SPI_MULTI_BUS_MODE_STRIPE`: Send or receive two different data words
+    at the same time, one on each lane. This means that the buffer needs to be
+    sized to hold data for all lanes. Data is interleaved in the buffer, with
+    the first word corresponding to lane 0, the second to lane 1, and so on.
+    Once the last lane is used, the next word in the buffer corresponds to lane
+    0 again. Accordingly, the buffer size must be a multiple of the number of
+    lanes. This mode works for both reads and writes.
+
+    Example::
+
+        struct spi_transfer xfer = {
+            .rx_buf = rx_buf,
+            .len = 2,
+            .multi_lane_mode = SPI_MULTI_BUS_MODE_STRIPE,
+        };
+
+        spi_sync_transfer(spi, &xfer, 1);
+
+    Each tx wire has a different data word sent simultaneously::
+
+        controller    < data bits <     peripheral
+        ----------   ----------------   ----------
+            SDI 0    0-0-0-1-0-0-0-1    SDO 0
+            SDI 1    1-0-0-0-1-0-0-0    SDO 1
+
+    After the transfer, ``rx_buf[0] == 0x11`` (word from SDO 0) and
+    ``rx_buf[1] == 0x88`` (word from SDO 1).
+
+
+-----------------------------
+SPI controller driver support
+-----------------------------
+
+To support multiple data lanes, SPI controller drivers need to set
+:c:type:`struct spi_controller.num_data_lanes <spi_controller>` to a value
+greater than 1.
+
+Then the part of the driver that handles SPI transfers needs to check the
+:c:type:`struct spi_transfer.multi_lane_mode <spi_transfer>` field and implement
+the appropriate behavior for each supported mode and return an error for
+unsupported modes.
+
+The core SPI code should handle the rest.

-- 
2.43.0


