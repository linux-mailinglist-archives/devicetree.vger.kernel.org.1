Return-Path: <devicetree+bounces-226438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C237BD8A40
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:03:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 274004FC5CB
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E3E2FD7BD;
	Tue, 14 Oct 2025 10:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rg+Vx0Oy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5E72F066A
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760436178; cv=none; b=ck+hX+XlinmHNve6hsiyLWMPFI8Y2stZaNV77hRDTQZtZTOdEEZWFT/bJrDgac2ZGEkQ6AC/5GMY2EtFmkz7wR8T/Uj5/tWkvUZ9wacgdki34CAAbGv6TrA6zarGhvC9ouwaEYk44oitZo5GOFNCPejfMy+9WB5kQ8kBnzTn65Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760436178; c=relaxed/simple;
	bh=SjQNMcKFiFxf1UzqcFbV5V5FIrz1nf5P1xbHJ87t43c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jD/Gt+5yuKeMtSwVz8lWg5tA0pNcOmtOVpthzMco9fCTc7in9It1kcEF05ZLdCnQU8ScQjObScCr9fccPQpb3zImGOv0YMAmcoSxC+ysfFA/Qg2LgYENTKWN+Pvyq6vvmJOG+nb7yTx5zJq7/NuBGwtHOB9SKKmr9kRjGOHCTnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rg+Vx0Oy; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-46b303f7469so33500555e9.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760436175; x=1761040975; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cVJfqn+CURZR5kgzfDjtV++23e8mA5V4+ieWpLbcMzI=;
        b=rg+Vx0OyC0tKcb+PkXiZfGOl3Wxsg+Ht/I4kztmIH7KvASEMHNz7KHbBTf76rS4r5U
         b+3sgrQta9u/XoKTRefaOncJ1aLQ+I4l6Hctxf1w1NQB8ZNpygG1hOlzzNFJQs0iCbK8
         KR/7ce3g7xI9c7PhUMs8SXVWyccNRtNvKVtyfiks5F9ahCzxr5H6p3aUhFHzWllWkdCK
         RyZho6Wui23kftLL7Jp9cn8V7uPtQYUFt+ID3r8fZ66wsUG+t3slaibv735VkD/A//kN
         xgFe7e6dLO5z1SCoobg554dOHN9MXVWr5U4AwZ48hsfogNg+tTdaDCBd+Fnh674jEAVt
         DHyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436175; x=1761040975;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVJfqn+CURZR5kgzfDjtV++23e8mA5V4+ieWpLbcMzI=;
        b=fUiSRU7ZSVrGWy8ShQ56iZLL1hf411gnuA12bzpBosHJfKjCJ4/fw8Ut3ZoSY5tcrD
         5ylVwt+5Hha/IlRq4F8rY7e1l7sU4Q0LHrcTnruS+/eVak/BpLlPlmo7cw7FVJGag8Mu
         bxspg3oDnrfkIix5Ik8EOBjJ4U3vRs2MIPiQZUhdLC+2MEMypNMhbfaNM0SCohTBPJ6y
         7atqEcyqGFtYYyCFjCCC4uxDeDGwlB+WaScNjd352It8jAv+Om2qkbD+C6RNLN1ggMqT
         8i8A18SoQFHgQDhvL4bHi7ydU8ubN1LU7v49kqi+f69tkPcTRCqXAMJX73va9iWbcOU8
         gK3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXTJqrpA9oPeONALi5Bty/3JQ9rdaoRYwaD3JG/X6Ko4JKk9l0SYq8FRFk9BrX132ojTWcsNWICd+E0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw76+MfCn6p6BGzpkwIXC2Hmb7jozZDg1bsLfZxBg3dVTDguG6j
	jd9mjPhSDt5ucWbbsRUCBECMsxMLIePX4YkabL4Fu9VmMzeyYQJwsGeVne2EkcawMdY=
