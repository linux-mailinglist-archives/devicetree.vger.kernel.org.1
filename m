Return-Path: <devicetree+bounces-168711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CD3A94244
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 10:33:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CB628A099A
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 08:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2441F1AF0BB;
	Sat, 19 Apr 2025 08:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hvql5noU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CE5145A03
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 08:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745051617; cv=none; b=B33XO+9B5EOCsXUskthDBdpmWTE/htRy2QAHevJm/dsMR7ZgdKTiFUHngUn1ZUEtZYU4iXLhD9t44HRLbC9FD+ZKg9MQV3yskwwnwtFlnxFR/gFDTAaZjMdVy7dapk56dHk5q5WR1TRFhKq9gny9OUZfAUA2fmMetNhpxB/Q2s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745051617; c=relaxed/simple;
	bh=tnZpf7E4jUTvl0WeReZ1fpPOpf5sY8X3PMWxEUc/hMQ=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sy8J9YpCc3WRbYldBXb/O3X7A1Ae0PyV2L/kH2fOpRb3j43O1WCn/WosZXeUFbkxdqPoXZGzXzvOwXEnGfchQKQkMuIPb5dXxLvMU4NU5R5fy8+FCmCofCIazRSkMgexhArcaVhJA3ktDz1Cs0Pwy16AwDz2GoMqxDdSFQPAur0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hvql5noU; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-224341bbc1dso25410575ad.3
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 01:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745051614; x=1745656414; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaJakh9xM66cZD5S9FiPEP38vFx8wsqvS4Jg/X0PNME=;
        b=hvql5noUBWhduRELCjYuWxqsXM62h38FUzeIfIza036HvLEHXf8e+4mgayEQjr2H61
         PrhhzSEyoFzB0lLAepUKf+0QuF8ZqK/QkJgaD+cSvgybT/pla/RFn7N5subfYCpHRS0t
         yCXlW6gIZ6v+6hEIcIHNmTvFZeflIXRlsHr2lZPtr4A40ZME5IZXeLpIrWSKWLUen6y8
         fIHIMHOTiMBdITYQUDwu6D/uOkQ/RzX3SXsOEwB0VxrPeIqrrJMdbJMEQPdEIHziljBX
         XsNpyg7DUJqJg8YYShxm0bVy3SH1g5/83u3oOFPUuRwiZfjJsO4fYYbwytDRKouIdLbY
         5luA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745051614; x=1745656414;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YaJakh9xM66cZD5S9FiPEP38vFx8wsqvS4Jg/X0PNME=;
        b=vQPANfA5VT1z1VsWc6m3AqXqc6/FH0ROqbMi4UQbAkcX7DdrLxcQhpiGpDPtkY5Sw5
         WoLSqC4xg5UF8+TMeHhCG0p3DEh+QpnPol0VHgoFmQaBydnlrV/t+aFOj2dgy2eTeAN6
         n6D1TX382sWscNWdxQx5kRmIkosBPCXF6xGSFvaWienuueRtJ+DSLpowl9pHLDAmV10A
         gMUJlUng/b4Fcina58IMDWaTk70K++K5qWUc5SYIJr1zBiAv/9leva8AhfEkGM/moD9A
         Fn84yGIMUvnAKRIPR3mWCiWqzR5zMuGlZQARruYwvitiua4D9VlPmgSb7F+MZuA8LSjV
         JBpA==
X-Forwarded-Encrypted: i=1; AJvYcCUyLXQNOb/D5vPjDG4/yZzlr1B9DPd8VNC3cfFYVHazVENbe11pSVCAm0J9L6TLe4iBD2wf9h3N7gIn@vger.kernel.org
X-Gm-Message-State: AOJu0Yydb1lpM80nTrGm5pOQncKP1vlqWMQWJRpCzlNec9+k96uFcIXb
	tawONO+yqGaZO72uXJsAY9fDttW6mR0InYl72QTF6eaGCaboH3k2iXz06bjxpQ==
X-Gm-Gg: ASbGncsfwzkPC7ot5Kcx4pJ5/6C92uDj/9IKZ7WilHzm/t4ROaw6NzzDmcxVA02odPy
	2GXAVsS92E2QSzrtjfXMbqnMlqY+hgkhUqGy4D/5u/FmYCbgqU6yDLR+l7IOySuexj/+I8PHOkF
	4R9rwjKf5Pkmak4mnYqPuaBb5aVTO7HfPCk7LxppQbdIEYOFHcPQDJMU1Fwb1f73GHx/gtGYKaD
	Ay9CNE6lC+PMbfEaz5AKo5oMcSToi35uI1IXYbEypyyA8FVXDu9DnzG1baP9ljw7mV8Fe5ZGg5z
	1sqjNSI/mi3Fyq9JCjcMs6i/qzzerMz7Xjrxc9NuGRxoK/AovdY=
X-Google-Smtp-Source: AGHT+IETJzORaZc9rUcQZjfqRJ8DIbC4gX4Kf2XDO9y1bvddXq8XcEhC0o1p38D01fW61AQYlWaodA==
X-Received: by 2002:a17:903:2441:b0:220:ea90:191e with SMTP id d9443c01a7336-22c535679abmr74340825ad.4.1745051614002;
        Sat, 19 Apr 2025 01:33:34 -0700 (PDT)
Received: from thinkpad ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50bf5425sm29195875ad.98.2025.04.19.01.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 01:33:33 -0700 (PDT)
Date: Sat, 19 Apr 2025 14:03:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/23] arm64: dts: qcom: Add 'global' IRQ to supported
 SoCs
