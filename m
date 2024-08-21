Return-Path: <devicetree+bounces-95404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA056959553
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 09:07:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 550461F23094
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 07:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D982199FAF;
	Wed, 21 Aug 2024 07:07:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7D7199FA5;
	Wed, 21 Aug 2024 07:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724224072; cv=none; b=VFO4M19V2pfuPp2QziiMf2aeZFYHJKoutCjYbHBK0NmOauyba4WWnimzyNDyOB2lcvvIZWb84vtbNtC+hq/rN95JzZUL2c1Kj4+eiSeLrbblQQdqS6e2wcOCDJsS0PjPGWwIUWr6Fiz/VbTrzwC7m60NbnF9Ig6OoW4plGi0PdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724224072; c=relaxed/simple;
	bh=RvROPVM7Xl2qGFjbnE9crojK+g7Ierc/gzvk1ju4+24=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=eRRvxjwT/ecU9PWKoVrXyQPdAFLNLKcv8LsxhUlDWOGqq6Xs7dfR/AbH/3/SfkR5YlePMkZ6bVnxFU/dvLhA9yPrtS3JcDgIGxi3Pqp99qsk04SXUsZG4063H+pidQBNkuafACS0xVBxM/hNqSTKpcTwCoDhcSbDmNlTbp+p1wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.12; Wed, 21 Aug
 2024 15:07:39 +0800
Received: from mail.aspeedtech.com (192.168.10.10) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1258.12 via Frontend
 Transport; Wed, 21 Aug 2024 15:07:39 +0800
From: Billy Tsai <billy_tsai@aspeedtech.com>
To: <linus.walleij@linaro.org>, <brgl@bgdev.pl>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <joel@jms.id.au>,
	<andrew@codeconstruct.com.au>, <linux-gpio@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
	<BMC-SW@aspeedtech.com>
Subject: [PATCH v1 0/2] Add Aspeed G7 gpio support 
Date: Wed, 21 Aug 2024 15:07:38 +0800
Message-ID: <20240821070740.2378602-1-billy_tsai@aspeedtech.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The Aspeed 7th generation SoC features two GPIO controllers: one with 12
GPIO pins and another with 216 GPIO pins. The main difference from the
previous generation is that the control logic has been updated to support
per-pin control, allowing each pin to have its own 32-bit register for
configuring value, direction, interrupt type, and more.

Billy Tsai (2):
  dt-bindings: gpio: aspeed,ast2400-gpio: Support ast2700
  gpio: Add G7 Aspeed gpio controller driver

 .../bindings/gpio/aspeed,ast2400-gpio.yaml    |  46 +-
 drivers/gpio/Kconfig                          |   7 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-aspeed-g7.c                 | 831 ++++++++++++++++++
 4 files changed, 884 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpio/gpio-aspeed-g7.c

-- 
2.25.1


