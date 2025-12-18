Return-Path: <devicetree+bounces-247878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6A2CCC62C
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 16:04:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3ADFA3022A65
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4A02D94BF;
	Thu, 18 Dec 2025 15:04:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E9B2D5A13
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 15:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766070269; cv=none; b=EC9rfYO8ULV0tZRzXmyn1ciynkCB+O0Etdlxbnwkx9BPgtTIKAboVe1t7bXqHIoeTEX6/ecCywpcg+7mhbvnJoYqBLkra3vY68y8YuL/S6gkY+Tvuoe6sz8IXYNcXvdEmJQK5Fw8CI3XCtGazNV7AfsFnade8KOhdfaaDmHTo0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766070269; c=relaxed/simple;
	bh=1qaJy32Pd0EFYm8hp3as/rFU8J0Uc6xsfp3DVkt6ijo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OQN7LJ2rjhIHy6JR4jyWs4izR+9qcOEX4jKNK9pxNoHaxqtIzbwFOV4tnEAjMbYUVfcENP2GU/fDvVyGp8anyUvPjCBpWIwRkG7bQ7krMaSFFgY18+394eqsZyWjTR1bK6UenFMkREVyJol5TU5BIwS491IOteC5knE1ZFbNPno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWFY4-0007j3-Og; Thu, 18 Dec 2025 16:04:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWFY1-006IfI-1t;
	Thu, 18 Dec 2025 16:04:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWFY1-00000002kPh-1lUT;
	Thu, 18 Dec 2025 16:04:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 00/10] sound: codecs: tlv320adcx140: assorted patches
Date: Thu, 18 Dec 2025 16:04:06 +0100
Message-Id: <20251218-sound-soc-codecs-tvl320adcx140-v2-0-3c2270c34bac@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOYXRGkC/42NQQ6CMBBFr0K6tqYdUMCV9zAsSmeASUxLWmgwh
 LtbOYGbn7y/eG8XkQJTFI9iF4ESR/YuA1wKYSfjRpKMmQUouGnQtYx+dZjXSuuRbJRLepegDNp
 NV0qaBoHuVdsPdSOyZA408HYGXl3miePiw+fsJf17/1YnLZWEtkQyumqx7p8zuXFdgne8XZFEd
 xzHF/re3MjRAAAA
X-Change-ID: 20251217-sound-soc-codecs-tvl320adcx140-a8d2e649bf78
To: Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, 
 Baojun Xu <baojun.xu@ti.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, 
 Dan Murphy <dmurphy@ti.com>
Cc: linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Kevin Lu <luminlong@139.com>, linux-rt-devel@lists.linux.dev, 
 devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>, 
 Emil Svendsen <emas@bang-olufsen.dk>, 
 Dimitrios Katsaros <patcherwork@gmail.com>, 
 Emil-Juhl <emdj@bang-olufsen.dk>, Emil-Juhl <juhl.emildahl@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766070249; l=1849;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1qaJy32Pd0EFYm8hp3as/rFU8J0Uc6xsfp3DVkt6ijo=;
 b=eiD0FH+PVCaelj59RjHbg+qIR6pyFJQ432Xo832x8p17CGYJo+jnz/Xna3UfX0qJbp5RfH6or
 E7p/BJ38cPbBlPhrwDZ11U4SV0+raV/2LO05gXp760m59SGYbsIcLJy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

These are some patches for the tlv320adcx140 codec we are carrying
around for a while, time to upstream them.

First four patches are fixes. The following four add regulator support
for AVDD and IOVDD. The remaining three patches add more controls to the
driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- drop "Add kcontrols for TDM Slot assignment", wrong way to control TDM
  slot assignment
- drop overlong and unnecessary backtrace from commit message
- drop unnecessary descriptio for regulator in binding
- improve commit message for "ASoC: tlv320adcx140: implement register caching"
- change order in dt-binding patches to fixes first
- Add missing S-o-b Emil Juhl
- Link to v1: https://lore.kernel.org/r/20251217-sound-soc-codecs-tvl320adcx140-v1-0-293dea149d7b@pengutronix.de

---
Dimitrios Katsaros (1):
      ASoC: tlv320adcx140: Propagate error codes during probe

Emil Svendsen (4):
      ASoC: tlv320adcx140: invert DRE_ENABLE
      ASoC: tlv320adcx140: fix null pointer
      ASoC: tlv320adcx140: fix word length
      ASoC: tlv320adcx140: add channel sum control

Emil-Juhl (4):
      ASoC: tlv320adcx140: power on/off the device on demand
      ASoC: tlv320adcx140: add avdd and iovdd supply
      ASoC: dt-bindings: clarify areg-supply documentation
      ASoC: tlv320adcx140: add kcontrol for num biquads

Sascha Hauer (1):
      ASoC: dt-bindings: add avdd and iovdd supply

 .../bindings/sound/ti,tlv320adcx140.yaml           |   7 +-
 sound/soc/codecs/tlv320adcx140.c                   | 149 +++++++++++++++++++--
 2 files changed, 146 insertions(+), 10 deletions(-)
---
base-commit: ea1013c1539270e372fc99854bc6e4d94eaeff66
change-id: 20251217-sound-soc-codecs-tvl320adcx140-a8d2e649bf78

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


