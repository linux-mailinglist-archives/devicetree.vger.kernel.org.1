Return-Path: <devicetree+bounces-44143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B7C85CEDB
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 04:42:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53A86282F8E
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27FDB38FB2;
	Wed, 21 Feb 2024 03:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sv0z104y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622D638FBC
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708486929; cv=none; b=e7t/82nEQ3mFimW4fFBm2A+NBQFcySQlUbvVmyoHMyFgJ5+W5iaUJVpJOB+vdY4R4vhFAdfOEbQJQp6xh5eD1nrps0OjHhPXRL+NzS5qnOEDsCl851n6OuF5gptcfVfwvt00BkC7Z6SfTiBUYKCWNk196XZdgFHWRWr1PtQKpyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708486929; c=relaxed/simple;
	bh=7t1TKV9oHfbtypKrfVlUmm8Y14s1NVoXY+RaFYePMs8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EixgnfMW5AD9mQVixSiBKujAxDhZwv+JdFBnrPKrKSdljTi8GUVo6E3khZyQg2e8Di7fMrebSNoUbTUrxESn4wIcQpZZCZb3FtHv7o2hwQ2Rs+l2gpGFBLBNqcsNyQ2A3SeOL2QUpOUU60S77ORRbfwqE/2psQp8ofC6wzxGt/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sv0z104y; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6e08dd0fa0bso5290328b3a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708486927; x=1709091727; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DVVF7vEIGZjBCotuFgH2PrLCENJOK4nkNStjqD2FIg8=;
        b=Sv0z104yV5iiLDTHrjqhYY1AVFnEsGLc9G1ckPFQDYEhQCfZ1PglsE1GIf1Iv1s2Ze
         fX8lbgVpk6jGnLXrnmSdkkLsrEG2Mmqf74hImp6AWQwvEfNdoibG8e1gLrETH5KDIowb
         mqKRXDhi8XADs+/8GuAzyQmcFK6AEWAuPB+lUdJg8C88+9DRPrxZCVcmkS0zZ2woPPBy
         6XvCjwvqY6vnyCWaXInHP8nt9yUGKqSE8feJ2Yp16UTWtmAgnE3gG7yJZUPKKCFTZ6pU
         kRm+fpg1mkfMenxfjZnFAX2stVCoz0Wy4+PWDJtCT0GCUYYYGLVtIJCKdx6bt66hB2t0
         xuOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708486927; x=1709091727;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DVVF7vEIGZjBCotuFgH2PrLCENJOK4nkNStjqD2FIg8=;
        b=uWChfWNFlZA+WTxidGstkalDPrWSygzaCo/3+ZF4o1WgwC6cfxyosj1c5Pe2+HKAe6
         g5sp6PXNyzQcyuNInuNczPFbgw2BmZKjE+HUPsedtMFhcJ6qHZRXnYjSL6MdQuuMgCbg
         Fxgtb64aLXHniOMmxf+evTqbKWCCPSzMeZfIy3/jYxwce/5cfv175Gl/Sw7xTIXYbi6Q
         pmbgjT0Ed/HNCHIVeZKolC2qYwNfCK8Zw1zY87ytAr/eyhMm2MzoDZmpvIME2S3j/pXA
         cx/1gPflj71SCw+6kzcfJ1w4bmklXMAk+d8wNYsQ8SCjAJdTCPRE0JVD2Z9LgVV3RmmN
         aRqg==
X-Forwarded-Encrypted: i=1; AJvYcCVZSjlS4lRiSirZCqYgqONDos74ugRkLzXU/tGEjSt3VEDZDKNvXLwADhzpm+J+taADanuDcm2uY58DJ7PnnzSjXWPzoO/780tn1A==
X-Gm-Message-State: AOJu0YwTDSS+OriefPEDugok8pyFbPEXdEUihb+srgUt4Mp6Yxc0DDh4
	w3YMelpOBke9ib4Utft2TCffVc9XBn53JmTqMu25PM6DVXlCJ6zjmtvhZ8cLDQ==
X-Google-Smtp-Source: AGHT+IGUeZg4H3ajQRtyeguNhF3HLUxBqN21FPYXX7Rb32pX7UsBIXBun8gTAU5CAAuwES+jOws8Qw==
X-Received: by 2002:a05:6a00:180d:b0:6e4:68fa:f1f9 with SMTP id y13-20020a056a00180d00b006e468faf1f9mr8625869pfa.2.1708486926609;
        Tue, 20 Feb 2024 19:42:06 -0800 (PST)
Received: from [127.0.1.1] ([117.207.28.224])
        by smtp.gmail.com with ESMTPSA id o23-20020a056a001b5700b006e466369645sm4436231pfv.132.2024.02.20.19.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 19:42:05 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 00/21] Add PCIe bridge node in DT for Qcom SoCs
