Return-Path: <devicetree+bounces-175425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 354ADAB0E12
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:01:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 518CB178490
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52182274FD4;
	Fri,  9 May 2025 08:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WQmUwce9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB0826FA57
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 08:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746781189; cv=none; b=gsrymU878uGPdvr+jPWZQ+F/zA5+3LB43Ulu3E1b+7bfkmsJ0vKqYp8hsiNuCx95iqR39GebdyV6GzQT1XVTiJRw59593Xp08M/g9vt/+zivIbeMCy8+itYTPFlgA+kNVZ5T4JPNh153CqeG9krYlAX1EMBwVWTW6YDFKqdcYdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746781189; c=relaxed/simple;
	bh=rAFzUZAkSv653DMA1Gt82SdKNPVMD+FcAEb6O/SlSkw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mQ8AJqwNIM1ZCKWsGpLvwxLI5gw2f1DM3Mk2UzV+c5MMifvDP0gJHeVpaR13/xveddUmBrBDrxmhb2oJ/F90cVNAmuCmQKsoF9dR5E7qKC+jRsBgWZ/qqXz/kkEKCLphIcsT0gocWY37xaQAr3XusrqrWVtQw8Q5fsBhExrHdJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WQmUwce9; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43d0359b1fcso12729015e9.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 01:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746781185; x=1747385985; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T3uAu3A4YUWMgeScFXrknXczo0EYOFrNx11xrsJM7O0=;
        b=WQmUwce9vfpx+a/iQTF6SCrAPLWhOsUtEDYFv08+H4w/72eZyBSAu+G3ZFGFT3ceDG
         tnbYSIje/Ky5YYroxYuxqx7xBZ74JLkmt6XFmG2fiVEVlkkwGBCoJHetGlWsM33QUiuP
         9cY028rrP8ABoZzTahAorVfzuxLT4iuVfKCTZgTlWINFdeybFLNskgtfzwWF45G1yDrU
         AYGbGAISv4qivfPSjUxbmuJaryps0vyth/sgs021HrNxtLjUEvRrk/SjUjxdcVeXRs2X
         EdUvkC45fJe1Vjk3rHmddisUegMvawv2riKIG+QgVScwGy4QL1kQVTgHnt5ioyBDHwo8
         bZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746781185; x=1747385985;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T3uAu3A4YUWMgeScFXrknXczo0EYOFrNx11xrsJM7O0=;
        b=MxI6YMJrMPSFZQzWQYdzZ2GS87s2jbVZtK4GkzhzNgt6rm+D6mn6Vz58r6lwl8OT+W
         6uqNZp67jTIbVfiU0F2KNmhGbLdwYc6j6LPR5Z/ytFklWO1qwpykQDU6IjroHWumCagV
         K2HGq5SoLNHKhturTMQIdTFYHSctG9srCs57wpQznOlWI3Fv4+LmSKbduuTSHWOJ+1Nu
         wu2QRZQxjETPvqMa2iGu91+n9cEnWUAmPuB77JZB0F+o8cI4kmIKZG5PVtjGcr52Dwe1
         YNzUkzc1xsOw/eK9LnaQuB87OKKm6Tj/O9sjoWi8saek7Zg7BZujhFrcuZvhSjHY+sZx
         Dq1Q==
X-Forwarded-Encrypted: i=1; AJvYcCX3Y95Tpbi0IO7bADIjI1nsmWl9x7So0lJHE3wAo6a91EHtK2SpJeJoBGcZOlCF+1yGnKOkwY5USoM4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyu1gI2N2ZZc2LeSWSMipDnhGXRi5MFGAH6qJhNmcIByTG5ruh
	DcdzWeLqWMTVBAkQs1C8Z0jKz7FUVOHRO6M23akPlb2JyVik/IicFkItA5FUh0Q=
X-Gm-Gg: ASbGnctZzPgo7ZH/VsC8+8UjTLEs4EP7tVSy1UouiGv7px219grvY/YEylTfTz5/Oc8
	8Ihsh8pg+ByTEXSeVoeaE+xbbsaDyMlwuwHYiYe+YEgBIXiyjau7jVZGPNFno2OwOO7ggWocd2B
	5Y4aQsh7EPerIdCaft3dHylUsqNZPxfKWZAKCVqk047F0oxnn0lAs8+mkZxpu+SQQHwjTmoU9EE
	RI4gVCYCZV93bDJUFOZKpQD81Zt4QUBeCRzwPU5lhXIx0ZUSd5gAqKpA3V8vRcUeT6ltklXtPEB
	6Umky7opfM/HOxINI+RVmbQM0jqZ/GZq0Wx4U0R+o//iRzGRNFFXJtz5OaUJEA==
