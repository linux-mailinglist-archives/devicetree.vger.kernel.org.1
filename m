Return-Path: <devicetree+bounces-226419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF79BD88B6
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 11:47:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA84B4FCECB
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 09:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5C232FD7CF;
	Tue, 14 Oct 2025 09:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PhSEh40R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1662FC00E
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760435192; cv=none; b=BxJp9HswzYVOcoEnatvvGpaHESn3I9WG5li1oQkx9OgTKGtwDSpxXdmNDGBTnMw/Spt24aLOa83NWnxSROlGUobWLLmYFDeA4bGc9vLShwN1CB7vI1264Q8L+vDg+Vahwo6KbZCepE8SdKldRgXXXATCfEOzKT+wdpEi8z50v+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760435192; c=relaxed/simple;
	bh=OaVD3kgCGNuvepXOAnIi/Jmw2IJiuqOadOslMs/qPqM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=vByyjPGNJLlBFgG3Aplc/iQQfSGcqgWR5XSKkLS2nO7gYdBJFqfFclxVOUm4dPzeu0J5bROZslcFP6E5TLeJ+YKWRkCdUN8E/mW1RN5sX+EeFjEvIZWzoNF+UdcIcL9Sqrtge6CJ8cpSA8JBDQMVelz2f/ofK/Yhs+fGYCph6iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PhSEh40R; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-41174604d88so2306402f8f.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760435188; x=1761039988; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KnhRFLfQaO8pIowD5rNcrWOdNtst07qFW/F+KRDikEA=;
        b=PhSEh40RHS42/Or92+1Lixn5jmDoWeojAQi8HznP9zXzsZGPilB0jJhhDqSiVvWWj2
         wB0kxmIzCCQaiBFMuwVI0FvX/vmfeL3WEgrYxs5cp8BOtdFBN9LNjButaAhJNo1NfQz5
         NmvPBCm+V0mZX2pViE8FHWKzmPEekMnrCVYCvYSKMagSRTkmMy5Q2DljtyDj+7Qe72iW
         MmmSwthpZ8ccKnBuL0qbFlVLHqPgz5qoXxsxq15uQxXqhzkc399z3wOzQCeRdDgA9OxL
         bQ1WC1ZzZLWnaRl8AvHul/byWFfh1c6eDtQ7zCyItKYeRSSaMHQwMcvCE21GBA5Ufy7O
         LFeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760435188; x=1761039988;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KnhRFLfQaO8pIowD5rNcrWOdNtst07qFW/F+KRDikEA=;
        b=L9p0hFbuJuioL7zMZ6rrN3KC3ADevLCRo8iktPhoZElcI/UfXsMJW6f3/V2DCsrC9g
         KMuFlMKldT2yHXvtkDkAnHdrgvKjIQTXhR+kTEy1f5KqzPWxF+biI0ywuBBU1s67uzBX
         o52vTcUecQMXmmgQNgmLZyrj9Zfk+BWNlRpj08XnPPu5PPxNIN65oNG+J6UfPekv9BxL
         Z3FKQh3eamghvWtzDiQU+DA1Xgw1vWOJEvBaSCIVVIymOyfCJKOt6ov3Nu/8liAPF80Z
         KKy0U1HJw7YopcF2antPTaVNdQc4QCgZSQ9NFev/ER9mKXcoHA705GnNzrd76bDim1GL
         slXw==
X-Forwarded-Encrypted: i=1; AJvYcCX6kYGNhjne4EJXU3KSoNfkEwdF0b0TAK/fwBfSAlemWrbYU81hDAchIGXOnm8fC5M+THJ/DpOB0O0r@vger.kernel.org
X-Gm-Message-State: AOJu0YxTTdTNgv7YxevETRvnuC4GqBBvXmrFpAWTnhmL2bOrBlZ+pjR+
	fisuz0blgzp5LMeVKoqXvFMk6N8tU+a/YCBRf94Y+ia9t/vsV8b8T2HB/E6PoBEwS2Y=
