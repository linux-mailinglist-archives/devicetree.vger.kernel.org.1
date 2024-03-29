Return-Path: <devicetree+bounces-54485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 364E889147C
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 08:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF1DA1F22FBC
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 07:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D147642067;
	Fri, 29 Mar 2024 07:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="fcPsTL2u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF633C6BA
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 07:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711698361; cv=none; b=BWbaRN9Mab0Kz8ZciDTtqyN/4BmzdQl7f4CfubcU5tb2MHlAAhGkcingV39piKgDZCdY67kDe33+HlN/T5ETYdjsaeWZDjsJZgkgFsl4v9Yd2n2zbVRU7W6xrng3GNHeeRnA6a96m74V35NB8eRRcnV1XjY/QB6gGNhscP/83fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711698361; c=relaxed/simple;
	bh=25Qs8m6volBcpFuS55c6sWHasm9Na16Ss/X8GJM+fYI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MAXCxEgDQ6qqdS4/puVL8f0sEomyfWZVwST0dBFBr/O3xjIDuUWHhb/QcvEoQBpyzoKOdK8OX+4IDubn2v4ItKpAUVD3SrZN6FbNeOlCGHbtBySKknNs26mkDUfjyYoNd4auk1dqxNTkU78HQt1u+GjczgMtqCDk0rcLdu4/p/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=fcPsTL2u; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51588f70d2dso2016887e87.3
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 00:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711698358; x=1712303158; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4McqOYY3UTRJyQ2CjaqCL8nyfMiP9YKrs8lnA2q8yiE=;
        b=fcPsTL2uKOBwHe5Qt1Q3CRLPsaY+jd4DOQC2CZIUK/52r0E78rkCH1FsonjFNj0a8s
         LeTTx9CifDc7ndQRbR8F3Di6st1w3RUYUZzMz3HL7Iaf3cbQNn9KHF3AuZ7bVCCTHa8O
         QeygeGBxeroImGDK9g+YHPLuSMrAcGblmiZeHd5y0I4C5Sp14CRVtFdcZw18c0n32fSX
         CjdQTGBKWZKA78gOLoYnTDA2xCkmn2HF5BQQq1rjd8cQyHOUh73wnoTzHqErD/pzK512
         6BvES/m7wS//9RSsRb0ZxiLz0f+2/D+gmncGPDd/qZLMUx6YIrZGIU9Owv05UHx+STdm
         YjKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711698358; x=1712303158;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4McqOYY3UTRJyQ2CjaqCL8nyfMiP9YKrs8lnA2q8yiE=;
        b=vMkmfcVAO3Png//y1OPlgIC+V/YAOtJ1yBEgMVFJzHsWPN7+En/yjfS2cwRDjFCRFC
         OE7oFQI8SZd1kXVxLvvuuPTHdkZyzcfzADQ5NXZwjJUEo2r3yLIby3VqQbekANNxeqyc
         x1jieULXhoe/XoR9mdErCBsOQY7so9+ycRYlmjHaWg2GCuJkRAbrZ9qI1DbetYKgvNR7
         xFry7KQWqpDGhGaKgA9eoFEJADeIcZLa9H/7mAXddLp0/oxlKxCjiljYdIOItwrVNrQr
         Z20MTcHldhKIGswXM5yMrO8HuRYYDtXU1PEnvIwhJBffXViaS4PRL+7Ns848sr2pWLVq
         6TNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmYKtgmUQetgaMY/Se4x9EGxcfrk+etPLsFK3evAa8ZfNQ+2O+TN3gVreLEStSsQHEPEDE0yPop0JHyqlwiaclBYcE4RTXVGFHug==
X-Gm-Message-State: AOJu0YzPme/urfUpsfmUbqRlr+pfuTr+c9xa3Yq2I5+fQtqmEymt/hYF
	6a1Ua57E52agtKBkaA4jPQjrcpYSBQ8+XEDqOdLhDIy3pG8QnglpTcfUBoa8MBE=
X-Google-Smtp-Source: AGHT+IGr9SjS2/x9Bg3Cg9sAk0T6zHFzcOeMV4fzLJHUxJzzp46Etz1DP0Mivc1g9nSdBVgZiLJLTg==
X-Received: by 2002:a19:2d06:0:b0:513:d8e3:fe3d with SMTP id k6-20020a192d06000000b00513d8e3fe3dmr976784lfj.26.1711698358274;
        Fri, 29 Mar 2024 00:45:58 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709060cc900b00a4e24d259edsm1382737ejh.167.2024.03.29.00.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 00:45:57 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Mar 2024 08:45:55 +0100
Subject: [PATCH v2 2/3] dt-bindings: display: msm: sm6350-mdss: document DP
 controller subnode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240329-sm6350-dp-v2-2-e46dceb32ef5@fairphone.com>
References: <20240329-sm6350-dp-v2-0-e46dceb32ef5@fairphone.com>
In-Reply-To: <20240329-sm6350-dp-v2-0-e46dceb32ef5@fairphone.com>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Document the displayport controller subnode of the SM6350 MDSS.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml        | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml
index c9ba1fae8042..bba666bdffe5 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6350-mdss.yaml
@@ -53,6 +53,15 @@ patternProperties:
       compatible:
         const: qcom,sm6350-dpu
 
+  "^displayport-controller@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        contains:
+          const: qcom,sm6350-dp
+
   "^dsi@[0-9a-f]+$":
     type: object
     additionalProperties: true

-- 
2.44.0


