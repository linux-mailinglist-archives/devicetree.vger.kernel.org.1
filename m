Return-Path: <devicetree+bounces-99859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ED896B5C1
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 11:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 04F15B261D3
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4E412D75C;
	Wed,  4 Sep 2024 09:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="faUzVeG3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F433155A30
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 09:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725440426; cv=none; b=QWm7YLMX3BZT9u1U/wz9qB+DL01tKWDaS/C6LWHgeJjJbdQwGU+2aEd3BnebtE5sr1lWuiru7SwFbV1fwPtXrxlTD82aPzgSxIbY3c6iv3B3x5ed3uXd3tGPwgjBc2sfvTSdjfO/iIjKL19niLrxEBVDnerTIkPFunx3/dCTmxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725440426; c=relaxed/simple;
	bh=P4Wr/f/5SkVZvW9NUsf+YBtiN5dcczXRMCa9Md2Qtbs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=X0moLvNAU+w5FSmObrRIx9DmAHx3r1wNT9D3ZyYXXj1Ct+YkIUVJMeI2ukdxaaQ9ROTA+bkkSypKrWPKtXEqO+eVPrBW5H3MYAjW5oOZYJvE3koJiKBFvdrJmxdnf5Z4wtm2g/5PxjqzagWkLgx0X8xKtqF+mO2qoPx9I+QWvqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=faUzVeG3; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7141feed424so4966641b3a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 02:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725440424; x=1726045224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TkLFLqsEdsmYmf3sAL7UqkC0jq7ST20utTjR7yYKmzw=;
        b=faUzVeG3BC1rxfFCgTIFNj+2h2XTx3u82OHO5mLnI0w01ih+C3CK7uMOZfM+tz26/m
         BGPBH6SM72SlEzhHwnPR9obyRSlSUuqSJUck/iHExWlZSeOtbiDx1YqlU4NKrF5FXH53
         34GeLMtdOeeGu1ubvPXRJhZor7x5Ii93TA/L8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725440424; x=1726045224;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TkLFLqsEdsmYmf3sAL7UqkC0jq7ST20utTjR7yYKmzw=;
        b=gcxmfyEtVHxuUKuD6FBWCUUk+2WfFUdzXmR6R18I+npSM6ViGa3fgZ8lPtKWk3TU35
         TB4iZPypKD+xflEHJeIe8H4fztjkEaHA6BDBr+1N2GzXythNTsrAoc73Io+kXRAu4pqo
         XAu41CpeI49kcB0Q3AIuemPLEy/ekl3t3PdHqYGYGp7z15QG1h1MHrHtf/TW4cgypURz
         gOwHbBIRUQ1gctLT1+JOdg130BgiXAEYJPuj2jZ6BSTZiExcdlIRAVKoIuX5NtaQivot
         OkUw6/kW/oQEFrYA4BkrhDp/i3m3/Ax5ltJtPWWvJIJoFPJACGaGyCCqK9jcczvStOig
         f1Lg==
X-Forwarded-Encrypted: i=1; AJvYcCW9cHTe35mq1qglT7BYUngdiCKoM7W9CeKvGrtLiwOtUcE9+kkW6uFNOX/xJmL3yO+WJVlCZcGDfE7A@vger.kernel.org
X-Gm-Message-State: AOJu0YxAKKqiqvZakMK4Kf+1mbhXqQ12ZKmX2hrpXwIODC3eOab3EJq/
	rRT1hJboNBD/NuVLMA3ciOrSC7uyrLqu4b8/J7VHim2ZdJb+odEe0OiW7TYJsg==
X-Google-Smtp-Source: AGHT+IEOgCmMlFrOYx5PNCDDiVmMHWi/D2TYrCdsWo5mO6CccZzPqPQakiLPygjjRXQz1VochBkBDA==
X-Received: by 2002:a05:6a00:2d05:b0:714:21cb:8486 with SMTP id d2e1a72fcca58-7173fa0af6bmr13308971b3a.3.1725440423485;
        Wed, 04 Sep 2024 02:00:23 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:83fc:5c8e:13bd:d165])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-717785b5183sm1153279b3a.197.2024.09.04.02.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 02:00:23 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v6 00/12] platform/chrome: Introduce DT hardware prober
