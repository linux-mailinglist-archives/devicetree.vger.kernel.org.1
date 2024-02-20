Return-Path: <devicetree+bounces-44092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B7585CB23
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5EF01F22519
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A88D3154444;
	Tue, 20 Feb 2024 22:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EfnhDTKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF5915442C
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708469447; cv=none; b=g1anm7PlrxSXPxe7JECjVlIfUI53DiLk6Vpb/o0+KRvKPZq/aUtTUZXMxuj7TvY3R9ovi8Eq0nQyz95nEanTfrOAnaGEOg/42upKj48QE/NxH1PxWtO9sf7nQotTzsvSVePmf5clCqXv00q4rprDo46FgO/Xmi5gmd3GkaursrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708469447; c=relaxed/simple;
	bh=ZcRh/iRQY2q3Fj/sfpbDNBd/2gcxPVTg7LyLYjpCUEY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GL4FpS1rK5Yn+LhnGmksp3Ut/wEiPbiTmrJwuBT2GwjbuvmiHRspNPG9Lvo0vkBztKf4gqNDdBz//sYo/5pAnyTJLpuYCCtUUFm/4rKIB/ywvuQ6qRs+SKPXQvNIfQnkT2laGeKctAogYeQhAV+FUc33aSA4nCmq0/paZn6d0+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EfnhDTKN; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a3e75e30d36so505047366b.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708469444; x=1709074244; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ct5Ne1tMeLUfljWIYAQa013IeOBu49T2Q91/xNCEgqg=;
        b=EfnhDTKN4FGndt8wHsyMATxYU30m3VporzPADwIx1LejGlz9JYO7pJiwU6N0DN4oaZ
         3DCJ6NYqcmXdubkpb+1K073tubdgNllNz3n9EO/STBOIOdyvi+tksl8FEt9R1r4lMRu4
         oyFMVB+pRqX7lTtHRSlidr/JucRPvCL2lR0gBTvC5+GLR7zf4400rAXFnlmqFLbkgR03
         TlaHJhPI1Iro8zdLk8ImqxmscJ11RTy7D0kFNsGqXoM2609CgwyuEDv35loAXp0WkIQ9
         2BQn9CnoIO9xuRTy3FzUYtDGmEacMtQKEZEmfoDg16J6Nl0Hm5DtZ0f/vYpXwg74ZiXx
         0v1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708469444; x=1709074244;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ct5Ne1tMeLUfljWIYAQa013IeOBu49T2Q91/xNCEgqg=;
        b=GZxJEDXWVFC8Km1NcOdQInxgFwYBT0OOUX+aElKjYVMxbMAAdsBOfTeXgMWytJNghx
         xkXFG3kpNgsTqnHIGFFG4uPYyj+iM5YvKmPy9YVwgRCuXqGjcQDUod2C5aEEPR3FhjiH
         uhwhvUn4JFsm9ndI1KU2lPqv4i6YRr5d20CLv8/LR9hQUotN/yBxsIaLMGZEZVuf0ncz
         xoFzGlHuAx2jLAzkBYROw/+d/RGYHpEBkOba4912uZE6wwTkxDEEbNaZnDneM4q4AKvC
         QuKCUMJ7xeo9Kfe6tSl9TNDmQm4NCREXw6wa3hYhQMyUBTgg3029+4htWALav9Nm37L0
         I6tg==
X-Forwarded-Encrypted: i=1; AJvYcCWMWKJ/Nv+JtFRo5gMJcL2ErQYiucyEbndc3d8ojdXJmRnmlzaKo7oVVEGXdlwVTfg0UBLfcNPgEjtiMzLqW2DimyeYYZaGdbpe4A==
X-Gm-Message-State: AOJu0YyHWYTlSvnlwytL9r1vQN77KHkvtLl5XTarGo/dOf8wZj68H3d0
	TJo17WO890A6H7PVndHpy5MA+AyfAvU22EXX2b+x6ITC4q3HncJuQoyKCEw7Zq4jd6RSgEXXEYD
	w
