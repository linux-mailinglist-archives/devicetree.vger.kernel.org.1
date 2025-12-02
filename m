Return-Path: <devicetree+bounces-243552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EAFC99D88
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 03:21:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6084F344FCC
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 02:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0BC3247291;
	Tue,  2 Dec 2025 02:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KJPd7SWq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968AB19C546
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 02:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764642102; cv=none; b=FO5DbBSaI/rg/ZLhYp90KhzjcH8aOz5YhbsWKB9DhO49CNr7Y/fNLBJ23vR6QgeI6nL1GfFueG8Vbcyc3cmPe5/q8gT+uxRzREOe51bxRKnLhsSLJHMqqTxvGjO4OH8453fbS+4A5saTxU2b8phHUyrteT0yXkdnX1YnH6Elx4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764642102; c=relaxed/simple;
	bh=NS5ztHVEE3daR7QOnKdCSjAlnqaveKIaw4526zxFkaE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qDC7RImg/IVMLPbqGIQpg5guGDmuIZ7WVpmYxu3FKeyP2pOmyxVZv4wYjv1X2TJWhw2dbwdUux/LSiYItvd1i6VYLptqPVPu11irtJAFQcpHwFTniue7sqTrR6SfJHJxH2iIZtbQerFRBWejCL6/PPywD09nxTWIZLqNTpo8a1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KJPd7SWq; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7c6e815310aso2960918a34.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 18:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764642099; x=1765246899; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=45ERR4q49e3xNwnU7PZdNmSUSh8efvB5uvCkOoVKF/I=;
        b=KJPd7SWq0v7iOidLhhp00UBMGgxUzvavT792TWAsKCzY40WzIPPjfIwX7MJYDaqm1N
         tEsa3b0xyuO+nERsreeCJoYpDRil93D7rjDwJrdoHdquBbenS0P2xCrCOsg3fx7B1u5N
         ToRB2H2+ov19onYPWQux4ylec7tVzNshfG7UqvDQRKTLRUnl7DSqUESR4Ytf2k0RTjnW
         pbw/PneapVxyKDqA76TO6sTOoQH5Ja6V+3TIhM3Xs9rk9iSheUsm0jL/M790Mw8R6pmI
         G9ySYfOEBQYP7mT/yDmHbj5I97YIjOZWyeneNaEdVyq1hh5i1AonsQqn7H3bYoz4NtiS
         4N+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764642099; x=1765246899;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=45ERR4q49e3xNwnU7PZdNmSUSh8efvB5uvCkOoVKF/I=;
        b=KuIouE5ItQ8wc+Ld0+cHFQHErN1V01jwf1do4NyFKrPKjOGpV0A0M75zdRI+F8cFUq
         dSq99pN1wjAkgcH+HhEZinwj1rUk1gpwbUiKMeYsLM6d5jeBaOqiMmExgxZ/D0UssaCV
         DCcnoAvHeiBIuV1UHjit4sw1Wv8whyZ/jDGZhaf5nDNVVwHSoMvHKK7K+3mCTErEVVoF
         fCJ5HwzMzCAvtYc1U6GWYmZE91bDet2g9OLRY3SQKIYoQqHwiVKihCH91qmDeoXQJa+e
         C0NuU34PfWQJRGVtb7443G7DAgugTDFfzAEEjFB/owy3Bpjg2TnzgpwCLg7fcYtHsrGf
         0t7Q==
X-Forwarded-Encrypted: i=1; AJvYcCV6aCzMl14vclctAex//9x+NHPKV4zmY4wpfvGz5FsG9xLLpisxws8e9WHZosQF4gtI3RzEmuoQIjQG@vger.kernel.org
X-Gm-Message-State: AOJu0YwUbPTlWKEDsyCrbZ19OAmGyh5bxRQBj4GJ4UMlX3K9fxcl8YY3
	UIDHqi5ygIcdVklJScEhIKSA7mtijSlYpm3Sd3gvHiwul3U0Xu9U8JSb41J4PBG1+2oFrWgoa3C
	Q55LF