X-Gm-Gg: ASbGncuqdzOTrwNo9fLewDSXFwGc3vZOll563vdCo3HzcMw49ssaMWSA8Ok2Dijv/FL
	YjuKsKh4jFH8vdhQvH46d6/xND6+Rqv1A1c/3gX0jPvaUkh+CmzgdZ2RHrwK4EEsQ7mHEfnq7gk
	iSCI+xWGHG7vMB+HbYLvgg9T5aoigri4jZ6WLS5yvcx2FjBy9pO5mYpm8kSGVHFBbQqHDRTUeq/
	ZipFAwc5MZNs7R+g7xvuue/Bbc+rwjHs913x5nXPZkyusEhLuLRzOKMA7bIxX/ay7fVHROHau0e
	64wUtvLi6BbtaT8cBYcNCdtmkjojiGC+GnAqkoDRA9m9PAoPj/qANVLSF9ZPlrAv8bTJ2vT2ror
	ZZNbw1izjA7764GkFcVfGVKrJfv1FTXXEAWXCFzke1sM=
X-Google-Smtp-Source: AGHT+IHn1J3P6w0TT3kflXZRWIHbxv02CVqgaJ7Zj1UOEcse11mXhprORjqLY8jjisVskI0JowAdcg==
X-Received: by 2002:a05:600c:1e86:b0:46e:4581:6634 with SMTP id 5b1f17b1804b1-46fa9b018e1mr176937295e9.29.1760436175311;
        Tue, 14 Oct 2025 03:02:55 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489197dsm239615305e9.10.2025.10.14.03.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:02:53 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 13:02:27 +0300
Subject: [PATCH v3 1/4] dt-bindings: phy: Add DP PHY compatible for Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-phy-qcom-edp-add-glymur-support-v3-1-2772837032ef@linaro.org>
References: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
In-Reply-To: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1167; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=SjQNMcKFiFxf1UzqcFbV5V5FIrz1nf5P1xbHJ87t43c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7h+/P9kfefQL9Xhu238N4OW/+ki3a8ZQcLA+5
 /LnZTJxNsaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4fvwAKCRAbX0TJAJUV
 Vg0BD/0TH9WNgHrWjeqkeEuXihRVj7jKEy9+iMDKrSQ8/rwR7ChvS6cRGpe+u/O4DAzGomvgO8Q
 lx7b2fwpoWlEowETy6PImWEB2TmpNXUBdD4zo/BDHLaoISEcdcHToJpihgWYI5rMnQ9zhRIKshe
 q9ufkvxu3L/+/u+FG9LCc7sES2xB8WjJFaoPQpROLNfaNB+9455YfeteCb3SvePUAzbtO3qJavG
 P4igEdfz7GaknEHv9wlIiYb08v5jJJKCc+PROmlHQfojvQvbED6Rn9+YuymS57MnV0bhTRt8Mb9
 QVXW6+6YpfLU3eTjLBgPlrGF4wjF0kuAl766P+FjYwDscU0MUaTXk3FVehoO2uLB3KXmXJpvpQT
 zTlh2jLKjy/lJk9aHxChoS/hVQk3Ac+U6LPqYcfEplRrKF9nXeBWYoRbQ4+olOltcY01+QnIeKx
 1Pp/9Wx2UxS4HDM3pFw8g3MvCkA8FRpo5kcQXqDBFVt1+kFy0vUhmlD3SIzpzohIgWX4m1+tx3X
 WsPCgPkRq9UoKN9VSpzP1urz1ueT52u2OrGpa1X0AbIvOCaE+eBdacV669Tgx/F1mk6nR5OynX7
 lar0vq/2GI9bGPxHKSu0ZAvctRDk2YWF6csnxydqF1krfDNbM0Gh7dxwEVGM05IFMnpuhpkrJLX
 dxT0tKQyUxjylrQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Glymur platform is the first one to use the eDP PHY version 8.
This makes it incompatible with any of the earlier platforms and therefore
requires a dedicated compatible. So document it.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index bfc4d75f50ff9e31981fe602478f28320545e52b..4a1daae3d8d47ca5f08d97a1864cfd615dcf108d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -72,6 +73,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-dp-phy
             - qcom,x1e80100-dp-phy
     then:
       properties:

-- 
2.48.1


