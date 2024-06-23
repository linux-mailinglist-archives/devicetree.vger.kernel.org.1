Return-Path: <devicetree+bounces-78904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2513913A4A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:01:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 800002823AF
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:01:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E67E181B9F;
	Sun, 23 Jun 2024 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cryfDCVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DB4180A98
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719144034; cv=none; b=KIk/vW67CRHSAZmis6Y8YAf3iQVQW55lW548ylhOc9ag7oHEIqA7UwUOuFZtSlX+jc7Uew5A9nph3imijk6RyGcNLywpr27TyS45EvVEZyBEk9arfFoLx+q4J/S274INskNp2u2Gz42bq9rA69vSiUuelyjFNrLB45HaR7ccDi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719144034; c=relaxed/simple;
	bh=MQKKDaIGCGbRLN1AzCvjvVCiUpvORFMPwHtaVwKOtaI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TIGRAHy+qvemqVzJusMp5LAS2/OhEoslfjoNhngf2XA+8jEwJLB4IDFvLoDa0S6mkvxuiF1Gxh1j+HgxDlZXwGxIxZkNPnxYB9E/Wq4s4Z28SaIfUuAHZYcZXdlWDG1pgoh/dnd4Uv/Nq7qnBHRfrL9x4Nljxez21jU4dBHtQDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cryfDCVg; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-421eab59723so25295185e9.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719144029; x=1719748829; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wq0GDSPoIp4+sLNJUnd9TkEoaORchJ/hKSadjq9Ps7M=;
        b=cryfDCVgqCvZEUY0c+t7jEnyytH88L5XWsxgFbJfWN/k8P/G2AhX9oUVEcLdAI105c
         Tt90mjbWsRN7DqTEolwunC2PFbtXmbuX4EHxgaMBv8OKGOziM/z7mKcRrlkX5/uz7bvf
         Hx7l4ZhylyGJS16vzWXdZtmFL3eueuwo3bPkC7lBQmaqLXD3kXxPq5bSb9Ay3xkW0Bos
         Jq8gXAaL/LXBhM4jVf3Z6gqXfh/EdAeyCUJuAi8S6AHUqepgiKr8UulUhVQ8wOMNtMG0
         7XJQTkIov+8V3CMUJ0KQBOiHz1az365yFm5h+/4uEz4ouFRXeChL3ZuErX9NLgZ8m18m
         WmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719144029; x=1719748829;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wq0GDSPoIp4+sLNJUnd9TkEoaORchJ/hKSadjq9Ps7M=;
        b=iFVGx16sH67Mb0UznQshO0L36y38GXiokh8J3y5W/GMr5/8gnPlyi6CbnjVBBPslZA
         HJskkB+k/MeM2o/x3UJk0MMv2+wgvQ9sDfyrW0mpfzaHXwmGdXaG/bz/MeFWxnGr8GsL
         NiBZUjt/QNf88E3oQJDwGK4AQkB+ZKE9V75Sslc6yb5+Q2rOaAi9dKStHOQkoTLOgbmw
         63jWTcj+CWBJez1A7tqG0HW+/O0hXcfhC/pXfX00UOsnaGrLwgi3lMsq75sDTRD/MfbQ
         Cek/GajwZU/IZHv7tFQKbPdL6FGvy3FNNlCVU89z6JRPfQJZnRCZdEFrqm5ybqaPKKuQ
         dMiA==
X-Forwarded-Encrypted: i=1; AJvYcCUHVe8hHSeK6HIWWLpOVX/yp12Xv7mlzf+Hn3IyWsfz802HJ5kn4eXypbN5iBw9uIXLzboRvArErnb9vY6bbVOCNarjkv+jWxpq9Q==
X-Gm-Message-State: AOJu0Yw4/Cz3j6e97zCnVK/fv3PQQrxbFfz53MJr+Nf0R8ujnVgGpUGv
	FUtYAOefwCKPc9BUo+a8jYulOR5K94w7CvfDzRbUdsSMOj70oTmtxwJ8BSc8kQ0=
X-Google-Smtp-Source: AGHT+IENFAK7IVpV/k8lzPMo9UahIiF1uHLMk0nrZAmjoYC0Fijkz3aInqbbeS6fxxaaR/xdi+aTqA==
X-Received: by 2002:a05:600c:b44:b0:424:784c:b13b with SMTP id 5b1f17b1804b1-42489e3ac94mr22668335e9.13.1719144029481;
        Sun, 23 Jun 2024 05:00:29 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4248179d3basm105465515e9.4.2024.06.23.05.00.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:00:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: display/msm/gpu: constrain clocks in top-level
Date: Sun, 23 Jun 2024 14:00:24 +0200
Message-ID: <20240623120026.44198-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We expect each schema with variable number of clocks, to have the widest
constrains in top-level "properties:".  This is more readable and also
makes binding stricter, if there is no "if:then:" block for given
variant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 40b5c6bd11f8..253e68d92779 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -32,9 +32,13 @@ properties:
           - pattern: '^amd,imageon-200\.[0-1]$'
           - const: amd,imageon
 
-  clocks: true
+  clocks:
+    minItems: 2
+    maxItems: 7
 
-  clock-names: true
+  clock-names:
+    minItems: 2
+    maxItems: 7
 
   reg:
     minItems: 1
-- 
2.43.0


