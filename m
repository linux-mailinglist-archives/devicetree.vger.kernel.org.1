Return-Path: <devicetree+bounces-142637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2693A25FB0
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:17:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B907166649
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A642720ADC3;
	Mon,  3 Feb 2025 16:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BoHQLHD8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8E820A5F7
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 16:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738599412; cv=none; b=Yer/dloXz+Eby1Z3B9NaPIyao1foXyaX4tEe3lB4Q4qLA9QxQ4BDg64hhYuN1Edn2HD83y2kKDcnN5nnfOOttwTndB6Gn6Y1iiPj0WLL2kuhylK5h8FDIvq/50/9t1wuJ6AusdVcMPJLQeT/TRXgzXf7TbHNavVWO9IrDRnX4Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738599412; c=relaxed/simple;
	bh=erhTwVPsLXivFVXTanoN6EQD7Qcx9B1QNR5p4w1Yt44=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e20L5mqM/rhCwoK1lRZ2KKkAcGPmPBT4Pj4ZIOiQyNlzdzNRlXukJkdNxFbSyl3KKSsCtDB09E8BboNhNtTraRuyAyfGUW3+hdvA3lfE97Z8oZSGacP/ePhy5usnRx31fE2P0ZpXh6HpTlSZhl5b3iY7R5R5c4tU6m9a9yNJckw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BoHQLHD8; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-21670dce0a7so94814095ad.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 08:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738599410; x=1739204210; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6flYFTaf2FZxbVF3ZCOxc2I7HjIzsuP1MXEjy7hroyk=;
        b=BoHQLHD83QOQu+7YB5jQPWX/hL19er1lQJt0rbfOdPzGLItwYAu1qUrk9ay8H0EfmL
         q0m7xMGH80Za4m8M5zgZlE4BA8vHUHfLF2q6QKoL/SAYmK/uextByv5PIeIMakUrLM/f
         x6SgxzTW3Bw4ovSTctyz+a4/tkoNBAlpKLEBiPNpZhfu2FNU24oePZFXKjYf1sUUkVZ3
         lL6Grj30pm/oxPxA5VGoo68IC08OAkiw3MxV4OCXinSidMeQpb/sosBMPPx1l/+hrruc
         8h1E1+nlUwq0NcEKobuWCm7s7te4KfM7Q+ZnB2uvoIq5FGS+2DH0NlTQtLpZly2OY+JI
         Ivhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738599410; x=1739204210;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6flYFTaf2FZxbVF3ZCOxc2I7HjIzsuP1MXEjy7hroyk=;
        b=HwlWfbS67fD4mJoBVbERu8y2nNG4B0Z8X4IwBEOcWERhPJqAc8NbPJmZyglHiXFz0i
         C/JVcsv2ittQqq3ObyZa4G4ceHmg8TuiTh46rJmADXJwUAnZyjmdOSKlzWLVKJjSRvou
         /yd2eEvWvd6DfVeMODeYCITztNywBDI+UONknQ+jvddz2mFBptliPziLIitC52JLlv5w
         6NEoXYESV3NcRmQA4yMxuGJknRUYx5HFxLnAE+Owfjcd52JFfWsW0bDoEP1TpKiRif0v
         dnxM1TWErl+59dEtjt9OOQS/euz5twGwO4GWPThDmqXC/t/20JwiKDn/vBIvfM45AhQB
         n2Bw==
X-Forwarded-Encrypted: i=1; AJvYcCX5EW117RKE2/9o9e3ty48wOMNqJ0lc07+c2d7iTnKCNU/8FzuZB1pEfOUjNPdGGfIGW6VN1FvmxWIh@vger.kernel.org
X-Gm-Message-State: AOJu0YwNbqsO5oUlEnUWqCfN1/4Heqqvgh3pR8talKYKGUSL3qGuVTUN
	cPkQV0e5rSyT1bJYJNtoiJI8nhOSZDS6IX2EcR+jLV9V9xgnykRzrs+ZE7mkDg==
X-Gm-Gg: ASbGncvs6544JwhvBpeJxwwhffgLCBh1xWQCi8hvMxknw7mOtTcb5HZJJAroRKu/PC5
	my4PqTF2wDnX37g334puBYY3Y6UGxG4sbDRj26IhjxyHFJCXwNXixsvBmeOeLAtNsj532Vh+jRl
	5SpBQB8JcZCNrGgO+uLIVMZvqmGwFhxkuPub469R12//sh+nqTcDYntzDSiTVNQclmQl07uWP3H
	jZZz6Awd5OGlnbGTZW37l0k800BTRk6p32B+/t9WOsclEwAacJJZZHXs2oMeSAWsyHYlx2PG0Lu
	npCR54ynL7bJP8ImVI8qriV3PQ==
X-Google-Smtp-Source: AGHT+IFVZMlh6cYlSlFoHEwxzXAOuYn28wRS6kTbfChhspc03x0TeQyb4e1aNIvAKSJnT3jHJ38A8A==
X-Received: by 2002:a17:902:d48a:b0:216:4064:53ad with SMTP id d9443c01a7336-21dd7de20f8mr385506735ad.48.1738599410161;
        Mon, 03 Feb 2025 08:16:50 -0800 (PST)
Received: from thinkpad ([120.60.129.34])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-acec0479887sm8145679a12.52.2025.02.03.08.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 08:16:49 -0800 (PST)
Date: Mon, 3 Feb 2025 21:46:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 3/7] dt-bindings: PCI: qcom: Use sdx55 reg description
 for ipq9574
Message-ID: <20250203161643.n2dmu6yg6rb5lp6u@thinkpad>
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-4-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250122063411.3503097-4-quic_varada@quicinc.com>

On Wed, Jan 22, 2025 at 12:04:07PM +0530, Varadarajan Narayanan wrote:
> All DT entries except "reg" is similar between ipq5332 and
> ipq9574. ipq9574 has 5 registers while ipq5332 has 6. MHI is the
> additional (i.e. sixth entry). Since this matches with the
> sdx55's "reg" definition which allows for 5 or 6 registers,
> combine ipq9574 with sdx55.
> 
> This change is to prepare ipq9574 to be used as ipq5332's
> fallback compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index bd87f6b49d68..413c6b76c26c 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -165,7 +165,6 @@ allOf:
>              enum:
>                - qcom,pcie-ipq6018
>                - qcom,pcie-ipq8074-gen3
> -              - qcom,pcie-ipq9574
>      then:
>        properties:
>          reg:
> @@ -206,6 +205,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,pcie-ipq9574
>                - qcom,pcie-sdx55
>      then:
>        properties:
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