X-Gm-Gg: ASbGncunfgOM384aApT5W2cFtUq/t4mdcetSlO9pJBOse5UkFmJwjSzfdjotsjDP3os
	zKsHZjrvSIalIVr8tvQq0GORIhqB5khzhreOoxh/GUBpIvXyEPJqHDq5aPl8e5dfj06Ea6XMZtQ
	MP/nz5LRAcCYBUueHCRM64t3oS3h7zrFU/+esVOTiGwK7a0AwTDderrcQY0AIEY7sQZA94avOi/
	DC+XipkJnvotp48b05E1l6hAjWyg9Jm1iC3NB2z2gkSMRiUbpnisZEEIQOeajSWv0R2NMTfLuuo
	vqXoeu0nbyI6bUcf+mEum30zN43YO3H/Ck5Z4bubuGnh6zmeuizEsKWK7RtpE+lmUog9H8fdThG
	1IMlAO6JPfmRF/T1OHd+8AzUcRgyHDzXJOfRs4FP7m6E2MS8Wz1f08RtIbdc16eDuvvlkzhb7cF
	jD8fkFkQUIC6/mIg==
X-Google-Smtp-Source: AGHT+IE895OTaG0bvOe7QOCPtxy+f37X1bAtG/TWt8myxIe+w+0R3q49vDuPuUwHH9cqz5Ne31lokQ==
X-Received: by 2002:a05:6808:3195:b0:450:c752:7a73 with SMTP id 5614622812f47-451128e0ea9mr17969662b6e.16.1764642098565;
        Mon, 01 Dec 2025 18:21:38 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:b67b:16c:f7ae:4908])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3f0dca0475esm6651747fac.1.2025.12.01.18.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 18:21:38 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 0/7] spi: add multi-lane support
Date: Mon, 01 Dec 2025 20:20:38 -0600
Message-Id: <20251201-spi-add-multi-bus-support-v3-0-34e05791de83@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPZMLmkC/32OS47CMBBErxJ5TY/cThwSVnOPEQs77kBL5IPtR
 CCUu2PMYiQWLKtb9V49RCDPFMSheAhPKweexhTKXSG6sxlPBOxSFkoqLRvUEGYG4xwMyyUy2CV
 AWOZ58hHQltpJ3emqr0Xqz556vmX23/GdPV2XpIjvo7AmEHTTMHA8FCPdIrw0iHIvXoUzhzj5e
 962Ym7kv8Tqy4wVQSZO23SoXN3r/tea+4Wtp5+kyuBV/cOS7BtMJVhjWlW3ZYmVaz9g27Y9AZk
 FOK1DAQAA
X-Change-ID: 20250815-spi-add-multi-bus-support-1b35d05c54f6
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
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4340; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=NS5ztHVEE3daR7QOnKdCSjAlnqaveKIaw4526zxFkaE=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpLkz64N+nac0VgzF9b75cT0+5CMLs+RNGsd99V
 x20Y1APZ+qJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaS5M+gAKCRDCzCAB/wGP
 wHKkB/0btUPVjtir1cnhZVR1WcdWT1JO7f+0cXcTJH+rP3/IU2f0fu57H2LwXW02TE9cnjdg8MR
 JrS9HqDyWJ1gwy0n2EU95E8RhtRLHqPn5cnwBMKU6Jt6eDc6wFIuhCREIo9j4OqiIpqsnLF22F3
 BAFp9ZBGO+UjOq0sICLB1qN6uj//AqROm+y3aDekQ1FdDq3fUi4SYPWnWI/UZsPLoOE+3uryJ4F
 eBIMy54nxnw92i+XFIEl9nVY/VBiCTJ466JmIFHqk5s9GTDqFJacj0eWyCw518eWChhsn8lzVjo
 SjmVEsDYjJP2wumZ9slyc1U11S/m0lSI+4vTk9rX6kp+pkDq
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

