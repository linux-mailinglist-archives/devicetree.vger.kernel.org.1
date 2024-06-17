Return-Path: <devicetree+bounces-76625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DEC90B5B6
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 18:04:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F9881C23749
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 16:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440741BF38;
	Mon, 17 Jun 2024 16:03:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892461D953A
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 16:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.33.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718640205; cv=none; b=ftKylElxiHdlk642de8CW16jnEa9Xpk2j6nNfqApEJvwbkwvsKfFbob2kbGLtrZqM2Eu66dysHy3+SPdnUVqoQwwf3b4eTRHPlHSjCiKHEElyV8PH6iRFaUa8lOCCtjFp7et3qrSXUxWmoJNZfK6Nr0Wcj43B/ACtPrwqYXygLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718640205; c=relaxed/simple;
	bh=pBPm36PRf65Z3sg+AX2qIsvgKscUr7nLXfG3Nl8E2+A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Hw+KD518aBk9LL+47GzZgUunsixYVvA8PuOSjwQUaozdvPvFHKVEMFc/xXf2twOB1tb0HRFPT4op1Xrwvy2o6buZpjxFWe3bTf9/seKOtJWBg1UTHZBSbbmWvqKCUqNK7B9yQdiBf/Xv0O47UHZ3+KZDVSMcR2UQYryfCszrQHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=srs.iliad.fr; arc=none smtp.client-ip=212.27.33.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=srs.iliad.fr
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id D500920527;
	Mon, 17 Jun 2024 18:03:13 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id BD0692029A;
	Mon, 17 Jun 2024 18:03:13 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Mon, 17 Jun 2024 18:02:59 +0200
Subject: [PATCH 1/4] dt-bindings: display: simple-bridge: add ti,tdp158
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-tdp158-v1-1-df98ef7dec6d@freebox.fr>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
In-Reply-To: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marc Gonzalez <mgonzalez@freebox.fr>
X-Mailer: b4 0.13.0

In default mode, this device works transparently.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index 43cf4df9811a5..5f0c9687538bf 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -31,6 +31,7 @@ properties:
           - ti,opa362
           - ti,ths8134
           - ti,ths8135
+          - ti,tdp158
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
@@ -52,6 +53,9 @@ properties:
     maxItems: 1
     description: GPIO controlling bridge enable
 
+  vcc-supply:
+    description: Power supply for the bridge
+
   vdd-supply:
     description: Power supply for the bridge
 

-- 
2.34.1


