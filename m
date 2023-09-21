Return-Path: <devicetree+bounces-1926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4686E7A90B9
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 03:53:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0786C281E08
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 01:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0152015A2;
	Thu, 21 Sep 2023 01:53:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709D810F7
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 01:53:07 +0000 (UTC)
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5C996AB;
	Wed, 20 Sep 2023 18:53:04 -0700 (PDT)
Received: from loongson.cn (unknown [10.20.42.201])
	by gateway (Coremail) with SMTP id _____8AxTev+oQtlanEqAA--.10539S3;
	Thu, 21 Sep 2023 09:53:02 +0800 (CST)
Received: from localhost.localdomain (unknown [10.20.42.201])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8AxndzwoQtlCvsMAA--.26254S2;
	Thu, 21 Sep 2023 09:53:01 +0800 (CST)
From: Yinbo Zhu <zhuyinbo@loongson.cn>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Jianmin Lv <lvjianmin@loongson.cn>,
	wanghongliang@loongson.cn,
	loongson-kernel@lists.loongnix.cn,
	Yinbo Zhu <zhuyinbo@loongson.cn>
Subject: [PATCH v6 0/2] gpio: loongson: add more gpio chip support
Date: Thu, 21 Sep 2023 09:52:45 +0800
Message-Id: <20230921015247.23478-1-zhuyinbo@loongson.cn>
X-Mailer: git-send-email 2.20.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8AxndzwoQtlCvsMAA--.26254S2
X-CM-SenderInfo: 52kx5xhqerqz5rrqw2lrqou0/
X-Coremail-Antispam: 1Uk129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7KY7
	ZEXasCq-sGcSsGvfJ3UbIjqfuFe4nvWSU5nxnvy29KBjDU0xBIdaVrnUUvcSsGvfC2Kfnx
	nUUI43ZEXa7xR_UUUUUUUUU==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patch was to add loongson 2k0500, 2k2000 and 3a5000 gpio chip
driver support.

Change in v6:
		1. Add a reviewed-by for gpio driver.
		2. Rework the commit log.
		3. Replace changes to "u32" in loongson_gpio_chip_data.
Change in v5:
		1. Use boolean initializer for lgpio->chip.can_sleep.
		2. Remove the code that about io width gain from ngpios.
		3. Fixup the ls7a-gpio and ls2k-gpio items in yaml file.
		4. Add the reviewed-by information for dt-bindings patch.
		5. Add some comments in loongson_gpio_to_irq.
Change in v4:
		1. Reword the title and commit log information.
		2. Remove the offset parse in DT and add it in of_device_id and
		   acpi_device_id's data field.
		3. Add more gpio chip dt-bindings support in yaml file.
Change in v3:
		1. Reword the dt-bindings patch commit log information.
		2. Add "loongson,ls2k1000-gpio" compatible.
Change in v2:
		1. Reword the patch commit log information.
		2. Add some GPIO register offset description in yaml.

Yinbo Zhu (2):
  gpio: dt-bindings: add more loongson gpio chip support
  gpio: loongson: add more gpio chip support

 .../bindings/gpio/loongson,ls-gpio.yaml       |  21 +++-
 drivers/gpio/gpio-loongson-64bit.c            | 119 ++++++++++++++++--
 2 files changed, 127 insertions(+), 13 deletions(-)

-- 
2.20.1


