Return-Path: <devicetree+bounces-2135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E327A9C41
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:13:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97423282AEC
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA0E82942A;
	Thu, 21 Sep 2023 17:49:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A2B47340
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:40 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 867317B95A
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:37:01 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50435ad51bbso149678e87.2
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695317819; x=1695922619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iwcSCZesHpouCmyM1x03gSJSlBimDoKKMQ92GEpbtM8=;
        b=YAKmunrytA2zf/qxSvLU35CQ5P7mRanVdC9TNtCKMuZ77sJyR72lkc92rS/5xBo0oj
         tzP1HF7wIEOokvAAKKi0PHzIbXj1HvWzChMC/fZLgjWWQQ6whWTzf+g6xYaY1GXfZqJG
         dl4DOV2jiP3I2LaJsxasbrPcNeuzWP8p0PevnRW42xrRU/7fORpbA/iRL0agPsLB8H6O
         WsA0iQ2Wc4bCxTcSLf9TENKeYlrmcXDwgIEZiFUeRBjJMW8QSvHVMjdC8i67kR8DMH1K
         emNhwLxXjeLkZZDdGvkLg7Jx5MgPi0bthZ5rXZ11lRWErbPVVSPDdO0cdRY4F9XoRs2l
         DI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317820; x=1695922620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iwcSCZesHpouCmyM1x03gSJSlBimDoKKMQ92GEpbtM8=;
        b=OgUhRiSd8kkT8GlEp04b3wkIZH5Oy4DLgeBfLO9Qsy706zU/TOjQk99NWwnNasOgrC
         09nl7zPtUenZVrj6pj/OcxU50VcNXC1SrbafBY5tsA+8DL9pXKNFAde9S5A6Hm18QZEW
         DMYYexUJetpP3+uphwgSjOYRM+alpCPcAi/Iy6fSBJIgJI6+3ZOQNyrVIRWSj3+fdd1f
         4pAe/68pD5F0kuDszns9FVlWGqKIOS0Y1BwFGPxeThdiRHwmXNCQcZa/3KmFM5M+AEpV
         /cwnciw+R/Ourau7Zr0HaPbpXQ9q6mfX1ij4KOTtW0xki/kI7VDi2Me0dQCvnhVeSskl
         lprA==
X-Gm-Message-State: AOJu0YzJM8av/AjLrw7oLO/lqlZA3uN+gFszugVc2W062bew8EcqfSdQ
	HXEMOSJCHPa//YzpqDBDya9RLV20hEYG0YhKOtIzbLxb
X-Google-Smtp-Source: AGHT+IG49g6ISV8XsDHGebX6Lc2cVQ4WY3KL6XVuk0xRssZliSSwVsIESlfd0xSwvTf8N3arBNsQgw==
X-Received: by 2002:a05:6000:1752:b0:322:4892:17f with SMTP id m18-20020a056000175200b003224892017fmr922723wrf.7.1695306149946;
        Thu, 21 Sep 2023 07:22:29 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b0031fbbe347ebsm1901426wrt.22.2023.09.21.07.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:22:29 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	David Lechner <dlechner@baylibre.com>
Subject: [v2 00/19] iio: resolver: move ad2s1210 out of staging
Date: Thu, 21 Sep 2023 09:19:26 -0500
Message-Id: <20230921141947.57784-1-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Changes since v1:
* Address initial device tree patch feedback
* Drop "iio: sysfs: add IIO_DEVICE_ATTR_NAMED_RW macro" (related cleanups
  also dropped for now, will address in a future series if needed)
* Apply improvements as a series as patches to the staging driver. It is not
  quite ready for the move out of staging patch yet.

This series has been tested on actual hardware using a EVAL-AD2S1210 evaluation
board. (Note: not all device tree features have been implemented in the driver
since the eval board doesn't support them out of the box. We plan to add them
later if needed.)

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

David Lechner (19):
  dt-bindings: iio: resolver: add devicetree bindings for ad2s1210
  staging: iio: Documentation: document IIO resolver AD2S1210 sysfs
    attributes
  staging: iio: resolver: ad2s1210: fix ad2s1210_show_fault
  staging: iio: resolver: ad2s1210: fix not restoring sample gpio in
    channel read
  staging: iio: resolver: ad2s1210: fix probe
  staging: iio: resolver: ad2s1210: always use 16-bit value for raw read
  staging: iio: resolver: ad2s1210: implement IIO_CHAN_INFO_SCALE
  staging: iio: resolver: ad2s1210: use devicetree to get fclkin
  staging: iio: resolver: ad2s1210: use regmap for config registers
  staging: iio: resolver: ad2s1210: add debugfs reg access
  staging: iio: resolver: ad2s1210: remove config attribute
  staging: iio: resolver: ad2s1210: rework gpios
  staging: iio: resolver: ad2s1210: implement hysteresis as channel attr
  staging: iio: resolver: ad2s1210: refactor setting excitation
    frequency
  staging: iio: resolver: ad2s1210: read excitation frequency from
    control register
  staging: iio: resolver: ad2s1210: rename fexcit attribute
  staging: iio: resolver: ad2s1210: convert resolution to devicetree
    property
  staging: iio: resolver: ad2s1210: add phase_lock_range attributes
  staging: iio: resolver: ad2s1210: add triggered buffer support

 .../bindings/iio/resolver/adi,ad2s1210.yaml   | 150 +++
 .../sysfs-bus-iio-resolver-ad2s1210           | 109 ++
 drivers/staging/iio/resolver/Kconfig          |   1 +
 drivers/staging/iio/resolver/ad2s1210.c       | 948 +++++++++++-------
 4 files changed, 857 insertions(+), 351 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/resolver/adi,ad2s1210.yaml
 create mode 100644 drivers/staging/iio/Documentation/sysfs-bus-iio-resolver-ad2s1210

-- 
2.34.1


