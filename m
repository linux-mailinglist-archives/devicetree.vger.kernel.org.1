Return-Path: <devicetree+bounces-42696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B738858346
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 18:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2AFD7B23677
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 17:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9CD8130E5A;
	Fri, 16 Feb 2024 17:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kfeE8wdG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E03130E44
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 17:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708102883; cv=none; b=ozAISmweXKinqd5MzyqqPEtGWwfIo13bST0ebkLSJTHeO0JC/U/dw9URhgy9J93CLGMUn+RVuB1NBFcqzdXdFGOPoeFQS8ZBb6qwesXdiVlXm3VXiZ+/MlDirPhwQMvJjt1bAtwOAC0qknFWOj2zxQ53CIc2xNKRz5h9O/YBAe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708102883; c=relaxed/simple;
	bh=u4L61jxb3pk7DyZvt+6wEP3FQgg6lRJc0FDd03RRCBk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VkIheipRn70IueEaOLpq1uI7jfRHQyFnHdDG+iE3pSY6zc51i3S+RLuvy31x3EA3E2zxhVcaQ5HD6aGbIum8/pRK1PBxtZnPzHyiCMwAWw9srLUwMcCTqvlHtvGzkjHmtsQrWtjuNH/7pfT/WjGKWGqOIDYHieQd12WfQGwWlNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kfeE8wdG; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55f50cf2021so3107105a12.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 09:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708102880; x=1708707680; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uXAA6feqe7ITmVt5QxnaZYVqRK0lZp3lcWFLVwQYYf4=;
        b=kfeE8wdGIC/VrgXuQYfkTLkpR6KiH3x51J5vxdidrMvJcTSk9Kg8X8E6qSSM+lYkie
         AZrGASdP15QG+8iXxqZ5o+FIrTvYt2gdwPvu68n7GY5rZtVAA04tWBtpjyh11qtcOVHl
         NxmM6UaevZK8gCVkpSvAZx47PATWJtfaQkz4aoI41WyUbA+fgHGjt/vxIdoxngOHTJvA
         NwomFBMlu6wJjWV+kLLmkcg7lNNPFPY+zCSpFzoQDfKHzInx5BBb4rXVE41GA89QQtiv
         v+ZeqeQKlB5hXXT6Kjs9gmmZ6vX3A/WJYqJAs/BaGFvWfCNsGOjoNoCTRVpIpzmR2gzZ
         7r/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708102880; x=1708707680;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uXAA6feqe7ITmVt5QxnaZYVqRK0lZp3lcWFLVwQYYf4=;
        b=m1+tg7vwMDb08Hcppvcdfu8Bksoi47UBLmXf6rM6qcJUsCubAtgfXh6pFlOmXHWnXe
         ovpv/LTRw5yK3RtAJe3wCMZfBAHsRWbFvh9Cf0uxWoL0W2YHPDTPwjp3DBCA2MJHdBtP
         PaP4BXEayeIDzksW8UubnvWRV2RQFg93kr6XoIehz+Ost57EYlBRVHRyoUBR5IqLnzNK
         x1vghBylzWWlSjUrYdtiIQQ3qDUS3cGQgcm0aEwXmW31Egn5t22n6qhXq9a32/DdCbwh
         aSVJTMhYvajOzkHp6658mps3mBnhy/tJrPDJc1KENfltFEHB4+bcYL1LSphctaV/+cTC
         nBlw==
X-Forwarded-Encrypted: i=1; AJvYcCVl1p35h86vnk+uontgDkFwa4WexT7BfZx7lOs41nwR/4qFcA+j4vn+uFW39506Ps5o7gcTv7nCkEP3do9x50JV2pmW+fWTS4Huog==
X-Gm-Message-State: AOJu0Yw+cNaqykwvmvr2yly8GtqN8KJYd6i8ydGZFsN8cPyutaOLcxjB
	/ZneL2weWoSMZ7JJWhUuB55t84n0Pii14izwjmpj4n1O7/yJOUAcUodRQBdtWfo=
X-Google-Smtp-Source: AGHT+IEO2GYnWZztWy4XVywiNgZP0RuxxOlupGrJMYJD8z2qtV3pisYWh1Ggd55fo+KivYfDs38Q2g==
X-Received: by 2002:aa7:c517:0:b0:561:dd88:cffc with SMTP id o23-20020aa7c517000000b00561dd88cffcmr3984240edq.28.1708102880426;
        Fri, 16 Feb 2024 09:01:20 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id u20-20020aa7d894000000b00563a6c9fd71sm159706edq.16.2024.02.16.09.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 09:01:20 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 16 Feb 2024 19:01:05 +0200
Subject: [PATCH v3 1/4] dt-bindings: display/msm: Document the DPU for
 X1E80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-x1e80100-display-v3-1-28b1c33ac8c0@linaro.org>
References: <20240216-x1e80100-display-v3-0-28b1c33ac8c0@linaro.org>
In-Reply-To: <20240216-x1e80100-display-v3-0-28b1c33ac8c0@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=848; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=u4L61jxb3pk7DyZvt+6wEP3FQgg6lRJc0FDd03RRCBk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlz5TYbMJUWE9HZuo+njQfmr+vjOQUCQV6QLLZ/
 4kzPkjW3U6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZc+U2AAKCRAbX0TJAJUV
 VvKnD/9g6oILdR5vqRFFbgbtXaC5J7KXoj68K2u393MveLTILQFQN0LAfdRRujCfb3ELEOigDfA
 NXO/3X6gmcOogYPWCTQpX0B0cn1vO6bVnKNHHbn/dKk+mQlSrsMIOxikE35TlNr4ou3LT++k4oG
 C64KVfOcCdgWP7H4C8jbANe6I/UsVApD2AKEeN+6f8WUqsyPc8lMo8uPZEpiYz4edOen+Bcyl9N
 3Hzek00KbEqtp24QIiq5A2yfuUugZWl5Fqm/az0HBRfnK92jJB0vYmerrDJ70ssgZhGrveTjood
 PBnNWc8dlUm5E5XDAUF44LXGe75PjBSWC3whVq4WwD0TTZXmtcMGRYrTiYbsZb3NVp8E7hFP+wJ
 Db5C+Is3VPxuAbyC/LL7SoKtj5inVWu0aazj8Xfkvo+addk4KdoN9DoU2go0trFXBiFba+Vxo2l
 dePKe0I6hx3uqnfwyyK29id4FeHeYLQo4hor+CwwngJvQWPnEHVZygsKvgpCxF9ltt2qF8eNwCi
 Ooms9WXbRJ4KRuIX74ifLnFUjbowX2gSmf3zo6ErTJQyXmaNbG4HUrSiukniIG51vL/lJYFD1lJ
 wiYV1soMShJTjUOgeSxA8HwxnTOiurmI073VGg5K9Z8zMPfZyt9cXmR2WZ5ugfRkrY8rR6mfANU
 O7zD6kYzw9TDUlw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Document the DPU for Qualcomm X1E80100 platform in the SM8650 schema, as
they are similar.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index a01d15a03317..c4087cc5abbd 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -13,7 +13,9 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
-    const: qcom,sm8650-dpu
+    enum:
+      - qcom,sm8650-dpu
+      - qcom,x1e80100-dpu
 
   reg:
     items:

-- 
2.34.1


