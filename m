Return-Path: <devicetree+bounces-1235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 736D17A577D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 04:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27F211C20AF6
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 02:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4968483;
	Tue, 19 Sep 2023 02:49:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480A063B2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 02:49:54 +0000 (UTC)
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85DB210D
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 19:49:52 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-690bd8f89baso568885b3a.2
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 19:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=himax-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1695091792; x=1695696592; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/rqN2HMjM0arpS4+cyp85IZSqS0Lo2csQX+Tp/DLTXs=;
        b=LUYf+0UQATZ0GSRgO2Zfwnp672Uup0o7dUftqYhJxRGOLWy0y7287iPCfcHvMs5upj
         fGJOP3aue2RdqHFPAyXB3kADI/VlkKJPt82S76Je4GGDUgQNncm3U4fT7rS6b7BYaJPu
         D2JImWhl+RsmKJuwmDvrE+8hf1+NKryF+x3k91+h3QYWEFr0P7lC0VXxOupekYAHuLcT
         kuMmz91wZS04PT9liaJdrT/4LNSPWN9YQh9sDN3CfsGPHG1AZNBXPsiSfcjd/lR1bW/8
         RsaTu/rQPjgSbC0yYa85uu0U8Rw7Vy49oAZV08Cu/T+838bgRnBNKG2PyUrK0V3dW4hu
         3onw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695091792; x=1695696592;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/rqN2HMjM0arpS4+cyp85IZSqS0Lo2csQX+Tp/DLTXs=;
        b=tx9tyTAw5P4H6PJAWuKt1lXUWOl7oAy1rIdzG5cR8jyBFDmuXWhn3alrqlfITyQ6mG
         tEbjvL+nC+hhjKgKsYwKgcbrQZqZ5KlrP0FQC2cZAhVQbktyRggIF4w57h5riu+c/Tp1
         3kr7NOQ2YbBb+5xdHocnoA7q/bg/jK7dAIm1Bu7OToQZIPrpyYe8rfqYztLNmKaCQ3bI
         HSjFiYPfCPqo1CQJHOFWpNlLj7BEXWaNCFuTsHH8YQq2Uw313SqUr5r+KeQDE+ydehYc
         2RJjICshS6Zquj1OGiEL5WwSL0vAO4eQ+gMeOhSB9u0d3/9WT/vm1pZvSQVlYVQVaMPs
         l+QQ==
X-Gm-Message-State: AOJu0YwONeoBo/qHmSfaI7xKEOwnVR13YmPPZBWKBhgzHoVYeWbANb0R
	t8OjWFx+QXI3uThrxjUyl5xfxw==
X-Google-Smtp-Source: AGHT+IHsd66D/hjY9C/k/IG4k+/81ufimcddG8Ku8iLvS65pKmGsJyZRV5X2F3hatnOX2HboOzXQDg==
X-Received: by 2002:a05:6a21:a582:b0:14c:6a05:dfbf with SMTP id gd2-20020a056a21a58200b0014c6a05dfbfmr12134761pzc.60.1695091791981;
        Mon, 18 Sep 2023 19:49:51 -0700 (PDT)
Received: from tylor-mini-server.net ([101.8.12.165])
        by smtp.gmail.com with ESMTPSA id i21-20020aa79095000000b0068fb8e18971sm7613042pfa.130.2023.09.18.19.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 19:49:51 -0700 (PDT)
From: Tylor Yang <tylor_yang@himax.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.com,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: poyuan_chang@himax.corp-partner.google.com,
	jingliang@chromium.org,
	hbarnor@chromium.org,
	Tylor Yang <tylor_yang@himax.corp-partner.google.com>
Subject: [PATCH V2 0/2] HID: touchscreen: add himax hid-over-spi driver
Date: Tue, 19 Sep 2023 10:49:41 +0800
Message-Id: <20230919024943.3088916-1-tylor_yang@himax.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
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

Hello,

This patch series adds the driver for Himax HID-over-SPI touchscreen ICs.
This driver takes a position in [1], it intends to take advantage of SPI
transfer speed and HID interface. The userspace program [2] can use ioctl
through general hidraw interface provided by kernel HID sub-system to
control touch IC without creating special file nodes.

Patch 1 adds the Maintainer and devicetree bindings document for driver.

Patch 2 adds the driver itself, Kconfig and Makefiles.

