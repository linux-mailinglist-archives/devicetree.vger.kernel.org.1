Return-Path: <devicetree+bounces-71408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 163BC8D6AFC
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 22:44:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 476DB1C22B0A
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 20:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6BC17D374;
	Fri, 31 May 2024 20:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="VmkYZwak"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69141CA80
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 20:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717188239; cv=none; b=NJGpOId2sHap/uPePMgSPFzT1TIiYr/K3khFYRhXJyPFbGA41UWyPCybtgzmmjhFzM8KE6RrEOt1iGxfMsOAqpQ2ZjfsXefka4iEZ1sM4hlSEU400OpprVSohgXsKnoFrTert8VIY9ZRbQQqaDeh4l+gdSV7VQNZ15mGtCOm+zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717188239; c=relaxed/simple;
	bh=NKFJ782geX1l+Va20YCz6+icGQDBtdKcz41LHa+AGtI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IYRlvHzq90gXqhMkorUob6dS3uIgkW++2CRrcd4iCoERNm2vy0HDjyfpWZvNtZ+2wMtv5wpvWCK9P6Z185j0il6JMSMpJCq0ZmsSFjGqsdjO011HqEi3HJ4rQ6T6fhQ2pOKogLImskeDR4Lzyus/S7R4jB8823HIm/sR2/tcHlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=VmkYZwak; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 2B08C881BC;
	Fri, 31 May 2024 22:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1717188235;
	bh=cYMhrF8MOY6++17rh4KjH+fQXPV8hL59bbGgHSa7WKU=;
	h=From:To:Cc:Subject:Date:From;
	b=VmkYZwakYGBrxAUEF5Ik3BNydIuNlO6F1pSy6WdBZQIt4loff4uSXXB61qoj5J9Cy
	 cXz4FZQJd+QzZgpOiy/AC+wFVesHCkxIsHlPpQd27mDNlj5S31q1CA+B78LtnxYwns
	 Oztv80adQzd1sm7ymjqbgh0MtplIRdNPSwP+1+74W4ZzrtBPZkenW40Rj3D04w4n+O
	 QIBKnbo1Z90glh8ZsgpouIs5yTzpcKiAkqFVDTCRBvNyokcXVPdBOxfHLBMhQjXnh3
	 cKOzUgiTAQc6UowqKlUhW6OvRwNDo6G7W62vCymfdhjxNkMRGxdUNi9bhLwt+/XISn
	 C1upDcBZI3ayw==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: [PATCH 1/2] dt-bindings: display: bridge: tc358867: Document default DP preemphasis
Date: Fri, 31 May 2024 22:42:03 +0200
Message-ID: <20240531204339.277848-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Document default DP port preemphasis configurable via new DT property
"toshiba,pre-emphasis". This is useful in case the DP link properties
are known and starting link training from preemphasis setting of 0 dB
is not useful. The preemphasis can be set separately for both DP lanes
in range 0=0dB, 1=3.5dB, 2=6dB .

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: kernel@dh-electronics.com
---
 .../display/bridge/toshiba,tc358767.yaml       | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index 2ad0cd6dd49e0..dcf56e996ee22 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -98,6 +98,24 @@ properties:
             reference to a valid eDP panel input endpoint node. This port is
             optional, treated as DP panel if not defined
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              toshiba,pre-emphasis:
+                description:
+                  Display port output Pre-Emphasis settings for both ports.
+                $ref: /schemas/types.yaml#/definitions/uint32-array
+                minItems: 2
+                maxItems: 2
+                items:
+                  enum:
+                    - 0 # -6dB de-emphasis
+                    - 1 # -3.5dB de-emphasis
+                    - 2 # No de-emphasis
+
     oneOf:
       - required:
           - port@0
-- 
2.43.0


