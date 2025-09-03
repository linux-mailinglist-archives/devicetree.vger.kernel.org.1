Return-Path: <devicetree+bounces-212404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D741B42A74
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 22:04:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E62A67B07DF
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 20:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC22B2DCBF3;
	Wed,  3 Sep 2025 20:04:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8BB2D8767
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 20:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756929860; cv=none; b=nhUO+u1sQNpHwzQaX05Y4rO5R+KVCjigLZ6By8IVNNax7g6urjqf4VJ0zM5eQd7sC+ROP6GC4Topaerqy4FiFbGZwmbcaZ9/0LzDCoQC9ck1rhnmUA4gThqERU0axGxavSAprhFEwI57zuS05x/EGKKCDaPODk5p7/6xovd1Bww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756929860; c=relaxed/simple;
	bh=pAN6PIM4md0itR0IZeLNuftH6ftDls/UYlIeziCbJZY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=Ix/2Kxf6PpQiCNHbKKmMHd2n8O4Qkl0AxblqLbUgTN13dUmwuB23ZFAzKLTzoRVLV2EqtNWq5zJ2iSiAiE0/jNbpU8YPCxXfZg49e1f/gk8zOhd2DKqudVkFgHP16G+Zags2hlQbs9uuCDOc9UoZjaBLN+E8gQsEhl57V78tNK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=carnegierobotics.com; spf=pass smtp.mailfrom=douglass.dev; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=carnegierobotics.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=douglass.dev
Feedback-ID: 3578:1022:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 871822494;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Wed, 03 Sep 2025 20:03:58 +0000 (UTC)
From: Woodrow Douglass <wdouglass@carnegierobotics.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Woodrow Douglass <wdouglass@carnegierobotics.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 0/2] regulator: pf530x: NXP PF530x regulator driver
Date: Wed,  3 Sep 2025 16:03:40 -0400
Message-Id: <20250902-pf530x-v4-0-4727f112424e@carnegierobotics.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1923; i=wdouglass@carnegierobotics.com; h=from:subject:message-id; bh=pAN6PIM4md0itR0IZeLNuftH6ftDls/UYlIeziCbJZY=; b=owEBbQGS/pANAwAKAewLuLlPNh4UAcsmYgBouJ7x9M83blIQTmXfbYjmYdYhxzGLPzE4J+z4x VIgOdIRi02JATMEAAEKAB0WIQSIUqjrbDLQw0mgxHLsC7i5TzYeFAUCaLie8QAKCRDsC7i5TzYe FK0ZB/sFcFpKSocwqm/8gqhduSeVg6dW84Ms3WmYhj8BB9U2yQ/3F5kaYcVW0aeqqWkmJqvlhrS KDedNxxXkEC37R8+asdGjjcCkrZk+u613WDmwwQSNQSrGmrV+vKoXGWcmyQUraB2NMVSMC4PLRN 1pdq0VpE0UjUVzl35jcBSVcvYhbfddUOYO1I79QLXBSE8SVo5tx1mqRvyr90vcjBruepJB37ZJv ip20Dm7JSUapMOQZfrTDdWkYjWXrbjNcQTBq/ZlHuS+4ZBMv06O12frvj1IDIGxzPlAB6pDy/tZ lYJOmuV1LhFC7tnz/3oNm5qet2JTrSn5+XpnbQ34/XbL2CTt
X-Developer-Key: i=wdouglass@carnegierobotics.com; a=openpgp; fpr=8852A8EB6C32D0C349A0C472EC0BB8B94F361E14
Content-Transfer-Encoding: 8bit

I wrote this driver to read settings and state from the nxp pf530x
regulator. Please consider it for inclusion, any criticism is welcome.

This revision (v4) incorporates suggestions from Krzysztof Kozlowski
and Mark Brown. Thank you very much for your feedback! Based on what
I've read, i'm starting a new thread with this revision. Please let me
know if that's not the right thing to do -- I'm still learning this
process, so please excuse the mistakes that I've made.

Thanks,
Woodrow Douglass

--
2.39.5

---
Changes in v4:
- Added REGULATOR_ERROR_OVER_TEMP_WARN to pf530x_get_error_flags
- Added EMREV to the info print
- Link to v3: https://lore.kernel.org/r/20250902-pf530x-v3-0-4242e7687761@carnegierobotics.com

Changes in v3:
- Replaced REGCACHE_RBTREE with REGCACHE_MAPLE
- Replaced pf530x_is_enabled function with regulator_is_enabled_regmap
- Added status bits from INT_SENSE1 to pf530x_get_status function
- Added extra context to info print upon chip identification
- Reworked devtree to not require nested "regulators" subnode
- Some minor reformatting of comment style and long lines
- Link to v2: https://lore.kernel.org/r/20250902-pf530x-v2-0-f105eb073cb1@carnegierobotics.com

---
Woodrow Douglass (2):
      regulator: pf530x: Add a driver for the NXP PF5300 Regulator
      regulator: pf530x: dt-bindings: nxp,pf530x-regulator

 .../devicetree/bindings/regulator/nxp,pf5300.yaml  |  52 +++
 MAINTAINERS                                        |   6 +
 drivers/regulator/Kconfig                          |  12 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/pf530x-regulator.c               | 378 +++++++++++++++++++++
 5 files changed, 449 insertions(+)
---
base-commit: b320789d6883cc00ac78ce83bccbfe7ed58afcf0
change-id: 20250902-pf530x-6db7b921120c

Best regards,
-- 
Woodrow Douglass <wdouglass@carnegierobotics.com>


