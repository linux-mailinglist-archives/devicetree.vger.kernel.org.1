Return-Path: <devicetree+bounces-138816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 993A0A12651
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:42:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35BAA3A91D6
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86FAB135A63;
	Wed, 15 Jan 2025 14:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ijvckzku"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D1524A7CC;
	Wed, 15 Jan 2025 14:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736952135; cv=none; b=ZnA24hc6eUzJB+uA21Q9Io8mEfF9pFcapg5q0ncnQNQNLSAID9G6FJQEx8+hvwK+ujqz22+0P3cnhQsJg6tke0grigJp4u9mn/uAqR0/AAmpusXnpM3Y9eB4H9+xu2424RIEiK1mjcMQE9NoARGgPlDNtnYUVkGBlh+ZwllJVoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736952135; c=relaxed/simple;
	bh=AaxsF7Wp0Ff3wHe3K3yrOxF4t6kgPYou/mSyMG1Nfvw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e7cpGlcTTwWqMZyqfX+7VvsfFDcAB4pL3c0t6XPIJrQQu0D/rDkiUBVfDptC88keU6W/rZAr0p6oHfjbqsJeLbPnON/zaK6OURaqKb2YcBpePOvq32HKx7uBXfmqMN3WjIN24v2REgmf01xGKHRAXqrKPr33VTv1CN46fsI56AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ijvckzku; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 554511BF20C;
	Wed, 15 Jan 2025 14:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736952125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LTjlH9cX7Bb8V7lNAEmu46wmRV4VdGDqqdHzwRaCtYo=;
	b=ijvckzku5ZH4TQkKZv44qJzlgS9WaRlE8+N5uLnkK0KO4KJRf6o7tCGTIL69dAAYtuWccp
	/65lbfHspDbl7UextSFtQn4qjEHZgooSC22Tyj4f3kdF8CZJU/ZaW7xEnAlfanxaFE4gs8
	jft6PICwVBBu0qjPe0AHiyXR7sK6I2tF3/aq/80r3FUekgv06GviF2Ixc+gfCF8Rg4sBGt
	iSbzQSCEPWR6ZlYlR0p9tyvnD/1RUQ9+DZqoNoEycVMm3xEVncDgHTSdKNMseFWtPYiz8g
	3KdE2Hp6vmGqWtooPzwVfu2KFi4daJLNvm1rZhzc4+SqnWkZK7LBLurBi7laFA==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Wed, 15 Jan 2025 15:41:58 +0100
Subject: [PATCH v2 2/2] regulator: dt-bindings: Add
 regulator-power-budget-milliwatt property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-feature_regulator_pw_budget-v2-2-0a44b949e6bc@bootlin.com>
References: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
In-Reply-To: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.14.1
X-GND-Sasl: kory.maincent@bootlin.com

Introduce a new property to describe the power budget of the regulator.
This property will allow power management support for regulator consumers
like PSE controllers, enabling them to make decisions based on the
available power capacity.

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
 Documentation/devicetree/bindings/regulator/regulator.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/regulator.yaml b/Documentation/devicetree/bindings/regulator/regulator.yaml
index 1ef380d1515e..77573bcb6b79 100644
--- a/Documentation/devicetree/bindings/regulator/regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator.yaml
@@ -34,6 +34,9 @@ properties:
   regulator-input-current-limit-microamp:
     description: maximum input current regulator allows
 
+  regulator-power-budget-milliwatt:
+    description: power budget of the regulator
+
   regulator-always-on:
     description: boolean, regulator should never be disabled
     type: boolean

-- 
2.34.1


