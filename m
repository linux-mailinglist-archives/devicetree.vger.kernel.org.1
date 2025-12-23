Return-Path: <devicetree+bounces-248982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC63DCD82FE
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 06:38:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 808673016728
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 05:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0B332F3C1F;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OclN8YV+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAED42E6CA8;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766468232; cv=none; b=sh3L/TUdRVk8nbBRFRtXcIQvQ5bNmt19ZEQhAmz6I+yJnMQNGNxnx2wQbk+hzjYfgIuSzhMTAS+/NgUjcbtWSXO2pXxTOtUEswJ24P+C7XZzijXk+Y9xYY8IKM5QzWkkhLSC2MhoX2EeJprEswZOqnTfS6Kkf+uop1uzEAldOCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766468232; c=relaxed/simple;
	bh=WxJJFen5/BNykLZjzRHR5SEZX7I2OwnxkdPma3fvoP0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r7PVRTRCjMfRwlaDprUBQTmgeXgslDtlgOAEgRU59NtKrnTtCyWaE6QmZwDtRZQqK82+P5BNL61oAHFXbVcglsf8Ez52iY6/E0/1/FVYX9441UnroNwk915pm3lWFEVJHtegU1Bwc8wlBx9VSHAUxPWnbtfQF48jhsLL4tegg8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OclN8YV+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4D4F9C16AAE;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766468232;
	bh=WxJJFen5/BNykLZjzRHR5SEZX7I2OwnxkdPma3fvoP0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OclN8YV+Kar2z9CqRrvLp4Zb4OvnxwRaztk4qtHFC8nKUnrBaMrqrvx2cWVQwgfwe
	 0qNqosInLrNSja8tY6VDEfFb7WewgVUFzGYL/X4NsqsSHCIe31htgZb7e2zehV4Xu2
	 q5fpThUgmsSqCizgP2GEd0cnPLFmahs79EbtzNEV7wS58ss1L0rlBWCacZPQGXwQWQ
	 zN/Uwz9CTyE4ojTXO/D9QeAo9aJA6pe9o5KjtZ6WSs3mGun4UqQvrkJ+GemE2jrXM5
	 Vc0mtCjqGYfjQWmY5tvRbD9IIa4j65bSb44/0OOWZ5BSEXqWOFJVvfXPSeMUiLNWDP
	 Lwq5QbNdUKnJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B07BE6B276;
	Tue, 23 Dec 2025 05:37:12 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Tue, 23 Dec 2025 05:37:09 +0000
Subject: [PATCH v2 1/4] dt-bindings: reset: Add compatible for Amlogic
 S6/S7/S7D
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-reset-s6-s7-s7d-v2-1-958f341449f1@amlogic.com>
References: <20251223-reset-s6-s7-s7d-v2-0-958f341449f1@amlogic.com>
In-Reply-To: <20251223-reset-s6-s7-s7d-v2-0-958f341449f1@amlogic.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766468230; l=960;
 i=xianwei.zhao@amlogic.com; s=20251216; h=from:subject:message-id;
 bh=OPKNBEAA93oJxEN9YQR01t2G5xxbtopLZ/gI/8FlQX8=;
 b=BuJJE4eqH6uLF6XL22fsrl5fTLznYj4N/boPR/Il2wrYfbf5cTgQ1wY1merRSggna0ijywdRF
 z4DSseEtgPrDzhx1cCRIvxOytq2yYVeiBL+Lbn2wrAEo4qVaWNcFq+Z
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=dWwxtWCxC6FHRurOmxEtr34SuBYU+WJowV/ZmRJ7H+k=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20251216 with
 auth_id=578
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add compatibles for Amlogic S6/S7/S7D reset controllers,
which fall back to 'amlogic,meson-s4-reset'.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
index 150e95c0d9be..ab0239cf16e5 100644
--- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
@@ -25,6 +25,9 @@ properties:
           - enum:
               - amlogic,a4-reset
               - amlogic,a5-reset
+              - amlogic,s6-reset
+              - amlogic,s7-reset
+              - amlogic,s7d-reset
           - const: amlogic,meson-s4-reset
 
   reg:

-- 
2.52.0



