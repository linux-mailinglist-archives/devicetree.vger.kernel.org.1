Return-Path: <devicetree+bounces-140017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2775AA17CC1
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 12:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A738C3A75E7
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:14:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E25971F1516;
	Tue, 21 Jan 2025 11:14:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471A51F130A
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 11:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737458065; cv=none; b=TICIECD7p43ObndulAsggzAHhLgYToQafWBZi0tYmmmtO0oXDeW/4UP+nl6MThRNqG+hpuBytXZS+HelWYiX+IKf8KpNPcGdJ6qpJG7Wr/5lmDzNHMGGEXIG/hlbvFzI7CVtEGLffxoXPf7AhqWgtXAB2jqGUehWFm5+nGIuj5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737458065; c=relaxed/simple;
	bh=uNCDrkKTMVqTdv4TNcuYTQCz7HuT5PD/TYZOJ8yMqj8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CQ7dj1fKaNwfDFJznH5uYVFij20zPFjpJVCQKrGI4roEuDvgI7QM1PMe5+TJu0/Y3ALt+Zkfyodq/7yTfu4nos/NM0rTEKren5fJ5xqEPnQaoiSlxyLHJfBbGwYwawxcW06vmOIsPY0a70Vs4GUh+/zhnVMfd0vhmNsaN2l5edU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1taCD8-0000Z2-JA
	for devicetree@vger.kernel.org; Tue, 21 Jan 2025 12:14:22 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1taCD7-00169t-2v
	for devicetree@vger.kernel.org;
	Tue, 21 Jan 2025 12:14:21 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 92BA63AD9CB
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 11:14:21 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 873D83AD9A7;
	Tue, 21 Jan 2025 11:14:18 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 7f5fec85;
	Tue, 21 Jan 2025 11:14:17 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 21 Jan 2025 12:14:05 +0100
Subject: [PATCH stm32-next v3 1/2] dt-bindings: arm: stm32: add compatible
 strings for Linux Automation GmbH LXA FairyTux 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250121-lxa-fairytux-v3-1-8d42d7d232fb@pengutronix.de>
References: <20250121-lxa-fairytux-v3-0-8d42d7d232fb@pengutronix.de>
In-Reply-To: <20250121-lxa-fairytux-v3-0-8d42d7d232fb@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: kernel@pengutronix.de, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 =?utf-8?q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-1b0d6
X-Developer-Signature: v=1; a=openpgp-sha256; l=1354; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=nHqVbVztPOg4rqN4cb7rY9www086UjxiBiZ4nydhcgc=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBnj4GCIEL4dzlgx73L5g5EoBJCtwQ2Fy0AqIIOc
 z/SyjNSewOJATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZ4+BggAKCRAoOKI+ei28
 b7S7B/0XAp43oBkw6VpDipUldg7vG8ZbyhM78tf3eQf29ikXK7js2ZAz5aGunmfgzBdPRMqxmQ2
 +65KbftrM6pfIo0feE70jnXfuMZvWVbGsBAh5zwATq7WgAqzwbcKrZbWBrrknkwm8G7N/sfetTU
 W9XmGHKuPq+sXe5WIQZAlE3AGNbMJOpzwUfXUvZT0sCv9BWTRJ4yBDL8o3cId+NMew3YgymO5ek
 mPGtXrpR8aplc8Ho9jv8iyQdZ+9YOe9WTOGkl7/Zor3EHzfnkjQKt8S6JhAj2du81zYa3qModPs
 UZ86VyN/6ycjiye0nTUSHxvG7nveLs0W+V16T3GBXwAItQ2e
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Leonard Göhrs <l.goehrs@pengutronix.de>

The Linux Automation GmbH FairyTux2 is a small Linux device based on
an Octavo Systems OSD32MP153c SiP, that occupies just two slots on a
DIN rail.

Add compatible for the generation 1 and 2 based on the STM32MP153c.

Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index b6c56d4ce6b9515565fc05348896ba9f400643f0..6825d965da3daf2b508fbd88e8c9d40e20ba1f59 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -94,6 +94,8 @@ properties:
       - description: Octavo OSD32MP153 System-in-Package based boards
         items:
           - enum:
+              - lxa,stm32mp153c-fairytux2-gen1 # Linux Automation FairyTux 2 (Generation 1)
+              - lxa,stm32mp153c-fairytux2-gen2 # Linux Automation FairyTux 2 (Generation 2)
               - lxa,stm32mp153c-tac-gen3 # Linux Automation TAC (Generation 3)
           - const: oct,stm32mp153x-osd32
           - const: st,stm32mp153

-- 
2.45.2



