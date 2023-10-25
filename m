Return-Path: <devicetree+bounces-11761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D6E7D68B4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:34:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1E171F22D74
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E588F219E9;
	Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="06RUCYPI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E57266CD
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3A22BC43395;
	Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.dev; s=korg;
	t=1698230089; bh=xtsuT6/iXfx/uvEO3WShw9/zkkhG/bR6W4AGKYROtvM=;
	h=From:Subject:Date:To:Cc:From;
	b=06RUCYPIyrx3wJsiycc1o8fYgtFFN67jU2LFOOTc4iYfv3dAFFxBeBbn71vxgAokb
	 r1u9LPZ/j2v9qD8k4yXCX45eVCW7Xc6c4LCwLi1gx1dIdHJJDVJDxnGnPyoWPuYGaT
	 oNOUJ9Co98otgSz/ljCYgopvSamLDY0QbGebVTzk=
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BB10C0032E;
	Wed, 25 Oct 2023 10:34:49 +0000 (UTC)
From: Richard Leitner <richard.leitner@linux.dev>
Subject: [PATCH 0/4] hwmon: add ti,ina237 support to ina238 driver
Date: Wed, 25 Oct 2023 10:34:10 +0000
Message-Id: <20231025-ina237-v1-0-a0196119720c@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACLvOGUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2NDAyNT3cy8RCNjc12DNMNEy2RDk7QU0xQloOKCotS0zAqwQdGxtbUAgSW
 57FgAAAA=
To: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 devicetree@vger.kernel.org, Richard Leitner <richard.leitner@linux.dev>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698230088; l=974;
 i=richard.leitner@linux.dev; s=20231025; h=from:subject:message-id;
 bh=xtsuT6/iXfx/uvEO3WShw9/zkkhG/bR6W4AGKYROtvM=; =?utf-8?q?b=3DJSCc6cvbBsof?=
 =?utf-8?q?fyx845Xz1K3QnAHJDn6h/3HULSsfLgA7GaAMdQDRywoCxnPoEBDsbxIVDErRcq5c?=
 4RSZFpziB6Fb979JlJ5Ko1OaM0w0qSIWWsks1YSxlqQCISpmoZdu
X-Developer-Key: i=richard.leitner@linux.dev; a=ed25519;
 pk=ZYa5+0m9RFYtnNU6DLet7sHyPehnVHa0ucJlYiAu2NU=
X-Endpoint-Received:
 by B4 Relay for richard.leitner@linux.dev/20231025 with auth_id=90

This series adds support for the ina237 power monitor to the ina238
driver as those two are very similar.

As the driver missed MAINTAINERS and dt-bindings I've also added them.
If this is incorrect please just ignore the patches or drop me a line so
I can provide a v2.

Signed-off-by: Richard Leitner <richard.leitner@linux.dev>
---
Richard Leitner (4):
      MAINTAINERS: Add entry for ina238 driver
      dt-bindings: hwmon: add ti,ina238
      hwmon: ina238: add ina237 support
      dt-bindings: hwmon: ti,ina238: add ti,ina237

 .../devicetree/bindings/hwmon/ti,ina238.yaml       | 47 ++++++++++++++++++++++
 MAINTAINERS                                        |  7 ++++
 drivers/hwmon/ina238.c                             |  3 +-
 3 files changed, 56 insertions(+), 1 deletion(-)
---
base-commit: 4f82870119a46b0d04d91ef4697ac4977a255a9d
change-id: 20231025-ina237-0f1a9c14fd5d

Best regards,
-- 
Richard Leitner <richard.leitner@linux.dev>


