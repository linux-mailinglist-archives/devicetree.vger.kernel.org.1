Return-Path: <devicetree+bounces-211852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3662BB40F39
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 23:18:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 96C2A1B22B33
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 21:18:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E66592E8DF2;
	Tue,  2 Sep 2025 21:17:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605612E7BCF
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 21:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756847853; cv=none; b=JYlYB8Ek3Ufxyb95jjisxqhhed3fCgMK8rehc96Df0SHLPKDYh1NLF4xomFyX9P9FHHe7R+vnAYv2fD4/sjLe8SFkHL/FNPVoXlbbkUdtFDCI+wgCiDjHJYNhf2BoCkmuhU3nBJ88nlVAxaH4orU/ieBFmvxU2ZeErdNxM8PuT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756847853; c=relaxed/simple;
	bh=96vdvXhmnNdT4MFQkMkVANOim+pB4ODICUPWdZgOrxw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GQo1z4droDiyRXoppYGLWipVSfFr1yvWU39qC+um0cXoOvS3Tk1VF1eQVe5RyvYpxyBRGRaCl/fAcrZ7J7ekLNnrCnvEIljsdySQdyHnzbE+yiF0LkIshIDSoUiNTan/VBckkxaLpgYLZ4Lli+tVU6EJPHAryBT93i5Iw7X5qG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=carnegierobotics.com; spf=pass smtp.mailfrom=douglass.dev; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=carnegierobotics.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=douglass.dev
Feedback-ID: 3578:1022:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -1141507836;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Tue, 02 Sep 2025 21:17:11 +0000 (UTC)
From: Woodrow Douglass <wdouglass@carnegierobotics.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Woodrow Douglass <wdouglass@carnegierobotics.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] regulator: pf530x: NXP PF530x regulator driver
Date: Tue,  2 Sep 2025 17:17:00 -0400
Message-Id: <20250902-pf530x-v2-0-f105eb073cb1@carnegierobotics.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1756822704.git.wdouglass@carnegierobotics.com>
References: <cover.1756822704.git.wdouglass@carnegierobotics.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1761; i=wdouglass@carnegierobotics.com; h=from:subject:message-id; bh=96vdvXhmnNdT4MFQkMkVANOim+pB4ODICUPWdZgOrxw=; b=owEBbQGS/pANAwAKAewLuLlPNh4UAcsmYgBot16YT3Hlg6S+cvuYLVXbQzFtOyTPsPat/3Brw Gr9Gmq8y5WJATMEAAEKAB0WIQSIUqjrbDLQw0mgxHLsC7i5TzYeFAUCaLdemAAKCRDsC7i5TzYe FIX0B/4kQBllafOqNjhfyIjqqiqPOXWZHNmmUzDLJJpqDGz8AsaGNJ+Hek/m1V+59kV8Wua6SDd r9X9oIGfHwludSlG3NBPk7c3LoGGPQjitCcmLv3Sn7yhNZqy/SNsAEo9o541EBKAjj+/aRzVw6c 05YR6LejK2M0M/KDYVws3sddXPsQrCpirI5dGo4g5K7Wz4+2EvENuFOYC651FPctLUuU2yZxjBD E0YNzSgmx21JcUYRY+lSY5CNdXX6e+yYi9bnLFdM84oGeLpGVH6YGSW1F6oIb3kDOp3QzVsKUVJ s1qsqhZJcVI3PCeTjlfvwxCIufqHI3kZLOvaO5s2Q7P8XuqN
X-Developer-Key: i=wdouglass@carnegierobotics.com; a=openpgp; fpr=8852A8EB6C32D0C349A0C472EC0BB8B94F361E14
Content-Transfer-Encoding: 8bit

I wrote this driver to read settings and state from the nxp pf530x
regulator. Please consider it for inclusion, any criticism is welcome.

I am resubmitting this patchset with an expanded email list at the
suggestion of Krzysztof Kozlowski. I will be incorporating suggestions
by Krzysztof and Mark Brown in a new revision tomorrow. Thank you very
much for your comments.

Thanks again,
Woodrow Douglass

Woodrow Douglass (2):
  regulator: pf530x: Add a driver for the NXP PF5300 Regulator
  regulator: pf530x: dt-bindings: nxp,pf530x-regulator

 .../regulator/nxp,pf530x-regulator.yaml       |  74 ++++
 MAINTAINERS                                   |   6 +
 drivers/regulator/Kconfig                     |  12 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/pf530x-regulator.c          | 328 ++++++++++++++++++
 5 files changed, 421 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/nxp,pf530x-regulator.yaml
 create mode 100644 drivers/regulator/pf530x-regulator.c

--
2.39.5

---
Woodrow Douglass (2):
      regulator: pf530x: Add a driver for the NXP PF5300 Regulator
      regulator: pf530x: dt-bindings: nxp,pf530x-regulator

 .../bindings/regulator/nxp,pf530x-regulator.yaml   |  74 +++++
 MAINTAINERS                                        |   6 +
 drivers/regulator/Kconfig                          |  12 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/pf530x-regulator.c               | 328 +++++++++++++++++++++
 5 files changed, 421 insertions(+)
---
base-commit: b320789d6883cc00ac78ce83bccbfe7ed58afcf0
change-id: 20250902-pf530x-6db7b921120c

Best regards,
-- 
Woodrow Douglass <wdouglass@carnegierobotics.com>


