Return-Path: <devicetree+bounces-34644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C79F83A6BD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 801781C215CC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 481F618EA5;
	Wed, 24 Jan 2024 10:27:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CFB1946C
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 10:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706092049; cv=none; b=iOd0fb0GIiuB8pdKEgckttff1y8tGK/wr5CjGLF809B86bwUyZLVKeSImp9Ot2ZAKc8w2fKPw8DAn9DXhwzB45/gZoH2cjTs5igHYO/6ROcgqWzQNj656YK5HpVvmj+ya96xO/2bgyJItyqgmkSEd2meqj5O1kWR/IywijZjoVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706092049; c=relaxed/simple;
	bh=9elGbJ9BhmbogAps8tebLB07/pGkB6rpP+o8/7wQRxg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DYFg3/8+mlUkFQjGDGN05GUWdW0uBMBhiAxSlh3enqgyFILSkAx3UH1QdcqbivRp/JlTASN41fEUUEXhmNi5PIJVrbFN4Sq3lUFUNISz5JGS0HKwm9amPVSgQN6QNHF855CsubD5SqPTF0xbFT7wM8gqGaC3XfNvdn7R69j8Myk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <fpf@pengutronix.de>)
	id 1rSaTN-0007RA-GC; Wed, 24 Jan 2024 11:27:09 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <fpf@pengutronix.de>)
	id 1rSaTL-0022GT-5m; Wed, 24 Jan 2024 11:27:07 +0100
Received: from fpf by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <fpf@pengutronix.de>)
	id 1rSaTL-005aMM-0N;
	Wed, 24 Jan 2024 11:27:07 +0100
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
To: Michael Hennerich <michael.hennerich@analog.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandru Tachici <alexandru.tachici@analog.com>
Cc: kernel@pengutronix.de,
	Fabian Pfitzner <f.pfitzner@pengutronix.de>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: net: adin: add recovered clock output
Date: Wed, 24 Jan 2024 11:25:54 +0100
Message-Id: <20240124102554.1327853-1-f.pfitzner@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240122110311.2725036-1-f.pfitzner@pengutronix.de>
References: <20240122110311.2725036-1-f.pfitzner@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: fpf@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The ADIN1300 offers three distinct output clocks which can be accessed
through the GP_CLK pin. The DT only offers two of the possible options
and thus the 125MHz-recovered output clock is missing.

As there is no other way to configure this pin than through the DT it
should be possible to do so for all available outputs.

Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 Documentation/devicetree/bindings/net/adi,adin.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/adi,adin.yaml b/Documentation/devicetree/bindings/net/adi,adin.yaml
index 929cf8c0b0fd..04059393b756 100644
--- a/Documentation/devicetree/bindings/net/adi,adin.yaml
+++ b/Documentation/devicetree/bindings/net/adi,adin.yaml
@@ -38,14 +38,17 @@ properties:
 
   adi,phy-output-clock:
     description: |
-      Select clock output on GP_CLK pin. Two clocks are available:
-      A 25MHz reference and a free-running 125MHz.
+      Select clock output on GP_CLK pin. Three clocks are available:
+        - 25MHz reference
+        - free-running 125MHz
+        - recovered 125MHz
       The phy can alternatively automatically switch between the reference and
       the 125MHz clocks based on its internal state.
     $ref: /schemas/types.yaml#/definitions/string
     enum:
       - 25mhz-reference
       - 125mhz-free-running
+      - 125mhz-recovered
       - adaptive-free-running
 
   adi,phy-output-reference-clock:

base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
-- 
2.39.2


