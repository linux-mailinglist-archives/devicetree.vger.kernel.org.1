Return-Path: <devicetree+bounces-164238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 159E4A7F9C1
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:37:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 879D13BE328
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44107265CB5;
	Tue,  8 Apr 2025 09:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NdSqZPdR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFD1261572
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104754; cv=none; b=NbQXXKvbYLxGFX1E9EHOgVAjLfYvWkalg2p5pMRDAri2P8o6NnDmmFyuTd/20AWhZYA3X7P8KcXatauN0KPrbLTyjVWhUW0/cGyrLxzOCvSoElx5Tk27PQr6HHoMmPOxENcrR8ScgM2VyvTHguBZuzwQY1fd7gLiIbZiTHoqD7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104754; c=relaxed/simple;
	bh=nJhtU/p+2ibFPm6eaeU2RXeqcRvO83wil1AuYBv0Kj0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=msbm4i0CpbwinpAciFmzUHyhHUKN/7/M2tNnsi/+WUHZ78gQiy3TlVoCNVVTJen6XLj7meYvT9oJ79fCc0K1+gt4mZ7AnZO9/qq7QsShMq6Ss2c060gJ4rtTGXJsSw8MTE9OD8TihAkrv7jUB8E/WdJXMGMVUgvVOMgxx/wu+Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NdSqZPdR; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43d64e6c83eso3468715e9.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104749; x=1744709549; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=geg1UNNsJZdELs71YAT3icaSzTrvBq+oyumhCKCeUhI=;
        b=NdSqZPdRn2rsaQzSIdJIWDXqhUCR3HV8H5aDFygc9c/MiP6KLvIMr1b925rDPHTvUp
         joC3L77dIxb1q82I84iHM6dhkHZ4L47KDPZRPjfmWowDrV3Wb7pevn6wIzgbcj17eI8e
         KMS8/m0bxjhC0rH62ktd4Mp2+s330su6jcwnoEGOGB89///5brcc5cqWfAjkJPHOOKtg
         BOMDmtQBPInNvYUBCxrys3c4uVhiNTSpAU3Xbw6cDbYQvmlwW5fuXyG9fvb1sgV9H3If
         2bqXBLWLAI4snGuC+szOCSqMZwuZwrgGPmAf3T2e0nSa/PJ29dQ87e7VmPn5qCuualp5
         gR8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104749; x=1744709549;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=geg1UNNsJZdELs71YAT3icaSzTrvBq+oyumhCKCeUhI=;
        b=hQ0Ww2VwI8s6PG7FvdL766y/woSoYoYtCz8h/zK77yooibeoJ/iB1kl2AGJY1LSVjR
         lnmw9FRfM2pPA0R8WGbjnMpWZpMEE9ziTQ1uJD7BOaOOopOVWZozhO26V2BbG2X9azq2
         BBM8IU/uOxijaG2KtTiQoON3YPI92vHJlclQxhs7Pd1Uizg7Nv0ZYEtjml97PKGW6N81
         BMTvq6ypWaVxwrGcYAsUcjrD0JB9o91JO3vNZqSKjboFrRw4AT667VECP5Q9U6yiMWm4
         mSD2g2vzu5Kus+IQl6+QsDHtK2EERWZgUSxnClRizB1qcb8BN6tzKvnVcWiIRGz5UTlV
         MWOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMZb+f0FQtQh32cijLTiIo3oBiuvP4xN230hCheX1viXjFklhSdVIJHEYMLTzq+K98P1rY4yGJgjs4@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv/t9ihroPewlEQgKbbZrZjV2ttqnr5mb6IB7C+toiJpJbNat8
	U/ILVRlvtS1p1i/rOX/Jdv+DV1Lf0HeEon2MGVNsRa4Vl5E4tAQoDa1bBBcWJGM=
X-Gm-Gg: ASbGnctzn34gnnfOIS1FKswnwjnUptMppD2HRGBUdxkGNeYK9Xv2VadBme2m3lLWGkk
	rXH20cxbSHMArPFP1TEAuB5SCfHMYgoY/tBx6QWYYpO5F2gl1vvuL50MxF48dawl1qF/9G/i4/f
	FhVlwox8OKz0PWVu151tI9G0UrBeg8iZiMaABq+2li8+D3cHiXKZFaEfQ/YMbb/NT5DvD2RMOWE
	UDkO3rK03v9w4rApXCsB+ODYP+KB7EBYQFH15U04yVu2FfH7YguMDSpS4meeEApwdMUwGzGXfP/
	W7aLtxk2qRz7bnVM2EC23+17KdqOKKa1T/DfpqIu5e5keVxWylBx+eC+g9Xp7ls=
X-Google-Smtp-Source: AGHT+IGTYGmUMNbxn+aRLmSjuIMeJmi+FJspkI6rVYXBi9pbLL/Nl48clIeCAgsdElyn6Gj68h7MvQ==
X-Received: by 2002:a05:600c:3d12:b0:439:8294:2115 with SMTP id 5b1f17b1804b1-43ecfa56d10mr57083635e9.8.1744104749509;
        Tue, 08 Apr 2025 02:32:29 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 00/24] ARM / arm64: dts: qcom: Use the header with DSI
 phy clock IDs
Date: Tue, 08 Apr 2025 11:31:57 +0200
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA7t9GcC/4WNSw6CQBAFr0J6bRtmDD9X3sOwgO4BOiKD04RIC
 Hd39AIuq5JXbwd1QZzCNdkhuFVU/BTBnhKgoZl6h8KRwaY2S40tkBfFF/knsgrOw4Y0enooFhX
 lVV5yZy8ZxPUcXCfvX/leRx5EFx+239FqvvZ/czWYYsUlc0utoaK7jTI1wZ996KE+juMDQiZcq
 78AAAA=
