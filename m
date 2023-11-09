Return-Path: <devicetree+bounces-14772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B67E6752
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 11:06:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3D1FAB20B7C
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9251549A;
	Thu,  9 Nov 2023 10:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="L901mAJg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BD014F9A
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 10:06:41 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8CF82D6D
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 02:06:40 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1cc5fa0e4d5so6482395ad.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 02:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699524400; x=1700129200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fJvWVs2pvEah4vcu8xn+6aEsMzIEVFQ3nL2+j2vnxy4=;
        b=L901mAJg+s8HDZtKm2ry/XnVBkEYxhR8+I15n3LJGxXFg8lduSjOtOtRFnM+0s5NBg
         cJH7d0fz1m9aa+b/qMmuV8nEdAP17pBm/5/KZSPk187szGndLrIR+1opkwnaA4WDJfxT
         3v84gF/qKLEOriJYzIpfc11YuqDT65poM1P6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699524400; x=1700129200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJvWVs2pvEah4vcu8xn+6aEsMzIEVFQ3nL2+j2vnxy4=;
        b=utDUUZpXaVGQlzaqp2moz6NVH8EHumt1oUbeKu8BXYfJT+1zWJWWIljkgpvB6lR5kO
         2kfoTEadnG6TnQF8OtgbzRTbDN5xhx0ebgnTg90xurzVS7+4/A2hjzejl8m5AnFI5m8E
         koUuWgiafDAY/7fxuj0JJ+NLOx6/WT1MvqxJDch18jS13YI71VUzfgFAYplRJc8FUaC8
         C1gweWs7p4bAGQIDy86/YNe7t7T62HMjBC9qKeTt3ryWyuUGHU8bqXR67jO7qc+Wznmf
         o5gNthtPrBzMKdhTszSMN2BfsaTj9RY+AQ7tDzSBIFlW7+wVDZmCem/vThCZg5b9wM5l
         gEVA==
X-Gm-Message-State: AOJu0YyXnb7jkSsfSoKZtBA8YN3BJBPbjL7jgUezm6V127v2O9Exlkj5
	eWaLbamM9Feey/vajBAourxieA==
X-Google-Smtp-Source: AGHT+IHHefmAjeD5eN0+LN0jhER8LNSGYduJSaVRik8xs8t3KLkMHkAAnrszpGlm6KPVGIKhFjBxqA==
X-Received: by 2002:a17:902:d48b:b0:1c0:cbaf:6930 with SMTP id c11-20020a170902d48b00b001c0cbaf6930mr5153488plg.54.1699524400148;
        Thu, 09 Nov 2023 02:06:40 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6f57:d4c:468c:5daf])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902d48d00b001c60ba709b7sm3127511plg.125.2023.11.09.02.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 02:06:39 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	andriy.shevchenko@linux.intel.com,
	Jiri Kosina <jikos@kernel.org>,
	linus.walleij@linaro.org,
	broonie@kernel.org,
	gregkh@linuxfoundation.org,
	hdegoede@redhat.com,
	james.clark@arm.com,
	james@equiv.tech,
	keescook@chromium.org,
	petr.tesarik.ext@huawei.com,
	rafael@kernel.org,
	tglx@linutronix.de,
	Jeff LaBundy <jeff@labundy.com>,
	linux-input@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH v2 0/7] of: Introduce hardware prober driver
Date: Thu,  9 Nov 2023 18:05:57 +0800
Message-ID: <20231109100606.1245545-1-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This v2 series continues Doug's "of: device: Support 2nd sources of
probeable but undiscoverable devices" [1] series, but follows the scheme
suggested by Rob, marking all second source component device nodes
as "fail-needs-probe-XXX", and having a hardware prober driver enable
the one of them. I tried to include everyone from the original Cc: list.
Please let me know if you would like to be dropped from future
submissions.


For the I2C component (touchscreens and trackpads) case from the
original series, the hardware prober driver finds the particular
class of device in the device tree, gets its parent I2C adapter,
and tries to initiate a simple I2C read for each device under that
I2C bus. When it finds one that responds, it considers that one
present, marks it as "okay", and returns, letting the driver core
actually probe the device.

This works fine in most cases since these components are connected
via ribbon cable and always have the same resources. The driver as
implemented currently doesn't deal with regulators or GPIO pins,
since in the existing device trees they are either always on for
regulators, or have GPIO hogs or pinmux and pinconfig directly
tied to the pin controller.


Another case this driver could handle is selecting components based
on some identifier passed in by the firmware. On Chromebooks we have
a SKU ID which is inserted by the bootloader at
/firmware/coreboot/sku-id. When a new combination of components is
introduced, a new SKU ID is allocated to it. To have SKU ID based
device trees, we would need to have one per SKU ID. This ends up
increasing the number of device trees we have a lot. The recent
MT8186 devices already have 10+10 SKUs [2], with possibly more to come.

Instead, we could have just one device tree for each device, with
component options listed and marked as "fail-needs-probe-XXX", and
let the hardware prober enable one of them based on the given SKU ID.
The driver will also fix up OF graph remote endpoints to point to the
enabled component.

The MT8186 Corsola series [2] can also benefit from this, though I
haven't implemented anything yet.


Patch 1 adds of_device_is_fail() for the new driver to use.

