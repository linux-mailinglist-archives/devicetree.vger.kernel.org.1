Return-Path: <devicetree+bounces-116045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A912C9B1B34
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 00:10:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5EBB62824B1
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 22:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD47E1D8A16;
	Sat, 26 Oct 2024 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u3cOHmCr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F101D7985
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 22:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729980593; cv=none; b=qHjRDnwq/Sv7mcgnkO+e5l1Yx865wFcLQlVapvyA1yfmJcawZsA21Gnjc04sQspJj0PaeU8oha4Bhz7NK1C5EXVT0BHt00Hh1ZgQtts+2zcZceKfPiv7yusJLa0ov7fwxV9t9PwBhG/Ge6LHT/yNMVf1AHNjBqcoMIkdQF7bwkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729980593; c=relaxed/simple;
	bh=IXdYIFvb4CLFwuLtuorpIh7GQ1P5GeeZYXjFvVeVjgY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AuEml6rKLWYwtI3hWWhtDfMmQzihVV2fgIRwtkoWL5ajr/6ZheQNsezarQwtfFztByQmE24BC0yOGZlvi/Cp9HEgF83JwlPfLzFdBnClPrJAGa+4jzRdPH4gqZqsBCdJsQFbeeAlV8QI9zCZVgcvcvdUXWx4UHpVyuhtr4HJJhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u3cOHmCr; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539e63c8678so3220269e87.0
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 15:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729980590; x=1730585390; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SyMy/5nnMlmNFZ7NGqkZ7ovp4h+qtyfXwTStvXfcChQ=;
        b=u3cOHmCr094X6x2BuK3KePTfvH3FeqgdWCYQ+o1zt6qXT5FKecDs2epSFMWLAr7IFz
         NbLzz/Zikz9mb7XkMahoVuMWW47MBidjdBJCyEmqh+4vpvCgIf80bybBiMPBsgjRWAh8
         SK6nHZEc8ArVPmuK5Cz2p0GvPH/NCyJeZLwD29Q424WFbBiekf8u8gAaNrJF3ZGieCZG
         sVndApp7jb+TniPrfsfAcsewrV+MskcuWWnI5TksaLVVtxdcUF87QMCweJf4KeBgz+BY
         OJ3L0MPg/+8w2Xg3Iso2kkklFnI1owRk081IQ7LnzGhgH3KoJGRjpDVhztDF4AxkZfaB
         rxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729980590; x=1730585390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SyMy/5nnMlmNFZ7NGqkZ7ovp4h+qtyfXwTStvXfcChQ=;
        b=EUYqe/vd0Wt3vIFzxdTBYLUvI8xOZoPjpY78cEIIbEtSLqfJQJQLEBDSOXffKX/zMf
         jjHNboUeesEXXfFubeobkwuy4JDqkJjOjFTtMCiriMe78nQ4M6oAAnDqbqbBIXyJ1XU4
         S4UkpE7vNHl1o3dhDiSJOy/4kFMkm5+KujaFy4WvCiPyDeMkJGbzfi6S+wwZXdusATCw
         FHwIGUS4uvmOgiFElYjnxHI2avgWH3Qlht0pm/rW2O6h5SvW0piHo5n3/t8vf/jEYSxM
         Oy5azyQQ52M2KAxAivgD04JXWq2s3ECNPKsOvUu0n8MUDi6eGraL9XE5qqHhQprEXHvx
         UVbw==
X-Forwarded-Encrypted: i=1; AJvYcCUFKcv1DoBmEuKkS0vFasGlKzjjTJyliHpbQpobKRiFNixmn1G/49sT9Xi0x/ccvZb+BxFslwlRzCHl@vger.kernel.org
X-Gm-Message-State: AOJu0YwWxbEXLtEunhIGpWYBeyIA5/akHM0eN7F4c9Eu5b7t62cjsAql
	Ex+0fbXoD1LzUboQLimpriatJlhTj/Y3VBI6NuKLs66MrgTfady82JCgGf+5B60=
