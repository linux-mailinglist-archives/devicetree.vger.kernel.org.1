Return-Path: <devicetree+bounces-183592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC925AD1350
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 18:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9511F1886BAC
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 16:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6638F1891AB;
	Sun,  8 Jun 2025 16:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="GSCIS07F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA26AEEBB
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 16:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749400181; cv=none; b=u2rpGNwni7pDBtLTiPhYC6Qm3MvIPCRcLLb4AfumNGVu3+/tyeOqzD4YkbV4OXWqH0azz4pJnwXDMHpoLKS+3WvWt09gChBAnVgXK4r2vq8HwLXD0xuOWYp6RNTHMOxTKmW9baenEk1Evk+yrEw8jiZhX/enm0gDGsonDP4Jrk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749400181; c=relaxed/simple;
	bh=m6Gs40Q/a1G4hSW/BIK7VUguSTZDxAopJl1znWXBQSM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QylpNYTq2jD6gmOpuGhnzni+2nCstmnWlrBOb7dO8SRZMw2+eiiNnPYfXuBqEsjdzkNVtP3NxZXHkyG8zzULkah6JWt8a9vAxwyJrjgQnfrbJjZ/CGfOTvoiPWFY7IF04/L7ncD7x0ClLvvBxYawpWmcPUPtvxkF9jlS776B434=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=GSCIS07F; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=+no5+IJPYWBq/T
	Gq4kp4DoVsxjjG4wvVETCK0+55Z7E=; b=GSCIS07Fw2+p5NPvlfkPRi5Xpa2XQ9
	wbqF/IFzbzJQ8wD50vKPf/NpLHXgJ7bC59c+psE51RzgW3IJesnQ9JcbfBQDI+qk
	UxdwXb+t11lUTijiPY4eR/+HtlO9ppXZ5XP4Er0VPM8I1liV2x1Roq9gZl8PJ1EG
	0SSjVSwCsObfnZGE74VCBqgmVroGOxGNK1SwzfPXf4wT4+BgyAHTpQ+l8YkSjNlJ
	x9GCfthisvgCyHculS5pMPgPtWiSg8HiVDcl7tg/OAYr27Y4xOMY+KRco7ImT8AT
	tgoSjMeUM4ih0qKIdKX8oJQpl7IO2XUBmhoI7JPcKrqywbuuOb6vCkrw==
Received: (qmail 2268436 invoked from network); 8 Jun 2025 18:22:52 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 8 Jun 2025 18:22:52 +0200
X-UD-Smtp-Session: l3s3148p1@2Kz43xE3HMMgAwDPXxjNABpZ5pqxEKpY
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: trivial-devices: Add Analog Devices ADT7411
Date: Sun,  8 Jun 2025 18:21:09 +0200
Message-ID: <20250608162240.3023-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Describe this SPI-/I2C-Compatible, 10-Bit Digital Temperature Sensor and
8-Channel ADC. The driver is in hwmon for ages.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Found while using a local setup, but there are upstream users already:

arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts:                compatible = "adi,adt7411";

 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 8dc81b1ca48e..233d32ad7790 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -41,6 +41,8 @@ properties:
           - adi,ad5110
             # Analog Devices ADP5589 Keypad Decoder and I/O Expansion
           - adi,adp5589
+            # Analog Devices ADT7411 Temperature Sensor and 8-channel ADC
+          - adi,adt7411
             # Analog Devices LT7182S Dual Channel 6A, 20V PolyPhase Step-Down Silent Switcher
           - adi,lt7182s
             # AMS iAQ-Core VOC Sensor
-- 
2.47.2


