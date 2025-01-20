Return-Path: <devicetree+bounces-139818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3192A1703D
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 17:34:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 388AA169F79
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 16:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BA81EB9FF;
	Mon, 20 Jan 2025 16:34:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E16F143888
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 16:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737390849; cv=none; b=laPaYGC1D6956s8rVTAc+GoDXI2FyeUdQDqwNHvijG2h8rr9QhmpMPZ29FUedt0jhbiHe/MnxnammlmhBg7nX/jgKTi5RoRWxobRq9xKUfYWX5eY3Kk190g2OIQ4l4j1Frdh43qxK72cCU82jNt/WcP9W2P+Ddcg/WGrMJJxVYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737390849; c=relaxed/simple;
	bh=uNCDrkKTMVqTdv4TNcuYTQCz7HuT5PD/TYZOJ8yMqj8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bMi1RPgpM/kUnNaQ3u6oVPVp7tG8h6WJdMoc9eYFam8g0W8dmqKh9pk7QwJcCik21BJDMm2tdu7BpzyhBQuWd390PpW0n4L/a6B1ZYZtJRSHwqPLklzUBc8HYPMsaYg8FRlCygW+cviw8M81jLiJjsobwTfF4HAmeuFG0T1PSMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tZuiw-00034A-UG
	for devicetree@vger.kernel.org; Mon, 20 Jan 2025 17:34:02 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tZuiw-000xsM-2F
	for devicetree@vger.kernel.org;
	Mon, 20 Jan 2025 17:34:02 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 5FEC73AD0C8
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 16:34:02 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 340223AD0A5;
	Mon, 20 Jan 2025 16:33:59 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 20c0da44;
	Mon, 20 Jan 2025 16:33:58 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 20 Jan 2025 17:33:47 +0100
Subject: [PATCH stm32-next v2 1/2] dt-bindings: arm: stm32: add compatible
 strings for Linux Automation GmbH LXA FairyTux 2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250120-lxa-fairytux-v2-1-95f4a0eaa44d@pengutronix.de>
References: <20250120-lxa-fairytux-v2-0-95f4a0eaa44d@pengutronix.de>
In-Reply-To: <20250120-lxa-fairytux-v2-0-95f4a0eaa44d@pengutronix.de>
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
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBnjnrx/FRlp1txQr1NDmjA/Lt3a5qIcSpYRj4Dr
 6zR+kGBVp2JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZ4568QAKCRAoOKI+ei28
 b4hCB/wOTgzesIXoKxq7B0VGu8I2Wum0QkzqH+dXRW2jjMGsteF728EvZ54kgkVtI6vu2RDEQWb
 nJqGMSIuDK4TLrC/QISlCKdzJf4Z6OVTBhAvBWDHz/4aH+Am1tBGoblhftVMcsN/hw/mZGNfna+
 nygfr9wJCWo7LDO1/wNiekq2iZFA2/GGf9P4YUikr8lB8gyxsR4WLY/j0IDW8zwVIDOO06/hy4O
 dQXKYwu/raUNIimEBHI5tbONXyntT8Ksg+A180MIzUBqUaMbsu/VrgSJfpCAC+vsDIrVW0URTpo
 9ABadjTfsuyrvdUWOW1h5xq7bCNt+7KzSDGqtFRVF0e7L+wL
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



