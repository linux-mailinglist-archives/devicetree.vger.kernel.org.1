Return-Path: <devicetree+bounces-7392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C16787C04D2
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:42:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F24FD1C20B5D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B0AE321A4;
	Tue, 10 Oct 2023 19:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SAgt1E3p"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B41332188
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:42:17 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57CB894
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:42:15 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5046bf37daeso7913299e87.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696966933; x=1697571733; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PB6bOhIyAV2tkdSUHTyGXIJ7SFfywyzy0c+WFbZpE2Q=;
        b=SAgt1E3psPFF2sYLhWzrlACBk2K+sg9FOe9PfO1Urc9zNdE6xr+GqQ8fQuVYsQsqYv
         PD/Gmd5EjBlLYKPt+CWozrNgucZ6z8WYbNa679W3+ecGvrqjcsIF1QP2xg1CqL8VqMW+
         aqmsxANN/V9BQc/UhuLez+Euwg6A9N7F+/tDEyuBVCpA1JmUGg8Wj0BtPHAnLcmDe8zE
         bk/w1ELpuryACHzrDUfzeQGKw9EebZYj+DHoTSSRTkcylE8H6rgzqW2WDuQK4YqmqXDz
         ryJGQ8g26jh9Y4YMYu5VlggiN/hzz3UxlqKnwwwK2Ue5Xe0tBguUIH0DDRdXg5aRb1IL
         OdmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696966933; x=1697571733;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PB6bOhIyAV2tkdSUHTyGXIJ7SFfywyzy0c+WFbZpE2Q=;
        b=IYMGzBrUGFGKHmG53AUDBGPTnmi72fm1biVh06xkP07dBPJ4dgDUZNHGzhjkJ0VUwJ
         ioyQVHiOKiLMcWx3RP7zydJZ/84iLi6FeoV592LNv3dsjPs5H/OJwEC0B/fLrcc6toXW
         /tGb1N8gmJry1Edv4tlPoOpfvw4xQjy0ENejI+fPtTeEe9urLJlupPfYQzAQcK/T2LnY
         6U8XIO7TvCGshtjhZZYX7qUXQ11XsKYgG6gIHx8H2Qf5/dWtZt+ViyLSS/5CYVKEvCGp
         gN5zIGIteLK/MXYImXjH+GVO31JZYOwG/y2snm9w7Maw/4O4UPFAIf4/erXBI6Yvbihn
         xNMg==
X-Gm-Message-State: AOJu0YyvhqlZYfg79VVegP5TTbh9iiQrjlO0+X5ZNbb/0YAP61G2mJCI
	dpb1GzXfbzjQxZ4MR+n8xQRWyw==
X-Google-Smtp-Source: AGHT+IHJ9mrfStyhDBDl+hTlRdDFlmkwSzm9OzXWy68saE5iNJcjZR4UWPyxOFmY/OoFwjU8aVWPhw==
X-Received: by 2002:a05:6512:1189:b0:4f8:75cf:fdd7 with SMTP id g9-20020a056512118900b004f875cffdd7mr19856907lfr.22.1696966933562;
        Tue, 10 Oct 2023 12:42:13 -0700 (PDT)
Received: from [192.168.1.2] (c-21d3225c.014-348-6c756e10.bbcust.telenor.se. [92.34.211.33])
        by smtp.gmail.com with ESMTPSA id i19-20020ac25233000000b005041cc98273sm1939927lfl.300.2023.10.10.12.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 12:42:12 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 0/2] Support byte access in the RTC7301 driver
Date: Tue, 10 Oct 2023 21:42:10 +0200
Message-Id: <20231010-rtc-7301-regwidth-v3-0-ade586b62794@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABOpJWUC/33NwQqDMAyA4VeRnteRtFjtTnuPsUO1UQNDRyvdh
 vjuqx4Gg7Fb/kC+LCJSYIriVCwiUOLI05hDHwrRDm7sSbLPLRQoDVahDHMrKw15oP7Bfh4k1o1
 D0h7INyLf3QN1/NzNyzX3wHGewmt/kXDb/tMSSpBoAcrSYI1Nd77x6MJ0nEIvNi6pD4EA1S9CZ
 aK1qJ2zZWeM+SLWdX0DeFUpo/YAAAA=
To: Alessandro Zummo <a.zummo@towertech.it>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akinobu Mita <akinobu.mita@gmail.com>, 
 Howard Harte <hharte@magicandroidapps.com>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This augments the Epson RTC7301 driver so that is supports
both 8bit byte and 32bit word access.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v3:
- Use a default in the binding to encode 32bit (4 bytes) reg width
  as default.
- Collect Rob's ACK.
- Link to v2: https://lore.kernel.org/r/20231007-rtc-7301-regwidth-v2-0-c913aa95f666@linaro.org

Changes in v2:
- Specify that the reg-io-width default is 4 if not specified in the
  device tree.
- Fix spelling in driver comment.
- Print error and exit if an invalid width is specified.
- Link to v1: https://lore.kernel.org/r/20230921-rtc-7301-regwidth-v1-0-1900556181bf@linaro.org

---
Linus Walleij (2):
      rtc: rtc7301: Rewrite bindings in schema
      rtc: rtc7301: Support byte-addressed IO

 .../devicetree/bindings/rtc/epson,rtc7301.txt      | 16 -------
 .../devicetree/bindings/rtc/epson,rtc7301.yaml     | 51 ++++++++++++++++++++++
 drivers/rtc/rtc-r7301.c                            | 35 ++++++++++++++-
 3 files changed, 84 insertions(+), 18 deletions(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230921-rtc-7301-regwidth-18ba1e3d0edb

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


