Return-Path: <devicetree+bounces-35446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B1F83D793
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1AC329A57D
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:14:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7AE2421E;
	Fri, 26 Jan 2024 09:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zXQ8hMcB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95F60249F0
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 09:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706261926; cv=none; b=fzcElbtpTqeNvWZdvz+nHo49T52s9PK+3YC0tZkzKUXO1URjo/wSkPMACGhKK8ayaTmDW8OnYFicExbc77dn2qQ9ZxEbxhezN9531PHSJd2y63IOImSnNlpHsPVMiBvXdiYGz1LNAu3+Nu15frUHRHfJZqpBJuBKp9F3MqXLaBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706261926; c=relaxed/simple;
	bh=g7e+yhke6CuQaTb0vwojMU5Dw6mWLLDGwVST9ctV3GA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LKAuXZ5gVpOy2HcoJSsSxvNTsf0GdhsaQ6vKEnKa2BQnZjProsuKEiza7S/i1oDIJxnaRJMekvu8TeO4HyDq6KyMpsOw7WA07/QrfcU6+Qt1ZccLVRWfz6qFXHKHXAiGzCq1Rw811IqGgxvEBbNlFzji0gLOpqJXGpmDLpmqaZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zXQ8hMcB; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a26f73732c5so15202966b.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 01:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706261923; x=1706866723; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZXraUwcbwioUou5Z7d+tyQMhsd+xF79CThUEt2wnBkY=;
        b=zXQ8hMcBVPicv4NIKgqwp9F429S9X7yY9N/hePglfeMDTolBQj6TZ5QqO12oBPwFHA
         XmG6+xMKBYssjNkXbWv6qcHvdMbG3TNEpWAU2/qB/xgYBvSMPJJA3kzlstogPBFEg+EI
         KXmeeqKG1JwmR50XalF3BxNao5agZSewRjcu89HU3ng6RzDfQpiuC0DPH4C5k0I22ZhH
         4lZpWlMeOcaTFAzBu4CNO/qyGsvpzVKo+JqZOFV+q4TimSNmgIZfEyGRBH6OP+52IP3v
         QwDKHbPCAtKps6oPBfDgM0h76tcgNULHvRbb4DTFBjEvzvmN1zLVeno364hryeQeATk5
         2WjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706261923; x=1706866723;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZXraUwcbwioUou5Z7d+tyQMhsd+xF79CThUEt2wnBkY=;
        b=LUCLRoi4nD/9yNyp3L1Cm9TW13tHRWQbryQ5mOUaZeE42AdmH/Zys9BS7WkgrgZ1YT
         56RuuYv33b9buXKDqG9849H4FTJdOM23Yxqjl7dPS1XQqzfPKkoz9dhuJiKSitBxKJ5X
         rdEJhnLHWqJq4qRf3TkoD7+z9oFchilGvW7aZ6vEQ+FxS+VlNYye4vE9e+WlVSK40+RM
         rvMm1rJuFhyeW0lybcwRvqDzslGcCzYsUbWXRSPzy3xKBc3/EqnzgYN3B9rmp7fWi0uN
         S8beB1PgAjn7ogIFs5eR50xtEjAoyGCrNB9K8DiS8SgIr0q2/7aVJ8XdSaLoiKFdojRu
         IVWQ==
X-Gm-Message-State: AOJu0YyIo6+ms6+27KwyBwx43qWN0GCwS7dwaiPsZAdsQkG/CtyS4vsM
	4e1fp/ii0WkgIYj/YMfoWSeo6XNl6v3gulHJ/zC/fvfv5kvpheKOSTx11/7H9m1X7zD5KVOr8+w
	J
X-Google-Smtp-Source: AGHT+IGM6Fa9E4dEgeCNjPOPUp4YPodvVHY50fqSg2vyggX8cPm967vui1fUDTGLDuFtb1sWkDGQLQ==
X-Received: by 2002:a17:907:20ca:b0:a31:c233:6aa6 with SMTP id qq10-20020a17090720ca00b00a31c2336aa6mr501716ejb.30.1706261922793;
        Fri, 26 Jan 2024 01:38:42 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id se27-20020a170906ce5b00b00a349318ea10sm426768ejb.199.2024.01.26.01.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 01:38:42 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/7] arm64: dts: qcom: describe all PCIe MSI interrupts
