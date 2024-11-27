Return-Path: <devicetree+bounces-124827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E259DA134
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 04:49:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB39B168763
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 03:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08BA84A3E;
	Wed, 27 Nov 2024 03:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Z3ZsemIu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AD11114
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 03:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732679371; cv=none; b=GwQxcKyy85YtPh1isGcAEjAdX8YaIdZP94B4geJ76gZ33qLnJuoxQSGo1DT2LGvy/nnPWNwqwCzyYmoJ5UQUp6/EqSCyKBCDAQs0afKvquzZaTkyeE+W7D6P+rCFMYDgvoK4s6+TLG1hJFAOSHtRssdbGQ083U5wwAbI2A7LHJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732679371; c=relaxed/simple;
	bh=eD3pPODQToz+j60jzAIrQi578xjDHFXKsipAp8dC9yA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dbvD3fEW42uKPR1bkLO8C89GE+4LWEMVKDGe/g7tRh0Vkq5p6xSh7JqpqCtO0CRihovBKUkB7puS5kQUq5unmFfNiUFAYC1kQBUWfrmZsoXmH5Of02HJptRFq16yZZqDWkl4o1dgpOy68MsFttk1/ksk50ORONJZaqdLiou1634=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Z3ZsemIu; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53dd59a2bc1so5699550e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 19:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732679368; x=1733284168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XQjMZqwe0NAeO2fTOG+5fOQwDridfm3r/wIYgtFv14o=;
        b=Z3ZsemIu5lILTc/QsVv1tYoPN1yJb2w6MryOyqXvInNDJaY9W2zRY0hjRYSuk7JK78
         V3AZ8W9kQ8XEu0vsN7tx4qdQUmLgAWpHUkzGyVy677Z/TApymQ9RdEuVlQjrDfUFgghf
         QZnbIVNL6RRvTJLmJIHv2Y96bKsTNNmRo38b4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732679368; x=1733284168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XQjMZqwe0NAeO2fTOG+5fOQwDridfm3r/wIYgtFv14o=;
        b=Q7BsKkVdvOiZl1+h5nC+Q0lf93SMSeCIt0J2JAgnFtmaEvQOOPWcMvxHO57ScHmtka
         09frLiYmWDvPfG9ChuzVKV+jMHkmZeLlC6Dac0Imzu68PL/F/IQsTwCoRwffDdfobHdZ
         Gg1ZYNiKamLF65gCd+ow9/QRagHfEQ6XLw7X9M4yFvKltud9+95P+n6KhuJ4pt2A447o
         7M+fJQp+qGg5RCYmvUQJRGOuverZEXDS4wChfsfw3pe3cafIoK1Cy49hJPBV+jvZfr2L
         TwCtxy2+tnao+tj9PjZrWN2lAhklDu74ayQ+xpoADQbWL1hLa7WMGnf2YYT/74GTfQWm
         R8ng==
X-Forwarded-Encrypted: i=1; AJvYcCU6pn8HCDaJS/09xvncTd1ebfNJ10aOzI3GMG3QeoOw8u5j7CF/msj89gD1zqIg0Ve4J8TticN3zWCO@vger.kernel.org
X-Gm-Message-State: AOJu0YybTh6gcw6YOBhaLLIwurRyqDOEk1UyDDTJLHYMwlLZPJA2OMr7
	ld0MRKoq7PcVh9qIbzjr8lYTcfBexhSPYRQSckpAxDtdB80/BNx0BjkrPca9fuGdufnKzXR7c3w
	5wwXY+7rHOeqwgiM87KV0DVGXGh9UZsQ5upnV
X-Gm-Gg: ASbGncsT/RkbrDiZnGutT6SFTnsiwhl/b4/vslZT7pGnjOMbn5nhUqlrAI2bhTsMnWI
	nMTt9jDsbghsTcNZAwSvJFSbeQL7IW6k3DzvLFjtDNXmlcllpD66KTg6ENwo=
