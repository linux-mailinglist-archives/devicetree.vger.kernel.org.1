Return-Path: <devicetree+bounces-112570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2DF9A2BF3
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 20:17:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DC4B1C26446
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 18:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1671E0B82;
	Thu, 17 Oct 2024 18:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zerbRrtP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F46C1E0B9E
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 18:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729188950; cv=none; b=KeFS7CVkWs/joJswQQMs/CSF+X/ZmGvUeojH9JdoMGywa3OZnmq+UwLCorxCac9AVquq1Ej+6KtRnnh4tI9C43Z49EbN7cm9/B7B+qOvc9Q6v0lkIJ5xS1fl22PU3ZoruQLekmlvD1DtTTG/D4hfayQB7JXuyIGK4HuIO/Jvpys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729188950; c=relaxed/simple;
	bh=oTUz/VQn7UklM5M50weS61/LwJNX0gzLAsrslEIBg28=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=TktGQrJll1HVRSVUFGKvf1U2YGLb2iKxa2ZLHc7PWKRcO6Ohh88W2n/UsLlSOc4DZpxoruV507ofCRZev8LR6JVSaX2mN17qEXlZTxmjOgbYZ1AftZh3db8itdauHLzmTKUaEMAx5bqfuMAvDreDsEkVSSlfSoOltESz86TjZjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zerbRrtP; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb5be4381dso15342321fa.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729188943; x=1729793743; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=maudRK96GwrbNZg+HV+z+1R0VXUFq2cWemaNzcdsWgY=;
        b=zerbRrtP7pmzySwASEdOTqybe8kGYikoCY7Fnn8IlUswLXAwxYlgPm834OmKWk+MsQ
         YmqK9lKTpOaIpF2ciBEmU6/L8oRbt/xSt26LBbYYSYIDDoDXabCs8sJR+9P6CWIHDew5
         7K18FVZ0I9CriHmM+Xv80Hdaz+Q/AQ5MrGIpS6y2PMRL4sj7w7bbB6sjggCoiqj8V5e3
         EmdvglGXvFk1DHih4zvFWQ6lnHKDNp2cVUKMFK1XDlS2PDcY3UEtipduhCPU5vxrXxH+
         dzlN18b4mWhIBCIHl7UPy/X4EhyzXI1Ddty5RJgDY+5vDMAxeAFOKOUz+oP3Ll7+Yq8R
         N8SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729188943; x=1729793743;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=maudRK96GwrbNZg+HV+z+1R0VXUFq2cWemaNzcdsWgY=;
        b=G4kz9p79JtGK/HRNpxKbIpKCaZEWpE0mDiqWHvApAmpvGSKV22KlTZ55B9PScWL2tF
         GeP4BBcNjjOV2sSE/c4HxB1xBBCj9ClpL6XadZgxwc1QrCB/MAH7963U1g/A2XgAcn0S
         OYs3+9BW3sdyhtcdPOk+UKLIdEI6ZnJKE/cRZWdyzNJ/uzkgzbEnpp2qzsAjHvwY/dR8
         59ar5/8hVSLgM0pbyhI0EXEdOPeuU/ZbJCelDJ5AYeDG3wkGcT/u3mTzULDRVigSoO2S
         MOXal+e1EiFiSBdhLOzS7adPOeDM++ztRNTuPcRx18NbTDERan5qHOkaUUlU5NKgc6gp
         +bGA==
X-Forwarded-Encrypted: i=1; AJvYcCXQ0XWMzaDeOTy/yZNkoovj/hYeht72GhcJZNUKfWh82JmBWhUzOZ3/soMuFVL6NAIpoCsybZfkW2i4@vger.kernel.org
X-Gm-Message-State: AOJu0YwBLfAcC5Xaq9+kFm4CrrMS0V0UcSWju9EBHyR1oDrRUor5d7W6
	zMtsvoG/I953GOgzD5bEMfsyMMqEAD76u+q/l/JuIUcakQJ8vscP6U7pngxp3ZI=
X-Google-Smtp-Source: AGHT+IGdawn5Jaob6iPB4C/w0/7QS92Bbp6N8Yq8tVyNvT29MkavEawl8TpSWQ8D6QE2vRWSpxWWRg==
X-Received: by 2002:a2e:a986:0:b0:2fa:dadf:aad5 with SMTP id 38308e7fff4ca-2fb61ba2de2mr61779961fa.28.1729188943494;
        Thu, 17 Oct 2024 11:15:43 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb6259e026sm6498881fa.133.2024.10.17.11.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 11:15:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 21:15:37 +0300
Subject: [PATCH] dt-bindings: mmc: sdhci-msm: Add SAR2130P compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-sar2130p-mmc-v1-1-c84da16a001e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEhUEWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDA0Nz3eLEIiNDY4MC3dzcZF3zNIskYyMLC8tUY0MloJaCotS0zAqwcdG
 xtbUAkAT2v14AAAA=
X-Change-ID: 20241017-sar2130p-mmc-7f8b32889e31
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1041;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=oTUz/VQn7UklM5M50weS61/LwJNX0gzLAsrslEIBg28=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEVRLpxJmuaX9LvRPCf6aGdEkFFAK8GqzotRHP
 OiQQIO7YGyJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFUSwAKCRAU23LtvoBl
 uNppD/9AqW5dVkYb7y1iJw72O3CbS/xvQi+luYmZAWmfUVRWTQMVs3PdsGaIjuNQIEyrVRqpvOi
 r2SNzkrd8mqgw9KiaiTTJd2kPI7W0e7GJ/xDK33lZfv5wn9OgPK63Nl6OD84NJG5N+MJI4ktjpA
 UEBhRX+FCRIvomcMxMblpueUJrASs/QfryitXKOpkUKwTHwTcj/DNrQU1NNzChPChLdDiKR2dty
 qTr4C5066ClCjgV0RxJSY/OGNhJvUd9Mr5gbTxpTgfOmJiQghnaGPQC2tJUs5W93Hjh/oNnom7H
 MaumtVjWfNRyIZlLfZPKcJot494NPKmgRyqDG8+itPFnKgK6KwAflh+8wt4F80cQzVEYnxRWPSE
 m4QQRpU7wljzH2sxSLngsV3zaE+MaH/c2wXRtEGIiQ2nytyJQ90NitvYwWKv6VRck3TKamd+YAf
 XalQkB0ymOnqbGsOGDHotS0v35oLfZdL52slHD7I1lE2/mxyTeWph//27evJJ47GQp7VnHQ3Uvb
 RYPlZsqBTBuGcqkwWepn0gZf7CTAdnpAgObzIO2Rk8VwBveh3k/WVieN7OZ5ARyWp55p5NmmV53
 Ihf15b0tH/nw72g6ijWcxPH5HEOnGc1FmY6SFA+bH+mlCe67P+fKzJk2NJ0vZCu6d0F5PpfIyAX
 2WqLCgmccZ8Ni4g==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for the SDHCI Controller on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index b32253c60919eb68f3cc0e1a37381f8cef748728..f2215de02e1b1f40ea9b11cb39f1ebc39d78845f 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -44,6 +44,7 @@ properties:
               - qcom,qcm2290-sdhci
               - qcom,qcs404-sdhci
               - qcom,qdu1000-sdhci
+              - qcom,sar2130p-sdhci
               - qcom,sc7180-sdhci
               - qcom,sc7280-sdhci
               - qcom,sc8280xp-sdhci

---
base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
change-id: 20241017-sar2130p-mmc-7f8b32889e31

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


