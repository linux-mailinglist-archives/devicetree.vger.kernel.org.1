Return-Path: <devicetree+bounces-1555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A95697A7052
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:27:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5C521C2084C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F1D17D8;
	Wed, 20 Sep 2023 02:27:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF60EA49
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:27:01 +0000 (UTC)
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA866C5;
	Tue, 19 Sep 2023 19:26:59 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-690ce3c55f1so865133b3a.0;
        Tue, 19 Sep 2023 19:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695176819; x=1695781619; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4TeNOz0+PeBM7BS0zrNE2nATuP8C0d/z2oGULXDhCZQ=;
        b=BqFKLBpvLiycvX+dyOV+UzlLac0xVAzO8/Hqt9ICNk16lziniDUXae6X6Hn0oASf3W
         +bbwFhAsDbwiOYeigDKKFiRWXBEEnOHYEqd2m+ifyEBVJqY1CQ7sfKdSfFQW2WtKtaZv
         acn+VpfNZYXoAOfv27S7q4Ym6XwWxOOs62ZkWZdG2NI/6fyXB1PXUYBP9pkJ6HWjhejZ
         tszmsHWbKDD/UMLsjhDVyBIRcgJejI33VwPJbrOLjvhZXR+ojeM5gDzXKiY59+lTgLro
         Fj4U7MKYx5CIq6XJmRuIyDHcyj2OPIHGUIBZAx1ONgoHjm7YAWP+VL7KSypeRpeh3Q2L
         V/hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695176819; x=1695781619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4TeNOz0+PeBM7BS0zrNE2nATuP8C0d/z2oGULXDhCZQ=;
        b=oB5C6hz36XXf2RgO5jTDcY/M/UsUKGSXxNrB4GyZ0iWt/ew6OaqJqXkGzWX8x9bZDk
         1uA3rBp6VrwEZDOgjBI1K0ViZqCuOVyNgywxTokoi4TtJp40s+wb7OjCaFNQ5+Q2Jzrz
         PFTeA7ZJSTGowG4b7K4yW7eZjbBbeA8DYHecsCI1quXdL7iAnOHNzpgQrsBfTRqq9gtZ
         YrUWkejwdA/uczrVvqqYCro3+SHMLlDpTVZgt9J+bpIGDpubnQNo2OrZe/qonFX4pKlE
         8BN3VpJJj5pgwhlPwlo5hGTIRL1UlSb5lVk+co9AmM36aYyuK+/5PX/6Dd8gHAaUULEM
         Al9w==
X-Gm-Message-State: AOJu0YxeEEv6FGkr2IIszyVyy+UOtQgW90HgguuqlrqXcYtIDQNU7sDU
	P2xCTkCGsS7mu46pXzZ3O1ioyq5OyUg=
X-Google-Smtp-Source: AGHT+IGBXJfd4cgxjFnjRb5i6arxZ4iVWAZIY64RPJk1KFlERIjGyhc8lXcthOwLN9wlP0Ha2b8rzw==
X-Received: by 2002:a05:6a00:21cc:b0:68b:bf33:2957 with SMTP id t12-20020a056a0021cc00b0068bbf332957mr1583146pfj.22.1695176818903;
        Tue, 19 Sep 2023 19:26:58 -0700 (PDT)
Received: from octofox.hsd1.ca.comcast.net ([2601:646:a201:19d0:9ca3:318f:421e:68cb])
        by smtp.gmail.com with ESMTPSA id p15-20020a62ab0f000000b0067aea93af40sm9224757pff.2.2023.09.19.19.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 19:26:57 -0700 (PDT)
From: Max Filippov <jcmvbkbc@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Max Filippov <jcmvbkbc@gmail.com>
Subject: [PATCH v2 0/5] serial: add drivers for the ESP32xx serial devices
Date: Tue, 19 Sep 2023 19:26:39 -0700
Message-Id: <20230920022644.2712651-1-jcmvbkbc@gmail.com>
X-Mailer: git-send-email 2.30.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	FROM_LOCAL_NOVOWEL,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

this series adds drivers for the UART and ACM controllers found in the
Espressif ESP32 and ESP32S3 SoCs.

Changes v1->v2:
- address review comments, listed in each patch
- add cleanup for the uart_get_baud_rate function

Max Filippov (5):
  serial: core: tidy invalid baudrate handling in uart_get_baud_rate
  dt-bindings: serial: document esp32-uart
  drivers/tty/serial: add driver for the ESP32 UART
  dt-bindings: serial: document esp32s3-acm
  drivers/tty/serial: add ESP32S3 ACM device driver

 .../bindings/serial/esp,esp32-acm.yaml        |  39 +
 .../bindings/serial/esp,esp32-uart.yaml       |  48 ++
 drivers/tty/serial/Kconfig                    |  27 +
 drivers/tty/serial/Makefile                   |   2 +
 drivers/tty/serial/esp32_acm.c                | 458 +++++++++++
 drivers/tty/serial/esp32_uart.c               | 749 ++++++++++++++++++
 drivers/tty/serial/serial_core.c              |   5 +-
 include/uapi/linux/serial_core.h              |   6 +
 8 files changed, 1331 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
 create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
 create mode 100644 drivers/tty/serial/esp32_acm.c
 create mode 100644 drivers/tty/serial/esp32_uart.c

-- 
2.30.2


