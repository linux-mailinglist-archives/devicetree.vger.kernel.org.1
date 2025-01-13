Return-Path: <devicetree+bounces-138028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A66DDA0B7B3
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 24E667A02A4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 13:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97116233D92;
	Mon, 13 Jan 2025 13:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="lBTSAtWX"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C495122A4D2;
	Mon, 13 Jan 2025 13:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736773674; cv=none; b=A4kWSDOrM5bkb8bpJK+Raye9Is2nfIYuqanYJLJcQ1tAA55hccH9mGOsJ47WQTLqtk1G+vgMBpUmHSJ+lrJGXRlbNtVhXS9xTVi4OaNORwaxEPH1gGO8hw8q0+G/8/rqqwW/kmwIzWo6xpyMRGDlkRJDN/Phl8LOLrgZ2mvhHC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736773674; c=relaxed/simple;
	bh=AaxsF7Wp0Ff3wHe3K3yrOxF4t6kgPYou/mSyMG1Nfvw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mVEUjUgaeHhaPBPcssuee9g9ugXH7iiVlzYVZe4RwKJfbrmqsMmMOx+RhMTp6W4h6msTAjsV/tpqQDKY0RrDQJzYlFYu2rDgH723aVidYpcKfXOgKxl68JDSkXozoMvGbqgv9HIfH7XU9YXTMC0Q2t1MZbE9T4swzGdKXT0I9Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=lBTSAtWX; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id AFA63FF807;
	Mon, 13 Jan 2025 13:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736773671;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LTjlH9cX7Bb8V7lNAEmu46wmRV4VdGDqqdHzwRaCtYo=;
	b=lBTSAtWXPWE4jRN3iWoD2RPyziq8p/K1iFa9gxa/KESyV02pn7pfrPOj19PYwQgnkPQDBB
	f+OD5//B4ubavcCH5TkhRkB+ttL2OVgqilydsgjpIoTpgQhZEbNBIW1U2+DZr+WyH2Aqv3
	TKncsL5mL+XSQm/RwWsPrMMx6BpF2/1AciRqw0n/kQL+N3EOk096lE8l7Uya9lAwsL4zoh
	qdj8N/0qr/1po6a8Jx5Hf1G9lbvKO/TMd97SNuXEsyvakGyh3N6x8aGrBpxZ95+ILPufpS
	ZJnvmp+lJOk4vmKWROYnJ9GBR8ZF5KR+Mvnwmtkj68wegUByotkNjXUKLSxSOA==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Mon, 13 Jan 2025 14:07:46 +0100
Subject: [PATCH 2/2] regulator: dt-bindings: Add
 regulator-power-budget-milliwatt property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-feature_regulator_pw_budget-v1-2-01e1d95c2015@bootlin.com>
References: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
In-Reply-To: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
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


