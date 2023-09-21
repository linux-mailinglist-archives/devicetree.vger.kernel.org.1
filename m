Return-Path: <devicetree+bounces-2040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9897A987B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:47:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACAA11C21106
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C56B5171B5;
	Thu, 21 Sep 2023 17:22:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1A416434
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:25 +0000 (UTC)
Received: from mail-sh.amlogic.com (mail-sh.amlogic.com [58.32.228.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09AB3400E0;
	Thu, 21 Sep 2023 10:15:04 -0700 (PDT)
Received: from rd02-sz.amlogic.software (10.28.11.83) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2507.13; Thu, 21 Sep 2023
 16:34:57 +0800
From: Huqiang Qin <huqiang.qin@amlogic.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<neil.armstrong@linaro.org>, <khilman@baylibre.com>, <jbrunet@baylibre.com>,
	<martin.blumenstingl@googlemail.com>, <brgl@bgdev.pl>, <andy@kernel.org>
CC: <linux-gpio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Huqiang Qin <huqiang.qin@amlogic.com>
Subject: [PATCH V2 0/3] Add pinctrl driver support for Amlogic T7 SoCs
Date: Thu, 21 Sep 2023 16:34:05 +0800
Message-ID: <20230921083407.1167510-2-huqiang.qin@amlogic.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.28.11.83]
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patch adds pinctrl driver support for Amloigc T7 SoC (A311D2)

[PATCH 1/3]: 
  V1 -> V2: Rename amlogic-t7-gpio.h to amlogic,t7-periphs-pinctrl.h

[PATCH 2/3]:
  V1 -> V2: Include header file changed to amlogic,t7-periphs-pinctrl.h

[PATCH 3/3]:
  V1 -> V2: Unchanged.

Huqiang Qin (3):
  dt-bindings: pinctrl: Add compatibles for Amlogic T7 SoCs
  pinctrl: Add driver support for Amlogic T7 SoCs
  arm64: dts: Add pinctrl node for Amlogic T7 SoCs

 .../pinctrl/amlogic,meson-pinctrl-a1.yaml     |    1 +
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi   |   16 +
 drivers/pinctrl/meson/Kconfig                 |    6 +
 drivers/pinctrl/meson/Makefile                |    1 +
 drivers/pinctrl/meson/pinctrl-amlogic-t7.c    | 1612 +++++++++++++++++
 .../gpio/amlogic,t7-periphs-pinctrl.h         |  179 ++
 6 files changed, 1815 insertions(+)
 create mode 100644 drivers/pinctrl/meson/pinctrl-amlogic-t7.c
 create mode 100644 include/dt-bindings/gpio/amlogic,t7-periphs-pinctrl.h


base-commit: e143016b56ecb0fcda5bb6026b0a25fe55274f56
-- 
2.42.0


