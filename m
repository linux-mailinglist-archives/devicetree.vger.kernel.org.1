Return-Path: <devicetree+bounces-10534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3B47D1CB2
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 13:09:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C083B21286
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 11:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F58DF40;
	Sat, 21 Oct 2023 11:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pIxnqHMi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CF763B3
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 11:09:36 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D22AD65
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 04:09:30 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40859c466efso2337695e9.3
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 04:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697886568; x=1698491368; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jz8biUveL3GNdHwJay7zQahdcMiewuRVjPfPwTDZNZU=;
        b=pIxnqHMiRlEhDAjKSLKFea1yXzh4fWXhLmwStZ3aKAFpQ36tO8OdwYJM4DuB3TDgcV
         9EGTZgS5Fi0196aNMxx52nY4VIVqPhZnDxpTibaDMBcF2jpBhbkAeWPy6kYKZH6hyTTM
         9DfkReEYSNzupIpFfz+M+WTCTGndLpWu2aQ6R57r4msn/lbAUgBmuoh3pu7MFZZH+hEY
         cOefocjSTMvxklVDCJXAqCrIDgkKsszsjuTrRuHEG0x7S6DJPaLBv98+DpPCBXUqnoOS
         OvbdrxevTncXLcGujgIESmO5PBk6Ofq7YFlg5DjhWF9pZD4xIS3IqKzeL98neetdG8Eg
         P+EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697886568; x=1698491368;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jz8biUveL3GNdHwJay7zQahdcMiewuRVjPfPwTDZNZU=;
        b=VXk8A7pKzYPiS+e9b452mp2ceATo7GeuzpPiXWRBSwVSOEg1o67dvAtACApEeAcrsu
         oqRKvOEOkq30JBmFk0acwOV8qwwNoJcf25pCbcXoQc5a/GAatB+kvF8qAGd6CLO6ErZg
         1OpaDLax/4tQQc6sNm3mv1eEf9TqpatKTGdkB91G0QrEeyrSYxsrmbihhv+Eo8GrOeJs
         2ZQvshLbTYKlKMcagVChsW9y7xcRJGnbWlhNbrJ/SW9xEj/U9FV7O716WXK5Y1dcS6LE
         wrMUQHSxP5o5Njb9btyBJdSBzPj5oICT2OkWl00aRnVeSWYfA8QJ7F2HRQ+Fzb6YLG6r
         l2iw==
X-Gm-Message-State: AOJu0Yw6MTlvw7F3EZWd00pXIfLhXg+ZOK7Qmm6T76n2UuHX302mq4co
	e7ya/J4kfcQHVABFnxB41vvjJg==
X-Google-Smtp-Source: AGHT+IH6qpvh//S308oDOle1trymmyVDj+9LMbwvCUz9yl6Z7s+hUUq72jGYNwcK82OKUujTflOfLA==
X-Received: by 2002:a05:600c:19c6:b0:408:53ac:141f with SMTP id u6-20020a05600c19c600b0040853ac141fmr2790886wmq.24.1697886568482;
        Sat, 21 Oct 2023 04:09:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id o7-20020a056000010700b003232d122dbfsm3491096wrx.66.2023.10.21.04.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 04:09:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v9 0/4] Input: add initial support for Goodix Berlin
 touchscreen IC
