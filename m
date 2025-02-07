Return-Path: <devicetree+bounces-143942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD37A2C493
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C7223AF048
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3931F91D6;
	Fri,  7 Feb 2025 14:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="axFCGIRW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478151F7575
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 14:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738936953; cv=none; b=CHmZqQ9l82nHBNv4TkQcEHe5DYROzD1Jspn72KUOHAWBdgWlGColRcZtCHYV00VLpSstA87yUUmj8uzc4UBUoxJJ8jsMvhCT9OsgvAVdwXSsJk+89l/0glLdw/jlvGBQ5sXqM83nnCSt5LHguVpnpF2SGsD4jDepwSgaT+wUnl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738936953; c=relaxed/simple;
	bh=TcDVf7iIOl+k8slgEJNXrVsMAuZkLgOUD8RsgAfG3OQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eAWLjq3J+8xMeXumRq0m6aadmfKxHCXBrqml5Liz06146lryaA9iVLJiPCTaSAYu+XGYgA8MgsKhqCsOAR5uhjg38xgwdjLP9kfmTdvXfE2O4WNUBJJjgwJAnqH5b0M9bc5DXWbT2msP/jTRPgX00j71NmEb5JvHx+IzGaAJcE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=axFCGIRW; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4361c705434so15010995e9.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 06:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738936949; x=1739541749; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+t0PeRcRiGWGlq2DudmFu4wvPO0Qc0iTCeH5AgQYu0k=;
        b=axFCGIRWk+kbX4aXOoNBpoPkalGcxA1F9o0FSe7Q29CRDvwBI/Ui1Pr/QuBrakJoC8
         UhZw0gQtSs17q263L4C/vO+KQe5mxEPya20ujEfkXzcKx/hfgdwfTUqiBmKltkcXPJ5V
         hNuNEEPvtgKynsi1Jqhnn/6KIJ2BhHF0WiaI82IwGR9WoIauPjgL4CpQgWu3SHFFcUZU
         Asz6Enne2Fv4AydG+duEmjnq7XbTFHiPbiDj2t3KW36efsVSfSQaTDnq7VEa1eDoOQhV
         dUefWqHMXTAx6N1rfCOaPhuxuVEsoWCNWJtvGPbtezIFW/zfI2CilsOA20b6XtB/aDW6
         spAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738936949; x=1739541749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+t0PeRcRiGWGlq2DudmFu4wvPO0Qc0iTCeH5AgQYu0k=;
        b=kM9ee+enDXvW/IkejuZ2TsDpYJWi2KKzAGAVnefPOf33VzeidZWrZeeMsfR7zBUH6k
         /yFwl5xksbsH1wBzv8M2GBrDjkL5HOFmwuMfYmEBciWKUFVi5B39VfJKzpgsTzLUpaOx
         XsyDGbVn24daQgB4Zrx7DGboqFNfkZi5oda2fa3fvyeN0l26dQ5ov8QjtwGoY1bv8JGs
         EFfm3uygZNv2pFtNCGCMBx5hhQTRSRiKWAnzuXRupjpFnOjrnrbrumaKDH45HQxxl3Sm
         M4fbonLimcoRF4XyvvL2JM5btwC7upIU1im1qaBuFGOXtyj+y5A0PXhTJCYRi69RcCLF
         CDCg==
X-Forwarded-Encrypted: i=1; AJvYcCXvJqHOujpjjHGL/7v+b/dM+rqz969sA6VJJ50z/iEDp/3lDDhctLWhuLsKEkjlkuNSzH/c92c06US+@vger.kernel.org
X-Gm-Message-State: AOJu0YxXPgPUK3U30uz8loUPQVf/4gvdSQ+zbOiOa7NYtUKFNWU33vpD
	RxfGNsvvVrJ1mFgW11oivIX9cfhOhqmEeN5OgaJwmKjimHC6yPssLTzFzg8tK1g=
X-Gm-Gg: ASbGnctc0T0ylEQyn4ZK3WPslZ3G9OySobCIoms8vK+QkpsubA5233TSFMOibkGQOGj
	KE2Y3j/dyXpwYs3MTyfSK/WtbRWdhjXv1bbo10GpGw8E2v82S2eslcmtKoQg1thO5bPN3u43vsu
	8JJR/nOdvcJDYBOblfnyvnREhuSy7HZQKBFMfaVTj8fcdhaQEMzbQJQmoxx6DyW0tJljXq8LX6J
	HIWJWCBnFaPqu7KaQ8mQi/vxba20Z/OAGAENbyBO3J26zbpkw7ppTMLTm0f76HuVxrDI83Jmdwj
	c2vzSAvupKHb3DrJ9+HaBFPC52l0vuLZnZyo