Patch 2 implements the first case, probing the I2C bus for presence
of components. This initial version targets the Hana Chromebooks.

Patch 3 modifies the Hana device tree and marks the touchscreens
and trackpads as "fail-needs-probe-XXX", ready for the driver to
probe.

Patch 4 adds a missing touchscreen variant to Hana.

Patch 5 implements the second case, selectively enabling components
based on the SKU ID. This initial version targets the Krane ChromeOS
tablet, which has two possible MIPI DSI display panel options.

Patch 6 drops Krane's SKU-specific compatible strings from the bindings.

Patch 7 merges Krane's SKU-specific device trees into one, with the
device tree now containing two possible panels. This unfortunately
introduces a dtc warning:

    arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dts:81.13-83.6:
        Warning (graph_endpoint): /soc/dsi@14014000/panel2@0/port/endpoint:
	graph connection to node '/soc/dsi@14014000/ports/port/endpoint'
	    is not bidirectional


Please take a look.

Johan, I'm not sure if this works as is for the Lenovo Thinkpad 13S
case, since it looks like the trackpad shares the I2C bus with the
keyboard.


Thanks
ChenYu


Background as given in Doug's cover letter:

Support for multiple "equivalent" sources for components (also known
as second sourcing components) is a standard practice that helps keep
cost down and also makes sure that if one component is unavailable due
to a shortage that we don't need to stop production for the whole
product.

Some components are very easy to second source. eMMC, for instance, is
fully discoverable and probable so you can stuff a wide variety of
similar eMMC chips on your board and things will work without a hitch.

Some components are more difficult to second source, specifically
because it's difficult for software to probe what component is present
on any given board. In cases like this software is provided
supplementary information to help it, like a GPIO strap or a SKU ID
programmed into an EEPROM. This helpful information can allow the
bootloader to select a different device tree. The various different
"SKUs" of different Chromebooks are examples of this.

Some components are somewhere in between. These in-between components
are the subject of this patch. Specifically, these components are
easily "probeable" but not easily "discoverable".

A good example of a probeable but undiscoverable device is an
i2c-connected touchscreen or trackpad. Two separate components may be
electrically compatible with each other and may have compatible power
sequencing requirements but may require different software. If
software is told about the different possible components (because it
can't discover them), it can safely probe them to figure out which
ones are present.

On systems using device tree, if we want to tell the OS about all of
the different components we need to list them all in the device
tree. This leads to a problem. The multiple sources for components
likely use the same resources (GPIOs, interrupts, regulators). If the
OS tries to probe all of these components at the same time then it
will detect a resource conflict and that's a fatal error.

The fact that Linux can't handle these probeable but undiscoverable
devices well has had a few consequences:
1. In some cases, we've abandoned the idea of second sourcing
   components for a given board, which increases cost / generates
   manufacturing headaches.
2. In some cases, we've been forced to add some sort of strapping /
   EEPROM to indicate which component is present. This adds difficulty
   to manufacturing / refurb processes.
3. In some cases, we've managed to make things work by the skin of our
   teeth through slightly hacky solutions. Specifically, if we remove
   the "pinctrl" entry from the various options then it won't
   conflict. Regulators inherently can have more than one consumer, so
   as long as there are no GPIOs involved in power sequencing and
   probing devices then things can work. This is how
   "sc8280xp-lenovo-thinkpad-x13s" works and also how
   "mt8173-elm-hana" works.

End of background from Doug's cover letter.

[1] https://lore.kernel.org/all/20230921102420.RFC.1.I9dddd99ccdca175e3ceb1b9fa1827df0928c5101@changeid/
[2] https://lore.kernel.org/linux-mediatek/20231012230237.2676469-1-wenst@chromium.org/

Chen-Yu Tsai (7):
  of: base: Add of_device_is_fail
  of: Introduce hardware prober driver
  arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and trackpads
    as fail
  arm64: dts: mediatek: mt8173-elm-hana: Add G2touch G7500 touchscreen
  of: hw_prober: Support Chromebook SKU ID based component selection
  dt-bindings: arm: mediatek: Remove SKU specific compatibles for Google
    Krane
  arm64: dts: mediatek: mt8183-kukui: Merge Krane device trees

 .../devicetree/bindings/arm/mediatek.yaml     |   3 -
 arch/arm64/boot/dts/mediatek/Makefile         |   3 +-
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |  20 ++
 .../dts/mediatek/mt8183-kukui-krane-sku0.dts  |  24 --
 .../mediatek/mt8183-kukui-krane-sku176.dts    |  24 --
 ...ukui-krane.dtsi => mt8183-kukui-krane.dts} |  47 ++-
 drivers/of/Kconfig                            |  13 +
 drivers/of/Makefile                           |   1 +
 drivers/of/base.c                             |  20 ++
 drivers/of/hw_prober.c                        | 314 ++++++++++++++++++
 include/linux/of.h                            |   6 +
 11 files changed, 418 insertions(+), 57 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku176.dts
 rename arch/arm64/boot/dts/mediatek/{mt8183-kukui-krane.dtsi => mt8183-kukui-krane.dts} (86%)
 create mode 100644 drivers/of/hw_prober.c

-- 
2.42.0.869.gea05f2083d-goog


