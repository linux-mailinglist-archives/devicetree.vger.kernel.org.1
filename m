Return-Path: <devicetree+bounces-146265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F28A33F48
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 13:37:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86A783AA297
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 12:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29E3C221541;
	Thu, 13 Feb 2025 12:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mhozXbqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490B720C48E
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 12:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739450237; cv=none; b=mtfP90wRIKaw1cJmj3TgmIkjr6WDTw/A3YfjOvccz6DC3iXvDyKBRVq8lve+SjAhWXV7uZmDY+MZ81RJp3BrKh60BnTf3f/Alh9xSJo8tsgad9MKkR1YqKn2jLXEhbXciO6/oDTfoHP3S8fPT4WDIm3ASi0Pbvw4MLTxRNgLMVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739450237; c=relaxed/simple;
	bh=fW7sAMZGzRYFL3koODOtSKxG2i5kLbxepRPq763TAis=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=jbZrt0d1z0qpm58tqqtN4njYbrbc0ZsKW3d7YEJFX58PftMWFiCqvU3KKNmQw8VAO7JJ/DWqSQ6hOF0bx94B92JvyEXS+AFnGzmBAfs+rZyStBmLZ7NBA7x53TxVxzX55OigjH3sClWk+fdHHr7x/1J0skca5Axw/+6leDsOx7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mhozXbqv; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-436ce2ab251so5737395e9.1
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 04:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739450233; x=1740055033; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7TJDPbYKYTh8WSIk+sYTlBV8pwulu5n/wnEdfyFCUrI=;
        b=mhozXbqvvMzdCLQqxFj+58mnr1s/1m5HGlN4V7bbQK/nRrf8H2WM7FfaDunJpUsWon
         z9rTuo+NlacAOg/ilr1m3L+KK4Loc7HopJms4QABqx1jNT29Li1bQ3XnvbuN2jVKvdQ+
         16TXEvCufIDNmLy4qiGKVbgb4txhi5+vIpYNpcNwxvtrR+fDQAsnANbJCYmcjXhTF8vG
         T2rah8ZAtfq2ftzJMxYQghOlIH0arL4YOMgHDvSAK40xY2wTA/o+miqmlyBYeOOLYj6b
         9/KUbEwt+chalqSqe1jqd8F7zBq0t8XA1GwR/UrbzQ/6b66qhvO/l+pKDTaQgRVmSdME
         wQvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739450233; x=1740055033;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7TJDPbYKYTh8WSIk+sYTlBV8pwulu5n/wnEdfyFCUrI=;
        b=kXKuB9K6u5kpQKJ3Qyhbwf2yue7/7KskGFdO76sewlpJLgLG2CUyJUo1iQjIjJM3xN
         +v9P7azt1sx0PKL7Gl+D+3ZvRq2yrX9r4JGNv8y7p5JjJuu5VikaH3ocb/28vSDBNOIM
         qZIvCOYIqbpza7UH+X27D647k/nBshaKru09+CPz3L28fUyXlbGbSVdabLHhf3rj3M/8
         cC2w0InJeSIO6DPs8eHdDZ+kEKWgeQZDULqYBGSNdghtTmf9fjKDKGYd8vpCms8HHwS+
         BjEjjGUG9PVzbW64QgShNV4ozPAyLxGy2+1g5WgRxc5ZV0yMaIubPSeNCocr/Ze2OKMt
         YLUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxUvHJBqQ2Y7yILXJ7PpcJ8bqeUWbWaGJsUzBbUDwx8PiXe4lh/iMeUCjM0u56vzVGaGNF+3bPChw0@vger.kernel.org
X-Gm-Message-State: AOJu0YyevJX38MLNvVBZY6HgmkZ9/rYbR5Rfq+zwteEhq6DEGnynhaOn
	F7DvFVdd6KRCduTr7rd/Z7UZ/TNMAnoTSrErI0MA1IxH9H/hMvJX5gP//d1ICsc=