X-Change-ID: 20250127-dts-qcom-dsi-phy-clocks-79c6968df235
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4498;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=nJhtU/p+2ibFPm6eaeU2RXeqcRvO83wil1AuYBv0Kj0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0T9WCfm7gcLgeK675xTMsx9nuR+SYdE1ltE
 ea1H0zzXYaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtEwAKCRDBN2bmhouD
 1wfkD/44er75tkxY/bbq5Umyh+3XtV8uIAqETZvYpA+vo6Utozu7qC8gxNMjEUk8MLnNPcTQGvH
 fz4GcWXldLTuuAMs2mu4cT66mkdxbl0VelrSM0VjZrZFNbgwaFNi9hCg15DOYndr7pHPu2//hAG
 8IFSnyQY5oiA7KOi6BNOF23mmjaEg2Kbjoml4P9OSSnDxbdSdcg+9u3Hpep09Ig4RtLr46keRhw
 kD+cJslgwy9F6IFT0Ir2GyqX/qP/q6n4K9lX1fGDqK4uAp7G9ouJDHTnv3ws7xxaMB4k/6hk8vC
 7lAtrTDKiDoZv1r4ZgL9xscuw8HaKKb4wfarIbsFtya6/+vL/L76Nck+e7HlcpsLxcCDNHhca5b
 SecLFcDdepTSX/zqtObNJdiC61XmloM9CnEPKc8V0yXJXqy+yrILliIIumgLMuXulhPICP+9Py4
 8VtNPyO9j14QojQukIoAjBEyRk7DahYeEmYxpE2q6xAhuCPVhzAVv6YkKMJ4aZRRxIAEQOHMT+N
 jyiTdINi+q13pbHHIS+r86BYDr/FIEUA1QRT6VsyFpycBjzfRyThTkTh5re2N13YMGMveM1+9fE
 kqEiMXngZ6eN7M5pCH9FZAAwXbqDcHw201JLiTEsO3O8bCPyCpRm2gjy9R2B+YDWcZ7yfX+1ki6
 rZoNoOMbLV8/7EQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Changes in v2:
- Collect tags and rebase (no changes).
- Dependency was merged, so this can send be applied freely.
- Link to v1: https://lore.kernel.org/r/20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org

Use the header with DSI phy clock IDs to make code more readable.
Changes done with sed with alignment/wrapping fixups. Verified with
dtx_diff.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (24):
      ARM: dts: qcom: msm8226: Use the header with DSI phy clock IDs
      ARM: dts: qcom: msm8974: Use the header with DSI phy clock IDs
      ARM: dts: qcom: msm8916: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8917: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8939: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8953: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8976: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8996: Use the header with DSI phy clock IDs
      arm64: dts: qcom: msm8998: Use the header with DSI phy clock IDs
      arm64: dts: qcom: qcm2290: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sc7180: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sc8180x: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sdm630: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sdm670: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sdm845: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm6115: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm6125: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm6350: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8150: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8250: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8350: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8450: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8550: Use the header with DSI phy clock IDs
      arm64: dts: qcom: sm8650: Use the header with DSI phy clock IDs

 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi            |  9 +++++----
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi            | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/msm8916.dtsi               |  9 +++++----
 arch/arm64/boot/dts/qcom/msm8917.dtsi               |  9 +++++----
 arch/arm64/boot/dts/qcom/msm8939.dtsi               | 13 +++++++------
 arch/arm64/boot/dts/qcom/msm8953.dtsi               | 17 +++++++++--------
 arch/arm64/boot/dts/qcom/msm8976.dtsi               | 17 +++++++++--------
 arch/arm64/boot/dts/qcom/msm8996.dtsi               | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/msm8998.dtsi               | 17 +++++++++--------
 arch/arm64/boot/dts/qcom/qcm2290.dtsi               |  9 +++++----
 arch/arm64/boot/dts/qcom/sc7180.dtsi                | 11 +++++++----
 arch/arm64/boot/dts/qcom/sc8180x.dtsi               |  9 +++++----
 arch/arm64/boot/dts/qcom/sdm630.dtsi                |  9 +++++----
 arch/arm64/boot/dts/qcom/sdm660.dtsi                | 12 ++++++------
 arch/arm64/boot/dts/qcom/sdm670.dtsi                | 16 +++++++++-------
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts          |  3 ++-
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts             |  3 ++-
 arch/arm64/boot/dts/qcom/sdm845.dtsi                | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/sm6115.dtsi                |  8 +++++---
 arch/arm64/boot/dts/qcom/sm6125.dtsi                |  8 +++++---
 arch/arm64/boot/dts/qcom/sm6350.dtsi                |  8 +++++---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts             |  3 ++-
 arch/arm64/boot/dts/qcom/sm8150.dtsi                | 17 +++++++++--------
 .../boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi   |  3 ++-
 arch/arm64/boot/dts/qcom/sm8250.dtsi                | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/sm8350.dtsi                | 15 +++++++++------
 arch/arm64/boot/dts/qcom/sm8450.dtsi                | 21 +++++++++++++--------
 arch/arm64/boot/dts/qcom/sm8550.dtsi                | 17 +++++++++--------
 arch/arm64/boot/dts/qcom/sm8650.dtsi                | 17 +++++++++--------
 29 files changed, 210 insertions(+), 154 deletions(-)
---
base-commit: 7702d0130dc002bab2c3571ddb6ff68f82d99aea
change-id: 20250127-dts-qcom-dsi-phy-clocks-79c6968df235

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


