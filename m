Return-Path: <devicetree+bounces-23550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 760FC80B978
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 07:58:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FD2B1F20FE5
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 06:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03AF21FDE;
	Sun, 10 Dec 2023 06:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b="rgOIMX8q"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 72 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 09 Dec 2023 22:57:52 PST
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com [IPv6:2001:41d0:1004:224b::b9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E05ED10E;
	Sat,  9 Dec 2023 22:57:52 -0800 (PST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1702191471;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FWSmhh5P2uhE91HAC/pqo9SELupeJYa3dTRg+Hi3E+g=;
	b=rgOIMX8qe4KZq0KHz2stTn3MhD9DVO3FpleFKuoaGzNqBCsnVk8FxDzsEqF1aUUwPCpU5B
	ByDSiio/MI4Wz9yhifoSGh3Lz0ito+pXkUCbhIpf5RO9h19wmlBFj9vQyMte5uwEE2fuVv
	7vdsBkSVL+T/6ubArKr3NZbgmsGS65nWWMLlYErQIWvXYQuIfjEkkswPnk0ZOU81uZwzHZ
	SxizJIUJCWSdEdNxaGN472+mF4FFSdXNkD2znWwOjtMGwb5nUvcuQ8XlWHLGKvzAS9mO2N
	+Kq9CXA2nXnXRN+DgRSSdVeaag/8W14Z1PN58GBOSRGP+ZasUYiQKJ8fmhoRAA==
From: John Watts <contact@jookia.org>
Date: Sun, 10 Dec 2023 17:55:54 +1100
Subject: [PATCH RFC v5 6/7] dt-bindings: vendor-prefixes: Add fascontek
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231210-fs035vg158-v5-6-d75adc75571f@jookia.org>
References: <20231210-fs035vg158-v5-0-d75adc75571f@jookia.org>
In-Reply-To: <20231210-fs035vg158-v5-0-d75adc75571f@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Cercueil <paul@crapouillou.net>, 
 Christophe Branchereau <cbranchereau@gmail.com>, 
 John Watts <contact@jookia.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Migadu-Flow: FLOW_OUT

Fascontek manufactures LCD panels such as the FS035VG158.

Signed-off-by: John Watts <contact@jookia.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6c3389eceede..8666f49574fb 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -474,6 +474,8 @@ patternProperties:
     description: Fairphone B.V.
   "^faraday,.*":
     description: Faraday Technology Corporation
+  "^fascontek,.*":
+    description: Fascontek
   "^fastrax,.*":
     description: Fastrax Oy
   "^fcs,.*":

-- 
2.43.0


