Return-Path: <devicetree+bounces-29068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F55821467
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 17:17:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99BE1281ED7
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 16:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6254963A0;
	Mon,  1 Jan 2024 16:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qHNS19oD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4F3BE4D
	for <devicetree@vger.kernel.org>; Mon,  1 Jan 2024 16:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a27cd5850d6so117347866b.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 08:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704125773; x=1704730573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CW3Z4rHUB+JDGSn9srF1tyf6s3+qOGgrdqYnKXE4nAQ=;
        b=qHNS19oDEgINh0I0pFOCzeHQxjNUFGfvPePJ+jeosno6FUYK0yEOAT4dSVbuvsB+RR
         p+eYApDp5k2wYpPOPTTY2JQex5TO88tN5d9FFmp8DU/eRiHWuhfNL5/qgjf8liQy+IwZ
         NHColOmlsMR0AddU6zDAsc45HJ6v3ikV1qIv4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704125773; x=1704730573;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CW3Z4rHUB+JDGSn9srF1tyf6s3+qOGgrdqYnKXE4nAQ=;
        b=T6DdsbdfxJTrA6Jk7zBqyR8IK6L8lE9duq17MMVYHRFDHqDP84pdP5N+Beeq2MQmR1
         t8BiV1x3jwKvyQF4Zt6qj0AlTRQin2+z0bYs00hM2gmxUntz+hz0wDK5WSjQCk/ztEbS
         PXv31Elix5dq803Qvae989MpdzjXjDRO4mtiLdGpovW3XoZmZsru8fjW8Ax//ZY3Pfc4
         SMehFB0A733IB7YqcxWMFtCqnAv+P3MWHIHyA++doWv3yN6w7ei6DB9j9KdEd8ofi04B
         iRhSoh2bmZOt3qF6wVX+MZg9Vt/+Ja+J3lPGF6KGh4JWcYeIr7Vj5scNFRfjChCptxD9
         H/Yg==
X-Gm-Message-State: AOJu0YzWEfz8PvGXTtHa6ZGv/iXKCqr1OCLBaS1RozkLeUDbELy5rzBN
	gNqm5zPJ2NySKzrxwXhObGLRullTK/xG1w==
X-Google-Smtp-Source: AGHT+IEKeh5MrJ9goeqlfb+g5umXqiODj0UhS/GiSGSqks5kniFAS7Q1alMtKVi8maJNCh0fCz9dsw==
X-Received: by 2002:a17:906:3885:b0:a23:53f6:d66f with SMTP id q5-20020a170906388500b00a2353f6d66fmr8265521ejd.138.1704125773446;
        Mon, 01 Jan 2024 08:16:13 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-48-44-179.retail.telecomitalia.it. [82.48.44.179])
        by smtp.gmail.com with ESMTPSA id ep16-20020a1709069b5000b00a27d5e9b3ebsm1897857ejc.105.2024.01.01.08.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 08:16:13 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
Date: Mon,  1 Jan 2024 17:15:48 +0100
Message-ID: <20240101161601.2232247-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240101161601.2232247-1-dario.binacchi@amarulasolutions.com>
References: <20240101161601.2232247-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch adds the FRIDA FRD400B25025-A-CTK panel, which belongs to the
Novatek NT35510-based panel family.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v2:
- Add a dash in front of each "items:"

 .../bindings/display/panel/novatek,nt35510.yaml        | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
index bc92928c805b..8e69446e00e0 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
@@ -14,9 +14,13 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - const: hydis,hva40wv1
-      - const: novatek,nt35510
+    oneOf:
+      - items:
+          - const: hydis,hva40wv1
+          - const: novatek,nt35510
+      - items:
+          - const: frida,frd400b25025
+          - const: novatek,nt35510
     description: This indicates the panel manufacturer of the panel
       that is in turn using the NT35510 panel driver. The compatible
       string determines how the NT35510 panel driver shall be configured
-- 
2.43.0