Message-ID: <zm75vxwx7pgcu6sok4g5ujrg2drc2jst3gscrl46jr7votygoo@5qsdre2fxtre>
References: <20250227-pcie-global-irq-v1-0-2b70a7819d1e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250227-pcie-global-irq-v1-0-2b70a7819d1e@linaro.org>

On Thu, Feb 27, 2025 at 07:10:42PM +0530, Manivannan Sadhasivam via B4 Relay wrote:
> Hi,
> 
> This series adds the Qualcomm specific 'global' IRQ to the supported SoCs.
> This IRQ is used to receive the PCIe controller and link specific events
> such as Link Up/Down, MSI, PTM etc... in the driver. Support for this IRQ
> was already added to the pcie-qcom driver. So enabling this IRQ would allow
> the driver to enumerate the endpoint device and also retrain the link when
> the device is removed [1] without user intervention.
> 
> This series also adds missing MSI SPI IRQ to some of the SoCs.
> 
> Testing
> =======
> 
> This series was tested on Qualcomm RB5 board based on SM8250 SoC and
> Qualcomm Ride MX board based on SA8775p SoC.
> 
> NOTE
> ====
> 
> I've left a few SoCs in the tree like QCS404, SC8280XP due to lack of
> documentation. Those will be added later.
> 
> [1] https://lore.kernel.org/linux-pci/20250221172309.120009-1-manivannan.sadhasivam@linaro.org/
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Applied the bindings patches to pci/dt-bindings!

- Mani

> ---
> Manivannan Sadhasivam (23):
>       dt-bindings: PCI: qcom,pcie-sm8150: Add 'global' interrupt
>       arm64: dts: qcom: sm8150: Add 'global' PCIe interrupt
>       dt-bindings: PCI: qcom,pcie-sm8250: Add 'global' interrupt
>       arm64: dts: qcom: sm8250: Add 'global' PCIe interrupt
>       dt-bindings: PCI: qcom,pcie-sm8350: Add 'global' interrupt
>       arm64: dts: qcom: sm8350: Add 'global' PCIe interrupt
>       dt-bindings: PCI: qcom,pcie-sa8775p: Add 'global' interrupt
>       arm64: dts: qcom: sa8775p: Add 'global' PCIe interrupt
>       dt-bindings: PCI: qcom,pcie-sc7280: Add 'global' interrupt
>       arm64: dts: qcom: sc7280: Add 'global' PCIe interrupt
>       dt-bindings: PCI: qcom: Add 'global' interrupt for SDM845 SoC
>       arm64: dts: qcom: sdm845: Add missing MSI and 'global' IRQs
>       arm64: dts: qcom: msm8996: Add missing MSI SPI interrupts
>       dt-bindings: PCI: qcom: Allow MSM8998 to use 8 MSI and one 'global' interrupt
>       arm64: dts: qcom: msm8998: Add missing MSI and 'global' IRQs
>       dt-bindings: PCI: qcom: Allow IPQ8074 to use 8 MSI and one 'global' interrupt
>       arm64: dts: qcom: ipq8074: Add missing MSI and 'global' IRQs
>       dt-bindings: PCI: qcom: Allow IPQ6018 to use 8 MSI and one 'global' interrupt
>       arm64: dts: qcom: ipq6018: Add missing MSI and 'global' IRQs
>       dt-bindings: PCI: qcom,pcie-sc8180x: Add 'global' interrupt
>       arm64: dts: qcom: sc8180x: Add 'global' PCIe interrupt
>       arm64: dts: qcom: sar2130p: Add 'global' PCIe interrupt
>       arm64: dts: qcom: x1e80100: Add missing 'global' PCIe interrupt
> 
>  .../devicetree/bindings/pci/qcom,pcie-sa8775p.yaml | 10 ++--
>  .../devicetree/bindings/pci/qcom,pcie-sc7280.yaml  |  9 ++--
>  .../devicetree/bindings/pci/qcom,pcie-sc8180x.yaml | 10 ++--
>  .../devicetree/bindings/pci/qcom,pcie-sm8150.yaml  |  9 ++--
>  .../devicetree/bindings/pci/qcom,pcie-sm8250.yaml  |  9 ++--
>  .../devicetree/bindings/pci/qcom,pcie-sm8350.yaml  |  9 ++--
>  .../devicetree/bindings/pci/qcom,pcie.yaml         | 14 ++++--
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi              | 20 +++++++-
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi              | 40 ++++++++++++++--
>  arch/arm64/boot/dts/qcom/msm8996.dtsi              | 54 +++++++++++++++++++---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi              | 20 +++++++-
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi              | 28 ++++++++---
>  arch/arm64/boot/dts/qcom/sar2130p.dtsi             | 12 +++--
>  arch/arm64/boot/dts/qcom/sc7280.dtsi               | 14 ++++--
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi              | 24 ++++++----
>  arch/arm64/boot/dts/qcom/sdm845.dtsi               | 40 ++++++++++++++--
>  arch/arm64/boot/dts/qcom/sm8150.dtsi               | 12 +++--
>  arch/arm64/boot/dts/qcom/sm8250.dtsi               | 18 +++++---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi               | 12 +++--
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 18 +++++---
>  20 files changed, 300 insertions(+), 82 deletions(-)
> ---
> base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
> change-id: 20250227-pcie-global-irq-dd1cd5688d71
> 
> Best regards,
> -- 
> Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

