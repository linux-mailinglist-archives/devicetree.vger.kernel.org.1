Return-Path: <devicetree+bounces-3937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C76C57B09BE
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:15:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 79E9A281FD2
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61FF5286AE;
	Wed, 27 Sep 2023 16:15:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C623326E17
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 16:15:05 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E630891;
	Wed, 27 Sep 2023 09:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=6mSKNWMQo+c5FMiuf/oJuIqKXG3dKozaCBi8lf9ZedA=; b=JsF/6E6WthfF+CA+7hhTjdcLJ9
	rzgbriupB4KAG1UGFTiU5Hv5rEWqCdlULs451qseGXM0JgNDfA6+3U91C3lPyLmqPZB1+M8kt9B4v
	RDQ7u9illmlWryeaa+NG1+z0Helz68NpgjiN9EqK5575RNF1vzyhQm9EaImm5CnQf/R4=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:44078 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qlXBk-0000D9-1s; Wed, 27 Sep 2023 12:15:00 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	hvilleneuve@dimonoff.com
Cc: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	hugo@hugovil.com
Date: Wed, 27 Sep 2023 12:01:51 -0400
Message-Id: <20230927160153.2717788-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.30.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
Subject: [PATCH v2 0/2] serial: sc16is7xx: device tree improvements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Hello,
this patch series improves DT properties handling, and converts
sc16is7xx bindings from text to YAML.

Patch 1 make sure we use the device_property APIs when configuring irda mode.

Patch 2 is the actual conversion of bindings to YAML.
Conversion to YAML has been suggested by Andy Shevchenko during review for
another patch series for the sc16is7xx:
Link: https://lkml.org/lkml/2023/5/25/743

Thank you.

Link: [v1] https://lore.kernel.org/all/20230920152015.1376838-1-hugo@hugovil.com/

Changes for V2:
- Fix YAML title entry (capitalize)
- Remove "|" from YAML clock-frequency property description
- Remove YAML labels from examples
- Fix reg warnings for YAML I2C examples
- Remove YAML clock-frequency type
- Set YAML gpio-controller property to true
- Remove redundant YAML clocks description
- Remove patches to add a 'nxp,' vendor prefix to 'irda-mode-ports' DT property
  (as suggested by Rob Herring)

Hugo Villeneuve (2):
  serial: sc16is7xx: use device_property APIs when configuring irda mode
  dt-bindings: sc16is7xx: convert to YAML

 .../bindings/serial/nxp,sc16is7xx.txt         | 118 ----------------
 .../bindings/serial/nxp,sc16is7xx.yaml        | 127 ++++++++++++++++++
 drivers/tty/serial/sc16is7xx.c                |  34 +++--
 3 files changed, 151 insertions(+), 128 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/serial/nxp,sc16is7xx.txt
 create mode 100644 Documentation/devicetree/bindings/serial/nxp,sc16is7xx.yaml


base-commit: c980248179d655d33af47f0b0bec1ce8660994c6
-- 
2.30.2