X-Gm-Gg: ASbGnctJ1eSewyDJL16xeor6Jee41/GCp/Qns6UqsoICvNDWM7YXiOZdQF9jexzXUmw
	kviUBMPJeMYR8fvLQncowpe8G3Dlyi4n3ch0RTgKsIPY4/ns9gLuaMmThKwZSBIqRlP9E5s+773
	S8y4NqB6ibxfF57quKKGpQ5/Syru/OiHlXTbTnOvbO5Ym8DIEXFFLzc8rEMXI2wpikC6/I2HYr6
	HxWeAZuGPunw6D0hQogpIxzQmiiVD8Sqe6CFpb0lJUf0wt9UOl9K6qyeS+HexNaGqZLSzoESPNV
	UOQ04Vj7PVEzJoo=
X-Google-Smtp-Source: AGHT+IHCnSIDPuuaeLeVFJyMSspPK+FKiAXgRR0sKtkEv2sUasQGTaTDJbYx14VE6LnD8+r1DExYHA==
X-Received: by 2002:a05:600c:1603:b0:439:6003:8ac1 with SMTP id 5b1f17b1804b1-43960038b11mr34177115e9.28.1739450233560;
        Thu, 13 Feb 2025 04:37:13 -0800 (PST)
Received: from [127.0.1.1] ([86.123.96.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1aa741sm47161495e9.31.2025.02.13.04.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 04:37:12 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 13 Feb 2025 14:37:05 +0200
Subject: [PATCH] dt-bindings: crypto: qcom-qce: Document the X1E80100
 crypto engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHDnrWcC/x3MQQqDMBBA0avIrB2YSQmmvUpxYcwkzqKxTaQI4
 t0Nbj68zT+gSlGp8OoOKPLXqmtu4L6DeZlyEtTQDIaMJcMPDBt6zUFzqvib10+L4M7iiImQ3HO
 YODrrvYX2+BaJut//93ieFwxE/ChvAAAA
X-Change-ID: 20250213-dt-bindings-qcom-qce-x1e80100-0897a1f85bb5
To: Thara Gopinath <thara.gopinath@gmail.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=976; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=fW7sAMZGzRYFL3koODOtSKxG2i5kLbxepRPq763TAis=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnredzuhOx0PfCHwYpuKRbzHl5QJnhG8uSM+zpk
 K3xJEniYsWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ63ncwAKCRAbX0TJAJUV
 VpNYEADGwFG5I95EljWZkGby8HB2fYaHTw0zMFf0IZ7940Kn+aCEECtUQY4sOe15R6q5ez+TmaD
 b9LpSCttPVAnoK+e4WDvZkYyZRGJdBPyxZTff9raXGpDR2/LptFnyAw6xbJjKPB8clDX5rQzSBr
 w+bGpGaPGk5zwkkIxwUWqPfMqXibCLadauy9r7dCxylQf/lasQIN9wDaS/dPzGjkSfi6It28Qms
 h+rk24sxs6iUigfti3scl0YCV26SPMAu3dJbDH1JW6OLJTDE7lS8R/mB4hk4HCZp/xdrP/jXxjB
 d1JJ+4n0rffwqNFf/AxoFBdqUWC1mRoajBtrZWgJPs0MP9rrVrwOCNC0510j78AFPoQG3iByleW
 gG2ld8ITyJcicpBdGjvHPvEYO5QcYJx0xVlexhPSBTJptWTo3Lf97bmC8FHT699R47A/buvRfr/
 aSY2xu8/bWToRhUCc9UGBTi5CsGKMFhHvoHe3sJ7F3d33eirQPTJomrAeuU044bKpSbXeYCPE+/
 fCmB7Uu7xOhXHyu0iJJqupevlfMlb/l9m4LekvtpO5QaXj7LbCGLdbhueiBP1TcLLt2pe/yD2R2
 N82iPVR7+ycDuXnwyQRje8heY1VtxmN61+FqoFgCVm8nEq2XJbZSsYSmU2HdbXI51/Equ6ArtHJ
 FFp49f6WbXc5fmg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Document the crypto engine on the X1E80100 Platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 3ed56d9d378e38a7ed3f5cd606c4dc20955194f0..3f35122f7873c2f822772e091cf61814bddfb892 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -55,6 +55,7 @@ properties:
               - qcom,sm8550-qce
               - qcom,sm8650-qce
               - qcom,sm8750-qce
+              - qcom,x1e80100-qce
           - const: qcom,sm8150-qce
           - const: qcom,qce
 

---
base-commit: 7b7a883c7f4de1ee5040bd1c32aabaafde54d209
change-id: 20250213-dt-bindings-qcom-qce-x1e80100-0897a1f85bb5

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