Date: Wed, 21 Feb 2024 09:11:46 +0530
Message-Id: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPpw1WUC/x2MQQqAIBAAvxJ7bkG3iOgr0SF1qz2kpRFB+Pek4
 zDMvJA4CicYqhci35Ik+AK6rsBus18ZxRUGUtQqIo2HFcbThh1NFFe8uxKavrHKadO1ZKCkR+R
 Fnn87Tjl/cL0lwGYAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3470;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=7t1TKV9oHfbtypKrfVlUmm8Y14s1NVoXY+RaFYePMs8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl1XEEYatcc8RMyWl8SiVwWPQdvD40KPKZCCb++
 +YlZMuarcSJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZdVxBAAKCRBVnxHm/pHO
 9Wa1B/4t8wor+IpWnGsAKtfPraFtKhtykFbOPAduWKydRWAIHMDbFk/F2ZO80V3f6UHLNziP+Nx
 Mti7xN+w6n524Z8wv8YQc2W+u85wGRfWeyaDVrn0BCLWNvpOHycleiwE/H4ZEOqI9bHrXawwJe3
 F/7cMJ/sxHPMY25An+6rXejMeHXqssR3lfkhWaSI1dMCADypgCct+ijD6ABy1ZtOj/vvrUxM52N
 ZwDucCBS1vJcYmDWCvdftMCD8zRp5dsHXBg7bxeBfBAMKOVXD/9gwr6Q1krNQns2Wh76NUdSJZT
 Js8Exxh2EIv2N5apNdCalkG9I0bDnL7x2zNWnUk51+7GgJaP
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, this series adds a DT node for the
PCIe bridges across all SoCs.

There is no functionality change with this series, but the PCIe bridge
representation in DT will be necessary to add the DT node for the client
devices like the one proposed in power sequencing series [1].

- Mani

[1] https://lore.kernel.org/linux-arm-msm/20240216203215.40870-8-brgl@bgdev.pl/

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
Manivannan Sadhasivam (21):
      arm64: dts: qcom: sm8250: Add PCIe bridge node
      arm64: dts: qcom: sdm845: Add PCIe bridge node
      arm64: dts: qcom: sm8150: Add PCIe bridge node
      arm64: dts: qcom: sm8350: Add PCIe bridge node
      arm64: dts: qcom: sm8450: Add PCIe bridge node
      arm64: dts: qcom: sm8550: Add PCIe bridge node
      arm64: dts: qcom: sm8650: Add PCIe bridge node
      arm64: dts: qcom: sa8775p: Add PCIe bridge node
      arm64: dts: qcom: sc8280xp: Add PCIe bridge node
      arm64: dts: qcom: msm8998: Add PCIe bridge node
      arm64: dts: qcom: sc7280: Add PCIe bridge node
      arm64: dts: qcom: qcs404: Add PCIe bridge node
      arm64: dts: qcom: sc8180x: Add PCIe bridge node
      arm64: dts: qcom: msm8996: Add PCIe bridge node
      arm64: dts: qcom: ipq8074: Add PCIe bridge node
      arm64: dts: qcom: ipq6018: Add PCIe bridge node
      ARM: dts: qcom: ipq8064: Add PCIe bridge node
      ARM: dts: qcom: ipq4019: Add PCIe bridge node
      ARM: dts: qcom: apq8064: Add PCIe bridge node
      ARM: dts: qcom: sdx55: Add PCIe bridge node
      arm64: dts: qcom: sm8650: Use "pcie" as the node name instead of "pci"

 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi           | 10 ++++++
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi           | 10 ++++++
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi           | 30 ++++++++++++++++
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi             | 10 ++++++
 arch/arm64/boot/dts/qcom/ipq6018.dtsi              | 10 ++++++
 arch/arm64/boot/dts/qcom/ipq8074.dtsi              | 20 +++++++++++
 arch/arm64/boot/dts/qcom/msm8996.dtsi              | 30 ++++++++++++++++
 arch/arm64/boot/dts/qcom/msm8998.dtsi              | 10 ++++++
 arch/arm64/boot/dts/qcom/qcs404.dtsi               | 10 ++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi              | 20 +++++++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 10 ++++++
 arch/arm64/boot/dts/qcom/sc8180x.dtsi              | 40 ++++++++++++++++++++++
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |  8 -----
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 40 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi               | 20 +++++++++++
 arch/arm64/boot/dts/qcom/sm8150.dtsi               | 20 +++++++++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi               | 30 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8350.dtsi               | 20 +++++++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi               | 20 +++++++++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi               | 20 +++++++++++
 arch/arm64/boot/dts/qcom/sm8650.dtsi               | 24 +++++++++++--
 21 files changed, 402 insertions(+), 10 deletions(-)
---
base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
change-id: 20240221-pcie-qcom-bridge-dts-b83c0d1b642b

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