Date: Sat, 21 Oct 2023 13:09:22 +0200
Message-Id: <20231021-topic-goodix-berlin-upstream-initial-v9-0-13fb4e887156@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGKxM2UC/53RQW7DIBAF0KtErEs1YDCQVe9RdQF4SJBcY2HHS
 hXl7p1k0bTyxs3yj9D7g+bCJqwZJ7bfXVjFJU+5DBTcy47Fox8OyHNHmUmQDbTQ8rmMOfJDKV0
 +84C1zwM/jdNc0X/yPOQ5+54H7wxajDapyIgKfkIeqh/ikbDh1Pc0HCumfL53v39QPuZpLvXrv
 soibtN/ti6CA1cejBLBekzdGz3ztbyWemC3hkU+o0pSZRvoMyjQAa7U5hm1ITWBNiai7wy4laq
 eURWp4JSJyrqAwqxU/VAtiI2qvqnGSS1do7VrVmr7UJ2QG9WW1KAwJq9cCm59LfOjCoCtqiGVV
 iVQJI3WrlT7W202qpZUYQQdQoDErv2jXq/Xb8x/NPpIAwAA
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 linux-input@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bastien Nocera <hadess@hadess.net>, 
 Hans de Goede <hdegoede@redhat.com>, Henrik Rydberg <rydberg@bitmath.org>, 
 Jeff LaBundy <jeff@labundy.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4899;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=bDaPFcMiZ13D3EnsLl05LSX110HBkZeCasHYucNUlyw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlM7FlPFO9P3cuaCT9ZNxYqdU6cZVZRxUiuog6Qw2j
 hxGMLpOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTOxZQAKCRB33NvayMhJ0Zc9D/
 9MjPrIzp7JE7XP374lYT2M57EdWzWvgu617E47ZaiYX88JBCd44ZbABB4l0EGushAKvAaV2S/J83Dv
 mAotS8/UeFmVVz4PFWk9u/tAn5HzhEaAg+3xXVWockkOmJTbsBHlQVUjZuALdZASAbSC33ZyqxU4Mt
 BJ7NNULrSwcodjlYvwhGm5n61wsiY0saV6UbRr98kyDbEKPOef6KVD3m9DYamCsKS0CNTyGTp8CeMA
 qaRK/PYp4fI4VxUqvrImtrx7XprccNlx539CNlLUaHI/xb/dUAKQw2ZxWsXBieiRuZ9x7HuFirVXXL
 UONezteRMoi63ZOqyAxfVFfpnS1dPLeR30HgttjX1qL8vfQGGJ4xLQyOp5KUuqNou+EKVenm6iUGmA
 6XGSG7EswFGFcUaehhgCyBadgbW3doWt1/E+X6kIFvHwuWY0zcwYz8jl4VpHT7ClftXwLf0K/p3ENL
 HAZ1GitGDwMvup2zvysLhY+w3WIRcnwdEjUgfJbd2rEovfUYcey8SNXTMQg1InkXjP9HSsfTZN2Wzs
 AXbRUYunevMS626R6PXAQstcJ9T8rN8xWbQMy94S6UZLZ1kHUyX+Rh38+wLVooCDXuw/xm3TGylkXD
 vT405x/+UFch2NKRPikFVQcKPBb63TiH/BYyjHV1V8QFOwbyjbrAbPqWCjBg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

These touchscreen ICs support SPI, I2C and I3C interface, up to
10 finger touch, stylus and gestures events.

This initial driver is derived from the Goodix goodix_ts_berlin
available at [1] and [2] and only supports the GT9916 IC
present on the Qualcomm SM8550 MTP & QRD touch panel.

The current implementation only supports BerlinD, aka GT9916.

Support for advanced features like:
- Firmware & config update
- Stylus events
- Gestures events
- Previous revisions support (BerlinA or BerlinB)
is not included in current version.

The current support will work with currently flashed firmware
and config, and bail out if firmware or config aren't flashed yet.

[1] https://github.com/goodix/goodix_ts_berlin
[2] https://git.codelinaro.org/clo/la/platform/vendor/opensource/touch-drivers

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v9:
- Rebased on next-20231020 
- Link to v8: https://lore.kernel.org/r/20231003-topic-goodix-berlin-upstream-initial-v8-0-171606102ed6@linaro.org

Changes in v8:
- Add missing bitfield.h include in core
- Link to v7: https://lore.kernel.org/r/20231002-topic-goodix-berlin-upstream-initial-v7-0-792fb91f5e88@linaro.org

