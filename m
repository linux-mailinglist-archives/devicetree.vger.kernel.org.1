Return-Path: <devicetree+bounces-112793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B469A3883
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 10:28:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C103285104
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3519E18E340;
	Fri, 18 Oct 2024 08:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yctV2ZN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CE418E034
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 08:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729240134; cv=none; b=a/xBb0o6/uXRJrqQ/io4TPQtnofTa7oKK1JcedV2lb5MsnvdlQQf0Rysd7V8pO2EajkSIKOMAkzNM/17w6+s2mz6tX9OhjlEyMU6fPEKoxfZk37l0fNcKCKjb9tlaMThAhp5ryn9jm9EkgF62Ni3Y1ub0Yw7LfwO5Cpz6atduiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729240134; c=relaxed/simple;
	bh=j+TH8GM13/emZBXAOP0i3scQHy8SxzAUqfLRV+oSHcI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=pq80JlSIOXWHD9vnzgT6zj1njmfLufzbohv/mz/vB89I6LgWW+VNTJkIlQLnNMTyJ2nWXEg72KvmVci3DG5Ni91i0DeGywRKaZEhaJHT+emI8O7Uz87LGaWg2iUIAipV04HjUSs7w0DvZ/+VHsCYrzdFzMqs0+sR6dlSZrY6s8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yctV2ZN2; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539e4b7409fso1896210e87.0
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 01:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729240130; x=1729844930; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sKF+jleI75E+X2tUfkhAcxnT3c/s4CGVuX9HKqls3Xg=;
        b=yctV2ZN2/8ZJ02KUs3mCmE1Cmst47t1/jWrUZCzopZtyrgFdKzAy3+kJC+4IUoCz1g
         Qtq955ABOzKFTI+lNbYnf7ZXG7bz1a/hY9Gerkm+jVSSPPWSfwhyoCZrRmZ9IaTApioD
         TLz/rRXoxS4XzU/0GGIsJr0uiEdSf14X7IhLOqhRHO3H0K1yQpwMx+AcQjo1HkfMZ+0k
         rwdRatC40yzNT7pT+MlMJSw0OJFbVBPgyvbEwKn+ReR0CtsPcBYl4KM2bsbAngf4Rvte
         1luSIcm2H40t/iNBbhN/dKgRjDc++DvMYPJwOjYzOWeiLhJ69ViPHjpK+F7ynIqg8hri
         Um6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729240130; x=1729844930;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sKF+jleI75E+X2tUfkhAcxnT3c/s4CGVuX9HKqls3Xg=;
        b=LihkV5KfBUTpC+C81+HTdiUmnLfeHXEw49ksNKiOG0TsXMubnCS9a6Hiz1SgMQ3dXQ
         XQdDlWsQXbYYkMPvPu4gj4b4tZ2wqtXdf9Pag0R5tmipx/l6iSM6ckoLcrvyt7SZiQNi
         jiiiNpFeWE+ZsA5fGowLwISvbrTOABGwwdlrDW4F+hJijB8cUosShCFXmRLA81ISHVy6
         6NLzw2pPZlmlZq45pZzDqkMYn3eQPoaRxK0nZjgUpuiDNhxM/llZpjwA125nKoUSPZOa
         tbiOWxBrLiQiSa9j/lP3kjqOqa/1na3hRPblQ3reZEMfnSZuD2f2hUkwuD2x3zBvwp9C
         ufOg==
X-Forwarded-Encrypted: i=1; AJvYcCW9G17UCamQ1nRTRQB0XmX6RW2SqNqDaAdSUSSTPPkAcw7sobSIswbxfGWhMfvS0XOEwD6qPzCPRZMo@vger.kernel.org
X-Gm-Message-State: AOJu0YwbviwNqADfPb8o4xAYEYdXPtrcmoIkVvHWDFkh8Y0g+llHww+H
	UfAb+zQY3wOGDuUEH/bbEy6+NPMvMZx302kK2FuHFg+bITRDxgksf2NAJOSM4EJ7lr0PlHGQLhW
	NDJI=
X-Google-Smtp-Source: AGHT+IFTa9vYRPpFsLvGy2NSjrm0MspizbV2eReEAe6aSyo4MKxqCk4OAAYRyaY+lwUj3CznFrc0Iw==
X-Received: by 2002:a05:6512:3510:b0:539:e4ad:8bab with SMTP id 2adb3069b0e04-53a1585f776mr352823e87.16.1729240130206;
        Fri, 18 Oct 2024 01:28:50 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a151f0e4bsm155492e87.172.2024.10.18.01.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 01:28:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 18 Oct 2024 11:28:46 +0300