X-Google-Smtp-Source: AGHT+IGGLXUusoILbS1CySmY5yLxrVw4d+a59DHYYC61SdUtYSIzuzu1CJOLjh+OwwTUyJ0NNUtfDQ==
X-Received: by 2002:a05:600c:c1b:b0:440:6a68:826a with SMTP id 5b1f17b1804b1-442d6e05cf2mr22229985e9.13.1746781185559;
        Fri, 09 May 2025 01:59:45 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d67df639sm22369115e9.13.2025.05.09.01.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 01:59:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 09 May 2025 10:59:39 +0200
Subject: [PATCH v2 1/6] dt-bindings: display: visionox-rm69299: document
 new compatible string
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-topic-misc-shift6-panel-v2-1-c2c2d52abd51@linaro.org>
References: <20250509-topic-misc-shift6-panel-v2-0-c2c2d52abd51@linaro.org>
In-Reply-To: <20250509-topic-misc-shift6-panel-v2-0-c2c2d52abd51@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Casey Connolly <casey.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Caleb Connolly <caleb@connolly.tech>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=997;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=RZnJ7ALArB3S7wde3YqyxUd7RDqI3oA1G2B1Dr/Q+do=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoHcP9MKcRO9eIXObPviW/V5gNHncIf/stkVaVtTSb
 nYclvCuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaB3D/QAKCRB33NvayMhJ0QEzD/
 95LJQICNhRzxZ4fY78+fdBWGHMKqvJi3xCj4wryHyTDLLvc7cIb8RMbbk1fBjxzw0nKBXTBiHL+1Ws
 wRhxpfIfw2EXYauyhjvDrJ+gDaODcxbRtR+VriZDWaTe61aXeYRiVTsSLeg56xhgQ64iTj7IGj834X
 MsCeaIeJ8rOdsKpPt7aL/cChhG8jfmT3jYWEWD7FHc1DKPI7BSqFkx23ZycuyD+qOSsRZR7xdr+HbG
 lNjRqJabzwvJ0mPQEsr9XCWpv70J6a6xOHscpjDO1A5XyTB+eGzlqo0Smc4sqFnLKT6VXhvsQbe0zG
 x0f9HblXFIU7Myx9NeuQW3ui8vVVrlXL8P/KYRi+Q4kxCmhzD0OZUab79dH/QXmUOgrPXk2nxAWPqJ
 7/ZHliXq/zSjUh5hN034abXLvSS+tNB3/K8iZAWgYfGD5zGEOaBxMVntGn7HYiVj7mGPqB+0ZPH+fJ
 4c4oMcmxseBJr28aTrH+g465Rqtxiq8JBBsWw9+YzJQgQcBw4xANAH7Cu3RHahc0i1lP6B++vdHP84
 TAsgdfMONKDvxthNkpBxz3Q/Tv0L4/gNt/WdbDqNwNpkzy9Yriwufe9qIu9LZCD2OWhPJQDbmt+lAB
 PGvf3e5yEvM4mFFeuiUHgKBRywMPHiE7JzziZfxLO+3f3L83mT7eKhaqLYMQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

From: Caleb Connolly <caleb@connolly.tech>

Document a new compatible string for the second panel variant.

Signed-off-by: Caleb Connolly <caleb@connolly.tech>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml b/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml
index 30047a62fc111ff63cbbc275914ef8bb7cb4ffd6..f0a82f0ff79099cdccfd5c5001de0d319e94410f 100644
--- a/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml
+++ b/Documentation/devicetree/bindings/display/panel/visionox,rm69299.yaml
@@ -18,7 +18,9 @@ allOf:
 
 properties:
   compatible:
-    const: visionox,rm69299-1080p-display
+    enum:
+      - visionox,rm69299-1080p-display
+      - visionox,rm69299-shift
 
   reg:
     maxItems: 1

-- 
2.34.1


