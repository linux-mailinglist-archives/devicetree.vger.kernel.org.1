Return-Path: <devicetree+bounces-254450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BD5D1851E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:05:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAA5930C0A91
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27FB838F235;
	Tue, 13 Jan 2026 10:59:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57ADD366557
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301990; cv=none; b=ND7l/6KTJKajgt7MgGo3tgOVfdHG9RpRAyw7jhvoAJUIbFZLpfsJBfBcXSsfgad9zzI/HO784PYOw1+CIwjRy5QvGufzMcNuspH7rm7qiYrBK5dRQBPChzlgK1vqrurBhK6uNQ0h23C46CvbnEtJai5qcqbLxPSBpBWsxK+z7T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301990; c=relaxed/simple;
	bh=7TG8ChsmEKxx4/BuNL3tSZPzlIU0WQm6MqDGP2DlTJw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qK4Tk2xBMaAs9pWZVxgc9oG4S3kwjLY0x88Flej6XpEBgpQhXbdb9JDhUv14yltYzYz5lznmiSdmwSBzg5mB2VdYjy062RS6zOGfgdfN9kQNm2SPbZsAs0zr/01U1zIFjcAx//oyrbx5yGz9f2jXKoZDEX9SZCVXef40dafXnDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfc78-0008DM-Al; Tue, 13 Jan 2026 11:59:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfc74-000PMH-2j;
	Tue, 13 Jan 2026 11:59:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfc73-00000004mJf-43P4;
	Tue, 13 Jan 2026 11:59:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Jan 2026 11:58:50 +0100
Subject: [PATCH v4 07/10] ASoC: dt-bindings: clarify areg-supply
 documentation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-sound-soc-codecs-tvl320adcx140-v4-7-8f7ecec525c8@pengutronix.de>
References: <20260113-sound-soc-codecs-tvl320adcx140-v4-0-8f7ecec525c8@pengutronix.de>
In-Reply-To: <20260113-sound-soc-codecs-tvl320adcx140-v4-0-8f7ecec525c8@pengutronix.de>
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
 Emil-Juhl <juhl.emildahl@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768301941; l=1285;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=7RfFbFyTNGaSY6avmnHjxprtJDzNzxIoQg0ZhbFwspg=;
 b=UBHlJ/236Ziodfh+SzYNxLFSl0PVrHj9nCxIZcNe4js09atVM98k6bbIjGkiXUhCK1rGh+WIB
 Hlwn4fF/VHEA+PhZvuJB692JtlfjeOpS4UVDyrnVOJST2F/YJMjfnBm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Emil-Juhl <juhl.emildahl@gmail.com>

The documentation for areg-supply could cause confusion mainly in terms
of the relationship between AREG and AVDD.
According to the datasheet[1] the AREG can be one of two cases:

1) an external 1.8V supply
2) generated by an internal regulator (hence a 1.8V output)

[1] https://www.ti.com/lit/ds/symlink/tlv320adc5140.pdf

Signed-off-by: Emil-Juhl <juhl.emildahl@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/sound/ti,tlv320adcx140.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320adcx140.yaml b/Documentation/devicetree/bindings/sound/ti,tlv320adcx140.yaml
index 876fa97bfbcdd3b9450aa6ff57de42f1faed350d..b34ea7824360310434d8b826392864dbfa5fc369 100644
--- a/Documentation/devicetree/bindings/sound/ti,tlv320adcx140.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,tlv320adcx140.yaml
@@ -41,8 +41,8 @@ properties:
 
   areg-supply:
     description: |
-      Regulator with AVDD at 3.3V.  If not defined then the internal regulator
-      is enabled.
+      External supply of 1.8V. If not defined then the internal regulator is
+      enabled instead.
 
   ti,mic-bias-source:
     description: |

-- 
2.47.3