Date: Fri, 26 Jan 2024 10:38:29 +0100
Message-Id: <20240126-b4-dt-bindings-pci-qcom-split-dts-v2-0-0bb067f73adb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJV9s2UC/x2NwQqDMBAFf0X23AWbLkL7K6WHmGzsA41pVkpB/
 PcGj8PAzE6mFWr06Haq+oVhzQ3cpaPw9nlSRmxMrnfSX93Ao3DceESOyJNxCeBPWBe2MmNryti
 npHcVuXlRap1SNeF3Pp6v4/gDiBAahnMAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1460;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=g7e+yhke6CuQaTb0vwojMU5Dw6mWLLDGwVST9ctV3GA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBls32au36i1qbWXKFBv2iHJ+vZwRZVK57SgLyPx
 +LjjFc7IoCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZbN9mgAKCRDBN2bmhouD
 146YD/4vmktxP9+sRiBOub6PaQUqWRT6y5NrSqqkuAopKB/TPX2iMIAlr4SDf3LX6vQBMpPRpgR
 XInRrtpBUbG9wDuHjMrDjffOAhNxc2ho38cgaO4ijtcl5VhnfEs/w9F1vLPJRfWJtiPEqQHRJ16
 RA5+jKWef+m0UqymoKQ2ZxGylRCOyhm2aTJoyCrEs/9l24HvL1JxZlK8zPicCifdx0E7Lii/opV
 kcSqdecxoP5MJ6O1DikybXB/Ku2lYIVw3LfIcTL/2m6n3mBsRJvbWIjQ0uaFB8js2dn/pFGL53b
 0QyVKewGxQoywIIx2SJpVkME2oVlkCyTsZ9gQxtWCTWn7LFTxL28NR4UZI6FT6buam6jShusAys
 G23npeMTNzLevGGU/x46MNtq4+cPO0RGX/adTRCoiT1P40lF4iCcmTApmixvahFdY4MrlKWoUuJ
 YqjXdGM0AvIzd2TK2GMZ0V3mIju3MI2vcpZ//rlM61tnRcRZApdp29fmOGeEfXeEy7qNklNtrjX
 JjxEwnou4dennYH8NHMCH7E9tM2GWK90XOfXZxZqd3BNjaVr0swQXnPLrqO6QpuCGSGb75jgI8j
 je1cInPonJqQusQeMbMlApAqRJ2H2Yf3CK/2z+JPYKL5q9Pg3joPI5twG28qd4hWThADsRZoSnm
 WH86KHJxK++3CHA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Changes in v2:
1. Add tags.
2. Split interrupt-names: one entry per line.
3. New patch #7.

Bindings now expect 8 interrupts in PCIe nodes:
https://lore.kernel.org/r/20240126-dt-bindings-pci-qcom-split-v3-0-f23cda4d74c0@linaro.org

Best regards,
Krzysztof

---
Krzysztof Kozlowski (7):
      arm64: dts: qcom: sm8150: describe all PCI MSI interrupts
      arm64: dts: qcom: sm8250: describe all PCI MSI interrupts
      arm64: dts: qcom: sm8350: describe all PCI MSI interrupts
      arm64: dts: qcom: sm8450: describe all PCI MSI interrupts
      arm64: dts: qcom: sm8550: describe all PCI MSI interrupts
      arm64: dts: qcom: sm8650: describe all PCI MSI interrupts
      arm64: dts: qcom: split PCIe interrupt-names entries per lines

 arch/arm64/boot/dts/qcom/sm8150.dtsi | 36 ++++++++++++++++++++++++----
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 46 +++++++++++++++++++++++++++++++-----
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 28 ++++++++++++++++++----
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 36 ++++++++++++++++++++++++----
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 38 ++++++++++++++++++++++++-----
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 36 ++++++++++++++++++++++++----
 6 files changed, 192 insertions(+), 28 deletions(-)
---
base-commit: 2c055cf9571d45d1438a6a3aadccb300edac1bce
change-id: 20240126-b4-dt-bindings-pci-qcom-split-dts-affe9e443a4e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