Subject: [PATCH v2] dt-bindings: iommu: arm,smmu: Add Qualcomm SAR2130P
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-sar2130p-iommu-v2-1-64c361fceac8@linaro.org>
X-B4-Tracking: v=1; b=H4sIAD0cEmcC/3XMQQ7CIBCF4as0sxbD0CKpK+9huiAU2kksNIM2m
 oa7i927/F/yvh2yZ/IZrs0O7DfKlGINdWrAzTZOXtBYG5RUHUo0IltW2MpVUFqWl+icN5dWagw
 SoZ5W9oHeB3gfas+Un4k/h7/hb/1LbShQqH40OvQYXNC3B0XL6Zx4gqGU8gWbsu4frQAAAA==
X-Change-ID: 20241017-sar2130p-iommu-4ce763051f01
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1936;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=j+TH8GM13/emZBXAOP0i3scQHy8SxzAUqfLRV+oSHcI=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEhxB64aCjMH5LeuF34EFzkLzlLXgPTqw8aGj7
 DTkpb9zrS2JAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxIcQQAKCRAU23LtvoBl
 uE8MD/9dkZrTS1Z8fwlisS3TxIyGo7SgJtblxad+3/QPaFAXNIKIEjmGrnqYtH2RruOaclGvcDf
 UuMUoFgiGJybqLTYU050EnkgX/wGHRfPYexD+BWqNqR8hQYFh3QtZc8uK7SwoIhrlZqeUYpdgk2
 qbqbzuSdEEf36wMNw9vVlgvyHlvUgkhvSXANk0svwkh3WoZDiIcOyT0HxMplhKI2AOukiTANff/
 zbpRP6CjZjjnbYurukamQj3FKaK7GP/FdnOxbhKjOTdlbCMuZ7qkijM7Mh7pyCmTDKEeQ6kMxs3
 PE9oek85D5Hjgrijr+VLELCKlJNFTIfdMAsN5py+5m0TY8qyYtlZc6ugeTlWSEu3cUuNHZ5D5EH
 wj69h+Q3K3YeQb+sW0uOfJ+osRVM+c4O6Ak6zojSgUWGn3XxGnI8SqyEFyCDymYc2N72oxc8Ttr
 3uYFAvkt+Qas7HhCrdZvMPe+fULKN4+xzdFYVBARe1jsXpM6KbTw6SVtFYeshUUiTZY2hyYojLN
 ES/LrsJojN1YHb+dT5nDzKZDxhiyai7MkgLSVwwWZejr1AcakgmTi5oNxblCt8B/HVklr7i18Sk
 lWehleZCBoT7LShC8Urfg8Egsqw8rQQfnEJ1HZG3oXxmKViICrMV/WErO78m9dil4jzUZa2BaAX
 luDzfZOCdItb2pQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for ARM-500 SMMU controller on Qualcomm SAR2130P
platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Added Qualcomm to the commit message as the bindings are not
  Qualcomm-specific (Krzysztof)
- Constraint SMMU clocks on the corresponding platform (Krzysztof)
- Link to v1: https://lore.kernel.org/r/20241017-sar2130p-iommu-v1-1-29d75f91fcf5@linaro.org
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 92d350b8e01a83f30ba81ba4f35107e16a2d2378..291ef262b246c83ec153b3d4276b1d6630d88f85 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -40,6 +40,7 @@ properties:
               - qcom,qdu1000-smmu-500
               - qcom,sa8255p-smmu-500
               - qcom,sa8775p-smmu-500
+              - qcom,sar2130p-smmu-500
               - qcom,sc7180-smmu-500
               - qcom,sc7280-smmu-500
               - qcom,sc8180x-smmu-500
@@ -88,6 +89,7 @@ properties:
               - qcom,qcm2290-smmu-500
               - qcom,sa8255p-smmu-500
               - qcom,sa8775p-smmu-500
+              - qcom,sar2130p-smmu-500
               - qcom,sc7280-smmu-500
               - qcom,sc8180x-smmu-500
               - qcom,sc8280xp-smmu-500
@@ -524,6 +526,7 @@ allOf:
         compatible:
           items:
             - enum:
+                - qcom,sar2130p-smmu-500
                 - qcom,sm8550-smmu-500
                 - qcom,sm8650-smmu-500
                 - qcom,x1e80100-smmu-500

---
base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
change-id: 20241017-sar2130p-iommu-4ce763051f01

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


