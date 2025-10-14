Return-Path: <devicetree+bounces-226515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 32423BD965C
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:40:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ACFFF3542D7
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DEE8313E3D;
	Tue, 14 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CX/CsTCM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 851F0313E2B
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760445593; cv=none; b=s5h9KR0MwRypEcCinwhI2HR5sAjkivjFDG1zOVirHOX7fWnSKRrxi0mLRkdf88/zJw2ycv6JglF3S6+NFAt4ef6ebv+yZhvxepcvHnrhf7YfnHJU1hasfVsaTtBcqzPwj9UyugiR+CML0U7GIpSaLtAhv/yjcqwJBb5zJW5BcPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760445593; c=relaxed/simple;
	bh=Kp1VLU4+XFZTkZgR+tSxksnxkxtMD6rynYbzEXze+LI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ONjcB3anoxqkIzDG2w2+SDlixCAtZP0tkuzkz7hLe2JJwHPonYYUJF087muycp7n02UrCtFZE0czr36B83uaimVC/ICBlPVMtp8A6ICpK3Pl6u3mq+3T/CcoaWzAnzzjDJOUqS/yed3QrYqXSaVQkHUQfpYxJxcOHu2BDhe9LwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CX/CsTCM; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-46e4ad36541so55299505e9.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760445590; x=1761050390; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jr7LNKVjdtViBKNRpmGFnlxclR+yg4rYU2bymPMGPFM=;
        b=CX/CsTCMKPW2iJ2bufUF90Zg9lIEqAJEkMpApReOn2SroNiCZdxQcxqC4aPg2Qv3pn
         Ks/XDOz+lQv7dAqmazdF7hPUMLzBZ/NH7htOh4jUBC7N1h8NVh0H2oa3P3u6gCLQT9L0
         TQqsKrVfFirgJdA6LISWXyBM5cNFlWCBgSc+32c5iPInNhKlil+QWXDHRtDg7BaLpNSc
         Ez6mmmuLD5Xkp6rv4R4PbINjtgLxBcYhI3RfW9wWnXTnTRnLISz1mVGcnPThXz1CVMOT
         gx3vkQCnBKL66wZCyEQWCmKxMYeGpK5/fUVMPbQ+4e4lKxMCXEZA9W92kEr9iAluXgIo
         SsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760445590; x=1761050390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jr7LNKVjdtViBKNRpmGFnlxclR+yg4rYU2bymPMGPFM=;
        b=P59Ha0BkeG1fiTMEHQXDrfSaq48hohfLwcmFBbfxytNhNUEwDcUsKk4Audv0H0TUAa
         Z+vx4YhQBQ+Cy9FMnsSpGC358G8RbsHR+6llD6JwMrB8JD5Q3BHF9RENBDPr4FlaorBM
         W7v5HTMi+3EiiVsJ8DT1ISo2Bl7MXosg87HPZfXEbV+jqhkVAqtXmOtkLSCnhF4BPmk8
         L7rwS5vkWh1NAvghr7HXaRR5tr68+w2U2EVrIsKXVvEdxObdcxrtYzTZSsJ+EMpB4/9T
         YCbEnG6n/rqyNZz37g+ROVAYE3sAapY+ZufYpUXA2KmuwsUK9S0pw7RJooE55+NghHcP
         xNVg==
X-Forwarded-Encrypted: i=1; AJvYcCWxfpI3M6Ex50t10rIkqDhlT2Zv/CNCMAq7m5b+xG16GvHwm/7bvBvscphDKS8icdFxjK+aWWiK79vY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv75QIoMM9GVVHdIRcgLUSNP6jrRokaQNdXB9Y7AToZnbXnicl
	fn+zcRaZytniJ7wsgP/esu8ggowFwTeZjdhtOH2CmjNPdjmYJW7GJ59HnZkq+GbCKLM=
