Return-Path: <devicetree+bounces-4718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE237B38A1
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:25:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id ABE641C20869
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01D8E6589F;
	Fri, 29 Sep 2023 17:25:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A479A51228
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:25:50 +0000 (UTC)
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB9031B1
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:47 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-57b68556d6dso6707716eaf.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008346; x=1696613146; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MbPw3SdxVMOi5+mJx90LgQ0nJGAgyoL5GKfrPagHL7w=;
        b=aEpg8rmUbCr9O2gBn+rRp/ldiywUmbLpBQBw49/21/OzYcY+REAv7VB26phufmm1qe
         iXQJ889j7tOgCE7/2AA0n9jdRAQ/dT7cZQxzUtMlfpmCbs2JonO9poKqkncPcwX5gAJN
         aW3md1mgDM408HQM0gkVuc90mvJZeYxV/WdDM7W0UlJQtlPgbbY/BOxumVRyBwznF8jZ
         lNvb/7aVjZWWgHtV3KFUWkSrjuDiC3gO/Th9TYxnTvTRMJ+zqb2dQPJ+ZEAypqIGUlR7
         1U1X/7B/tfxtfOZCVY25GWDtSqxF9e8bTxzYUwGWT+XrXjYFkppZBc0Qwszk/gkCNvkY
         p3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008346; x=1696613146;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MbPw3SdxVMOi5+mJx90LgQ0nJGAgyoL5GKfrPagHL7w=;
        b=BU5aY4SWNjB3ro8lNIKyezQaVIvaIYKO+nbPRC32RZfMd2YFUGylORRcbWCTNmIggt
         BPjmA/lOmtdciVXpY+wrGHnnNCSXmQb8+0NbFIqyTz5Gt6kmWcuRoW5JyLFHAoGHjlH2
         duxovNA/3h9DWifm4V2VoCx00ZyGFNQVyz3b8m5jUCGja81VqBL+E6wmD9019IZaVwWq
         qPtt8UXNwoFS3zQiNKvbpwWOIxnnggVSuoxhOoUcCBuIi5ZZldOQyT1tJ21AP7gELKUE
         o9faiVZwApKLzktjbRBglSrwVwKPULwJcbdosksT7LSG7W6a93DrvXGBOvLuXKc5hhcn
         /pRQ==
X-Gm-Message-State: AOJu0YxH2yNl5+z3140kWBarbxXivcLXbg+g5xsTu4NVif3HldkasK2U
	i5fAbgb433kb0eiqVXZ1rl50Cg==
X-Google-Smtp-Source: AGHT+IF0csG6N9BuFlyuHkB6djQxR9a22o1PRZ8iOj0V3U757910msJ+x86IgOQlTZKIfra/i+eHug==
X-Received: by 2002:a4a:6f49:0:b0:57b:5e98:f733 with SMTP id i9-20020a4a6f49000000b0057b5e98f733mr4812352oof.3.1696008346626;
        Fri, 29 Sep 2023 10:25:46 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:25:46 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: David Lechner <david@lechnology.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	linux-kernel@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>,
	Apelete Seketeli <aseketeli@baylibre.com>
Subject: [PATCH v3 00/27] iio: resolver: move ad2s1210 out of staging
Date: Fri, 29 Sep 2023 12:23:05 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.3
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: David Lechner <david@lechnology.com>

v3 changes:

* Added description of A0/A1 lines in DT bindings.
* Added power supply regulators to DT bindings.
* Dropped "staging: iio: Documentation: document IIO resolver AD2S1210
  sysfs attributes" (these attributes are being removed instead).
* Dropped applied patches:
  * "staging: iio: resolver: ad2s1210: fix ad2s1210_show_fault"
  * "iio: adc: MCP3564: fix the static checker warning"
* Split "staging: iio: resolver: ad2s1210: fix probe" into multiple patches.
* Moved sorting imports to separate patch.
* Renamed fclkin to clkin_hz.
* Added __be16 sample field to state struct for reading raw samples.
* Split out new function ad2s1210_single_conversion() from
  ad2s1210_read_raw().
* Split out new ad2s1210_get_hysteresis() and ad2s1210_set_hysteresis()
  functions.
