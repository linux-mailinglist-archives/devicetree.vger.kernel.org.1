Return-Path: <devicetree+bounces-138027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E9BA0B7B1
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:07:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9E783A4B3F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 13:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0E0D22F148;
	Mon, 13 Jan 2025 13:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="FXtXXmfE"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA271FDA8B;
	Mon, 13 Jan 2025 13:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736773673; cv=none; b=XEbrA545JvkP4PwLzRoJQ0pBcUJogRMtr8AFV4tI5NjSR1bt0+DteZbCfjf1XnF6mP3/K7+8dGy5zu9CyxTxYUYJAHWKmr+QIefNO3AoVc00UcALxP9KrdF+ZhBoS+8pIzVraapTkXrq4HKodGsU3fpLnfix3Wus612+4w4wcG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736773673; c=relaxed/simple;
	bh=CHJ07KTsERl1XNqysW3XfRj9sL4/N7Msv8OrELdA7v0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GUxFFwqEp48/kq97PUUTTD2JFFzUlJ1Gwcem5oCQl0At8X9v4zKVV1IK5/4S2OQre0eoDFqelIYElAllET06kDKP4julh9JQ3XG0D4WGtgvW8ayyXmBX3dIhbuayUrAjnwXsmtA3KeSUX6l2srOXX/P2cJP7qPKbmG8nVfK01K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=FXtXXmfE; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7724CFF80C;
	Mon, 13 Jan 2025 13:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736773670;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lRe7TYZfi6vfJNz8awjP9OieAhppNXHZ95CphyCVH64=;
	b=FXtXXmfEier4kCr9odZG0HV2oGKs8MylQITCBpR2Z4LmGUOBtD6lKwuPN5Z0BuYmbolft6
	M2+XA2mtEYF/C9wp/1h2DKCOW0S2rk2YtFY3qaNCRcZ5bCkRlLFAeKnKcFRwDIgDQs0Z3L
	R2HWzCJPfFKp/zaH1BDASROnisN9ShX/tM6GV7sSvk9m6XJcGmB+/SJkOgNowSZba0x/a9
	ARdDKE6QzFJs57vRTixlT7zaNI0Q2swySl6o3dLbusp5SoBBtvv6jMShKylkdj4po/2Liv
	pgMFsLIL9L/DaOHGf5i5YuWmz8M56bLA/LmLv6uTP0m+V3xxfBHv0hhG6EI94g==
From: Kory Maincent <kory.maincent@bootlin.com>
Subject: [PATCH 0/2] Add support for power budget
Date: Mon, 13 Jan 2025 14:07:44 +0100
Message-Id: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIACAQhWcC/x3MQQrCMBAF0KuUWRuYVKroVUTCaH/igLRlklSh9
 O4Gl2/zNsowRaZrt5Fh1azz1OAPHT1fMiU4HZup535g79lFSKmGYEj1LWW2sHzCo44JxUXG+Xg
 5SRQeqA2LIer3v9/u+/4DlR2TJm0AAAA=
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.14.1
X-GND-Sasl: kory.maincent@bootlin.com

In preparation for future support of PSE budget evaluation strategy and
power management, we need the power budget value of the power supply.

This addition allows the regulator to track the available power
budget, which will be essential for prioritizing ports when
making power allocation decisions.

The related budget evaluation strategy patch series sent:
https://lore.kernel.org/netdev/20250104161622.7b82dfdf@kmaincent-XPS-13-7390/T/#t

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
Kory Maincent (2):
      regulator: Add support for power budget
      regulator: dt-bindings: Add regulator-power-budget-milliwatt property

 .../devicetree/bindings/regulator/regulator.yaml   |  3 +
 drivers/regulator/core.c                           | 89 ++++++++++++++++++++++
 drivers/regulator/of_regulator.c                   |  3 +
 include/linux/regulator/consumer.h                 | 21 +++++
 include/linux/regulator/driver.h                   |  2 +
 include/linux/regulator/machine.h                  |  2 +
 6 files changed, 120 insertions(+)
---
base-commit: 36d9fc502ebc4dd56ea95de1e4f10a4ac5c1691c
change-id: 20250110-feature_regulator_pw_budget-f0e7396afa05

Best regards,
-- 
Köry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


