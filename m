Return-Path: <devicetree+bounces-2315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F377AA8BD
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:08:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BAEBB282E59
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9C2715496;
	Fri, 22 Sep 2023 06:08:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B7D7494
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 06:08:04 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 665BD114
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 23:08:02 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c131ddfeb8so20050621fa.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 23:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695362880; x=1695967680; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ATQufBNbcXFkZmil1MnT/r/hXYDjTU/4NuEdLcc8JTo=;
        b=l699rsK9Phf4Xn4k4imcX9TnWvGgsMZP9SmLEPuHBjWtVHhXQflI8lgH3j61mxMuX0
         w9Bc7x/dNAL4UlAPuHav/nk2T/7nPUZ8702ahwkvTSUqq7Vq/kUrcK58oynBqdrW5BkX
         Sa8pbKlDOv8o1gP2RUQBVHqJQxSjkx/y/Kv4MXs0bde6GafrNzt7nk38IyNK+/yzW2DT
         VyPVSgCydqFxVF8C945J5+hZV67O6keKn/6AHLADBVQjsuxd7CCTob1c50TH/bIW9hc1
         W1c21TxL5GQpC4p7pdyXWM5isXcmfrKG+oJdpghFGlEpSQ9DtUa8q4I0qpptm74FOFiR
         LRpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695362880; x=1695967680;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ATQufBNbcXFkZmil1MnT/r/hXYDjTU/4NuEdLcc8JTo=;
        b=phwz2advDOBQ8lJWoQR2VK5N+hS235vWHwoFgRTEQdl84zjA6DoiMTfT79ihLwH9wG
         Z4/5j2yzSWZpNmHwy/yEfjm+7T31oWpEfaW7GgZcszjJvW5hpM2hLE2wWCGorXC/AbUp
         OkLJSMg1n8xBPETzykm+CQ/L5pjLmjQbKRUmzyu5evwiUGtMfFuvgSUYmjZfNcX5aswW
         InLTZZpp84MdptR9Dy+quCE4YABLEhY7rXbDHZlL+DwnTqM2w9y88+tR/FSfpwIqMnxf
         +Vc3NCVIp/0fLNWcumMd6sVoRkvpMdbDSNAmOgUDhK4efJlPIj/mXEwhpHfNbHuU5wFo
         p4oQ==
X-Gm-Message-State: AOJu0Yw1fvwWbHadBBzXC+3eLF8Ra97PA42Q7KMLZ5v59F1pSmrZyBJ+
	49HwglsMrsFR8814YRdaXmanFQ==
X-Google-Smtp-Source: AGHT+IHeYRzOOUP72mWc4KIVtAc59HTLZGpwZ0ffTWvHbWpzrXNk2EqAvpcwHRxm3odwxvYxq99V7Q==
X-Received: by 2002:a2e:8683:0:b0:2ba:6519:c50f with SMTP id l3-20020a2e8683000000b002ba6519c50fmr6372127lji.52.1695362880343;
        Thu, 21 Sep 2023 23:08:00 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id w22-20020a05651c103600b002b9f4841913sm754329ljm.1.2023.09.21.23.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 23:07:59 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/2] gpio: ixp4xx: Handle external clock output
Date: Fri, 22 Sep 2023 08:07:55 +0200
Message-Id: <20230922-ixp4xx-gpio-clocks-v2-0-0215ee10976d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADsvDWUC/32NQQqDMBBFryKz7hQdUzRdeY/iwqRJHComJEVSx
 Ls39QBdvgf//R2SiWwS3Ksdotk4sV8L0KUCPU+rM8jPwkA1tbWkBjkHkTO6wB714vUrYWd6ol5
 aoVQLZRiisZzP6GMsPHN6+/g5P7bmZ//mtgZrvHVCClJWCjENC69T9FcfHYzHcXwBVz0M7LUAA
 AA=
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
 Krzysztof Halasa <khalasa@piap.pl>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The GPIO block on the very legacy IXP4xx GPIO can provide
a generated clock output on GPIO 14 and GPIO 15. This
provides a straight-forward solution with a flag for each
clock output.

More complicated solutions are thinkable, but I deemed them
overdesigned for this legacy SoC.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- Fixed formatting pipe | in bindings
- Fixed som blank lines in bindings
- When we will just blank out the clock register settings,
  don't spend time reading the initial value.
- Link to v1: https://lore.kernel.org/r/20230921-ixp4xx-gpio-clocks-v1-0-574942bf944a@linaro.org

---
Linus Walleij (2):
      gpio: Rewrite IXP4xx GPIO bindings in schema
      gpio: ixp4xx: Handle clock output on pin 14 and 15

 .../devicetree/bindings/gpio/intel,ixp4xx-gpio.txt | 38 -----------
 .../bindings/gpio/intel,ixp4xx-gpio.yaml           | 73 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 drivers/gpio/gpio-ixp4xx.c                         | 40 +++++++++++-
 4 files changed, 112 insertions(+), 41 deletions(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230921-ixp4xx-gpio-clocks-7e82289f4bb3

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


