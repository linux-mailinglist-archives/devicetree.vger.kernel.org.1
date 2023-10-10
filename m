Return-Path: <devicetree+bounces-7143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B79397BF69E
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:59:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 733EA281B04
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 08:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 763A615AEB;
	Tue, 10 Oct 2023 08:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K6WXj1ng"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F2215AD1
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 08:59:43 +0000 (UTC)
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 874AAC9;
	Tue, 10 Oct 2023 01:59:37 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-57e40f0189aso3024620eaf.1;
        Tue, 10 Oct 2023 01:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696928376; x=1697533176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pS+UJr8Jh15KatUL4iYKP+zcuvxoJTxMHrLEZJKpOkQ=;
        b=K6WXj1ng7dqb4t7qocVL0+fTyUi5sf0+i9pYXXJW+/jCsfNmi1MruTcIMer1mITYPd
         EZHE8bm/jr2lI0qtQwyinoZMpu8yJDbD1WHQbIHJZJlzif9iuCGAYFFor8d8Z8b4RCc0
         hzGu6QywhKQZdqD+q7aIQ+3Y1vly3BOKYtXd/TiK8dHsivFlc8y3dJvd9kdxNL4p/fWE
         Agyswh3pw3L0FeTCDjyYxUMaX/dfzbP2Vz/7w7dqkpzuICp7W0/fxqVHrHb63zw0VQtD
         Rn//WSfYMdTAezupBvQgMREp4JHalJyl8naeqBPGwO4trh1IhCKRXlb6+Za/ZJwPlTzJ
         QtTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696928376; x=1697533176;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pS+UJr8Jh15KatUL4iYKP+zcuvxoJTxMHrLEZJKpOkQ=;
        b=pHQXsoaCGDbMTdTFG4CeH738SGI7gUgiE7OhUyKHoCK5/k4W1XtDPc0Z5LxtPOdgNY
         xDdnnsOym543ncQeuKAtklQr0uRCKNCutKdFQ1Ja6B01U4lBi/oAR/1Ggrikh7Yj3Ixc
         63O/S+85MYiQ1kFrYWDOOP1ndrGelczA1XrCU1FjR3edDf+lu5OiyrnQuCqNK7hFnlHH
         4WQS+1CvI1WuETRKumlNWspSbE/pNMjOJvEciRU2pr+dNTtyds+sQA4t2oMuUeXha+ph
         21esdsoBzDOP5kVp4TFMHeHDcgrroctXgLdzByrotmiavzB95tUEGSyujbui+Qs7Og9U
         Y7+A==
X-Gm-Message-State: AOJu0YwrUpLkT8UduDuVZBbYvnaR6MvDJtibRaUU39bJydWB5KqkBeVX
	NB4mLjX2mqqULlfeEJxx/JxTSrgQlmo=
X-Google-Smtp-Source: AGHT+IF3sj3BBK+nNQSLTnJbqNTU5PhRmbwDlbOXg4G8Le+kHH5TPWVZUzX0CmM/472bq9qgPYlXoA==
X-Received: by 2002:a05:6358:94a0:b0:141:162:b0cd with SMTP id i32-20020a05635894a000b001410162b0cdmr20061777rwb.19.1696928376389;
        Tue, 10 Oct 2023 01:59:36 -0700 (PDT)
Received: from octofox.hsd1.ca.comcast.net ([2601:646:a201:19d0:f462:7ab2:1aaa:db73])
        by smtp.gmail.com with ESMTPSA id o12-20020a17090a3d4c00b0027782f611d1sm12542731pjf.36.2023.10.10.01.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 01:59:36 -0700 (PDT)
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
Subject: [PATCH v5 0/5] serial: add drivers for the ESP32xx serial devices
Date: Tue, 10 Oct 2023 01:59:21 -0700
Message-Id: <20231010085926.1021667-1-jcmvbkbc@gmail.com>
X-Mailer: git-send-email 2.30.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	FROM_LOCAL_NOVOWEL,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

this series adds drivers for the UART and ACM gadget controllers found
in the Espressif ESP32 and ESP32S3 SoCs.

Changes v4->v5:
- address review comments, listed in each patch
- rebase on top of change introducing PORT_GENERIC

Changes v3->v4:
- address review comments, listed in each patch
- add reviewed-by tags

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
  drivers/tty/serial: add ESP32S3 ACM gadget driver

 .../bindings/serial/esp,esp32-acm.yaml        |  42 +
 .../bindings/serial/esp,esp32-uart.yaml       |  51 ++
 drivers/tty/serial/Kconfig                    |  26 +
 drivers/tty/serial/Makefile                   |   2 +
 drivers/tty/serial/esp32_acm.c                | 459 +++++++++++
 drivers/tty/serial/esp32_uart.c               | 741 ++++++++++++++++++
 drivers/tty/serial/serial_core.c              |   4 +-
 7 files changed, 1322 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
 create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
 create mode 100644 drivers/tty/serial/esp32_acm.c
 create mode 100644 drivers/tty/serial/esp32_uart.c

-- 
2.30.2


