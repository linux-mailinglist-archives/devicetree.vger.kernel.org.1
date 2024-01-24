Return-Path: <devicetree+bounces-34816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5536F83B201
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 20:16:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0C27CB2E942
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 19:09:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F651132C30;
	Wed, 24 Jan 2024 19:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jM9QCaH+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66700131E54;
	Wed, 24 Jan 2024 19:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706123298; cv=none; b=eqp+YjaEs35a3TGtBGDiiGRKAzWmwNXsKURJNRdy91SY4snZrQlLAYEWiyqbRzKcbA6963B3ivmhLKsCyGa3chLSjsPgcH8+LOkagQF0yMkjmKIzaDrkBT0LfXRkyLswLqEWa9cKIgaMg55EtkeJTIXdcSi9spabytus6r8xUZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706123298; c=relaxed/simple;
	bh=3DjOZTJU8qLa14fEc0+qZZ6+eeGgz0gs0aUO6Rqu96U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Vkjd7xz06OBZFju5dP9wm7Jz3q9+Wxbegvpw0dNd26eJaJkh5HDV5ddyURgMGE6GUlY39kVXp2o/FNvnoVrihzAzyKObkIVyz8j8QTONOjx3M7AmWm3e7gzKnV7vvqxgYJFx5klt0S1dHhB1FpFRAzIN1mT7kh2itmM8wT8fUUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jM9QCaH+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9634EC433C7;
	Wed, 24 Jan 2024 19:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706123297;
	bh=3DjOZTJU8qLa14fEc0+qZZ6+eeGgz0gs0aUO6Rqu96U=;
	h=From:To:Cc:Subject:Date:From;
	b=jM9QCaH+ccfHBzKKCRBkjwzy9qgOYeLh2cDJRGZQYn5csaUwNwoCPy9Xq145JrXfl
	 iIkY6G06N6NDsS5NkV7yFFOtgh3T897MNyOB200qa9hDR3UG0QhnxoNFrb/kdoCoZS
	 nkcjRMm+vcYMTePbeo6FDgakm/V6+4lhbK4Qyi7mN9rchz6ctaLDvdUY1st2CP2mDP
	 Flthfx/b4wLnVna5FIsNn96COCUg+ZEaiFBER4/+uZ+QN8+GQgGBEJ9s21YM9wR54K
	 E0wWprRM+mnONWswy//Q6BPt8dnwvFRkw9UBuJoIsADM2vyEFTm96RWx7EcOLvmDwO
	 UvbC/UrHMp/Rg==
From: Rob Herring <robh@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: audio-graph-port: Drop type from "clocks"
Date: Wed, 24 Jan 2024 13:08:07 -0600
Message-ID: <20240124190808.1555263-1-robh@kernel.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"clocks" is a standard property which already has a type. Users only need
to define how many clocks and what each clock is if more than 1 clock.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/sound/audio-graph-port.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index b13c08de505e..28b27e7e45de 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -51,7 +51,7 @@ definitions:
           - $ref: /schemas/types.yaml#/definitions/phandle
       clocks:
         description: Indicates system clock
-        $ref: /schemas/types.yaml#/definitions/phandle
+        maxItems: 1
       system-clock-frequency:
         $ref: simple-card.yaml#/definitions/system-clock-frequency
       system-clock-direction-out:
-- 
2.43.0