Date: Wed,  4 Sep 2024 17:00:02 +0800
Message-ID: <20240904090016.2841572-1-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This is v6 of my "of: Introduce hardware prober driver" [1] series.
v6 mainly addresses comments from Andy.

v2 continued Doug's "of: device: Support 2nd sources of probeable but
undiscoverable devices" [2] series, but follows the scheme suggested by
Rob, marking all second source component device nodes as "fail-needs-probe",
and having a hardware prober driver enable the one of them.


Changes since v5:
- Link to v5:
  https://lore.kernel.org/all/20240822092006.3134096-1-wenst@chromium.org/
- Patch 1 "of: dynamic: Add of_changeset_update_prop_string"
  - Collected Rob's reviewed-by
- Patch 2 "of: base: Add for_each_child_of_node_with_prefix_scoped()"
  - New patch
- Patch 3 "regulator: Move OF-specific regulator lookup code to of_regulator.c"
  - Fix kerneldoc format of of_regulator_dev_lookup()
  - Fix stub compile error for !CONFIG_OF in drivers/regulator/internal.h
- Patch 4 "regulator: Split up _regulator_get()"
  - Fixed kerneldoc "Return" section format for _regulator_get_common()
  - Slightly reworded return value description
- Patch 5 "regulator: Do pure DT regulator lookup in of_regulator_bulk_get_all()"
  - Used "dev_of_node(dev)" instead of "dev->of_node"
  - Replaced "dev_printk" with "dev_printk()" in kerneldoc mentions
  - Fixed kerneldoc "Return" section format for of_regulator_get_optional()
  - Fix @np parameter name in of_regulator_dev_lookup() kerneldoc
- Patch 6 "gpiolib: Add gpio_property_name_length()"
  - Changed function name to "gpio_get_property_name_length()"
  - Changed argument name to "propname"
  - Clarified return value for "*-<GPIO suffix>" case
  - Reworked according to Andy's suggestion
  - Added stub function
- Patch 7 "i2c: core: Remove extra space in Makefile"
  - New patch
- Patch 8 "i2c: Introduce OF component probe function"
  - Fixed indent in Makefile
  - Split regulator and GPIO TODO items
  - Reversed final conditional in i2c_of_probe_enable_node()
- Patch 9 "i2c: of-prober: Add regulator support"
  - Split of_regulator_bulk_get_all() return value check and explain
    "ret == 0" case
  - Switched to of_get_next_child_with_prefix_scoped() where applicable
  - Used krealloc_array() instead of directly calculating size
  - copy whole regulator array in one memcpy() call
  - Drop "0" from struct zeroing initializer
  - Split out regulator helper from i2c_of_probe_enable_res() to keep
    code cleaner when combined with the next patch
  - Added options for customizing power sequencing delay
  - Rename i2c_of_probe_get_regulator() to i2c_of_probe_get_regulators()
  - Add i2c_of_probe_free_regulator() helper
- Patch 10 "i2c: of-prober: Add GPIO support"
  - Renamed "con" to "propname" in i2c_of_probe_get_gpiod()
  - Copy string first and check return value of strscpy() for overflow in
    i2c_of_probe_get_gpiod()
  - Add parenthesis around "enable" and "reset" GPIO names in comments
  - Split resource count debug message into two separate lines
  - Split out GPIO helper from i2c_of_probe_enable_res() to keep code
    cleaner following the previous patch
  - Adopted options for customizing power sequencing delay following
    previous patch
- Patch 11 "platform/chrome: Introduce device tree hardware prober"
  - Adapt to new i2c_of_probe_component() parameters
- Patch 12 "arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and
	    trackpads as fail"
  - None

See v5 cover letter for previous change logs.

For the I2C component (touchscreens and trackpads) case from the
original series, the hardware prober driver finds the particular
class of device in the device tree, gets its parent I2C adapter,
and tries to initiate a simple I2C read for each device under that
I2C bus. When it finds one that responds, it considers that one
present, marks it as "okay", and returns, letting the driver core
actually probe the device.

This works fine in most cases since these components are connected
via a ribbon cable and always have the same resources. The prober
will also grab these resources and enable them.

The other case, selecting a display panel to use based on the SKU ID
from the firmware, hit a bit of an issue with fixing the OF graph.
It has been left out since v3.

