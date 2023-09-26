Return-Path: <devicetree+bounces-3589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 846927AF5C7
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 23:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 12BDC28294E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 469644A559;
	Tue, 26 Sep 2023 21:48:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27143717A
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 21:48:20 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE1497EDC
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:48:16 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50309daf971so15868565e87.3
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695764895; x=1696369695; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XtIGAJAIn5DFyAAok8KJTgELmOKMBX9AjGhOfdYwP9U=;
        b=lsTrmsIPu0gmn8AcD60ok0KEm1Hg/8coLlGwBA4bCQN/ZCAzNgtj6zXpZUEN1Q0e/S
         ZmIt4HSagXgR59rsCtpRrbJIOECxGJ1WmYzU6z0XT9qiNjz2OUOX4viNs70806Tli21s
         vG6YBqXBP4KHzGhAwS7ioHianYwlD1guOZYi6/fr1SF1ZnBMDKyPmpzSMNNbsmSiBtvp
         ij75kfDitb3p/wRv6vm4sJgwROJoqir3uE+apqB3giHrQrCHw8bwgrfDudk6hS1AWua8
         8GpUcai+VMu2P7kzIBfpQLB4MRyzMzpD7c3LoPTyxgnVMmF2Ey/uHpN/6bgEt0tsWqpQ
         qCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695764895; x=1696369695;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XtIGAJAIn5DFyAAok8KJTgELmOKMBX9AjGhOfdYwP9U=;
        b=qjXS4hY5olx5s/SQPc3wg0n02rWelZTCNw9rqRfZZUQsiPoJNdLh9f+tJ0pIqXBYL3
         u+qRvSAHm5y/In7aejMwl/GX4ahK6LPJOLgQAhzFS1Ah+5SjLyvnKX2l4HOL6UO+JWJT
         zhc3VBvyJtUkCeNcanBmqKSSRAY81NpLRIfpBPAAGYr1yB4r5cCk8ayv/9F0RR9nraAL
         cn5AdI1zcY/kmnHE8Mt0K6iCGfhVqDU2egbmGAloVOUtjP6PQjBDjlFr/n/u4Li2Zfnr
         kWvQ0n2TgN9am/G+eJrsDjdJNRCpqakd8ghu8siSTFciaKgjkoseJFim8ghB5mEDT46Z
         GBDg==
X-Gm-Message-State: AOJu0YxQ3aXI7sMCAB/dLzkFJPX5fVAIhm4hwLc5rMTFNqOyK9bpazmy
	wbtYkqKiWK6h84+Uf1H5/Tn7sw==
X-Google-Smtp-Source: AGHT+IGZJN6D1LppUajBIqaDv5vMWuxw8Tz7SHNssCZTCzblqzQErVamJzS0AJFKZ15Ta+fT3NcmDg==
X-Received: by 2002:ac2:4c31:0:b0:500:d8d6:fc5a with SMTP id u17-20020ac24c31000000b00500d8d6fc5amr33695lfq.37.1695764894943;
        Tue, 26 Sep 2023 14:48:14 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id f10-20020a19ae0a000000b0050334e5f5a8sm2299982lfc.271.2023.09.26.14.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 14:48:14 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/3] Rewrite GPIO LED trigger to use trigger-sources
Date: Tue, 26 Sep 2023 23:48:10 +0200
Message-Id: <20230926-gpio-led-trigger-dt-v2-0-e06e458b788e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJpRE2UC/22NQQqDMBBFryKz7pRkxBa76j2Ki9iMcUCMTIK0i
 HdvKnTX5Xvw398gsQonuFUbKK+SJM4F6FTBc3RzYBRfGMhQbVprMSwScWKPWSUEVvQZW6K+Z7K
 DI4KyXJQHeR3VR1d4lJSjvo+T1X7tr0d/e6tFg7ZvDNfX5uK9u08yO43nqAG6fd8/I9dZIbcAA
 AA=
To: =?utf-8?q?Jan_Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>, 
 Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: linux-leds@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This rewrites the platform-data GPIO LED trigger to instead
use fwnode trigger-sources to describe the LED used.

This will work out-of-the-box with e.g. device tree.

Tested with real hardware by modifying a device tree adding
trigger-sources to a LED and trigger-source-cells to
a gpio chip, setting the trigger to a pushbutton. It works
like a charm, once the trigger is set to "gpio".

Adding trigger-sources to GPIO chips in a simple way requires
this patch to be merged to the generic dtschema:
https://lore.kernel.org/linux-devicetree/20230916-gpio-triggers-v1-1-6e5052bead9a@linaro.org/

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- Add a quirk to gpiolib-of to allow to read out trigger-sources as
  any regular GPIO.
- Fix a use-after-free bug found by Dan Carpenter.
- Tested on hardware.
- Link to v1: https://lore.kernel.org/r/20230912-gpio-led-trigger-dt-v1-0-1b50e3756dda@linaro.org

---
Linus Walleij (3):
      gpiolib: of: Allow "trigger-sources" to reference a GPIO
      dt-bindings: leds: Mention GPIO triggers
      leds: triggers: gpio: Rewrite to use trigger-sources

 Documentation/devicetree/bindings/leds/common.yaml |   2 +
 drivers/gpio/gpiolib-of.c                          |  28 +++++
 drivers/leds/trigger/Kconfig                       |   5 +-
 drivers/leds/trigger/ledtrig-gpio.c                | 137 ++++++---------------
 4 files changed, 71 insertions(+), 101 deletions(-)
---
base-commit: 8eb1c4d9b44873d30efc1846148944534f4a017d
change-id: 20230911-gpio-led-trigger-dt-922bbe21fa22

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