X-Google-Smtp-Source: AGHT+IFkeUOSTKMKJcMOa2boFtvFqLQgbx68HWehsIEPmISP2sz/5R6BuzB2QCoHxidHy9X9BtXdrw==
X-Received: by 2002:a05:6512:23a4:b0:539:e214:20e5 with SMTP id 2adb3069b0e04-53b34c3fe07mr1438019e87.59.1729980589649;
        Sat, 26 Oct 2024 15:09:49 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1adf35sm615934e87.130.2024.10.26.15.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 15:09:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 27 Oct 2024 01:09:43 +0300
Subject: [PATCH 1/3] dt-bindings: remoteproc: qcom,sm8350-pas: add SAR2130P
 aDSP compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241027-sar2130p-adsp-v1-1-bd204e39d24e@linaro.org>
References: <20241027-sar2130p-adsp-v1-0-bd204e39d24e@linaro.org>
In-Reply-To: <20241027-sar2130p-adsp-v1-0-bd204e39d24e@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1328;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=IXdYIFvb4CLFwuLtuorpIh7GQ1P5GeeZYXjFvVeVjgY=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnHWio7ItlNO692U/qGQUr2TOoWibzwifTjTbZh
 Kq8bKbD6UOJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZx1oqAAKCRAU23LtvoBl
 uFWgD/wL8laUFiZZc1L4EPhQd+PNcpd+T7WlfxCTOoOiEA4JYln2GTlqb57shpRarhBf559drkU
 PWn2ZSnVMcO/fUQhb+2uWm9paTtNUv7tCLBvfB+fA4ER0anJJ7rXRPG6j3ehVSwiwegMi3JBdHZ
 haqFHnCkdkCiNszj//TanpPwkHoS1NA7H/VzW3iyM+iR68N9BnrScOtKleGVGQx0OGxSrM3edMR
 /Z6TOeSvoapIXtlgTppDLaqphW0ZEsEXsPzhJCfYDZJHhrJTdN/s0gm1TSsSrDzx0Czn+U+uP0b
 U29Kl7hUeARZh+P/rfaycEyXrUBMh2/ctU607ZWxMVwlxhmkgTJttYGE5Q/BreqHfJ1kNgGu4vz
 +pkohknvOBv22Ut0RXEYCRJZw60lzmIOa/xV++gUNr9vGVjZsMzER9GwgXJsfbhYm/b7Kodi+K1
 M9iYiA1LBTN+W5oqszua7WmqD4T+wg35eujsG0idXTLmeHiS2PibsaTjgp0VAN4qoMPJDElF9xk
 S25qd1nosdEsLXhSFddEw2kvQY6q+MCT0CHR8/Atd3s496kFZEBiDOaO12lJMsA33Sxovnj+MLV
 rPAl1KO2fQzCX9PRFafQj9jD1/9DTtDLjMiPI42aTjLVV7cjtSCcI5URY1NWTcf/WlqTO9SZHvr
 mSL1fHpLPswZlFg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for audio DSP on Qualcomm SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml
index 4b9fb74fb9e966b61d51fe578b636f967e4c6af8..fd3423e6051bc8bb0e783479360a7b38e5fa1358 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8350-pas.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sar2130p-adsp-pas
       - qcom,sm8350-adsp-pas
       - qcom,sm8350-cdsp-pas
       - qcom,sm8350-slpi-pas
@@ -61,6 +62,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,sar2130p-adsp-pas
             - qcom,sm8350-adsp-pas
             - qcom,sm8350-cdsp-pas
             - qcom,sm8350-slpi-pas
@@ -101,6 +103,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,sar2130p-adsp-pas
             - qcom,sm8350-adsp-pas
             - qcom,sm8350-slpi-pas
             - qcom,sm8450-adsp-pas

-- 
2.39.5


