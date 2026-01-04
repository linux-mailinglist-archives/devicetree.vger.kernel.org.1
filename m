Return-Path: <devicetree+bounces-251315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E634CF157D
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 22:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A320A30006DE
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 21:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F8F62EE262;
	Sun,  4 Jan 2026 21:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="Q0WJgdi1";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="Nq7dANlC"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43BB22B5A5;
	Sun,  4 Jan 2026 21:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767562510; cv=none; b=Ips/wk9lHNh9S4JOe5CpUmHUoGyQ/FYes4FZolIFXP9O6hkF8YZOjv0TqMo7mnNLtDhb6PlWq5iHhB0+U6d9Q8QaY0PyOUjRLodCj/oBPcZFn8HFe3niHRYKPgLjAks6wsFhTL67rjfWauSz8Tf3ZJHWJeEo2WYNQwRI7FQEaWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767562510; c=relaxed/simple;
	bh=bEq9G+K5aRw6DC9pHaHKpI13PNisA08tIbOyP+2nxb0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LsPj7a6a3lXw0nqFRjfY4phlLcgtMSCGr2DLO36FzqS/pAPX0FECuWb8haObJf2EIbLaLPol1Yg2DKkj9murf6MTJTnPo8YI9qLe2KMAElPgVOHYHIDciquX80y1/6X4AxWm4zOZOzFMD4tii498VK2WHBJev5cJTtv+Q0oqU1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=Q0WJgdi1; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=Nq7dANlC; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4dkrLc5jSVz9snt;
	Sun,  4 Jan 2026 22:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1767562504;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rrUYwgrFVp1xDLQypda1U7/xuH0PMYfbXrKNuiEWFzQ=;
	b=Q0WJgdi1c8Bu3C69bFWW3Nb+Uma9Dduxe9ijgcHB1dUzjvXHVTzmQ1PsVyrR8Rvpli/699
	O6TjbvZ0NRmQ3gj/vazVxEu7G0ohxJVSTGRvOa5kiSvBIfNaNjchKDyUvnJUq75pSfEU81
	589Zuk4P60Lq6WQhAjLLZcqNl5kzY8KWMJvzQXgDEM+YvP2zA4xkMEKYYLytONcE2rxa/U
	WCQRi9RpnVj5QU8WQzJHkNcqFGYva9tavEJrZPQGbCbqO6khuEXzNlIl4UFqIl8q4Qedoc
	PkbMtdgrKITLias96wG1zi8rtQJQ10GRP30dMqAJ41U/dxyiiRkSiZGyJZedRw==
From: Marek Vasut <marek.vasut@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1767562502;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rrUYwgrFVp1xDLQypda1U7/xuH0PMYfbXrKNuiEWFzQ=;
	b=Nq7dANlCWo5FfI/SSPJBHcxYLPnsggd08B29JF3hUac921Tk++Je2f91fbmGO+3XSjV396
	zABbG4pOhRaAxAT4Rrv69ZcSqTjWGMWp0jhF/vhevCGDjXmJvQ8Xawdsi1slizlYZ9AGJs
	XhSvBLqx11p6WNLgDcvqjYkVLzOzicO04sjXIO6ZpajWVRbEzQtH6vAxOJ0mkHmS9MScwz
	jaG0MXNVQrh9t/svCQW4vXWoL/KzIHkacLR5pU1f+5uA8Gwt19Bs1qBkZ2hgXOSCPl3d3q
	KfJUGiY5rniAjR535ucedX89joupM3jrjeoTjeBGBDI2rbCGGoinGLgr0Y+naw==
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marek.vasut@mailbox.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: display: bridge: ldb: Add check for reg and reg-names
Date: Sun,  4 Jan 2026 22:34:21 +0100
Message-ID: <20260104213457.128734-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: sq7y4gpf6t1efmcr8ohft8b4xqwhjk3w
X-MBO-RS-ID: 23d73df06f66d33f65e

Make "reg" property mandatory for all LDB devices and "reg-names"
mandatory for i.MX8MP and i.MX93 which have two "reg" values. The
i.MX6SX has only one "reg" value so the "reg-names" property there
is optional and not needed.

Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>
---
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
---
 .../bindings/display/bridge/fsl,ldb.yaml           | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 07388bf2b90df..197ae2f2dd36c 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -59,6 +59,7 @@ required:
   - compatible
   - clocks
   - ports
+  - reg
 
 allOf:
   - if:
@@ -73,6 +74,19 @@ allOf:
         ports:
           properties:
             port@2: false
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: fsl,imx6sx-ldb
+    then:
+      required:
+        - compatible
+        - clocks
+        - ports
+        - reg
+        - reg-names
 
 additionalProperties: false
 
-- 
2.51.0