X-Google-Smtp-Source: AGHT+IGJWt+111FcebZ3WvjPF9EapXUa5FGOe8wHBjnKg2h6Jhmo3dCGj/hJ2nJ5jRFbFMQdOUSqHbFx87pg+jrIdqI=
X-Received: by 2002:a05:6512:b18:b0:53d:ed6a:4db2 with SMTP id
 2adb3069b0e04-53df00a976amr634882e87.11.1732679367049; Tue, 26 Nov 2024
 19:49:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241106093335.1582205-1-wenst@chromium.org>
In-Reply-To: <20241106093335.1582205-1-wenst@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 27 Nov 2024 11:49:16 +0800
Message-ID: <CAGXv+5Fzrz9sBvE=FpV6URpcZtxvchxfY9WE4k4s+S3BzMWw2g@mail.gmail.com>
Subject: Re: [PATCH v11 0/7] platform/chrome: Introduce DT hardware prober
To: Wolfram Sang <wsa@kernel.org>
Cc: chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wolfram,

On Wed, Nov 6, 2024 at 5:34=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> wr=
ote:
>
> Hi everyone,
>
> This is v11 of my "of: Introduce hardware prober driver" series.
> v11 adds a missing include of linux/types.h for the |bool| type,
> as reported by Andrey.
>
> To Wolfram:
> Everything is fully reviewed and ready to be merged. There is also
> no need to wait for the end of the merge window if you also merge
> in the immutable regulator tag [1]. Not sure if you want to also
> take the last DT patch though. If that's the case you would likely
> still have to wait for the end of the merge window.

Just checking in. I just wanted to make sure that this is still on
track for v6.13-rc1.


Thanks
ChenYu