Patch 1 adds of_changeset_update_prop_string(), as requested by Rob.

Patch 2 adds for_each_child_of_node_with_prefix_scoped(), as suggested
by Andy.

Patches 3 through 5 reorganize the OF-specific regulator core code and
reworks the existing of_regulator_bulk_get_all() function to look up
regulator supplies solely using device tree nodes.

Patch 6 adds a function to the GPIO library that checks whether a
given string (property name) matches the GPIO property pattern, and
if it does, returns the length of the GPIO name.

Patch 7 cleans up some extra spaces in the i2c core Makefile

Patch 8 implements probing the I2C bus for presence of components as
a helper function in the I2C core.

Patch 9 implements regulator supply support for the I2C component
prober.

Patch 10 implements GPIO support for the I2C component prober.

Patch 11 adds a ChromeOS specific DT hardware prober. This initial
version targets the Hana Chromebooks, probing its I2C trackpads and
touchscreens.

Patch 12 modifies the Hana device tree and marks the touchscreens
and trackpads as "fail-needs-probe", ready for the driver to probe.


The patch and build time dependencies for this series is now quite
complicated:

  of_regulator.c cleanups [1] -> regulator patches here ----
							   |
							   v
  gpio patch in -next [2] -> gpiolib patch here  -----> i2c of-prober --
								       |
                      platform/chrome device tree hardware prober <----- 
 
The regulator patches in this series depend on other cleanup patches [1]
I sent earlier. The gpiolib patch depends on a commit in -next [2]
changing the GPIO suffixes array. Patches 7 through 10 introducting i2c
of-prober depend on the first 5 patches. Patch 11, The chrome prober,
depends on patches 7 through 10.

I think it might be easier if the respective maintainers take the first
six patches for -rc1. Patches 7 through 11 can go through either the i2c
or chrome trees either very late in the merge window or right after it.
Patch 12 can go in only after everything else is in. This should be
better than having an immutable branch on top of some commit in -next
for three other trees to consume.

Wolfram, would you be able to handle the late PR? Assuming you get a
chance to look at the patches that is.


Thanks
ChenYu

[1] https://lore.kernel.org/all/20240822072047.3097740-1-wenst@chromium.org/
[2] commit 4b91188dced8 ("gpiolib: Replace gpio_suffix_count with NULL-terminated array")

Chen-Yu Tsai (12):
  of: dynamic: Add of_changeset_update_prop_string
  of: base: Add for_each_child_of_node_with_prefix_scoped()
  regulator: Move OF-specific regulator lookup code to of_regulator.c
  regulator: Split up _regulator_get()
  regulator: Do pure DT regulator lookup in of_regulator_bulk_get_all()
  gpiolib: Add gpio_get_property_name_length()
  i2c: core: Remove extra space in Makefile
  i2c: Introduce OF component probe function
  i2c: of-prober: Add regulator support
  i2c: of-prober: Add GPIO support
  platform/chrome: Introduce device tree hardware prober
  arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and trackpads
    as fail

 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |  13 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  |   4 +-
 drivers/gpio/gpiolib.c                        |  25 +
 drivers/i2c/Makefile                          |   7 +-
 drivers/i2c/i2c-core-of-prober.c              | 437 ++++++++++++++++++
 drivers/of/base.c                             |  35 ++
 drivers/of/dynamic.c                          |  44 ++
 drivers/platform/chrome/Kconfig               |  11 +
 drivers/platform/chrome/Makefile              |   1 +
 .../platform/chrome/chromeos_of_hw_prober.c   | 104 +++++
 drivers/regulator/core.c                      | 143 ++----
 drivers/regulator/internal.h                  |  15 +-
 drivers/regulator/of_regulator.c              | 150 +++++-
 include/linux/gpio/consumer.h                 |   7 +
 include/linux/i2c.h                           |  14 +
 include/linux/of.h                            |  13 +
 16 files changed, 918 insertions(+), 105 deletions(-)
 create mode 100644 drivers/i2c/i2c-core-of-prober.c
 create mode 100644 drivers/platform/chrome/chromeos_of_hw_prober.c

-- 
2.46.0.469.g59c65b2a67-goog