Changes in v7:
- rebased on v6.6-rc3
- Link to v6: https://lore.kernel.org/r/20230912-topic-goodix-berlin-upstream-initial-v6-0-b4ecfa49fb9d@linaro.org

Changes in v6:
- rebased on v6.6-rc1
- changed commit message prefix to match the other Input commits
- Link to v5: https://lore.kernel.org/r/20230801-topic-goodix-berlin-upstream-initial-v5-0-079252935593@linaro.org

Changes in v5:
- rebased on next-20230801
- Link to v4: https://lore.kernel.org/r/20230606-topic-goodix-berlin-upstream-initial-v4-0-0947c489be17@linaro.org

Changes in v4:
- Core updates:
 - drop kconfig depends, deps will be handled by _SPI and _I2C
 - change power_on() error labels
 - print errors on all dev_err() prints
 - remove useless default variable initialization
 - switch irq touch checksum error to dev_err()
 - add Jeff's review tag
- I2C changes
 - change REGMAP_I2C Kconfig from depends to select
 - add Jeff's review tag
- SPI changes
 - add select REGMAP to Kconfig
 - added GOODIX_BERLIN_ prefix to defines
 - switched from ret to error
 - add Jeff's review tag
- Link to v3: https://lore.kernel.org/r/20230606-topic-goodix-berlin-upstream-initial-v3-0-f0577cead709@linaro.org

Changes in v3:
- Another guge cleanups after Jeff's review:
 - appended goodix_berlin_ before all defines
 - removed some unused defines
 - removed retries on most of read functions, can be added back later
 - added __le to ic_info structures
 - reworked and simplified irq handling, dropped enum and ts_event structs
 - added struct for touch data
 - simplified and cleaned goodix_berlin_check_checksum & goodix_berlin_is_dummy_data
 - moved touch_data_addr to the end of the main code_data
 - reworked probe to get_irq last and right before setip input device
 - cleaned probe by removing the "cd->dev"
 - added short paragraph to justify new driver for berlin devices
 - defined all offsets & masks
- Added bindings review tag
- Link to v2: https://lore.kernel.org/r/20230606-topic-goodix-berlin-upstream-initial-v2-0-26bc8fe1e90e@linaro.org

Changes in v2:
- Huge cleanups after Jeff's review:
 - switch to error instead of ret
 - drop dummy vendor/product ids
 - drop unused defined/enums
 - drop unused ic_info and only keep needes values
 - cleanup namings and use goodix_berlin_ everywhere
 - fix regulator setup
 - fix default variables value when assigned afterwars
 - removed indirections
 - dropped debugfs
 - cleaned input_dev setup
 - dropped _remove()
 - sync'ed i2c and spi drivers
- fixed yaml bindings
- Link to v1: https://lore.kernel.org/r/20230606-topic-goodix-berlin-upstream-initial-v1-0-4a0741b8aefd@linaro.org

---
Neil Armstrong (4):
      dt-bindings: input: document Goodix Berlin Touchscreen IC
      Input: add core support for Goodix Berlin Touchscreen IC
      Input: goodix-berlin - add I2C support for Goodix Berlin Touchscreen IC
      Input: goodix-berlin - add SPI support for Goodix Berlin Touchscreen IC

 .../bindings/input/touchscreen/goodix,gt9916.yaml  |  95 ++++
 drivers/input/touchscreen/Kconfig                  |  31 ++
 drivers/input/touchscreen/Makefile                 |   3 +
 drivers/input/touchscreen/goodix_berlin.h          | 159 ++++++
 drivers/input/touchscreen/goodix_berlin_core.c     | 582 +++++++++++++++++++++
 drivers/input/touchscreen/goodix_berlin_i2c.c      |  69 +++
 drivers/input/touchscreen/goodix_berlin_spi.c      | 173 ++++++
 7 files changed, 1112 insertions(+)
---
base-commit: 2030579113a1b1b5bfd7ff24c0852847836d8fd1
change-id: 20230606-topic-goodix-berlin-upstream-initial-ba97e8ec8f4c

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


