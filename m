Return-Path: <devicetree+bounces-21671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92208804D8D
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 10:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F21BEB20C48
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41A833E496;
	Tue,  5 Dec 2023 09:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LbYbJvKC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E266120
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 01:22:38 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40c09f5a7cfso24050475e9.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 01:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701768156; x=1702372956; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3C3srF3D8XYNvvxDZciqMxRHu1Pp1JgH8p2QBUBIXkw=;
        b=LbYbJvKCyoR0fX5rvZXjbtu4Ybw/+a5FWhP1PP6BbHfKYbo5BNkewJ+hgygNuMbbfb
         /qMnER1RBlOQZrXr+KCsjIxu5BJOdE6ohdZDTv84hM1FRbKSPCf0sB/cDoB4gae9pBow
         P05/prW4TiUa6aQci9KMzvPu+MxruHziMYlf7TLGh/oFUGnRgaEDSHpQfwDvBSlee2/X
         SG7jSv7QkvV14QuPqcEC+sufy2rkeeb52uBzur/jTGQVDJiEPB4OT6fEJJqtApV2QPMd
         cupxxeuzX2AnkuogDC6qeh8KNyvRHVfpKLagAxtExy//vrFEowHSEaWJ6zzG2qt82ege
         pvvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701768156; x=1702372956;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3C3srF3D8XYNvvxDZciqMxRHu1Pp1JgH8p2QBUBIXkw=;
        b=v8ovphVd8a9PFUjNQCg+mi4wKoLo0+jd8eIjWXgFCUE/sK2OBCRlFVdk0P6Weu/tVw
         CvJAYUkvjXnN3B2EwvilHqrNHyxZtcpgNWX2J1Y+DMcGBIAwHOUQ3nY7nwx5o1VwHMwn
         G2ij6MC55oE6BnfhCRCejJf0FgjyJapd0nk1b7QpMP8G9XczJAChkcbdNTMAoccGxAl9
         gLGB5NkI/AeuBz5YWu4aCHJMLFfX8uNKH7kyyD4gMSvC6dyzdZOY+5wZRz1Cu8vmbfMf
         7ArKzhdoqKx0fEKyGYc9aKcB1PrWAEEQ/V4bI6Eqrnce20NC1FOkUWMkEckkUeyKOhJ5
         XcJQ==
X-Gm-Message-State: AOJu0Yz9+BfDq4nYA62N0ZSjjGVW0Roe+V3r4HshNSka2YSlPeb4eC1o
	geXa4rEkFD1PxztSYp8/n14CIw==
X-Google-Smtp-Source: AGHT+IHl1sh2a9wDuPh2SdUnHcBKEzFK7tAktSyin1IN1vDeUa5puQnLRQ3RBX1u+xjKvk6Sg4pviQ==
X-Received: by 2002:a05:600c:1d83:b0:40b:5e21:ec3e with SMTP id p3-20020a05600c1d8300b0040b5e21ec3emr277886wms.112.1701768156506;
        Tue, 05 Dec 2023 01:22:36 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id g10-20020a05600c4eca00b0040596352951sm21692287wmq.5.2023.12.05.01.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 01:22:36 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	linux-fsd@tesla.com,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/6] dt-bindings: samsung: continued - add specific compatibles for Tesla FSD Hi,
Date: Tue,  5 Dec 2023 10:22:23 +0100
Message-Id: <20231205092229.19135-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Merging
=======
I propose to take entire patchset through my tree (Samsung SoC), because:
1. I already took similar work this cycle:
   https://lore.kernel.org/all/169997520487.6747.17671551558724027958.b4-ty@linaro.org/
2. Two new SoCs are coming (Google GS101 and ExynosAutov920) and they might
   touch the same lines.  It is reasonable for me to take the bindings for the new
   SoCs, to have clean `make dtbs_check` on the new DTS.
3. Having it together helps me to have clean `make dtbs_check` within my tree
   on the existing DTS.
4. No drivers are affected by this change.

If folks agree, please kindly Ack the patches.

Description
===========
See:
https://lore.kernel.org/all/20231108104343.24192-1-krzysztof.kozlowski@linaro.org/

Best regards,
Krzysztof

Krzysztof Kozlowski (6):
  dt-bindings: i2c: exynos5: add specific compatible for Tesla FSD
  dt-bindings: pwm: samsung: add specific compatible for Tesla FSD
  dt-bindings: serial: samsung: add specific compatible for Tesla FSD
  dt-bindings: samsung: exynos-pmu: add specific compatible for Tesla
    FSD
  dt-bindings: watchdog: samsung: add specific compatible for Tesla FSD
  arm64: dts: fsd: add specific compatibles for Tesla FSD

 .../devicetree/bindings/i2c/i2c-exynos5.yaml  |  1 +
 .../devicetree/bindings/pwm/pwm-samsung.yaml  |  1 +
 .../bindings/serial/samsung_uart.yaml         |  1 +
 .../bindings/soc/samsung/exynos-pmu.yaml      |  1 +
 .../bindings/watchdog/samsung-wdt.yaml        | 21 +++++++-----
 arch/arm64/boot/dts/tesla/fsd.dtsi            | 32 +++++++++----------
 6 files changed, 33 insertions(+), 24 deletions(-)

-- 
2.34.1