X-Google-Smtp-Source: AGHT+IF0Kfmf/PwEzCNegLbzDTONXpBMWhSLTuNeh60qPhqC5TyM8mWAKMBSCB9PUmIinuW/+wiCEw==
X-Received: by 2002:a05:600c:35cb:b0:434:f917:2b11 with SMTP id 5b1f17b1804b1-439249b2b99mr23312925e9.21.1738936949368;
        Fri, 07 Feb 2025 06:02:29 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391da9652bsm57384605e9.2.2025.02.07.06.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 06:02:29 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 07 Feb 2025 15:02:25 +0100
Subject: [PATCH v2 1/2] dt-bindings: display: qcom,sm8550-mdss: only
 document the mdp0-mem interconnect path
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v2-1-f712b8df6020@linaro.org>
References: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v2-0-f712b8df6020@linaro.org>
In-Reply-To: <20250207-topic-sm8x50-mdss-interconnect-bindings-fix-v2-0-f712b8df6020@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1430;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=TcDVf7iIOl+k8slgEJNXrVsMAuZkLgOUD8RsgAfG3OQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnphJyo+NERuJHQbRXvuofD/Lg8Z58aE+Lc+D7Tps0
 T9gSRoKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ6YScgAKCRB33NvayMhJ0S6eEA
 CzMMqK956gONtZcEyWLIdpW851mCXU/HbQLiPU5tYUWwcaT7KEbVp8Ac3EYh4czEGOt5AMgpIt9X0K
 Px8UYk6ASwesv0OgkVz95wNNryHI4AH40p+zfVtCUUDAGcImca2Jf0L3cUU95NVDwTdPWNOh5AiznE
 KhnqMWp4xzm/0yV0AHStb5ph/Y4bjwOKThwbyc/QIk3hJrDKxbgjsrIj90EmwQbIuIED48vXAbkzR/
 wOn6/h1gL/zWv1PHniAJvTxzi7TIOhFRqnyBggpp9igt8Fo33XHkRjjAfZ+pCmC3E86jKKD3FJtXFu
 ze+d1mrfRCvMFxmEzgcKYupLotLZhPdf4TI+0fzLu0NcKD6i1XB/4TXwQeYaKaKk7uIzblgmxSCrdr
 nqxBHjC7ygZcmV3zBqwjethUT80+bcIQ8kMjV9p9lnNh+npY9FjHTfoJhFuCc1e60tFnUbOqUtRUZq
 WZdBPhKPA0zcTfmJgVD+VyH4LtzBVZ63mXsOhXqz2/MvPJ+162jxCAnpNpQU9+OMC3DFzy2yeLcA2Y
 rNhR4rF1FiDeckHfnwUeIGSv0sgxoyT1CRv1XvggUU0i5qORa82H6HiznnmShFu1j5M6Et98RnQFvh
 CbueXYNX84Ncw+RxrbE+RMBwbLLw+vwFisX8OaI5i/7c22V28zC0KzdcEn8A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The mdp1-mem is not supported on the SM8550 SoCs, so only support a single
mdp0-mem interconnect entry.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml        | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml
index 1ea50a2c7c8e9f420125ad30a80b4ebd05c9367a..9631fe11c152449f3dfa0b8f8f53feeba721c950 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml
@@ -30,10 +30,10 @@ properties:
     maxItems: 1
 
   interconnects:
-    maxItems: 2
+    maxItems: 1
 
   interconnect-names:
-    maxItems: 2
+    maxItems: 1
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":
@@ -91,9 +91,8 @@ examples:
         reg = <0x0ae00000 0x1000>;
         reg-names = "mdss";
 
-        interconnects = <&mmss_noc MASTER_MDP 0 &gem_noc SLAVE_LLCC 0>,
-                        <&mc_virt MASTER_LLCC 0 &mc_virt SLAVE_EBI1 0>;
-        interconnect-names = "mdp0-mem", "mdp1-mem";
+        interconnects = <&mmss_noc MASTER_MDP 0 &mc_virt SLAVE_EBI1 0>;
+        interconnect-names = "mdp0-mem";
 
         resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
 

-- 
2.34.1