X-Google-Smtp-Source: AGHT+IEPbjEuAMs3AWdNr9qrKRwN3dFaeag375cc7XhNIhuiL0+iZxVkSGS3I4IiNQG5WZQU1Pjs0w==
X-Received: by 2002:a17:906:2844:b0:a3c:4b73:e3c9 with SMTP id s4-20020a170906284400b00a3c4b73e3c9mr15646194ejc.4.1708469444059;
        Tue, 20 Feb 2024 14:50:44 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id g3-20020a170906c18300b00a3ed811cff9sm1601977ejz.154.2024.02.20.14.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 14:50:43 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Feb 2024 00:50:31 +0200
Subject: [PATCH RFC 1/3] dt-bindings: display: msm: dp-controller: document
 X1E80100 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-x1e80100-display-refactor-connector-v1-1-86c0e1ebd5ec@linaro.org>
References: <20240221-x1e80100-display-refactor-connector-v1-0-86c0e1ebd5ec@linaro.org>
In-Reply-To: <20240221-x1e80100-display-refactor-connector-v1-0-86c0e1ebd5ec@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1216; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=ZcRh/iRQY2q3Fj/sfpbDNBd/2gcxPVTg7LyLYjpCUEY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1Sy9cQTI8SFd8K/MoqX2osnfbl6r6IB5mn4lQ
 jBzDis6KwWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUsvQAKCRAbX0TJAJUV
 VmM0EACrw90/As2dkDCOvnZebzmr6cjgxftMv7dtx2aw9nd7bWhYS/BIWxoIS6PP8lf0YdJOBwA
 zLx8E8B0ybX/OCxg7YCkndmk7DuN4vXRJJP0rtX1pFBEAjvBJcH0PtOxAuK5YlNLFMWGlxBAERb
 XVwWIjPNw94CCtwVZw2Hrq7GETIMGU5Dq553HW9NGuFMdUMMDcE+gJHFem7KRH8nBi0UDuuXrWC
 sVX7TWVka383d7dVF+PJeyz8PoDTIMwzkJ7Qhkirfxgp0EJlUzO8e/Xb3KU60Q9Yyvj2BUNn2LA
 IVpbOfz13Nh8qqGEnxjGoy9qJTgZzAtMMHxxByo080kp3+h/+2Qzi3D9+2I5qJcYFdgS0k1B/Zl
 cE0lAe0gO4gowp4O2MfZFjYu2lwh7DP27K/JtCNHK6QoVGS57EKYqLczzJKEWpPegcyXkSonQke
 lQPuaMNWB1ERFaWnkfDSm7vBer7cOkgnSj85BJUUxLgC01ZHwrHmHaJBdfOoi/4HVnnZzPjIaRP
 AQKkkmFaMwTbAkK4Mm4pxiSlzTSgON7cXVGVcZB47LUhi3yaf1am/lCvXpoSODgcOmTv5old7i7
 yUp+H0o/iaoh1tuaF7QN1GsuogtyGglMrH1zmHR5db+4ZVAJ3yYMqSQfAbRKYVY8sCtgqLHg/DY
 o1eGOK+ecF/DK5A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the X1E80100 to the list of compatibles and docoment the is-edp
flag. This new flag will be used from now on to dictate the mode from
devicetree, instead of having separate compatibles for eDP and DP.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index ae53cbfb2193..ed11852e403d 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,sdm845-dp
           - qcom,sm8350-dp
           - qcom,sm8650-dp
+          - qcom,x1e80100-dp
       - items:
           - enum:
               - qcom,sm8150-dp
@@ -73,6 +74,11 @@ properties:
       - description: phy 0 parent
       - description: phy 1 parent
 
+  is-edp:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Tells the controller to switch to eDP mode
+
   phys:
     maxItems: 1
 

-- 
2.34.1