> Changes since v10:
> - Added include of linux/types.h for type |bool| in i2c-of-prober.h
>
> The older changelog entries have been moved to the bottom of the cover
> letter.
>
> For the I2C component (touchscreens and trackpads) case from the
> original series, the hardware prober driver finds the particular
> class of device in the device tree, gets its parent I2C adapter,
> and tries to initiate a simple I2C read for each device under that
> I2C bus. When it finds one that responds, it considers that one
> present, marks it as "okay", and returns, letting the driver core
> actually probe the device.
>
> This works fine in most cases since these components are connected
> via a ribbon cable and always have the same resources. The prober
> will also grab these resources and enable them.
>
> The other case, selecting a display panel to use based on the SKU ID
> from the firmware, hit a bit of an issue with fixing the OF graph.
> It has been left out since v3.
>
> Patch 1 adds of_changeset_update_prop_string(), as requested by Rob.
>
> Patch 2 adds for_each_child_of_node_with_prefix(), as suggested by Andy.
>
> Patch 3 implements probing the I2C bus for presence of components as
> a hookable helper function in the I2C core.
>
> Patch 4 implements regulator supply support as a set of simple helpers
> for the I2C component prober.
>
> Patch 5 implements GPIO support for the I2C component prober simple
> helpers.
>
> Patch 6 adds a ChromeOS specific DT hardware prober. This initial
> version targets the Hana Chromebooks, probing its I2C trackpads and
> touchscreens.
>
> Patch 7 modifies the Hana device tree and marks the touchscreens
> and trackpads as "fail-needs-probe", ready for the driver to probe.
>
>
> The regulator parts were merged separately with an immutable tag [1]. Rob
> already gave his Reviewed-by for the OF bits, and I assume he is OK with
> them going through a different branch. So I believe it is fine for
> Wolfram to take all the patch except the last one through the I2C tree.
> The last DTS patch can be merged through the MediaTek tree once the
> driver bits land.
>
>
> Thanks
> ChenYu
>
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git=
/tag/?h=3Dregulator-of-get-optional
>
> Changes since v9:
> - Picked up review-bys
> - Added inclusion of stddef.h for NULL
> - Added "noautosel" stable tag to the device tree patch
>
> Changes since v8:
> - Link to v8:
>   https://lore.kernel.org/all/20241008073430.3992087-1-wenst@chromium.org=
/
> - Patch "i2c: core: Remove extra space in Makefile" was merged and
>   dropped from this version
> - Patch 3 "i2c: Introduce OF component probe function"
>   - Added missing include of <linux/kconfig.h> to i2c-of-prober.h
>   - Expanded description of i2c_of_probe_ops::enable to mention that
>     returning -EPROBE_DEFER is valid (Doug)
>   - Reworded descrption of i2c_of_probe_ops::cleanup_early to avoid
>     confusion with i2c_of_probe_ops::enable (Doug)
>   - Reworked i2c_of_probe_get_i2c_node() to return NULL on failure,
>     matching most functions that return |struct device_node *|.
> - Patch 4 "i2c: of-prober: Add simple helpers for regulator support"
>   - Picked up Doug's reviewed-by
> - Patch 5 "i2c: of-prober: Add GPIO support to simple helpers"
>   - Moved |struct gpio_desc| forward declaration before |struct regulator=
|
>     (Andy)
>   - Dropped GPIO descriptor validity check from
>     i2c_of_probe_simple_disable_gpio(); GPIO functions check it (Andy)
>   - Dropped comment from i2c_of_probe_simple_disable_gpio() (Doug)
>   - Reworded comment in i2c_of_probe_simple_cleanup() (Doug)
>   - Picked up Doug's reviewed-by
> - Patch 6 "platform/chrome: Introduce device tree hardware prober"
>   - Added trailing commas on last field in struct variable declarations
>     (Andy)
>   - Added macros wrapping chromeos_i2c_probe_dumb_* and
>     chromeos_i2c_probe_simple_*_cfg variable declarations (Andy)
>   - Split up hw_prober_platforms into one field per line (Andy)
>   - Picked up Doug's reviewed-by
> - Patch 7 "arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and
>            trackpads as fail"
>
> Changes since v7:
> - Link to v7:
>   https://lore.kernel.org/all/20240911072751.365361-1-wenst@chromium.org/
> - Patch 2 "of: base: Add for_each_child_of_node_with_prefix()"
>   - Collected Rob's Reviewed-by
> - Patch 3 "i2c: core: Remove extra space in Makefile"
>   - Collected Andi's Reviewed-by
> - Patch 4 "i2c: Introduce OF component probe function"
>   - Dropped log level of "enabling component" to debug
>   - Dropped file name from header file
>   - Reverted to __free() cleanup for i2c bus node
>   - Corrected "failed-needs-probe" to "fail-needs-probe" in commit messag=
e
>   - Fixed incorrectly positioned period ('.') in commit message
>   - Expanded description of i2c_of_probe_component()
>   - Expanded comment explaining check for "available" devices to note tha=
t
>     if such a device is found then the i2c probe function becomes a no-op
>   - Simplified check for "available" devices for-each loop
>   - Expanded description of @free_resources_early callback to explicitly
>     state that it is not called if no working components are found
>   - Dropped !cfg check
>   - Replaced "fail" with "fail-needs-probe" in i2c_of_probe_component()
>     kernel doc
>   - Combined callbacks (.get_resources with .enable; .cleanup with
>     .free_resources_late); .free_resources_early renamed to .cleanup_earl=
y
> - Patch 5 "i2c: of-prober: Add simple helpers for regulator support"
>   - Reworded comment in i2c_of_probe_simple_get_supply() as suggested
>     (Andy)
>   - Dropped mention of time unit in struct i2c_of_probe_simple_opts
>     kernel doc (Andy)
>   - Added mention of common GPIO line usages ("enable" or "reset") in I2C
>     OF component prober kernel doc (Doug)
>   - Added check for non-zero delay before msleep() (Doug)
>   - Combined callback helpers (.get_resources with .enable; .cleanup with
>     .free_resources_late)
> - Patch 6 "i2c: of-prober: Add GPIO support to simple helpers"
>   - Dropped mention of time unit in struct i2c_of_probe_simple_opts
>     kernel doc (Andy)
>   - Added check for non-zero delay before msleep() (Doug)
>   - Simplified GPIO name check and reverse conditional branches (Andy)
>   - Added description about the supported power sequence
>   - Switched GPIO usage to logical levels (Doug)
>     - Changed some variable names and comments to fit
>   - Added description of power sequence to struct i2c_of_probe_simple_opt=
s
>     (Doug)
>   - Added comment saying i2c_of_probe_simple_put_gpiod() might be no-op
>     (Doug)
>   - Combined callbacks (.get_resources with .enable; .cleanup with
>     .free_resources_late); renamed i2c_of_probe_simple_free_res_early() t=
o
>     i2c_of_probe_simple_cleanup_early()
> - Patch 7 "platform/chrome: Introduce device tree hardware prober"
>   - Corrected Makefile item order
>   - Replaced "failed-needs-probe" with "fail-needs-probe" in commit messa=
ge
>   - Added include of "linux/of.h" for of_machine_is_compatible()
>   - Switched to simple probe helpers for trackpads on Hana
> - Patch 8 "arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and
>            trackpads as fail"
>   - Mark touchscreen@40 as "fail-needs-probe" as well
>
> Changes since v6:
> - Link to v6:
>   https://lore.kernel.org/all/20240904090016.2841572-1-wenst@chromium.org=
/
> - Dropped patch "gpiolib: Add gpio_property_name_length()"
>   No longer needed
> - Dropped patch "regulator: Move OF-specific regulator lookup code to of_=
regulator.c"
>   Already merged
> - Patch 2 "of: base: Add for_each_child_of_node_with_prefix()"
>   - Changed helper name to "for_each_child_of_node_with_prefix()"
> - Patch 4 "regulator: Add of_regulator_get_optional() for pure DT regulat=
or lookup"
>   - Was "regulator: Do pure DT regulator lookup in of_regulator_bulk_get_=
all()"
>   - Changed reference [1] to Link: tag
>   - Rebased on top of commit 401d078eaf2e ("regulator: of: Refactor
>     of_get_*regulator() to decrease indentation")
>   - Exported of_regulator_get_optional()
>   - Changed commit message to focus on "of_regulator_get_optional()"
>   - Dropped change to of_regulator_bulk_get_all()
> - Patch 5 "i2c: core: Remove extra space in Makefile"
>   - Collected Andy's Reviewed-by
> - Patch 6 "i2c: Introduce OF component probe function"
>   - Correctly replaced for_each_child_of_node_scoped() with
>     for_each_child_of_node_with_prefix()
>   - Added namespace for exported symbols
>   - Made the probe function a framework with hooks
>   - Split out a new header file
>   - Added MAINTAINERS entry
>   - Reworded kernel-doc
>   - Dropped usage of __free from i2c_of_probe_component() since error
>     path cleanup is needed anyway
> - Patch 7 "i2c: of-prober: Add simple helpers for regulator support"
>   - Moved change of of_get_next_child_scoped() to
>     of_get_next_child_with_prefix() to previous patch
>   - Restructured into helpers for the I2C OF component prober
>   - Reduced to only handle one regulator
>   - Commit message updated
> - Patch 8 "i2c: of-prober: Add GPIO support to simple helpers"
>   - Restructured into helpers for the I2C OF component prober
>   - Reduced to only handle one GPIO
>   - Set GPIO to input on (failure) cleanup
>   - Updated commit message
> - Patch 9 "platform/chrome: Introduce device tree hardware prober"
>   - Adapted to new I2C OF prober interface
>   - Collected Acked-by tag
>
> Changes since v5:
> - Link to v5:
>   https://lore.kernel.org/all/20240822092006.3134096-1-wenst@chromium.org=
/
> - Patch 1 "of: dynamic: Add of_changeset_update_prop_string"
>   - Collected Rob's reviewed-by
> - Patch 2 "of: base: Add for_each_child_of_node_with_prefix_scoped()"
>   - New patch
> - Patch 3 "regulator: Move OF-specific regulator lookup code to of_regula=
tor.c"
>   - Fix kerneldoc format of of_regulator_dev_lookup()
>   - Fix stub compile error for !CONFIG_OF in drivers/regulator/internal.h
> - Patch 4 "regulator: Split up _regulator_get()"
>   - Fixed kerneldoc "Return" section format for _regulator_get_common()
>   - Slightly reworded return value description
> - Patch 5 "regulator: Do pure DT regulator lookup in of_regulator_bulk_ge=
t_all()"
>   - Used "dev_of_node(dev)" instead of "dev->of_node"
>   - Replaced "dev_printk" with "dev_printk()" in kerneldoc mentions
>   - Fixed kerneldoc "Return" section format for of_regulator_get_optional=
()
>   - Fix @np parameter name in of_regulator_dev_lookup() kerneldoc
> - Patch 6 "gpiolib: Add gpio_property_name_length()"
>   - Changed function name to "gpio_get_property_name_length()"
>   - Changed argument name to "propname"
>   - Clarified return value for "*-<GPIO suffix>" case
>   - Reworked according to Andy's suggestion
>   - Added stub function
> - Patch 7 "i2c: core: Remove extra space in Makefile"
>   - New patch
> - Patch 8 "i2c: Introduce OF component probe function"
>   - Fixed indent in Makefile
>   - Split regulator and GPIO TODO items
>   - Reversed final conditional in i2c_of_probe_enable_node()
> - Patch 9 "i2c: of-prober: Add regulator support"
>   - Split of_regulator_bulk_get_all() return value check and explain
>     "ret =3D=3D 0" case
>   - Switched to of_get_next_child_with_prefix_scoped() where applicable
>   - Used krealloc_array() instead of directly calculating size
>   - copy whole regulator array in one memcpy() call
>   - Drop "0" from struct zeroing initializer
>   - Split out regulator helper from i2c_of_probe_enable_res() to keep
>     code cleaner when combined with the next patch
>   - Added options for customizing power sequencing delay
>   - Rename i2c_of_probe_get_regulator() to i2c_of_probe_get_regulators()
>   - Add i2c_of_probe_free_regulator() helper
> - Patch 10 "i2c: of-prober: Add GPIO support"
>   - Renamed "con" to "propname" in i2c_of_probe_get_gpiod()
>   - Copy string first and check return value of strscpy() for overflow in
>     i2c_of_probe_get_gpiod()
>   - Add parenthesis around "enable" and "reset" GPIO names in comments
>   - Split resource count debug message into two separate lines
>   - Split out GPIO helper from i2c_of_probe_enable_res() to keep code
>     cleaner following the previous patch
>   - Adopted options for customizing power sequencing delay following
>     previous patch
> - Patch 11 "platform/chrome: Introduce device tree hardware prober"
>   - Adapt to new i2c_of_probe_component() parameters
> - Patch 12 "arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and
>             trackpads as fail"
>   - None
>
> See v5 cover letter for previous change logs.
>
> Chen-Yu Tsai (7):
>   of: dynamic: Add of_changeset_update_prop_string
>   of: base: Add for_each_child_of_node_with_prefix()
>   i2c: Introduce OF component probe function
>   i2c: of-prober: Add simple helpers for regulator support
>   i2c: of-prober: Add GPIO support to simple helpers
>   platform/chrome: Introduce device tree hardware prober
>   arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and trackpads
>     as fail
>
>  MAINTAINERS                                   |   8 +
>  .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |  14 +
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  |   4 +-
>  drivers/i2c/Makefile                          |   1 +
>  drivers/i2c/i2c-core-of-prober.c              | 415 ++++++++++++++++++
>  drivers/of/base.c                             |  35 ++
>  drivers/of/dynamic.c                          |  44 ++
>  drivers/platform/chrome/Kconfig               |  11 +
>  drivers/platform/chrome/Makefile              |   1 +
>  .../platform/chrome/chromeos_of_hw_prober.c   | 154 +++++++
>  include/linux/i2c-of-prober.h                 | 140 ++++++
>  include/linux/of.h                            |  13 +
>  12 files changed, 838 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/i2c/i2c-core-of-prober.c
>  create mode 100644 drivers/platform/chrome/chromeos_of_hw_prober.c
>  create mode 100644 include/linux/i2c-of-prober.h
>
> --
> 2.47.0.199.ga7371fff76-goog
>