* Fixed multi-line comment style.
* Added notes about soft reset not resetting config registers.
* Made use of FIELD_PREP() macro.
* Added more explanation to regmap commit message.
* Removed datasheet names from channel specs.
* Replaced "staging: iio: resolver: ad2s1210: rename fexcit attribute"
  with "staging: iio: resolver: ad2s1210: convert fexcit to channel
  attribute".
* Replaced "staging: iio: resolver: ad2s1210: add phase_lock_range
  attributes" with "staging: iio: resolver: ad2s1210: add phase lock
  range support"
* Added additional patches to convert custom device attributes to event
  attributes.
* Added patch to add channel label attributes.

v2 changes:
* Address initial device tree patch feedback
* Drop "iio: sysfs: add IIO_DEVICE_ATTR_NAMED_RW macro" (related cleanups
  also dropped for now, will address in a future series if needed)
* Apply improvements as a series of patches to the staging driver. It is
  not quite ready for the move out of staging patch yet.

This series has been tested on actual hardware using a EVAL-AD2S1210 evaluation
board. (Note: not all device tree features have been implemented in the driver
since the eval board doesn't support them out of the box. We plan to add them
later if needed.)

Most of the questions about dealing with faults from the v2 cover letter
have been addressed. There is still the question about what to do with
the current `fault` attribute (it is the only custom device attribute
remaining from the original staging driver). It was suggested to split it
out into multiple attributes in a subdirectory. Since we now have events
for all of the faults, I'm wondering if this is something that is still needed.
In the current implementation, it is possible to start listening to events,
clear the faults and then read a sample to trigger events for any current
faults so we have a way to get current faults already.

There is also the matter of clearing faults. Writing the excitation
frequency has a side-effect of clearing the faults, so we could use
that as the reset. Or we could change the current fault attribute to
write-only and rename it. Or is there a better way that I have overlooked?

Once this last issue is addressed, I think this driver will be ready
for consideration for moving out of staging.
---
David Lechner (27):
      dt-bindings: iio: resolver: add devicetree bindings for ad2s1210
      staging: iio: resolver: ad2s1210: fix use before initialization
      staging: iio: resolver: ad2s1210: remove call to spi_setup()
      staging: iio: resolver: ad2s1210: check return of ad2s1210_initial()
      staging: iio: resolver: ad2s1210: remove spi_set_drvdata()
      staging: iio: resolver: ad2s1210: sort imports
      staging: iio: resolver: ad2s1210: always use 16-bit value for raw read
      staging: iio: resolver: ad2s1210: implement IIO_CHAN_INFO_SCALE
      staging: iio: resolver: ad2s1210: use devicetree to get CLKIN rate
      staging: iio: resolver: ad2s1210: use regmap for config registers
      staging: iio: resolver: ad2s1210: add debugfs reg access
      staging: iio: resolver: ad2s1210: remove config attribute
      staging: iio: resolver: ad2s1210: rework gpios
      staging: iio: resolver: ad2s1210: implement hysteresis as channel attr
      staging: iio: resolver: ad2s1210: refactor setting excitation frequency
      staging: iio: resolver: ad2s1210: read excitation frequency from control register
      staging: iio: resolver: ad2s1210: convert fexcit to channel attribute
      staging: iio: resolver: ad2s1210: convert resolution to devicetree property
      staging: iio: resolver: ad2s1210: add phase lock range support
      staging: iio: resolver: ad2s1210: add triggered buffer support
      staging: iio: resolver: ad2s1210: convert LOT threshold attrs to event attrs
      staging: iio: resolver: ad2s1210: convert LOS threshold to event attr
      staging: iio: resolver: ad2s1210: convert DOS overrange threshold to event attr
      staging: iio: resolver: ad2s1210: convert DOS mismatch threshold to event attr
      staging: iio: resolver: ad2s1210: rename DOS reset min/max attrs
      staging: iio: resolver: ad2s1210: implement fault events
      staging: iio: resolver: ad2s1210: add label attribute support

 .../bindings/iio/resolver/adi,ad2s1210.yaml        |  177 +++
 .../Documentation/sysfs-bus-iio-resolver-ad2s1210  |   27 +
 drivers/staging/iio/resolver/Kconfig               |    1 +
 drivers/staging/iio/resolver/ad2s1210.c            | 1583 +++++++++++++++-----
 4 files changed, 1391 insertions(+), 397 deletions(-)
---
base-commit: 5e99f692d4e32e3250ab18d511894ca797407aec
change-id: 20230925-ad2s1210-mainline-2791ef75e386


