Return-Path: <devicetree+bounces-138814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A9422A1264D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:42:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 012FC1889501
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D721D86320;
	Wed, 15 Jan 2025 14:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="NJKm//BN"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E027578C9C;
	Wed, 15 Jan 2025 14:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736952133; cv=none; b=L8h3hiKs5+UoGFM2y9cWuGgdHoyIvIw9W5+4o/AdTnEz1vyDXqdX1Jpsy1j8yz8XXLmnJ7AiK/E1nESHegn9K7MSi1Z03okKVm+I0Uk0M0Ac+Stgnv64mvXn2djZ7BSLduUwLErwJTqdDzrD+vDgRqXHAARkeL8k0di2kUNRb5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736952133; c=relaxed/simple;
	bh=v6fpxI1aZCQsKHylK/37f9MkkghsOOFJhi0rW3o8LT0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DgPQnhDEUY6VNkwgpcCs1N7rRyLwaWnQNdBwp84qm+MofY+KSNugQ5hczK5mmT18D7bpuxBJWKydAxeLSdRMEdUs13Ln0A3GL4vvnZg9429ROYiyd7yydLVVUNnPKh/QfpailC7d26Ph29VViKd1ggXK+En0ZRjCOGw+JrRqU3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=NJKm//BN; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 304371BF207;
	Wed, 15 Jan 2025 14:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736952124;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gpFio+Xag10shCz+bKXYK4zhDkqERhhjsyJUPk08ApI=;
	b=NJKm//BNRLakGsVkCzDIXjk+CRrsUSPuGqLNrshqBODpyd82ID/j9mpTPYWsoSl/ZXtchn
	mvzednqCfOkSIBfONGNLcXcvHRdYhLAOBK53DiKVfrMGWH5Q4c1ktb9yDESO7l+enrgVQ5
	4lagIXnMFz9RFb05pPeOk3qrMWnI5E5mWpoe2lVflxK9BgniYsOz3bu821Y0N1kq3Nf0rc
	N/OhOd0Kn8tfxTMa4KNSxnT4m+mut7bfpCNNe02MYqkeb43tWgYtMKH5GTfydc7qZe8rFl
	QdWoDCBi5GVKrJ7EXiGlENyfn0jWkQiatKhlCHrf8RZBfmqfdEY+aoSEHkcMzw==
From: Kory Maincent <kory.maincent@bootlin.com>
Subject: [PATCH v2 0/2] Add support for power budget
Date: Wed, 15 Jan 2025 15:41:56 +0100
Message-Id: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIADTJh2cC/33NQQqDMBCF4atI1k2ZiaTFrnoPEYk60QFrJIm2R
 bx7U6HbLv8H880mAnmmIG7ZJjytHNhNKdQpE+1gpp4kd6mFAqUBEaQlExdPtad+GU10vp6fdbN
 0PUVpga55cTHWgBZJmD1Zfh16WaUeOKSD9/Fsxe/6c/O/7ooSJCBhV+hWAep741wceTq37iGqf
 d8/zV+PgcgAAAA=
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
Changes in v2:
- Add event notifier in case of power request over budget.
- Track how much budget is used instead of free power budget.
- Link to v1: https://lore.kernel.org/r/20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com

---
Kory Maincent (2):
      regulator: Add support for power budget
      regulator: dt-bindings: Add regulator-power-budget-milliwatt property

 .../devicetree/bindings/regulator/regulator.yaml   |   3 +
 drivers/regulator/core.c                           | 114 +++++++++++++++++++++
 drivers/regulator/of_regulator.c                   |   3 +
 include/linux/regulator/consumer.h                 |  21 ++++
 include/linux/regulator/driver.h                   |   2 +
 include/linux/regulator/machine.h                  |   2 +
 6 files changed, 145 insertions(+)
---
base-commit: 36d9fc502ebc4dd56ea95de1e4f10a4ac5c1691c
change-id: 20250110-feature_regulator_pw_budget-f0e7396afa05

Best regards,
-- 
Köry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


