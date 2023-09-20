Return-Path: <devicetree+bounces-1851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AECF7A89F9
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:03:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 438AA1C20A32
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73A3E3E493;
	Wed, 20 Sep 2023 17:03:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2E43E48F
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:03:24 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67B84A9
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 10:03:21 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-401b393ddd2so514315e9.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 10:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695229400; x=1695834200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pzNel1zOyPD8jvFnOCDGMVW3XENbkKI8LKl3iDeBXhU=;
        b=ozS/Kh09apWYpNP/gakkPbfX1ycxUwxHt6Cmi0RUd6fuD3UQqxjAtAOm9sbttnrQto
         Lsf+H/RYhmrqIyulWmFBc8xsDwzujdi1n5QEl+mdEE0GOKPOFvjzZfUFHTxk4jLkQoAS
         z4NNNc7cRVwE5MjHcFyLMLoHHqv4rEL/QKoKRO2Bpusq9cTyGdsQu2eeF+T7fXBmv60o
         nJ4YV+J8vXPPIadv9+AninTbH7TGyBNpBOYUqIZ5YuitZLOmKp8RNN/eGlLrfRDWEPBM
         +ZKVRd+dJ2Ttqoh17CvI34c3XlqPyYbaHYls+CKnEVI53ZHupoizo7375QLy+p6UC2FG
         ldSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695229400; x=1695834200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pzNel1zOyPD8jvFnOCDGMVW3XENbkKI8LKl3iDeBXhU=;
        b=jB/i8/fBoHWkbtfs5VMOi73aiVDLoDDIejgOXc38unDbqF+I1HZqf4Ge1tWF8NbwYC
         4AprcQXp1Ts0qb99RgwELjto30wpI8C5xuoYJ3fAqep8LK0QNv1dHC2CQMQ5jKrssgus
         Sk/fD9zlY8GR1dOSKydKRVQkSR6t+KtfnTJyyhVMZOyQacI6TIOiR1TvFxR5Iy+cqGF3
         Kz6tPogW1/pd+c+Hi+FNCMsZK9h6lOPxRimb7qjgpy+mQ4gF1g3QDk7n6skMNcuUhWof
         zmD5DeD9yGmAYF0bOjVtIHo3HpBTE5bdPaes01d8SRyHk/CDgHBxkN1bPJfFLOXCm2+t
         b+gg==
X-Gm-Message-State: AOJu0YxbtwyHPeLSM7ypxD2u3lfidTg+osAUIRqxkylG+MM4jNohn1cj
	XAToIQCd+1tXAxo0VBa7XCrBOvuUdWWGFGDPkca723YHKV8=
X-Google-Smtp-Source: AGHT+IGLyeIpQl9NNPRbLsBra2rs2kV6nI+E9NrsPDtsxmGqu6O9tusTkTI8Yb9Uk9XuYyYnXwOByw==
X-Received: by 2002:a5d:6282:0:b0:321:4ca9:ee86 with SMTP id k2-20020a5d6282000000b003214ca9ee86mr3182467wru.53.1695229398985;
        Wed, 20 Sep 2023 10:03:18 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id g10-20020adff3ca000000b003200c918c81sm11221089wrp.112.2023.09.20.10.03.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 10:03:18 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: David Lechner <dlechner@baylibre.com>,
	linux-kernel@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>
Subject: [PATCH 0/4] iio: resolver: move ad2s1210 out of staging
Date: Wed, 20 Sep 2023 12:02:49 -0500
Message-Id: <20230920170253.203395-1-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series moves the ad2s1210 resolver driver out of staging (after 13 years!).

We have made quite a few fixes and improvements to the driver (specifics are
listed in "iio: resolver: add new driver for AD2S1210"). The driver has been
tested on actual hardware using a EVAL-AD2S1210 evaluation board. (Note: not
all device tree features have been implemented in the driver since the eval
board doesn't support them out of the box. We plan to add them later if needed.)

One thing left over from the staging driver that probably needs more attention
still is the fault handling (both the fault threshold attributes and how
userspace gets notified of fault conditions). We considered adding these as
events, but the fault conditions are related to internal measurements in the
chip that aren't available as channels. 

Since the chip is designed to read the fault register each time we read the
data registers for one of the two channels it seems like faults should be
associated with channels one way or another. Would it make sense to add extra
channels for the internal signals that only have fault events (mostly with
IIO_EV_TYPE_THRESH)? Or would it make sense to add a new "flags" channel type
where the "raw" value is bit flags? Or something else?

Here is the table of available faults for context. Sine/cosine inputs are
internal signals.

| Bit | Description
+-----+------------
| D7  |  Sine/cosine inputs clipped
| D6  |  Sine/cosine inputs below LOS threshold
| D5  |  Sine/cosine inputs exceed DOS overrange threshold
| D4  |  Sine/cosine inputs exceed DOS mismatch threshold
| D3  |  Tracking error exceeds LOT threshold
| D2  |  Velocity exceeds maximum tracking rate
| D1  |  Phase error exceeds phase lock range
| D0  |  Configuration parity error


David Lechner (4):
  dt-bindings: iio: resolver: add devicetree bindings for ad2s1210
  iio: sysfs: add IIO_DEVICE_ATTR_NAMED_RW macro
  staging: iio: resolver: remove ad2s1210 driver
  iio: resolver: add new driver for AD2S1210

 .../testing/sysfs-bus-iio-resolver-ad2s1210   | 109 ++
 .../bindings/iio/resolver/adi,ad2s1210.yaml   | 150 +++
 drivers/iio/resolver/Kconfig                  |  13 +
 drivers/iio/resolver/Makefile                 |   1 +
 drivers/iio/resolver/ad2s1210.c               | 948 ++++++++++++++++++
 drivers/staging/iio/Kconfig                   |   1 -
 drivers/staging/iio/Makefile                  |   1 -
 drivers/staging/iio/resolver/Kconfig          |  18 -
 drivers/staging/iio/resolver/Makefile         |   6 -
 drivers/staging/iio/resolver/ad2s1210.c       | 716 -------------
 include/linux/iio/sysfs.h                     |   4 +
 11 files changed, 1225 insertions(+), 742 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-resolver-ad2s1210
 create mode 100644 Documentation/devicetree/bindings/iio/resolver/adi,ad2s1210.yaml
 create mode 100644 drivers/iio/resolver/ad2s1210.c
 delete mode 100644 drivers/staging/iio/resolver/Kconfig
 delete mode 100644 drivers/staging/iio/resolver/Makefile
 delete mode 100644 drivers/staging/iio/resolver/ad2s1210.c

-- 
2.34.1


