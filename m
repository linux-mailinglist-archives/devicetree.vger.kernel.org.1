Return-Path: <devicetree+bounces-3072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6407AD41B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:03:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 42A93281621
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A57313AD4;
	Mon, 25 Sep 2023 09:03:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75355134AA
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:03:49 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10598FC
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:03:47 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso98160361fa.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695632625; x=1696237425; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E0JuTGIGvaE6Vzh+g58YOc/wvMBFRRaeUUX5yPtQZKM=;
        b=M5gSie60KhYCvzaxwIQfDYBFTTX6qnkGLeS9UpVDf0PCeWuceXkvw6WxUcYZ6rQuMA
         KTYx6UdpSKi0TdKbgW4oiOg1NF6PjVhfy2nLSymcOVbd59TYhQ0YrhRwDHLhjo2PPzxj
         S31uRPuxsmSyibgN2DFNRdmHAAeB56C9GcY1bp7SinCnTdbaUviShHEK5niJjt0vBL8Q
         3jXpQdvWOvlgA1V61ttJ8cWnhAtMB/qwhvjhROTPTYse97JvMzKGpvEeFlSGMzWfE6CO
         we/ckt4tNWVhMwpoMvpXqoIjBnpxgtuv+pELLcul73wOgWKGZOdyKCwUnLmZFoB5azBf
         ifVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695632625; x=1696237425;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E0JuTGIGvaE6Vzh+g58YOc/wvMBFRRaeUUX5yPtQZKM=;
        b=qjgXDfu+Qm/HNovQhNybAEGtX1XWIuArez2XNlE3T6Oz+FSJPDw2qm9DqfU6jJ/Mtf
         u5f0ACOQAGlcgai0BVqQRIQu0co1k9eGG1yNn3aSRi16GG9q/FePstre8LRPbjhGfomL
         mcIV7rnnJCk/Ut27MxMvTMzA/tUGAIxD1R3ED1bHJBlKWLLe1ayeIH3ewF30KIT3Xopu
         yDOUtgtDT1rsCIKwFJ9yM6kGeVxibQSycKAd95ODT8w7YUelgs1GQN1qjTLbh3+ajsyv
         SA/F4cqdlLXtq8bUbffzfFc+I+RC5rmoc0pvJSXmuD8p0OTALG4/Orl8qgkjmdhgYKh+
         Zmiw==
X-Gm-Message-State: AOJu0YyAyegU5clv9aCkEzfzdxBXW6SfV0dvsUqr10Bd1++k7pdjy4hG
	OPamdkZnJHy3EhgL+yCBs2xhxw==
X-Google-Smtp-Source: AGHT+IEyBRpYM8tiiBcDYnnZs50i0STRrcniT/LGFkOLlaAk1acEgWp1XcrSfw+diYphbpEdbQPArg==
X-Received: by 2002:a2e:720a:0:b0:2b6:bb21:8d74 with SMTP id n10-20020a2e720a000000b002b6bb218d74mr4881921ljc.1.1695632625301;
        Mon, 25 Sep 2023 02:03:45 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id l8-20020a2e9088000000b002b70a8478ddsm2122048ljg.44.2023.09.25.02.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 02:03:44 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/2] Device tree updates for IXP4xx
Date: Mon, 25 Sep 2023 11:03:37 +0200
Message-Id: <20230925-ixp4xx-usr8200-v2-0-433261c13a28@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOlMEWUC/13MQQ6CMBCF4auQWVvTjqDAynsYFrUdYBJDyVRJD
 eHuVuLK5f+S960QSZgitMUKQgtHDlMOPBTgRjsNpNjnBtR40o1pFKe5TEm9otSotbpjqWt/7p3
 1FeTTLNRz2sFbl3vk+Azy3v3FfNcfhdU/tRillfMXtEjGUWOuD56shGOQAbpt2z4xzsKarQAAA
 A==
To: Peter Denison <openwrt@marshadder.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Krzysztof Halasa <khalasa@piap.pl>
Cc: Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This adds missing vendors and compatibles.

I can merge this through the ARM SoC tree unless
Rob wants to take it.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- Speling mistake: adiend -> adieng
- Link to v1: https://lore.kernel.org/r/20230925-ixp4xx-usr8200-v1-0-cd72a2e1ce91@linaro.org

---
Linus Walleij (2):
      dt-bindings: Add vendor prefixes
      dt-bindings: arm: List more IXP4xx devices

 .../devicetree/bindings/arm/intel-ixp4xx.yaml          | 18 ++++++++++++++++++
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 14 ++++++++++++++
 2 files changed, 32 insertions(+)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230919-ixp4xx-usr8200-b2408d6fcad5

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


