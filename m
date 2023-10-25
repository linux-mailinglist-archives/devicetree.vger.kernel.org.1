Return-Path: <devicetree+bounces-11598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 143777D6363
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF9E8281C6D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22BC518E1F;
	Wed, 25 Oct 2023 07:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T7Utl1aT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BDA318B08
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:36:12 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8FB53849
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:09 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40859c466efso31348115e9.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219307; x=1698824107; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pe4SRUofU2WFm2fmN823Um+mIBdgfTseC5LX2TC6qmk=;
        b=T7Utl1aTwx2yevUK8aVbd9iS9TRpfdmNsZGhXGZYg+4e7QghB16ML+7RZt24NNf2AB
         8nF7EbxbbN/dwi1CPA2QSV8iXESKxQjN2ToBqegEwL1rkmyibvr0vIM6NGrsVQ2j98kT
         jMXa7pNCR6JQYLyl6+Z8S7w9GSRZ1sSjT3QgdNgDRo5KwCSIyF76k1DE7c3fjni3KS30
         MZ6MLwwgh4+0MbBwCd1KhTf6ht6i6IYVzK7xy+d1h2jLF6cA9WbV+DFkOGCQR3IPGTyz
         gFDBmTJ8moe3CKckurQyiPkWpe8orFTYnN7U34ssR1lQK4awqw3OWCbHRGJIPYQvMPgx
         /ogw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219307; x=1698824107;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pe4SRUofU2WFm2fmN823Um+mIBdgfTseC5LX2TC6qmk=;
        b=tYAs4NqBE4HdZ/1WmRuN2VSXEG9cwH2Tzm/P8FNBR6CxyCsVijgH0BTl4gtnryDLvb
         2PFT9IrVArVYeaQwBjPytfpG+ZKoTosod6XQ9jtOpp/QMEWNENduqnKKVkgXh8ol10pm
         q4tV3DNuodKeFFK5y6R2fajGNhJGKti3WZE093Hyk7vNXayfsMGtXKwMokIYE616FDX+
         ewho3gYM1lJCk/ShoihAhysOtSm7ooYcspt0KehxDLb6dtoaMUCWv7UKeZlPcUSnD1Os
         73xSUd+pvab18NhkyjhCPMnFOnygyASOmolnmqvWaLYoP+oATVaY4lfgQwij2OWRSf1q
         4Vwg==
X-Gm-Message-State: AOJu0Yyc3XL+iCXPub/HYX0nHpc88odiQTBxWY6VVZxS6jSMu6YUOQP0
	Mqz2hBSAqTmzDM1EJMS/Ds/xIA==
X-Google-Smtp-Source: AGHT+IEiQvJPZXUSoJ+rvGAVwkMDv40zmLqfwbPBtb7KlNbEPmm3TB9RLLv1bPNuVdvy0rjD8U7C4A==
X-Received: by 2002:a05:600c:1c29:b0:408:3d91:8251 with SMTP id j41-20020a05600c1c2900b004083d918251mr10926835wms.5.1698219307607;
        Wed, 25 Oct 2023 00:35:07 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x18-20020a5d60d2000000b003248a490e3asm11449058wrt.39.2023.10.25.00.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:35:07 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:59 +0200
Subject: [PATCH 1/8] dt-bindings: display: msm-dsi-phy-7nm: document the
 SM8650 DSI PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-mdss-v1-1-bb219b8c7a51@linaro.org>
References: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=748;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=LjEsqHAGp+UfualC/tIMljUQuvkQEZ5WI4NYmB6cs2o=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUlzhTUsc4upScdy9doWeeZ8Av0tdD3FxQMALDK
 w6zzprCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFJQAKCRB33NvayMhJ0QJqEA
 CUt/Fq2kgT90yTup1XhV+j3NhHGt6q7dqGEjHB+5YL+39c+RYWVhJ8fq+9zDhTot7kYVsS8nJZlrbn
 JhZ44Zf77PWDphzIjLmVzSgW9QHZbzsIlNCX5Z2NyFVhbm3q/OcJKY9bRA8addCLKdo4ublGUg0Gsy
 EOMNZpc20cA0Ujl3WGyU/m3vdVRI/2J2YiEATw3d+MueFgm7w4DJnjEmnkSuwmDnuwahIlNPK++/M8
 20I32mfmeIhUe4eRUn8bnM6fSuOOqrHXxNhRHdzFIh4bCrSpJEk0QVj+pBs2nmtkczf/fK2+wpsbFs
 5sOKycIN2dIVv8mIi2w8w44dTpVT7d+VL6XrvetdsSqO9iMMy8/nrhvSJGFRt2RCQZRnYmaW8GoRWI
 zUNt4XdlIrnkdY0RovJdvaLHLGO7vw7KHd3nr0P3uKwnb0sCdnbsisxvHE6zZb5twIU1ojpsru0owQ
 vk0iBMrK4HoGvQuAC0iVoXnSip+GE1hcS/S9ULjhFqQBzYc1oTqmi6gxpkOeMYHJobJnFJFJuSwQLo
 piFfPx9T2CsDrGFIK2/A5aKSEufirnWnpd4Hpnj8blFh5MDV9rEpvEsoyBv4kxKTDwFfyLEPuqg3+W
 WegGC7+fkK1/ViVzn2uEywsilYnlcYXkeBMoT8WtERZBXQs5XMfrMBABJqPA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the DSI PHY on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index dd6619555a12..7e764eac3ef3 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -22,6 +22,7 @@ properties:
       - qcom,sm8350-dsi-phy-5nm
       - qcom,sm8450-dsi-phy-5nm
       - qcom,sm8550-dsi-phy-4nm
+      - qcom,sm8650-dsi-phy-4nm
 
   reg:
     items:

-- 
2.34.1


