Return-Path: <devicetree+bounces-5992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3956C7B9A1E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 04:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DEA3A2819A4
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 02:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A8415B8;
	Thu,  5 Oct 2023 02:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FGMGqy6N"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABB97E
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:59:17 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13BAB13A
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 19:59:16 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-69361132a60so87382b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 19:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696474755; x=1697079555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ids3/+45hUvtPMVAGYEAW18IR7eG26OSuvk1q0KIeuI=;
        b=FGMGqy6NdreEQmknJnTxdfzb0g7+R+QZ5XXvrcschnSESAUJkX0aQRSl3gb8wuJfJj
         uxm6N9mGTpvXb4QH/5JaK1FWkBiyhRp5oOUR+51TjHDxy+9S0xRwccVLfLuPLCc0A2oc
         /MKDOrmBx3amZtSWFZds+tpLV1BM+Iqmu5e2euCYLNSVxhP6xm9WbykXc4QIJcLqlECX
         NBTQ5E6HmpAjYDNxtQ9KqNiYj9VV6mzorahh8ih8tnjAKusLG5jBOs+Kj/OY8SeoUyP/
         6R2fjghUlJlNMtFeh27+Wi9+jnvKDzUnH7J2LQaHIFcay96/njsWCWjL8PfcZFFAsw9Z
         Yo8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696474755; x=1697079555;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ids3/+45hUvtPMVAGYEAW18IR7eG26OSuvk1q0KIeuI=;
        b=dHjH1ZDEcb+3Zf30r7SZ+LW3088nklmkFhE8u8VPDnPhrb5rruR3xSP4wFlbOp+spi
         Lr7SyVeTuAhkYuyMAKfekE/Ur5+prNXnHv+UuUGeCwRPLvgaxPDgl0+HBHyqmjEO/Cbh
         qF88cI+ReiFPhUCN2hvwL6tH7FZyWRWiPUTihj6edG+uxHibspkDIh1W6d0g+WR9laoh
         2EgXTH0MmuHycg9INuGLQR73duaNogJf8S1Tkqs3DlWB7BV4iN4DV3s7gTpsT4GWnILu
         CHS0Ih9fntLsLC3Z8NKPmyMRLwCtX6/355aZ5aKihpcd4snsaH3v3YLfCRuxvfLL6HKL
         PPxg==
X-Gm-Message-State: AOJu0YyKdKHFf0uB1OxxlFJvDJnkuEKATrWlm6F19h/xbTJ+lxQXqwpI
	yEoAE733W9Ra1DetHBow1v3AlA==
X-Google-Smtp-Source: AGHT+IHhyPq2bAIXq1Er7nrpaR11YBXxhlcU8ii3pCisXRHmjRUTM4omwHgQA+YxqvflG1dDFWM5wA==
X-Received: by 2002:a05:6a21:a587:b0:163:c167:964a with SMTP id gd7-20020a056a21a58700b00163c167964amr4845452pzc.1.1696474755450;
        Wed, 04 Oct 2023 19:59:15 -0700 (PDT)
Received: from octopus.. ([2400:4050:c3e1:100:a16d:fce2:497:afb7])
        by smtp.gmail.com with ESMTPSA id b18-20020a637152000000b005782ad723casm269265pgn.27.2023.10.04.19.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 19:59:15 -0700 (PDT)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: sudeep.holla@arm.com,
	cristian.marussi@arm.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org
Cc: Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	AKASHI Takahiro <takahiro.akashi@linaro.org>
Subject: [RFC v2 0/5] gpio: add pinctrl based generic gpio driver
Date: Thu,  5 Oct 2023 11:58:38 +0900
Message-Id: <20231005025843.508689-1-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This is a revised version of my previous RFC[1]. Although I modified
the commits to make them look SCMI-independent, they are still posted
as RFC because I have never tested them on real hardware.

(background)
I'm currently working on implementing SCMI pinctrl/gpio drivers
on U-Boot[2]. Although the pinctrl driver for the kernel[3] was submitted
by EPAM, it doesn't contain the gpio driver and I believe that we should
discuss a couple of points on the kernel side to finalize my design for
U-Boot. 

So this RFC is intended for reviews, especially to raise some issues.

1) how to obtain a value on an input pin
   All the existing gpio drivers are set to obtain a value on an input
   pin by accessing the hardware directly. In SCMI case, however, this is
   just impossible in its nature and must be supported via a protocol
   using "Input-value" configuration type. (See the spec[4], table-23.)

   The current pinconf framework is missing the feature (the pinconf
   parameter and a helper function). See patch#1, #2 and #3.

   Please note that there is an issue around the pin configuration in
   EPAM's current pinctrl driver as I commented[5].

2) DT bindings
   I would like to propose a generic binding for pinctrl based gpio driver.
   This allows a "consumer" driver to handle gpio pins like as other
   normal gpio controllers support. (patch#5)

3) generic GPIO driver
   Based on (2), I tried to prototype a generic driver in patch#4.
   Thanks to a set of existing pinctrl_gpio helper functions, except (1),
   It seems that the driver can be implemented not relying on pin controller
   specific code, at least for SCMI pinctrl.

I will appreciate any comments.

-Takahiro Akashi

[1] https://lkml.iu.edu//hypermail/linux/kernel/2310.0/00362.html
[2] https://lists.denx.de/pipermail/u-boot/2023-September/529765.html
[3] https://lkml.iu.edu/hypermail/linux/kernel/2308.1/01082.html
[4] https://developer.arm.com/documentation/den0056/
[5] https://lkml.iu.edu/hypermail/linux/kernel/2308.2/07483.html

AKASHI Takahiro (5):
  pinctrl: define PIN_CONFIG_INPUT
  pinctrl: always export pin_config_get_for_pin()
  pinctrl: add pinctrl_gpio_get_config()
  gpio: add pinctrl based generic gpio driver
  dt-bindings: gpio: Add bindings for pinctrl based generic gpio driver

 .../bindings/gpio/pin-control-gpio.yaml       |  55 ++++++
 drivers/gpio/Kconfig                          |   7 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-by-pinctrl.c                | 165 ++++++++++++++++++
 drivers/pinctrl/core.c                        |  19 ++
 drivers/pinctrl/pinconf.h                     |  10 +-
 include/linux/pinctrl/consumer.h              |   8 +
 include/linux/pinctrl/pinconf-generic.h       |   5 +
 8 files changed, 268 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
 create mode 100644 drivers/gpio/gpio-by-pinctrl.c

-- 
2.34.1