[1] Overview:
+--------------------------------+
| himax hid-over-spi TPIC driver |
+--------------------------------+
| +-----------+  +-----------+   |      +-----------+  +-----------+
| | Device #1 |  | Device #i |   |      | Device #j |  | Device #k |
| +-----------+  +-----------+   |      +-----------+  +-----------+
|          \\      //            |               \\      //
|        +------------+          |             +------------+
|        | I/O Driver |          |             | I/O Driver |
|        +------------+          |             +------------+
|              ||                |                   ||
|     +------------------+       |          +------------------+
|     | Transport Driver |       |          | Transport Driver |
|     +------------------+       |          +------------------+
|                      \___      |         ___/
+--------------------------------+       /
                            \           /
                          +----------------+
                          |    HID Core    |
                          +----------------+
                           /  |        |  \
                          /   |        |   \
             ____________/    |        |    \_________________
            /                 |        |                      \
           /                  |        |                       \
 +----------------+  +-----------+  +------------------+  +------------------+
 | Generic Driver |  | MT Driver |  | Custom Driver #1 |  | Custom Driver #2 |
 +----------------+  +-----------+  +------------------+  +------------------+

[2] https://github.com/HimaxSoftware/hx_hid_util/tree/hid_func

version 2 changes
-rename bindings name from himax,hid-over-hx-spi to himax,hid-over-spi
-remove "himax,fw_size", "himax,heatmap_16bits", "himax,fw_in_flash", "himax,pid"
 and "himax,boot_time_fw_upgrade" items from dt-bindings and related code
-add "himax,id-gpios" for user to specify hardware id pins
-rename "himax,ic_det_delay" to "himax,ic-det-delay-ms" and
 "himax,ic_resume_delay" to "himax,ic-resume-delay-ms"
-MAINTAINER position adjust: move info to the position by letter order
-Kconfig add HX_HID_HAS_FLASH option to replace "himax,fw_in_flash"
-HIMAX_DRIVER_VER upadte from 0.0.10 to 0.0.11
-remove unused includes and description in hx_hid.c
-add code to map id-gpios value to PID
-correct variable naming style and misspellings in hx_ic_core.c/h
-remove unnecessary global varaible debug_flag

Tylor Yang (2):
  dt-bindings: input: Introduce Himax HID-over-SPI device
  HID: touchscreen: Add initial support for Himax HID-over-SPI

 .../bindings/input/himax,hid-over-spi.yaml    |  109 +
 MAINTAINERS                                   |    7 +
 drivers/hid/Kconfig                           |    2 +
 drivers/hid/Makefile                          |    2 +
 drivers/hid/hx-hid/Kconfig                    |   55 +
 drivers/hid/hx-hid/Makefile                   |   35 +
 drivers/hid/hx-hid/hx_acpi.c                  |   96 +
 drivers/hid/hx-hid/hx_core.c                  | 1626 ++++++++
 drivers/hid/hx-hid/hx_core.h                  |  487 +++
 drivers/hid/hx-hid/hx_hid.c                   |  757 ++++
 drivers/hid/hx-hid/hx_hid.h                   |   96 +
 drivers/hid/hx-hid/hx_ic_83102j.c             |  345 ++
 drivers/hid/hx-hid/hx_ic_83102j.h             |   42 +
 drivers/hid/hx-hid/hx_ic_core.c               | 3260 +++++++++++++++++
 drivers/hid/hx-hid/hx_ic_core.h               |  792 ++++
 drivers/hid/hx-hid/hx_inspect.c               |  652 ++++
 drivers/hid/hx-hid/hx_inspect.h               |  104 +
 drivers/hid/hx-hid/hx_of.c                    |  171 +
 drivers/hid/hx-hid/hx_plat.c                  |  480 +++
 drivers/hid/hx-hid/hx_plat.h                  |   30 +
 20 files changed, 9148 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/himax,hid-over-spi.yaml
 create mode 100644 drivers/hid/hx-hid/Kconfig
 create mode 100644 drivers/hid/hx-hid/Makefile
 create mode 100644 drivers/hid/hx-hid/hx_acpi.c
 create mode 100644 drivers/hid/hx-hid/hx_core.c
 create mode 100644 drivers/hid/hx-hid/hx_core.h
 create mode 100644 drivers/hid/hx-hid/hx_hid.c
 create mode 100644 drivers/hid/hx-hid/hx_hid.h
 create mode 100644 drivers/hid/hx-hid/hx_ic_83102j.c
 create mode 100644 drivers/hid/hx-hid/hx_ic_83102j.h
 create mode 100644 drivers/hid/hx-hid/hx_ic_core.c
 create mode 100644 drivers/hid/hx-hid/hx_ic_core.h
 create mode 100644 drivers/hid/hx-hid/hx_inspect.c
 create mode 100644 drivers/hid/hx-hid/hx_inspect.h
 create mode 100644 drivers/hid/hx-hid/hx_of.c
 create mode 100644 drivers/hid/hx-hid/hx_plat.c
 create mode 100644 drivers/hid/hx-hid/hx_plat.h

-- 
2.25.1


