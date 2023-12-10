Return-Path: <devicetree+bounces-23549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 890D980B976
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 07:57:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FD841F20FB7
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 06:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B85F923DD;
	Sun, 10 Dec 2023 06:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b="xR/Lm4MB"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [IPv6:2001:41d0:1004:224b::b7])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF86310E
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 22:57:43 -0800 (PST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1702191462;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zOhqdYWDEkXw+cnirf/0QTPE/RR3olrML2FGwqCl6DI=;
	b=xR/Lm4MBKNDvGsDp+1yFXKb+hSPP29pn1FF54w0ZRda85et7srEeS2J1Q7pPJUKsNAsagj
	+BXJBo9Q+CkebiwCiO3LKSlYE0hXqXsRNSgVSytR2KFNYJoG76GoiieAwm5M0/3mSZEK2I
	L+7L63mx6mIzGAovZ9WX2EydTW1SrHtwLtqXdQmUfkoMe0noCbd0g6T3VEml9rs8o11Mbc
	TtvULDSEblLzmHW1sh/iUs13KG5aQ3mZXf6pMyUgqJAMa6JaUraehmZJ2edksG9yN0eibJ
	6umXGArmqfXT4Ue4E6/WITgqndTjyRswaqnjazefDg/PSM4gu0ixuz/SZ+XIEg==
From: John Watts <contact@jookia.org>
Date: Sun, 10 Dec 2023 17:55:53 +1100
Subject: [PATCH RFC v5 5/7] dt-bindings: display: panel: Clean up
 leadtek,ltk035c5444t properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231210-fs035vg158-v5-5-d75adc75571f@jookia.org>
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
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
X-Migadu-Flow: FLOW_OUT

Remove common properties listed in common yaml files.
Add required properties needed to describe the panel.

Signed-off-by: John Watts <contact@jookia.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml   | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml b/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
index ebdca5f5a001..7a55961e1a3d 100644
--- a/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
+++ b/Documentation/devicetree/bindings/display/panel/leadtek,ltk035c5444t.yaml
@@ -18,16 +18,12 @@ properties:
   compatible:
     const: leadtek,ltk035c5444t
 
-  backlight: true
-  port: true
-  power-supply: true
-  reg: true
-  reset-gpios: true
-
   spi-3wire: true
 
 required:
   - compatible
+  - reg
+  - port
   - power-supply
   - reset-gpios
 

-- 
2.43.0


