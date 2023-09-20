Return-Path: <devicetree+bounces-1914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CD37A8F70
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 00:31:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 309E81C20ABC
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 22:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7C6B42C0F;
	Wed, 20 Sep 2023 22:24:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7475D42BEB
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 22:24:01 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35EBA135
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:23:52 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50308217223so599253e87.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695248630; x=1695853430; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jR1kBH2yPAoDrpPyCmiq+S860RDZqntfgvwfMKAURlY=;
        b=tP8rYbNVcTi45kIObh/+t4+iVmT28or+bPinceavu2qCkVF+E/r8kdUnfNTbtKIOny
         U3+59TJGWeQvcsyivSp7quYHdGjBJihs8WrNuzGEyUCKmLNMOGKtqwHTsrAmfpU0lKQb
         4cDGDjU5wX7IVpeGdTVD7D+5hTFf1sT0qpjaijCMrnlaAySrS2CoDkP8s7iBlj3lhomn
         n90dSfKxRSy4UqXQ7cgfn8AgZq5m8ws3yp3P99BmqH39nKGCFEaYHwNBJuZRNRerJekw
         wDaePxR9Shhsp94My2wxvthk35oSHNAuV/7ZMxnOXPzrnX2kr49VK2wXCd6faqWYJ6fx
         glkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695248630; x=1695853430;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jR1kBH2yPAoDrpPyCmiq+S860RDZqntfgvwfMKAURlY=;
        b=Q+J/1c3+dwOJ6iR4z2/1/wfrLuJUVvrqt7ecfk3PkzDY/kOQ/lZka02dtZrytqhdCc
         PY8t2BIhADjBIu5Gj+VS7fENmh2Jnf7o+FmPOYzDg2e7Nz03QYs2n9ER/EzXZYUXfwjS
         BxhbJHQbUcVaJbDdGeLtow57UIpumDoMTUvhTvpv1oIoAtRMhkRi4iokibMEQ9mLzub1
         qDOsZlT/iEeq0LatvCW7bu0nx2UggBNIFvREFZfCJcRNEQHHwtxKqYyaDpcRr5bbHiFX
         9zjmI3Nf9Jm0ZQZMZtF4hnW89eArB1jALnhEi2KJJE7Fac+ofT782B5m5jqf7gSZ+PFK
         HroQ==
X-Gm-Message-State: AOJu0YxO449grx9hMBbARDfjfVdPxuWR/CAOmk45aWNnOqf4yo6aHolR
	ZXMUHQJL7wBxWVbCwO7pB5tefRccoaV7ASI+vdo=
X-Google-Smtp-Source: AGHT+IGrTKOvNc+sfjk9kwfUoKjO5iAktlPUvUR5xMaHp6VFLlMa0p5fwsDhBwnnb/PP+HiK/IHP3A==
X-Received: by 2002:ac2:5e65:0:b0:502:fdca:2ea6 with SMTP id a5-20020ac25e65000000b00502fdca2ea6mr3015106lfr.61.1695248630097;
        Wed, 20 Sep 2023 15:23:50 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id u14-20020ac2518e000000b004fe0fead9e2sm14557lfi.165.2023.09.20.15.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 15:23:49 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] gpio: ixp4xx: Handle external clock output
Date: Thu, 21 Sep 2023 00:23:44 +0200
Message-Id: <20230921-ixp4xx-gpio-clocks-v1-0-574942bf944a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPBwC2UC/x3MQQqAIBBA0avIrBvIKSi7SrQom2ooVBRCiO6et
 HyL/x9IHIUTDOqByLck8a5AVwrsMbudUdZioJqa2pBGyaHNGfcgHu3l7Zmw456oN1u7LA2UMET
 eJP/TcXrfD1iQ7uJkAAAA
To: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
 Krzysztof Halasa <khalasa@piap.pl>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
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
Linus Walleij (2):
      gpio: Rewrite IXP4xx GPIO bindings in schema
      gpio: ixp4xx: Handle clock output on pin 14 and 15

 .../devicetree/bindings/gpio/intel,ixp4xx-gpio.txt | 38 ------------
 .../bindings/gpio/intel,ixp4xx-gpio.yaml           | 70 ++++++++++++++++++++++
 MAINTAINERS                                        |  2 +-
 drivers/gpio/gpio-ixp4xx.c                         | 36 ++++++++++-
 4 files changed, 106 insertions(+), 40 deletions(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230921-ixp4xx-gpio-clocks-7e82289f4bb3

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


