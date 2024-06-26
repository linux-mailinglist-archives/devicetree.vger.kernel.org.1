Return-Path: <devicetree+bounces-80341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1679918650
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:54:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08FE31C21F10
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BDD718C351;
	Wed, 26 Jun 2024 15:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r60rJyVg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB71418A920
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719417288; cv=none; b=EBDABg9I8WYxVbYjonllnPme8/1co3seqK16EWZtiKXaH4ipCZeOG5VSMQm+TFzVoV83RKw0wkJneLcbvetKi1SEnT7gbZwmOydWHU88IqFiX5AYc1wry0pkGPtNJPfw2yUuWDSbpNriMcdVS5/QQTHEoR1squm2z5OXzL1uIeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719417288; c=relaxed/simple;
	bh=k07uNk2LX/19DnK/yHpQPbw5Q9ReO3H2clvGaoRAazU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gv6Z1rHKOkSSSMKNGc3FeZ5vAnE3pJGlh691c0WoVWeNQ2FC3v4teGipUQS9VU4XTo1W9Av05XHPkqL3vnI5VJuiZxSXn5DnQIQaA+sDHJ/ngU4UQor0xlpKkqPgk0dE1WrWsQu+UoIANvtzirPjsXd3Icxiu3Ydy+zTygH7tJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r60rJyVg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FA64C116B1;
	Wed, 26 Jun 2024 15:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719417287;
	bh=k07uNk2LX/19DnK/yHpQPbw5Q9ReO3H2clvGaoRAazU=;
	h=From:To:Cc:Subject:Date:From;
	b=r60rJyVgFOpg0dSWJRTtihgZdeiAVHkpRy27VWxy1s9wyD1/XPlZQHYi4M7mX9BjX
	 Ah3ROss4b6bwKoFCfSTlXFIKxEKdnMjSyuNOW8+OFD1flyz2e4N/jOW7XOM+2z9c+f
	 Kq/Me0GcFZcisxej4pCZben8DaWM94fq8J8rO5CPxxlse1LDzHViv9CrfOmrYbFQRv
	 RfMP/VTcTeuCXJ0khbywrnv0f7D7AuuGSRx6WNGxYVVlYY3JBx3Ii1docNnPCL0A98
	 vczA/hAIM88FoKVJTSDklDXayug54TStFGvTO1rY5pt3Uqsk/vnVw1hj6D+kByuwy8
	 06JuL+r7z3l0Q==
From: Conor Dooley <conor@kernel.org>
To: devicetree@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>
Subject: [PATCH 1/2] MAINTAINERS: add microchip soc binding directory to microchip soc driver entry
Date: Wed, 26 Jun 2024 16:54:16 +0100
Message-ID: <20240626-platter-scarcity-d503fda8a2fd@spud>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1232; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=9stFsEjmEkqtE4vCgVZFRoryu74A1kr83WVwgD3V7R4=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGk1lsuPLn+5NdBIcqlgbZ55bsP7L4Iq3TwOt64z5E91l H23TI+to5SFQYyDQVZMkSXxdl+L1Po/Ljuce97CzGFlAhnCwMUpABO5rs/w3/fLXv9gt6O5WgLF Yet1KhvOud/q9gjfPkWtV2fhJcXiTkaGrSvSfD6t0biudNx3sU9L5YlJd2RmvPDq3vElZG/q4m/ JfAA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

I noticed that there's technically not an explicit maintainer for this
directory, even if the files currently in it are covered by either the
Mircochip FPGA or AT91 entries. Add it to the entry covering the
corresponding driver directory.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
CC: devicetree@vger.kernel.org
CC: Nicolas Ferre <nicolas.ferre@microchip.com>
CC: Alexandre Belloni <alexandre.belloni@bootlin.com>
CC: Claudiu Beznea <claudiu.beznea@tuxon.dev>
CC: Lars Povlsen <lars.povlsen@microchip.com>
CC: Steen Hegelund <Steen.Hegelund@microchip.com>
CC: Daniel Machon <daniel.machon@microchip.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e2d8fdda1737..c74fd2b70532 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14975,6 +14975,7 @@ MICROCHIP SOC DRIVERS
 M:	Conor Dooley <conor@kernel.org>
 S:	Supported
 T:	git https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/
+F:	Documentation/devicetree/bindings/soc/microchip/
 F:	drivers/soc/microchip/
 
 MICROCHIP SPI DRIVER
-- 
2.43.0