X-Gm-Gg: ASbGncsNSXcVnsYjemgmW5YvRLeiooSzE4baiXHDlEipJlJ0DVj7nOqfAO1/F2ly+I0
	ffWZDilDHY5HR/lqfQ0l26w1dMjz1iuU+vIDWUFDz1Vac2+Mp8/CPam8MBn0pwfs/XoD7RzZ2Vm
	BcaYVS0cjncuwo1M39B5aypy1ySLnGxgZdgxqYOfhlDkm0EqcYnvMN+nXxBKcfHMeFyWg4z9H41
	mc01m3GjIeg0ZKQLRuJAAjRKplbLPCYsBkCIRv9OQz3YBzXNgY6wmO6wRGWb1RsAzrd9jfENX9N
	coHFnFwEduoSYFzCqwpsLkB8cfa9mh2P5E6P7IiJsZiptXVTz3JXXe5zj7KNcnQ4cdCNiLmdKlQ
	3A/mjfZPTf1veaSKZM4H68dcFEi9xyxEfAyUZnaj9UQQ=
X-Google-Smtp-Source: AGHT+IHAXgms3trWgiDz3u55yLhtlw8BrtHFyAYkIq3bD8Vv0swwJtxLa54vKVKdMEk/wnjboazR0A==
X-Received: by 2002:a05:600c:529a:b0:46e:37a3:3ec1 with SMTP id 5b1f17b1804b1-46fa9af1797mr169031645e9.24.1760445589676;
        Tue, 14 Oct 2025 05:39:49 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b9easm245813815e9.1.2025.10.14.05.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 05:39:48 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 15:38:27 +0300
Subject: [PATCH v2 2/7] dt-bindings: display: msm: Document the Glymur
 Display Processing Unit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-glymur-display-v2-2-ff935e2f88c5@linaro.org>
References: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
In-Reply-To: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=973; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Kp1VLU4+XFZTkZgR+tSxksnxkxtMD6rynYbzEXze+LI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7kR7zNKJOIizYJYTJbed1F26+5ZN3nJ4Je/hH
 Ps12u9TJkCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO5EewAKCRAbX0TJAJUV
 VhOPD/4mZHHz07jsa0zUshCH99Xrwc63SDUROmR8zffg5Wx2BeQwNJQjXZ59ZokT33sQYBsW3eG
 jHhBaHhD54ZQ7hO2wc1x5AeeMeD2Rdnr8tx42UvPNvTDX4a1TrMs/sNgEmCU/rO3QWONz29A9r9
 Uf7x2QJMXMvjm8bYx26tcYl6Dq/eCgVBy4T2jmvFdB/dqXzE8EV1bHEStTOya7FBEaj8JdqpImL
 3XkYN2FZcRwRh/w5PIy7wWyNS7yaMCTUezh1BMfDhS/F+kVuNvYY1ne8kfWnWrFWl4CcfVZFEy+
 BMbNKHwJ0ogGaBLwQYkEYkbiUZBB0q1CSmQ5k9IOFTes9MP5ufN9261LWTh/EKeG97Og72+k4w9
 9XZTqun4G1auZA8Ji2LHdT5myLBSdDtkqK09j1MUdlHzg91aIlnREuhga2LsXNKoELaYC7rkoOV
 elQAHm7H9EU6F5vogscetdkcfJ7lEu4sjzNWc1XZhR5yf50VSvrMZVnl9aoZKBqHhEc87Z3R4Ru
 BaF4nGknqkDaTYNXu5SimEWFag3fdtaQGNkNpjC0d9LKu3NeRf9FwzzMqSmf8hahWBc965HHdK8
 fM6ULYEEFI6M6sm2Orh/2m971QNF35kEFfuKzB+QmALQu8O+fBOAGc6G4w3tFuI/9FQ6Za7do8O
 +SkapL0bx7k3maw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add DPU for Qualcomm Glymur SoC which has very few changes compared
to SM8750, just enough to make them incompatible.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index 0a46120dd8680371ed031f7773859716f49c3aa1..feb1b8030ae0e381118a9482252a915199e19383 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -14,6 +14,7 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 properties:
   compatible:
     enum:
+      - qcom,glymur-dpu
       - qcom,sa8775p-dpu
       - qcom,sm8650-dpu
       - qcom,sm8750-dpu

-- 
2.48.1