This series is adding support for SPI controllers and peripherals that
have multiple SPI data lanes (data lanes being independent sets of
SDI/SDO lines, each with their own serializer/deserializer).

This series covers this specific use case:

+--------------+    +---------+
| SPI          |    | SPI     |
| Controller   |    | ADC     |
|              |    |         |
|          CS0 |--->| CS      |
|         SCLK |--->| SCLK    |
|          SDO |--->| SDI     |
|         SDI0 |<---| SDOA    |
|         SDI1 |<---| SDOB    |
|         SDI2 |<---| SDOC    |
|         SDI3 |<---| SDOD    |
+--------------+     +--------+

The ADC is a simultaneous sampling ADC that can convert 4 samples at the
same time. It has 4 data output lines (SDOA-D) that each contain the
data of one of the 4 channels. So it requires a SPI controller with 4
separate deserializers in order to receive all of the information at the
same time.

This should also work for the use case in [1] as well. (Some of the
patches in this series were already submitted there). In that case the
SPI controller is used kind of like it is two separate SPI controllers,
each with its own chip select, clock, and data lines.

[1]: https://lore.kernel.org/linux-spi/20250616220054.3968946-1-sean.anderson@linux.dev/

The DT bindings are a fairly straight-forward mapping of which pins on
the peripheral are connected to which pins on the controller. The SPI
core code parses this and makes the information available to drivers.
When a peripheral driver sees that multiple data lanes are wired up, it
can chose to use them when sending messages.

The SPI message API is a bit higher-level than just specifying the
number of data lines for a SPI transfer though. I did some research on
other SPI controllers that have this feature. They tend to be the kind
meant for connecting to two flash memory chips at the same time but can
be used more generically as well. They generally have the option to
either use one lane at a time (Sean's use case), or can mirror the same
data on multiple lanes (no users of this yet) or can perform striping
of a single data FIFO/DMA stream to/from the two lanes (our use case).

For now, the API assumes that if you want to do mirror/striping, then
you want to use all available data lanes. Otherwise, it just uses the
first data lane for "normal" SPI transfers.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
Changes in v3:
- Use existing data-lanes devicetree property name instead of creating a
  new one.
- Renamed "buses" to "lanes" everywhere to match the devicetree property
  name.
- Clarified bindings description about how to specify data lanes.
- Link to v2: https://lore.kernel.org/r/20251107-spi-add-multi-bus-support-v2-0-8a92693314d9@baylibre.com

Changes in v2:
- Renamed devicetree property spi-buses to spi-data-buses. (Driver code
  was already using spi->data_buses, so it matches).
- Fixed a small bug in the AXI ADC driver changes.
- Moved one line of code in the ADC driver changes.
- Link to v1: https://lore.kernel.org/r/20251014-spi-add-multi-bus-support-v1-0-2098c12d6f5f@baylibre.com

---
David Lechner (7):
      spi: dt-bindings: Add data-lanes property
      spi: Support controllers with multiple data lanes
      spi: add multi_lane_mode field to struct spi_transfer
      spi: axi-spi-engine: support SPI_MULTI_LANE_MODE_STRIPE
      dt-bindings: iio: adc: adi,ad7380: add spi-lanes property
      iio: adc: ad7380: Add support for multiple SPI lanes
      dt-bindings: iio: adc: adi,ad4030: add data-lanes property

 .../devicetree/bindings/iio/adc/adi,ad4030.yaml    |  36 ++++++
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    |  22 ++++
 .../bindings/spi/spi-peripheral-props.yaml         |  14 +++
 drivers/iio/adc/ad7380.c                           |  42 ++++---
 drivers/spi/spi-axi-spi-engine.c                   | 128 ++++++++++++++++++++-
 drivers/spi/spi.c                                  |  28 ++++-
 include/linux/spi/spi.h                            |  23 ++++
 7 files changed, 275 insertions(+), 18 deletions(-)
---
base-commit: 1a26618e7466b8d825989201086c235e76aa999a
change-id: 20250815-spi-add-multi-bus-support-1b35d05c54f6

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


