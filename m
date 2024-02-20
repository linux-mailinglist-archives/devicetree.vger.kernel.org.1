Return-Path: <devicetree+bounces-43941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AC385BE77
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 15:16:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A3E7283270
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 14:16:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FA286BFA6;
	Tue, 20 Feb 2024 14:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hj2iu2OI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99CC86A8D6
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708438575; cv=none; b=hbu/zNWffzaHYwhieAduWNxK3qwTfnDY6DzdusjXfnBOFhlh0oI/DPv1kwPypUV5SjpD1xG4tLGb543VWkmb/rNLl2pIkp/5jca4ReMp6x0YUmHRaNvYBNbkO6fBNB7duQQv4h7+KlSHPRpVrRTy8n7fHuQKJHMRHcr1mpvfAAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708438575; c=relaxed/simple;
	bh=XYlYR8OxpeVvmXC1saF7WHBLyL9BLQ+hAMkfLosneSU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D2enBQ59LRe0dDC7aOy2gI2Iwk4l54gw2k9ZRIM3NJdA/J3aKomuK1tkP13bi1qM7zfEPJztxereh1N0pI0CmguuA1eAdxdHkWrFAjooLeFLkOg5vOHgqXuu5asEcZUEUyGas8MKeLkW3cbOWPvl4UvOfZFOQOmeLlZkmcrTDnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hj2iu2OI; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a3f1bf03722so30888366b.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 06:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708438572; x=1709043372; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RbQj3mp7H4OoQYFV5k9dEyhOUiy+Klvn+UhkFhJKrBs=;
        b=Hj2iu2OIduSG+Ol1eB85Wz/LdLR16YTWByWt+PNwSF3ObWaKJ8U2saQBE+Uqq6rT5S
         8mnaGWBUn87fRbD8+hdpY7gI78NStrjG0cKfJSDg4UmmroLlsoRZpx14MHa0t1Kpwgax
         RQIUznVYwFZG5XUIkJVoSbbQk/x61IF6d/Ic+IAKuXPSAF51MAoRUn8ApCxvWn6ApS8v
         tvxCjBMvn8Z8IvnOpM2Trn6S9PW8nUR2rO7LsPv6LQRHMvTAxUarKy39mkoPpBmV7s/S
         SA14tHKfbA9pdEbvMgJn8/EUpWDtSe2CeYqZLAjEb5bB6IxLJdwSdvxNe2kBouBW+w0h
         PwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708438572; x=1709043372;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RbQj3mp7H4OoQYFV5k9dEyhOUiy+Klvn+UhkFhJKrBs=;
        b=cYCSX4icoq+9YK0MKUeXfTyMjcXZwK+A0eoYk4NR+XhcuxB0Db2YCPrCPa5mV4XnjG
         vXS97xFRpoHnUkZeBtYkGmMQ8YC2zUqg7CI0KrIbUy++yg0A50PjsKC2+Dsuc83RT2/i
         C0kf5GCb5TP1/cIeMxxQ9UHsYMKDgawKmztFbl3JOkYjXTy/j0mpMQluqeZHEp42wFv6
         fpQ0NEmISPIh3NOOfvyz0VQ/RatcQErFB0I2CPCfCtJ32SSolbr2GXMyBv6JgTyou56+
         j+sonJSGghf9z4DV2wpDkBYn+5/GLqWFWK76YgzzMqUwc1FFgRz2xGniurbViqQukTE7
         CohQ==
X-Forwarded-Encrypted: i=1; AJvYcCVV8htq5hLSL5d8/bbWePsnlE/7Bh3Oh2/w67FEh5mpqR00sdqBB/XMSZTJIQUxJJ836iZfYPlviggSz4xI5qezET5NiGZ6+3yBBQ==
X-Gm-Message-State: AOJu0YxP+6r7Y8V3g++aTvPrBrYxT57vWJ7hUsjR2NIBOfDLxc1CgFH3
	A7iphBg6eIIybC4dqtuG2dvr5bet0JSI+jAwb30g9XTh0iXZINNldGq9cdYMJBs=
X-Google-Smtp-Source: AGHT+IHeaYqromQKXV63x2GOq8Xdo0svk0QhphX45LfqQuOwsD+jkKSct2kq2scOmWt8xpsXazi0/A==
X-Received: by 2002:a17:906:c786:b0:a3e:58df:fb08 with SMTP id cw6-20020a170906c78600b00a3e58dffb08mr4446053ejb.44.1708438571830;
        Tue, 20 Feb 2024 06:16:11 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id s8-20020a170906500800b00a3de4c7bf00sm3998534ejj.79.2024.02.20.06.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 06:16:11 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 20 Feb 2024 16:15:56 +0200
Subject: [PATCH v4 1/4] dt-bindings: display/msm: Document the DPU for
 X1E80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240220-x1e80100-display-v4-1-971afd9de861@linaro.org>
References: <20240220-x1e80100-display-v4-0-971afd9de861@linaro.org>
In-Reply-To: <20240220-x1e80100-display-v4-0-971afd9de861@linaro.org>
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
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=915; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=XYlYR8OxpeVvmXC1saF7WHBLyL9BLQ+hAMkfLosneSU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1LQk1ZxmTIC+nLc576zOYOqSTbjmHVkcJucIE
 Np/wdtyjx6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdS0JAAKCRAbX0TJAJUV
 VqITD/93oKXwgnE9me64LzCiFkoiYSArvAyT3TMEmLe8Z6uIdjglhQRBvW2mFA+o7YqYNZpmrvd
 MwIPbFFjM7h7Guj9l3SWYfH8oSrGSXhn2a057889KRm5dzXXpwkRpQoNGBINBCe4OXdwjsc7dfn
 buPYkH4ozhc4d6Gv7rm8XKCh7r/JlgK7Ulaako1hytqxER4nN2wi4HcLgm7MikUNDtBY7X05QtY
 bn4royGDRB0VopB0R+etVyig85SY6SxuAiFLQ36tNQepdsEDBhFJOFBzEYi6U1fouwsw1Kih3+O
 e9q90M1PvF1lILaIdRR0Ph6wDr2dNRpY2k9XnKW9XOikimp88wKkshCKc7Hks2kj3nMzCDoyZGs
 U7ib17+L5uB1cvplJ4Jpb/a9XDT2d9nbvLm3/ZVar2d8g8gwhaeUAbVgcT4/UzGfxkwvy9FFIKD
 FgHIuAvvHfyXKiMlsDxK8yz7KQFKE27fYbXCeqZP/Fo7LYh5711mjhfa8/oA9bfjVGWsNlHWc2Y
 zvs9mtTHDc36uWHwGcfmmyRnM/61a40hFfrkrQ+5Q+EOlovSrZnxl1xr5L4zz2zzhCXIyY3jGre
 Hamf0/55fGdQnveT6bmxRnfNzYe6s8mnjuydNWbePer7futL+ssjc/MzLVpg3AThEgi8ZKdg0xM
 cm6TYl7lFEk+i8Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Document the DPU for Qualcomm X1E80100 platform in the SM8650 schema, as
they are similar.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


