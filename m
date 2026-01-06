Return-Path: <devicetree+bounces-252053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EC6CFA23F
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 19:28:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 29C2E3071AAC
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 18:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F2AE1D8E10;
	Tue,  6 Jan 2026 18:17:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0D12D3727
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 18:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767723468; cv=none; b=REt54SHGs52bKJ5+bBqADzKe/M6BxuRi9Exlb4Zi7XlL35N5daDCJ+WlaIACbd9Mr5ketLFO6a+v6+pTIpxrKdmYnSfsaD5KlUR/wz9QptQ7XvElju+wYHd/ooDaz8lNebqFIOHUbWjXZBIonAcKGi7u7RA9Ed4EFFRZIHq0CPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767723468; c=relaxed/simple;
	bh=VrkKbna9m79JFV2gYpRAh2DO8PkntnlNtf7bOulgLUE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vh26/Jhl675RlK/fF63pU23e7N2rEr/+qA2awR32smxm8SzIRijle4N9PpQ8e+lXVZzOAxyUK1IGgnsg8mQXZylmwblvOVhgttp8tzJmtRUuW9UNYAqbKGEsGul+szLpnqDxZJ3XUmXG9AUMGvKObsEer6Yti7MENCYVwN/WutY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vdBcf-0007cp-F2; Tue, 06 Jan 2026 19:17:37 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue, 06 Jan 2026 19:17:09 +0100
Subject: [PATCH v4 2/4] dt-bindings: vendor-prefixes: Add TouchNetix AS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-v6-10-topic-touchscreen-axiom-v4-2-9e9b69c84926@pengutronix.de>
References: <20260106-v6-10-topic-touchscreen-axiom-v4-0-9e9b69c84926@pengutronix.de>
In-Reply-To: <20260106-v6-10-topic-touchscreen-axiom-v4-0-9e9b69c84926@pengutronix.de>
To: Luis Chamberlain <mcgrof@kernel.org>, 
 Russ Weight <russ.weight@linux.dev>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Andrew Morton <akpm@linux-foundation.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Kamel Bouhara <kamel.bouhara@bootlin.com>, 
 Marco Felsch <kernel@pengutronix.de>, Henrik Rydberg <rydberg@bitmath.org>, 
 Danilo Krummrich <dakr@kernel.org>, Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-input@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Kamel Bouhara <kamel.bouhara@bootlin.com>

Add vendor prefix for TouchNetix AS (https://www.touchnetix.com/products/).

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a74560a4f687fe7a2070ca21b0752..d972d8ba25b4fcb22d5020257f271aa10d8de2c3 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1673,6 +1673,8 @@ patternProperties:
     description: Toradex AG
   "^toshiba,.*":
     description: Toshiba Corporation
+  "^touchnetix,.*":
+    description: TouchNetix AS
   "^toumaz,.*":
     description: Toumaz
   "^tpk,.*":

-- 
2.47.3


