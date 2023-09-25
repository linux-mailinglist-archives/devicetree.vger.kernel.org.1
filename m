Return-Path: <devicetree+bounces-3054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 292AC7AD3A9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D91D9281482
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62B3612B79;
	Mon, 25 Sep 2023 08:48:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11147568C
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:48:47 +0000 (UTC)
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C97CCAB;
	Mon, 25 Sep 2023 01:48:46 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3aca1543608so3972595b6e.0;
        Mon, 25 Sep 2023 01:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695631726; x=1696236526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yPJ+3v8IOYRN+sZVaPmkV2aQfR1DvyQl9AclCfckmVw=;
        b=d1GFOBp0JrI664v9zquznNWKxNr7dNMlUoHJS9Yf7AsxVdPyX2MUqOjGQ55yBA32mj
         0eib3bYTUtbI0zaNmEqfMiMrliKhxdREJRnAnpGmm5hiosJ0vMD81oEvb0PqqZdJqGRD
         G5rhjHrGTvT4AOhbCWyR5RtOnAtYNR4kixUL7fzx78tC9/Ul3pYnM3tt0u/g5WdhIbw/
         yjf0ceodNi7aw0792qoc2GyN0NLiLHEqkEEpO7mdd9bqQPIvy2tBr8djdQVrV9Rv3Ac+
         6fHSLiiN/12rhfMLbJ3uL19GQ+MoMVruhUMNVWRh7+LxvZLZTFlQZwH9r/x+c4q6O1te
         9l9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695631726; x=1696236526;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yPJ+3v8IOYRN+sZVaPmkV2aQfR1DvyQl9AclCfckmVw=;
        b=S8rzhb8WMIU16bPBrYze2JUkJdkWL3Kj4EI0BObVhUoR2U1S+TFxUl+u0hLuvX9hi5
         4AYx8Z+kp4iznMaMT/H46LiE1TtbL7XwjbCDey1unmGPPL3VR+Mxcqf3yduXBBLFh38S
         bUfw0s4tPPXOkXEc9sMIvYgm3n7t8YtBeLQKvykO2NrkBy+QKfEnBtUWPEa8cG9RvbNM
         hDBurngyjutSMX5xD1hi4UkyAr8I/n6Ru9P+eSoNaui1w99b1gzVLbPxlRLDWEwhaI8F
         FPiW7CypqVxJgu+r/fClLGHy59ioS0nxNPkIGK7ivQF4EMs+FD0AA1uNBrZAvbUF0X4H
         19IQ==
X-Gm-Message-State: AOJu0YxSr+ZGP8oBQzBQbRfZfEb7BCCgLrUTgXe1X3AEg9IXUW5UA+hN
	Hr6GQeg+Lja+VCqbAFR6yQgzxzHMz+Q=
X-Google-Smtp-Source: AGHT+IHh9hH6MoxKgalPFqOg/TE46W4aOCGn+Ge6yIDFMiehR1QC4s+gbJDY1rbjW2Ih3A35e/hrIQ==
X-Received: by 2002:a05:6808:14a:b0:3ae:17af:7387 with SMTP id h10-20020a056808014a00b003ae17af7387mr8222096oie.43.1695631725786;
        Mon, 25 Sep 2023 01:48:45 -0700 (PDT)
Received: from octofox.hsd1.ca.comcast.net ([2601:646:a201:19d0:bc97:e554:1bd8:be33])
        by smtp.gmail.com with ESMTPSA id t63-20020a638142000000b0055c178a8df1sm7406376pgd.94.2023.09.25.01.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 01:48:45 -0700 (PDT)
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
Subject: [PATCH v3 0/5] serial: add drivers for the ESP32xx serial devices
Date: Mon, 25 Sep 2023 01:48:20 -0700
Message-Id: <20230925084825.4160708-1-jcmvbkbc@gmail.com>
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

Changes v2->v3:
- address review comments, listed in each patch

Changes v1->v2:
- address review comments, listed in each patch
- add cleanup for the uart_get_baud_rate function

Max Filippov (5):
  serial: core: tidy invalid baudrate handling in uart_get_baud_rate
  dt-bindings: serial: document esp32-uart
  drivers/tty/serial: add driver for the ESP32 UART
  dt-bindings: serial: document esp32s3-acm
  drivers/tty/serial: add ESP32S3 ACM device driver

 .../bindings/serial/esp,esp32-acm.yaml        |  42 +
 .../bindings/serial/esp,esp32-uart.yaml       |  51 ++
 drivers/tty/serial/Kconfig                    |  27 +
 drivers/tty/serial/Makefile                   |   2 +
 drivers/tty/serial/esp32_acm.c                | 459 +++++++++++
 drivers/tty/serial/esp32_uart.c               | 741 ++++++++++++++++++
 drivers/tty/serial/serial_core.c              |   5 +-
 include/uapi/linux/serial_core.h              |   6 +
 8 files changed, 1330 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
 create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
 create mode 100644 drivers/tty/serial/esp32_acm.c
 create mode 100644 drivers/tty/serial/esp32_uart.c

-- 
2.30.2


