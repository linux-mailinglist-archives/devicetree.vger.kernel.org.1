Return-Path: <devicetree+bounces-254135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1566DD148AB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 162713112E69
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF75737F752;
	Mon, 12 Jan 2026 17:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hGlKkMVr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com [209.85.161.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE8B374183
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768240002; cv=none; b=uNNJq+IvYci1YJCT/6YMpZUZtl+QDdJx+K8FK64Ncpat9CB6zguPVAaX6/ac8djqzSYceUtMGKFgwDeH/MwijNn7NlyUtuuiah620mTsFGXGPAPm8a/6XDikfr4jOGlbGI7ukpdaP/jxJeWpbDqoKt7rSXKFohTfaDMzPH+dwUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768240002; c=relaxed/simple;
	bh=a2h/fOYEq2tHmk4j5Ng4fvzf5lb3rYP6sEUcQWev+JY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dYn6JokYXeK5/Ghhg3YsrW0iaFVDxfdoJJKcdK3gU77qmUEOjargVntSIA/Ld6/zSwjUfneYzXD8242lSBe/4lqr4xl7jUqcPQ7aVxX2KwZ2xxTnKIm+GdS2XVnt6UW60V3xXAo/IPyJzOUT/iWEgKw70yTv7vNq124b94dB1Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hGlKkMVr; arc=none smtp.client-ip=209.85.161.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f65.google.com with SMTP id 006d021491bc7-65f65bf8c70so3465359eaf.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768239995; x=1768844795; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=htu/zw5OLWmJkwIgtxJglW814wCvxkVA4XGKDTtuS3k=;
        b=hGlKkMVr8641OH4ZYK2KIeu3YDckEArdbrcAsxVXiMfftXWnKVQApNBaC16Rooeoga
         4RHrbX4KuRY8ZYdEkxgK20CNOKjvPqgjGmH9LP1q5M3ZNCgAtElWpxeQ1UgQsLAabuOQ
         2WfTSh9tPvuf6zz01fyInVpJ9XyVl5YcWnUyLfw7BZ7OjPjTvGrTWI8xXi1w3B5hJGL9
         P6HBL4c2qkQ91LoDUDVPy5UNeDKIbos+wXgaBDQrVNKZZmRVEoGoijuYUOHcAh4TL9nM
         EmnPxnaG7NLP3sIqk9xq0+7oYJfWMMBTWvNyghziMI8hwpl6crMLntlYrtlF/SLC97rq
         sxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768239995; x=1768844795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=htu/zw5OLWmJkwIgtxJglW814wCvxkVA4XGKDTtuS3k=;
        b=YrURggGzF4xNbHpUo+L+Q20hKl44+H/ot3kA1YIoKS2Vhnpw7yKhhkwDJ0i0lu4/43
         zOgXMyu51kJJzY+C97lfRXXL63r/qr7l02UJiYH7NRVHOZ16RqVH8ZHNCwp2ieSS+vQj
         Wr5ZtQv2fijtKdoFSUtdtuOzRzLN8S951vkB+xlLBy35JSCzzVz02hKMrpXiypLzmLJE
         2UPpWRJruAsLKogykp21Mq5thm5jLQAJKu8uTIoGtxOYkCrJt79kpujgr2owC/N4Em9q
         TwRENRfxpZ4+OPoNS3SVDWwz192UYlh1/afX2NR8qJuKQNeLJppT57Ae2Xvcw8SbcFpX
         2BxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhuZLBas0o2IFQ6bHnavrkEHZEk+rCAP6gO3ZNBx6b/SMQvyO8Va0ICatxOS+divi+WsiQQmCtEqrg@vger.kernel.org
X-Gm-Message-State: AOJu0YzC+oUzfsqlGzPvtj4Wd6+TX3khY31ankG8Lr1vnd0tHxvByjfe
	2yaBNCGVUlt+Y0QebRJZgRf6hrQ8nCGxMmPmJYbaW4iLX3cloOq+cBQAI/XBxSHrUrQ=
X-Gm-Gg: AY/fxX6SCVLMePDjkoG4TsQ9CplRU4xQOVezDdHY9+oB8YGzfEg6WIKNqLhZ+g5G9gU
	Pk3Vh/Wh1a6/1gsp1Ewr5k6PRfyrJjhH+L4fTbyRfHgFPywotntdc/jJ3hANbQjYyK60+1JRyfO
	TdrciArYzfpSfXDwLNDEPfBtnUCRhyBRU+jULRnU8t2XZ6slfocVaSD/uM3pYgT50vUMwEU27GD
	zwepriOaXCpIC2Jas8Ld81b3OcgJmOkKe0WX5SsE+txaBHe71QsBO0ibxrMv4p2DBaKz7Oegwpu
	vmIUA17IHFMkloDFwYgGDhPKxl9ZzJ/dUQ5b77DCA8r7texa+JBB8Q3hp6afsLO8mOwTUMfpqzK
	IGprVES2HCazyqfOUt5c5iINhbbElDvyHBjMRf0aRpk1rhr+UOWx4gQLYQaY5UWUjvdbNHheXMC
	DLHp0FCVb7Q64idEU=
X-Google-Smtp-Source: AGHT+IEsWYLu6pqYeanvgU7vhm+Cs86dIdg0LnLb02u7506jONyCOU+e/1BdpsQ8rWl9aZQ8+Dco7A==
X-Received: by 2002:a05:6820:151b:b0:659:9a49:8f3a with SMTP id 006d021491bc7-65f550bd62bmr8457919eaf.75.1768239995446;
        Mon, 12 Jan 2026 09:46:35 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:6b4b:49b3:cce5:b58f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa4de40bfsm12126941fac.5.2026.01.12.09.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 09:46:35 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 12 Jan 2026 11:45:23 -0600
Subject: [PATCH v5 5/9] spi: Documentation: add page on multi-lane support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-spi-add-multi-bus-support-v5-5-295f4f09f6ba@baylibre.com>
References: <20260112-spi-add-multi-bus-support-v5-0-295f4f09f6ba@baylibre.com>
In-Reply-To: <20260112-spi-add-multi-bus-support-v5-0-295f4f09f6ba@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=8894; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=a2h/fOYEq2tHmk4j5Ng4fvzf5lb3rYP6sEUcQWev+JY=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpZTNSdmqzwMHEVKY6ZDxmyu5vQY47afDKCPc1E
 9LIjoiEid2JATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaWUzUgAKCRDCzCAB/wGP
 wN7PCACOV+LRqhCDfqxMezSqt75tdAENJoEtOlzUdF3R6x8OW7UwGtnb6g27AF6OypV06Yf04qx
 SYD7mT5dy4n+a0TXKCCnXDl1tya+2P9r04VOsgIIBm8PcrtA8R8VBpuhGF1KHHD2iTzSCLz+5rG
 QDu2+6E2kNblRqXROrJAYMbKxCNpxsZ5vFBV5BJCE90DWAJn4OPCAlvVlW1TiKPF3wweaYFBu9A
 VGNvM4Y4ivD6XoGmTr7RRi6llhcqG7ewu/shsbTHOatyHF5kyBH3Rp2dBEsjtAQHW0XAbvqg22l
 yf7tw0AINV6U/4bSTtc/YhH6dlDoORk8uyALjC8vqOF8KENz
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add a new page to Documentation/spi/ describing how multi-lane SPI
support works. This is uncommon functionality so it deserves its own
documentation page.

Reviewed-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v5 changes:
* Fix tx/rx typo in stripe mode example.

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
index 000000000000..96d6997ecf77
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
+    Each rx wire has a different data word sent simultaneously::
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


