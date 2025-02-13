Return-Path: <devicetree+bounces-146187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B89DA33B39
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 10:27:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED891163C9B
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 09:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 823D120CCE2;
	Thu, 13 Feb 2025 09:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="SgYp9BO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37E320CCFB
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 09:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739438865; cv=none; b=KIWfTh6Ee3Fsg2E3qgoCBd53Pi3azpgP5TrisMxvlRllQ3Ff2+nMf+N8X2WFcumuYqdjLiWjU4enRdGu7nDyX7rAq+KTo1jX6nsOkcUeL66JT9NLXRrVg4OVYEFeE2Fptj902Qmo/IdeulXQ+rEQlBXeY6cMLZtpni5+g0PJF7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739438865; c=relaxed/simple;
	bh=VDL0uOf7T+TaCXbMfwI4rehvDdg7Qqg1J9JvQJ5p670=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HVf2r9YO9fbKL+TwoUKSFX/BlxAzzRKzp6710sjOwnyQq85jM6GMMl1zW5xZTPjmrKARRlhPmvEV60txItdNRIYnXXTWpuD5qK94Vr2Z6g5zcppXOwIMLvZefGNd3yKxwE2NWDsVWrlC8Xd5yx1DgUUYOyJPKCFhyWFcPQC/UrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=SgYp9BO+; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=HUhoK5tjELfjF0
	VqSsnZsbkAizYp2E8hPEyT0wBFLSU=; b=SgYp9BO+sJEDfmB6Dla7eOwn+K7vbG
	f+PSyGCy8Um/Gk907fN5lQbRGOOTm9xC7lGPK/rhyUFBqXwwTIpWzKjz8gAvpxIh
	bbwt56fszeCSRw/vWlAfZ01U90t/fHw41zPTJNpF4TlzEC9UOP6nmks2uAdQMga/
	xg28hCz/d7HEpxKFiJVp0Q8d5iaiXyc2dkkgI2dzmsALBpfvDs1m1UOqqELRQ5ma
	hqto6+7Bn/uBMCa6AssmmQfyfuKw6nrJgwRslKqFkwJM48NlSQ1F4pu0sDFndk0a
	I1NVAkLHToUckfzOcyk+mYRpH8Ic9eYnjECoMqJIjV2fWVDVmMtMLhQA==
Received: (qmail 1812528 invoked from network); 13 Feb 2025 10:27:31 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 13 Feb 2025 10:27:31 +0100
X-UD-Smtp-Session: l3s3148p1@PcbTqgIu6LVehh99
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2] dt-bindings: clocks: atmel,at91rm9200-pmc: add missing compatibles
Date: Thu, 13 Feb 2025 10:26:34 +0100
Message-ID: <20250213092728.11659-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The driver support more SoCs. Add the missing ones.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Changes since v1:
* add new compatibles also to clock restrictions (Thanks, Krzysztof!)

 .../devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml       | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml b/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml
index 885d47dd5724..e803a1fc3681 100644
--- a/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml
+++ b/Documentation/devicetree/bindings/clock/atmel,at91rm9200-pmc.yaml
@@ -34,6 +34,8 @@ properties:
           - enum:
               - atmel,at91rm9200-pmc
               - atmel,at91sam9260-pmc
+              - atmel,at91sam9261-pmc
+              - atmel,at91sam9263-pmc
               - atmel,at91sam9g45-pmc
               - atmel,at91sam9n12-pmc
               - atmel,at91sam9rl-pmc
@@ -111,6 +113,8 @@ allOf:
             enum:
               - atmel,at91rm9200-pmc
               - atmel,at91sam9260-pmc
+              - atmel,at91sam9261-pmc
+              - atmel,at91sam9263-pmc
               - atmel,at91sam9g20-pmc
     then:
       properties:
-- 
2.45.2


