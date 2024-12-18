Return-Path: <devicetree+bounces-132402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A77C89F6E9C
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 20:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95010189030E
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 19:55:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 242331FA826;
	Wed, 18 Dec 2024 19:55:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EAE155C87
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 19:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734551713; cv=none; b=JWw1Wx9oNL3t0i0G0Dyt/oK9tM5fSWGd7yO0eRVeUy3rB3CPJ4zTiVbLRP5sx3SX1wECdpj/7mX/V1F4eLC47jMxJvb1i5QNMtdmO0/1SaTu/k1rMYmb+7AD/DyPEXBUI6AyZMZ3taaWmhJ2w7R3P2Qg7w45K5gWhlZtRfQ7V5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734551713; c=relaxed/simple;
	bh=lZ/T6l223o6h8vfB7rRQTVWnr0YqqAzOJauhORabNYs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=loMTb16N0ZftM75ifpFVwtL7kI1Kph1kXTxl5q4BsoEPbBQlnJg9boH5R4tAQHjD6k9StGCtttH4KvMGDPtgh69LPs/Ajj/fbn3owkCcAIdoL5Lr4LnSk94yzM5fY9DKMpcc2jVXYjXJ+4bC3jNtDzaOk8z1Lzz/GIYnsg47WgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tO08T-0001XG-GM; Wed, 18 Dec 2024 20:55:09 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tO08S-0045Fp-1d;
	Wed, 18 Dec 2024 20:55:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tO08T-00DdFs-0i;
	Wed, 18 Dec 2024 20:55:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 18 Dec 2024 20:54:53 +0100
Subject: [PATCH] regulator: rename regulator-uv-survival-time-ms according
 to DT binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241218-regulator-uv-survival-time-ms-rename-v1-1-6cac9c3c75da@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAIwoY2cC/x2NQQrCQAxFr1KyNmDGAatXERexxhpop5J0BqH07
 gZ37/Hg/w1cTMXh2m1g0tR1KSF06GB4cxkF9RkO6ZgyJerRZKwTr4thbejVmjaecNVZcPaohYP
 OF8mn4ZGZeoKY+pi89Pu/ud33/QerFBAVdgAAAA==
X-Change-ID: 20241218-regulator-uv-survival-time-ms-rename-79e43cb4a181
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 kernel@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The regulator bindings don't document regulator-uv-survival-time-ms, but
the more descriptive regulator-uv-less-critical-window-ms instead.

Looking back at v3[1] and v4[2] of the series adding the support,
the property was indeed renamed between these patch series, but
unfortunately the rename only made it into the DT bindings with the
driver code still using the old name.

Let's therefore rename the property in the driver code to follow suit.
This will break backwards compatibility, but there are no upstream
device trees using the property and we never documented the old name
of the property anyway. ¯\_(ツ)_/¯"

[1]: https://lore.kernel.org/all/20231025084614.3092295-7-o.rempel@pengutronix.de/
[2]: https://lore.kernel.org/all/20231026144824.4065145-5-o.rempel@pengutronix.de/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/of_regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 3d85762beda636479f3b3b808602a0be221c0c77..e5b4b93c07e3f5e36122a804d3022eba0b2d6ad9 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -175,7 +175,7 @@ static int of_get_regulation_constraints(struct device *dev,
 	if (!ret)
 		constraints->enable_time = pval;
 
-	ret = of_property_read_u32(np, "regulator-uv-survival-time-ms", &pval);
+	ret = of_property_read_u32(np, "regulator-uv-less-critical-window-ms", &pval);
 	if (!ret)
 		constraints->uv_less_critical_window_ms = pval;
 	else

---
base-commit: 78d4f34e2115b517bcbfe7ec0d018bbbb6f9b0b8
change-id: 20241218-regulator-uv-survival-time-ms-rename-79e43cb4a181

Best regards,
-- 
Ahmad Fatoum <a.fatoum@pengutronix.de>