X-Gm-Gg: ASbGncsGPuUmRy6wy1U98eBNAcmOncGOBjUuWisyTgfbsa373UcVMgQbhqq5ze2EtQo
	+W6RMR5vjUa7c+K1k3NjBdy78jzFl428uFF9V2SC5NZl4fxj2rBF5ltcLOeWLp6LhmydmfUGv+/
	lhsjFTa1KWkoM6tDfqCNNhQ6Qo3qBbwaeM7xVYHin2budw3D2x1Uv1fYEEmLdRXlLYKAfTLWm8n
	1grTFrqfju91TNFKJNHVqlSRiXIyA6S12oj4OYB2VSx7B4tdFk3CQ8KBnG2lWZqJTZI6fQAXwFH
	zU68ivZmUKjz9q5Af5bpuOYUsO3X6A2vF/3SXfGkaeCubRDA8NVgV9oNG3Ywrwtohxxor903Wsk
	/nRmhwkrKNMa+Zb999dbrAJU8ZFtE79rXc+uzzBEFdqM=
X-Google-Smtp-Source: AGHT+IFXhmtv8zqtFThQ4wP4GXOnS4SW/hYu7K5sk0wtbU92NOb2q+yfXz84YaQJJ4YvyUnKm5VinA==
X-Received: by 2002:a05:6000:40da:b0:3ee:15c6:9a55 with SMTP id ffacd0b85a97d-4266e7e00b8mr13699381f8f.34.1760435188415;
        Tue, 14 Oct 2025 02:46:28 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e8b31sm22866442f8f.54.2025.10.14.02.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 02:46:25 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 12:46:03 +0300
Subject: [PATCH RESEND v3 1/3] dt-bindings: phy: qcom-edp: Add missing
 clock for X Elite
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-phy-qcom-edp-add-missing-refclk-v3-1-078be041d06f@linaro.org>
References: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
In-Reply-To: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2071; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=OaVD3kgCGNuvepXOAnIi/Jmw2IJiuqOadOslMs/qPqM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7hvjUncltiOMHWO3SuDDxpda2OpYU2rLNm6C7
 uQpVNVVCjKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4b4wAKCRAbX0TJAJUV
 Vk96D/4w36skQobp628M9KrofHekiWoDIJ3lHS3GsMM2ZGVAg0RbtIH4G+JPIFjFQSL5mfBssp2
 I/DDwKegs3A8WsG2e1cTvD+2I7KDzoVFdeI6t0C0VpXkWzfXjqjdC7CFyAb5TeWgIFAJSyR6JY0
 hRXgOFWOHetXfZlKd8raA21/+EGY1nd2D2KMI7rmTahpy5cTzoVPJUSf4hk67w+0orv6WEv0PBH
 RlKfyQiQ3CBKvGYqqe9DB5VrK7RxDDKn6/GxL2U1pR0SLCXhJJt4/Bcj123zYRt2jWTSPFiPsPh
 TlTVBnPBfQ4DUmidUafFXLDsg/ykx/txAxTef0OFwzGAkhksy0icxt1E9nX++LvTJuwo+BW9AF/
 0qckAxKWfFl+UnMBqs22oCpEWXQbRvuRuQ6mweO/1p1N7X592GMY1ybd7kvcatW467+LNnXaQym
 gnxxlJc0JNKNq0RpcEwpccV16S4MCC2XPtnnk48qXU38JaYl2ArAL0pNscuiV00SQEUtJO9OTAl
 1reMU7ez1xyomjSLc476wrlXd7f1MnxpZ4zrg4ykRWgVHM05jQ9il+B7Oy5inWz66Xo1bjmUF81
 5+TJb+lPkgmnLbtfulUc1GOY5mdni5JIPpIssrBWxB2BaIMP2XwToyWBrs9OWQWnKubzbQ/kIky
 mMFV+QUqAhamXQw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

On X Elite platform, the eDP PHY uses one more clock called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So attach the this ref clock to the PHY.

Cc: stable@vger.kernel.org # v6.10
Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index eb97181cbb9579893b4ee26a39c3559ad87b2fba..bfc4d75f50ff9e31981fe602478f28320545e52b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -37,12 +37,15 @@ properties:
       - description: PLL register block
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: aux
       - const: cfg_ahb
+      - const: ref
 
   "#clock-cells":
     const: 1
@@ -64,6 +67,29 @@ required:
   - "#clock-cells"
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,x1e80100-dp-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          minItems: 3
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          minItems: 2
+          maxItems: 2
+
 additionalProperties: false
 
 examples:

-- 
2.48.1


