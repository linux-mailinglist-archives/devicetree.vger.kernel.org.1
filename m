Return-Path: <devicetree+bounces-53623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6CB88CDBF
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDF3C1C38EF6
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2778A13D298;
	Tue, 26 Mar 2024 20:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bpy6hnvE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F2913D280
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 20:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483382; cv=none; b=ba32MKLRPiuputCCdFV8tySmjIT0eblGpyePbzk7h4kFY8GwZLyBcXCjmWl5Oq+wu0dEyC0R4UA1SOSwbtTBrH5g4bfUL00I0iA4/maXO03jU7dEefdpROJx0J/Yh6z3gzRoAiwlxU6a6qyqclwkplWOBeHDu9KoD3ZuQ7NOOFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483382; c=relaxed/simple;
	bh=Yxw1Nf8Avp2s52yyWZ4p/8fEi0IOMXGLbA98Q78P5v4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qtDJ0gtHV0m1A2tS9xwtEZ10WJHMEROm1NdCe0QjVIBYnUuKIDm8yq4a2btNQTK0vRTHr0iJOdZm94YBBYxBdVbxv4ik0fnnAuNOg8Ji7EeLoRj1ZAzWsinYPoXT0/c3MfiSxptb62Y2T6zMGqe/wzdkCwtADLSOmYFS+xaxjpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bpy6hnvE; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-512ed314881so4427816e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 13:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711483378; x=1712088178; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cZpZgbhnKjDxoRCVD7RJmrRTBtp0NQTmTQyoZiGgGHk=;
        b=Bpy6hnvEMmfYJRYj8ZdPLp/W1oWVtsbFRsto6ZRjJ1AG+ljhzWUCrRbWkK/5rCZlYo
         94cqcJIZbl/auNuTQofdwNPY64ykcp6r/jMcCeXHjfFck+OvtCckcPFoFjBm8snl2UkA
         XsufMRxBs9ek+6BkuBQ1jlg3lxki5Dv4o+oLIWpEHeQ9sIIpkCT/fzIDUxMse7CrEARL
         eEmI+DXZkCUc31hmKvYHFmq8FPQ873lMtLvBep75wQFYOctxBaEk4wTrROFnVHgZwSuE
         h8E1S8MMY/pKsKf84PcPhRQWbCjS177OmtVGBW9DYcLuM/VX+HzOTD3gWQd/7oJiW/bU
         o/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711483378; x=1712088178;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cZpZgbhnKjDxoRCVD7RJmrRTBtp0NQTmTQyoZiGgGHk=;
        b=KCDfKmmGdXkEB+63ln1VeKm4jZYTSEcbRz++5ZI1lQh/lSMBlZsDW0NBRAT/AI9sNe
         Ly8pJUD6oJl9yRu+jvx3qjLbMePIefCznVagM7k8pveCrHqPV+7I9gVpstOzkM/LMyRA
         nUppH+vvzbcjM3xbQ4To2D3tyOL1iXMSeuxxs868HzPrHovmj8e54DFnRMxCdd9Ma+m/
         EIAZSXuYBFhkrcFWohR7wDnI8dWTi4M9P9y8Xn2x1y3oGrhI89m0qYhi+9ifvnMHONDV
         ljMAi9fxWJOC1MDJOJTvKxlIdT4xf4mHJ1qjbXgW4EZx0QAHxqGOzuTE7C/a8agSwh2n
         sTBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzSG/8a+SQgq+hD50yHA9ahGQq18edEfOUQuoCHsN12D/kutMbha7tiOIMO77vsIG2OmW0kHcPz+sarkmqGP9tfvLjtIXq6Jw4VQ==
X-Gm-Message-State: AOJu0YwF/MJYAwB7BAIcRI2EpWsdTI0sr2nLcUr8Cg4zUtezXCJ5+MTf
	F8CcNV4RAT7v7qGSC5b/O6+YjAUbOX0taHzMpE+2cN7ch7uIgPixJqHi1ik4Lnk=
X-Google-Smtp-Source: AGHT+IFJIWkD8qST8EmgHk64osYCFfBh68OndpHc8LY5ea2/W91VBb/AesVupv8gudP1E4KzOQkXcw==
X-Received: by 2002:a05:6512:3257:b0:512:fab6:6df6 with SMTP id c23-20020a056512325700b00512fab66df6mr7891279lfr.4.1711483378226;
        Tue, 26 Mar 2024 13:02:58 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25e75000000b00515a7984acbsm1279408lfr.94.2024.03.26.13.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 13:02:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 26 Mar 2024 22:02:54 +0200
Subject: [PATCH 1/4] dt-bindings: display/msm: sm8150-mdss: add DP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240326-fd-fix-schema-v1-1-4475d6d6d633@linaro.org>
References: <20240326-fd-fix-schema-v1-0-4475d6d6d633@linaro.org>
In-Reply-To: <20240326-fd-fix-schema-v1-0-4475d6d6d633@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1054;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Yxw1Nf8Avp2s52yyWZ4p/8fEi0IOMXGLbA98Q78P5v4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmAynwrCrjByBwo8U5zkvbJ0T/jqqx6piO9hn9U
 o0tORI3PweJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgMp8AAKCRCLPIo+Aiko
 1bfWB/sHyAxPiOFUC2TfvTyAq4fQYgso+8/eLvFjpsJMMKWdMT1N69pLWgniPib8sJmTSJBqsRK
 dqL6MjaP4VJ9LpqoH9fKndAe5unn558/SlgRTvo7YR/PlDOmJpdWjUXgW6Mhl86bERffk1ZsH8Q
 idjesQNGi0QUFLRhfNErgXusMU78SbTllJhZjatA3N4Z6nt1wmTHLD3EtTPY6V6Ttg5xJrRNRcL
 0DhyRGIYGwR/U4vtUbAvTDNtvBDC8DUOihz/KX30/ZpV085zzc5F3WPiUp9wcF6yy1ngj+WZJ+o
 D+SQtf/L8BOsLocNRnP9uPOXevB5QcXGmdDj9o1luE46arPE
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

As Qualcomm SM8150 got support for the DisplayPort, add displayport@
node as a valid child to the MDSS node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml      | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
index c0d6a4fdff97..40b077fb20aa 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-mdss.yaml
@@ -53,6 +53,16 @@ patternProperties:
       compatible:
         const: qcom,sm8150-dpu
 
+  "^displayport-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        items:
+          - const: qcom,sm8150-dp
+          - const: qcom,sm8350-dp
+
   "^dsi@[0-9a-f]+$":
     type: object
     additionalProperties: true

-- 
2.39.2


