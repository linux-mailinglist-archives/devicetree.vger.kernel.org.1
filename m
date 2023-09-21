Return-Path: <devicetree+bounces-2215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEDA7A9FC6
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 22:28:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1372D281482
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 488E418B1F;
	Thu, 21 Sep 2023 20:28:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA23E182D1
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 20:28:05 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83F1FADF3A
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 13:27:45 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c00c0f11b2so22269571fa.1
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 13:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695328063; x=1695932863; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xXVv8prOXbqNdf/wtS6ZRwEHhVWRgSDlsHC0kWKmncA=;
        b=vRyKrj3LeDmhwR9GCt9ycEHVf4CdhSFQ7Mypg/saMFY2AMH/c/9i+WxBnXDdR+ngzM
         yYOLgb1D523FKzdBe15ThOCcEnRYXAhGyCPUqQeL39lDK9M9lKwQf3Y8VhHhlN4J3GEI
         6AVQuS9mrKzpLy+grqcyMAxJ5JTi300dB1Hlfx0zqp2noIawD6NeLkCtYCiGTryPmqbb
         Hf3+VNKoba4PV7+0n2vvC4UhFm0mllLM5dDTc9hM9zawGw7+CFYecjxT9NlBAIwj6DEI
         ANbKCqi5NXhvxjbas7zU4EHl2Di6OTY0t61oSBVOlq7RuogP9BqXLJe4Kp1lHYLYmmxZ
         oKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695328063; x=1695932863;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xXVv8prOXbqNdf/wtS6ZRwEHhVWRgSDlsHC0kWKmncA=;
        b=XK6NcM0U5dZH/RqdDJnA5X9dObru7fyJk6G767OovVMP7x5TzhXWhtDFluKW1yNRvA
         aHbynkoIoCpH1wLQgVyaa3EFub6oMRZ3ZFA6OBtJ4PQz2F1yoQRHS4f9X2G+kSRrIMoX
         g/k7r8zp4N8ci/lHKwyr62xKOf7QfEGp0/LkWA4ghlBkNAlvoPUNevP2Auk7JhpCoJXC
         jQytZgwV6IwJYqYxjwWZwiAwZiLbKiTOwknVLrNvLN1vJcudSeVsYg9kjL6Kbrgz/CNX
         fa/iHyruauNDlp1KkcIXL7ibMJ5hfqA8UiRArblFMYflsULhHD/IzxcF4H3HiMU+g6ON
         O08Q==
X-Gm-Message-State: AOJu0YxTN7rVfQAKXKjpI3fbSlyd06cdyZecrhKm19oN7TaBJ2ZKGtTB
	vS4Euhb3eCqcbvURvUKPBf+n3Q==
X-Google-Smtp-Source: AGHT+IFqZfvz6kKPcHp95KxBv8qkusv/HSjja5Xmrc0E+mTnqSt2vAcovOTqmxcoxT5itMfmM+xlQA==
X-Received: by 2002:a2e:9904:0:b0:2bc:f1d3:b54c with SMTP id v4-20020a2e9904000000b002bcf1d3b54cmr6012834lji.20.1695328063530;
        Thu, 21 Sep 2023 13:27:43 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id y2-20020a2eb002000000b002bcbc62dc22sm524892ljk.86.2023.09.21.13.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 13:27:43 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] Support byte access in the RTC7301 driver
Date: Thu, 21 Sep 2023 22:27:41 +0200
Message-Id: <20230921-rtc-7301-regwidth-v1-0-1900556181bf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD2nDGUC/x2MOQ6AIBAAv0K2loSj8PiKseBYYRs0QNSE+HeJ3
 Uwx06BgJiywsAYZLyp0pC5yYOCiSQE5+e6ghNJiVpLn6vioRQcMN/kauZyskai9QG+hd2fGnZ7
 /uW7v+wFLjkZ9YwAAAA==
To: Alessandro Zummo <a.zummo@towertech.it>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akinobu Mita <akinobu.mita@gmail.com>
Cc: Jose Vasconcellos <jvasco@verizon.net>, linux-rtc@vger.kernel.org, 
 devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This augments the Epson RTC7301 driver so that is supports
both 8bit byte and 32bit word access.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      rtc: rtc7301: Rewrite bindings in schema
      rtc: rtc7301: Support byte-addressed IO

 .../devicetree/bindings/rtc/epson,rtc7301.txt      | 16 -------
 .../devicetree/bindings/rtc/epson,rtc7301.yaml     | 49 ++++++++++++++++++++++
 drivers/rtc/rtc-r7301.c                            | 32 +++++++++++++-
 3 files changed, 79 insertions(+), 18 deletions(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230921-rtc-7301-regwidth-18ba1e3d0edb

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


