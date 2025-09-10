Return-Path: <devicetree+bounces-215625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0F5B52265
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 22:40:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 375A4486200
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 20:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A67422F0C5B;
	Wed, 10 Sep 2025 20:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OdUPTAvM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B172EE29F
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 20:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757536851; cv=none; b=kcRcBKeqFDlnimFQWHtpvlXGo8Fo8aaTnUS5dMAZZvVv4me/XkKgoz8vUMchOrPeLig5bVNiKI0RvocPSE7zXHF4kew9OoMyZv+r3B6lB7+DNXnc7yH4kWWnA/r29fm01+w+QPcNaQn2ZOHAgTVR3SloEuyDYJIUt/jmPCFSAHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757536851; c=relaxed/simple;
	bh=ruWPnO9A2gGbmS8eeTu3b6gEkGLMk0plthcFqBArp/0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=In8i+sjVR96culJ43qr8XVGCFtD+M6Q7JJndGw1+Bm6LuiFSPTjIy2pIFWP3gS8GhVPQr6mYJ7oCZGKjqsmBZ48EH3AcrWNsRjPwzXxXT44puta1xbLxtrV2B8WOJ/HEJEja6IU0x8eUyGGcZ9+BjmsbPGxrtPtC0JIxpNyV1Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OdUPTAvM; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2570bf6050bso29053885ad.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 13:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757536848; x=1758141648; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eaIcG+r++rKQesZ6uTroJVEBEjb38vwPSHlk+jRRLok=;
        b=OdUPTAvMpj28sXtuajfbUcUb3bgmTLW5VyyZS4KqiV0xbfKCCTvffzmh5fw61JUwxc
         /HvGWXAPkRaHENqs89H80R5IKqZ7fzxG+SXkUX4RYBnpU5WtMFSnDsNhTc8DZvI/u0e0
         VZGBAVRGqy+D4Xu1OUjEwZ1OaGNTgd54bwQbCVPv9GHNFT0H2LTtVAag1R5ySrbOEHBL
         AxiR5y30JpZXY+uH5Gxx6l6mh0kjQI4t9CgQyrXH8yxDkLC/K7Md6yukR21j8GI4iuyO
         tDfJ1WGZr0dXr8S3fxWKAA0Z2Heo0aQ5AbLlUWmAJwN/2iLPoVl6v1BXMYdmAu9qZre6
         BpaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757536848; x=1758141648;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eaIcG+r++rKQesZ6uTroJVEBEjb38vwPSHlk+jRRLok=;
        b=OQtL7Xq/iGs4Y98rdjY2XEi+jlNgUGvPS9lMcWfL8JgCrf2txqUwzGIXpe4Mq63ZWn
         5MfSMLxJ9+8v/3O/k2wArVkbIcWkpVeQtToU3f+UXrDAtfb+cYjdKE+ARE/dbSPY3aDa
         G/ZdL4u2+tHGAaTHoQy7neSVL25bnKXm5yER+RDzSs5SJtjpcabrE29zHfkUhi8bLbtu
         uaLkpgjtmb43hHHsUyi93CosHd9bJiaLLd0dvq7gNUukRzll4kOPWsH/zV4wFNy8w51c
         fq1sMytwjJHjTJHpWJHKHiYj9zpmEyyyyq1zqpSLpBAe/JYjtzNLAYRQaTn7tpvyjjn2
         4kNw==
X-Forwarded-Encrypted: i=1; AJvYcCXkADhGyxO49PNsozh6sgrodifn3CxkU7V1Z4flo/GGDs8YDH4eAO6gU0Xxe1wIyBFDVoWVYG3t5Rft@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm50h0x7iYeFMY8zWp49k78bGqOq/pPZq/rny5aMVnp8G1dtHI
	bcNpxpvf7yYTlh3F02sL2pcpEmXTYq5/D/9/iSksGIWyANTlPxtTtE5i
X-Gm-Gg: ASbGncuNJwqd1oZbAVQGw68JUQg+o2FLxQZo+3Iy0Fj2/w1vAIoRVz2SXovoVEyHp7R
	VuccHyNqWVd40aPtoWwFMiv297qKAn98hST8EHCN1bFnBRImHLr8D/jLePW6FzFGHdr4xLBHvFs
	MXnA3hn4KkMYNxovCuU6Npa0AJJhWbahWzrcnBChzALWt4YQYbO7uOIsPJMotfaY9JXGVQikmHy
	lwzKegi0DVE4OAMDWDa/MHtYezi7FjGsfI388eaR3TEzqfwLiOwQSeE8QP8Fe73XduxiQ9xWvoU
	cwUGCwjYK4v+5ewTnGvqoE2JWFZ/ogmhXD0ns/Wn/Pp4DaJJvOh9DP5zjATP8I7OrzSZQyOdqFV
	uOz9hh9lUdcGpJOT9Vl5rs4kxGyvJ4lAGL3fvX74U72VFF14=
X-Google-Smtp-Source: AGHT+IE9v49aHrixobJrjLVJ1lg/LgXrVROV3HeQS3k5SxqiXiAnJBtHP++WEO1FJDJeeelbmzDCSQ==
X-Received: by 2002:a17:903:2282:b0:246:7a43:3f66 with SMTP id d9443c01a7336-2516e97e7dbmr243437855ad.7.1757536848226;
        Wed, 10 Sep 2025 13:40:48 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:d19c:8c03:e9d7:2ba6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25a274258b6sm36800835ad.26.2025.09.10.13.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 13:40:47 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] dt-bindings: soc: imx-iomuxc-gpr: Document the CSI mux
Date: Wed, 10 Sep 2025 17:40:35 -0300
Message-Id: <20250910204035.540945-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On i.MX6Q/6DL the following subnodes exist to describe the CSI port muxing:

- ipu1_csi0_mux
- ipu1_csi1_mux
- ipu2_csi0_mux
- ipu2_csi1_mux

As they were not documented, dt-schema emits warnings like:

  'ipu1_csi0_mux', 'ipu1_csi1_mux' do not match any of the regexes:
  '^pinctrl-[0-9]+$'

Add a top-level patternProperties entry for these CSI mux subnodes.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml      | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml
index 8451cb4dd87c..c5eea48c19fe 100644
--- a/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx-iomuxc-gpr.yaml
@@ -50,6 +50,11 @@ properties:
     type: object
     $ref: /schemas/mux/reg-mux.yaml
 
+patternProperties:
+  "^ipu[12]_csi[01]_mux$":
+    type: object
+    $ref: /schemas/media/video-mux.yaml
+
 additionalProperties: false
 
 required:
-- 
2.34.1


