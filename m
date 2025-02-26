Return-Path: <devicetree+bounces-151364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B68A458CE
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 09:50:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E224216B0BB
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 08:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24ADE20C033;
	Wed, 26 Feb 2025 08:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="BRdEAfWi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9841F20CCEA
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 08:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740559811; cv=none; b=d9XMKvlUJpBiNrjvlK3/B5gDdBe3yM3Pg1zty2A/mgAYNSY+1OtHkv3dOLImjpOvAZyIUarq7UCmLClgWhXHdrMh312LacGWwaIKxo/fR2F5yHV91Ljolr3FUY24Ew7x0hvj1NA+gqIjLzCW53EQ2FQgITP0mVK++U9EPo+HaMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740559811; c=relaxed/simple;
	bh=9fg6th4BjZHxuFQJXSFN9o+5dqZuCpABvB9Fh5uTfps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aSe5NBguoj+mJFs1owsEQmhMigRxijC/nJKYuBV1Xa/UjDUiHqGb5mcKkwWFks7f6zGnFrFQIkuK9F1IfkPJwzo0yynpPxGH68quGp5OIoc+dJ41ruCaqokCY+2agRnped3Bu3MAsm/u6gcj9dT9SBlOBaFInloAMTvnDtGQkxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=BRdEAfWi; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=QoRHycwAmBYUri9rlyFHlZy3NwlBvIOEmEFqOGFEsa0=; b=BRdEAf
	WiAlxaoqYaD6f3f5QItwDgDyWd5kZ7L1MGs5AcGUzz0uLGCssb/jfLKHrRccc2sy
	1Wl81g/INbQ5p5RwMaFRtwwfW5Bvv3AQTq9exX0yLHN4APReElmGDUOaqu5vGOJy
	9qHZ9LEqHEqDIK4+uy4P3yJqOKqa7eELp9Ve30J5YfFbDDy4teXdnVaCphvep91N
	vGP/JfEi/iINwqZLsPPhd7kzE8E2lgdyKJ5cKBdbTC7fkjr1s2rCJnVEN6L6nf+7
	El8oL+yfBvxDDAtDiSsnicGc/4VGATbzcPJ0hKbwKBuj0vfVJXPBB29JDdtQPqAt
	zz/8CI5cGM3x6sTA==
Received: (qmail 500365 invoked from network); 26 Feb 2025 09:50:03 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Feb 2025 09:50:03 +0100
X-UD-Smtp-Session: l3s3148p1@u8jNqAcvZq4gAwDPXxaLANR24ZQNPy5l
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: ARM: at91: make separate entry for Olimex board
Date: Wed, 26 Feb 2025 09:49:36 +0100
Message-ID: <20250226084938.3436-7-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
References: <20250226084938.3436-6-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Olimex board exists with only one SoC option. Change the bindings to
reflect that.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 0ec29366e6c2..02a8f6aad541 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -22,8 +22,6 @@ properties:
       - items:
           - const: atmel,at91rm9200
       - items:
-          - enum:
-              - olimex,sam9-l9260
           - enum:
               - atmel,at91sam9260
               - atmel,at91sam9261
@@ -36,6 +34,12 @@ properties:
               - atmel,at91sam9x60
           - const: atmel,at91sam9
 
+      - description: Olimex SAM9-L9260
+        items:
+          - const: olimex,sam9-l9260
+          - const: atmel,at91sam9260
+          - const: atmel,at91sam9
+
       - items:
           - enum:
               - overkiz,kizboxmini-base # Overkiz kizbox Mini Base Board
-- 
2.45.2


