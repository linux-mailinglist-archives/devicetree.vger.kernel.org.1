Return-Path: <devicetree+bounces-215336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F53AB512B0
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:38:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B11617CBC5
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC0A314A68;
	Wed, 10 Sep 2025 09:38:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79B83148DE
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757497081; cv=none; b=HVKHi2gkcZ/QsE/k2jR3Mek6qDq44iWLj+T8s7fNr3hGdDsq7Dk5Sc3B/I15k1K6NMD8blS8u/2wSwh2HV91LMCavwQH/5GAblf3NJ1sTj+9Q3Ql1OXDKTmAhoM8aPbjqBqIz8uY/T10lLGBGA2sApGvyz9m/gulKW/8IUSBvJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757497081; c=relaxed/simple;
	bh=cWm8EcycI60jj7JL695XhYTEoHqJuv/2xBU7iViB9YU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=B9bAx3IdD/SYedyfHMCG8muyC6fseYCs3+16W3WpjQ8npGXA4sIfkGDbtK4DA+uwWW15RmqgUUBv710p3J3tiGp9ZbEStXYYFbGXR6QLGfM5i6hf9v+6zscipeS22st1eZchhhmiXnDHbZGOwbuKKT1Wl84vQOFQfnetxXckmDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uwHGt-0007uM-Ja; Wed, 10 Sep 2025 11:37:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uwHGs-000ZLc-37;
	Wed, 10 Sep 2025 11:37:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uwHGs-000000090kl-3jh2;
	Wed, 10 Sep 2025 11:37:46 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Subject: [PATCH v2 0/2] ASoC: codecs: pcm1754: add pcm1754 dac driver
Date: Wed, 10 Sep 2025 11:34:04 +0200
Message-Id: <20250910-v6-12-topic-pcm1754-v2-0-0917dbe73c65@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAxGwWgC/32NQQ7CIBBFr9KwdgwQUXDlPUwXBKbtLAQCldQ03
 F3sAVy+l/z3d1YwExZ2H3aWsVKhGDrI08DcYsOMQL4zk1wqroWGegUhYY2JHCT3Ejd1Aa0mK53
 xynnO+jJlnGg7qs+x80JljflznFTxs/97VQAHFN4LbdAaYx8Jw/xecwy0nT2ysbX2BZj/OGG7A
 AAA
X-Change-ID: 20250818-v6-12-topic-pcm1754-85fa2c9d5cd0
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.kerkmann@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Changes in v2:
- addressed DT binding review comments from Krzysztof
- Link to v1: https://lore.kernel.org/r/20250818-v6-12-topic-pcm1754-v1-0-e1dd189ea99a@pengutronix.de

---
Alvin Šipraga (1):
      ASoC: codecs: pcm1754: add pcm1754 dac driver

Stefan Kerkmann (1):
      ASoC: dt-bindings: ti,pcm1754: add binding documentation

 .../devicetree/bindings/sound/ti,pcm1754.yaml      |  55 ++++++
 sound/soc/codecs/Kconfig                           |   5 +
 sound/soc/codecs/Makefile                          |   2 +
 sound/soc/codecs/pcm1754.c                         | 185 +++++++++++++++++++++
 4 files changed, 247 insertions(+)
---
base-commit: adc218676eef25575469234709c2d87185ca223a
change-id: 20250818-v6-12-topic-pcm1754-85fa2c9d5cd0

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>


