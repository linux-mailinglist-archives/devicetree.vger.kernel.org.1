Return-Path: <devicetree+bounces-133848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D1F9FBEA3
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 14:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C87561880423
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 13:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F483EA71;
	Tue, 24 Dec 2024 13:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h3X39GqI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9326FCA6B
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 13:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735046746; cv=none; b=NTEWFuIv70pFrjq5D86Z5KSgEBhOOPpmgCGuKkfUjTWMlIvFsohllY3PSEJzF21VQA6SY9L/KuJBceI/gzLOcEs4lbYVFM5pdd979IMCmU8zQYKF+/ANKwuy/WrDx39de6qWkQ4cQDYTWIl5BehZ8qHWg92i9G2FCD0er32Toy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735046746; c=relaxed/simple;
	bh=U7A1u+JJfcKyPCoIyoFaip7cCsy9h7TTdvIZdlMjGqs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n9It3IJzgCSAaHq3zuHvVgpZvgzcKag5RoESJuW60nEyWa6bCMEHyqe83IqkwcG7IWD2Wlt33xTgJj+LDFTJ8Vcx3sYPFD25u+G9jzMJhMQYX+UZN7Tqwg8VrXMvoudMsspQPVwPN4c1l2RvogmFrbNIO4QnKFrwXfkvPgFtCDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h3X39GqI; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30225b2586cso65826061fa.0
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 05:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735046743; x=1735651543; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hv30jFOQ39cBCdo28rZ29NibAXM1yv1msAZG8kg/Yg8=;
        b=h3X39GqIhZPdkoqzVMKIB8m7A0m0Jtm9GUd+5XmUxB6kpVdkZhs8wD25lFuw5SfuDJ
         tsriSQsW6j1lpTyR1d+4qKMoNTOf/XbBSeE2s+zcLO7hTDtz3c+Ca/eRF6tEAwyPi3JD
         ZK5OEAMR3Fmy2541xxUfGTfNIAGqdPKLO/M9uCmgeou8LjJ+RQwqsj5pF+xdj9fxj4Ag
         tL1paeIrr5FSm6c4fShle+/spXfQPTDOl9KlSAxcu186SsCaq7e3v2I329LbjjVYhF1w
         ORe5Jqr4ehb143WPqb7Fs+ppkHgXgwpK1nih/5gdgGxdNs2+4aHKozNeC6iJ51vyTEfp
         9dWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735046743; x=1735651543;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hv30jFOQ39cBCdo28rZ29NibAXM1yv1msAZG8kg/Yg8=;
        b=t+iaAKuAsUnAeqWY33XUJWLx6GmDTR6OFnnIzAFGjS9ttGnijVr9AG2y7yefzMWd42
         Zp+PsF23xaPGrkqoo4rsjvselU+CdwpwyEBPF7joxJpFTjtptd2elq7XUfaCmbvjtQPW
         m3pDCpeaOMsSqx7PGC5SWCurr7ezCh6VpuaW2vs/Zbe6PzhxGa5a7+ux6VColu+fA/q9
         WwoxqHhec06M3bLODMlg/xt3HLCdrBN5OQ+XsXNaqyOR7Q6NcksDfbhjhkvw7ZeRMpdI
         oOAJvqRxUDQby4bRfYjlrOgxWPX9bdEEJfiZt1uH1+miCVjvU53S1orm+6spB6Jm02F1
         +X5g==
X-Forwarded-Encrypted: i=1; AJvYcCXf7UUJYP9TKl3Fj03bOjf2NNUXFaQjMPDAozvxRXDkKrpO9ymkKzMudlo8cikbuZYEbetcBZ8ROM8q@vger.kernel.org
X-Gm-Message-State: AOJu0YzRCKPWoeRpKO3SUELrORzMXURKdpUFHTevPYN4308WBDflU3jY
	JZTcTuDYHCNCKzmCoGUKp8kvu3Fbr1QlheB4w5b+AF/VlwVDAEeuMJDk6iFoCcC9qxyav7dRNBX
	7
X-Gm-Gg: ASbGncszzwvuk9jLmltAzFN+E1OQPtNFL0iSwYIByHp5r0I0ZT1Z9o3OWz5IzmhqK2h
	XLMUzxyW7fF2b0TYzlhLYBnEgr7nVUEttYt+xU4fNi1Bm3odiL8D10ejrBer/0Lgdjh5mgXr48P
	rJG/rxLUqg5GmtBaMJIHaMrRCejLBxznScO21B9ieCCn43KLwqoY16ujeQTQgcjBUqMMSK4SYm5
	X+Yw3Ov/p72d0c8lIU2Q/pBGDB8QokqIm0FOyWE/mOS2tJvmo2q6IrudQBjmE+HX+tDzdAA30VG
	m7tp9ilorg9sNQWgpDwAhXHc6gJZnTpdZAGy
X-Google-Smtp-Source: AGHT+IHJZH8ANhU8/YIizeYlLT7pab12drEMXwuvQIS6w5Ypom40nZXywZPK+ZkrHbO1srQH+7HtJw==
X-Received: by 2002:a2e:6109:0:b0:302:3021:9b23 with SMTP id 38308e7fff4ca-30469bffe1amr43750481fa.17.1735046742432;
        Tue, 24 Dec 2024 05:25:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6c604sm17259641fa.15.2024.12.24.05.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 05:25:41 -0800 (PST)
Date: Tue, 24 Dec 2024 15:25:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Pratyush Brahma <quic_pbrahma@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: qcom: qcs8300: Add device node for
 gfx_smmu
Message-ID: <7sy7ogdlvvahk7pdfusdi4sx5fc2qoqexvgcwskoxywnmtx6tt@2od6sbwzohg3>
References: <20241224100521.7616-1-quic_pbrahma@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241224100521.7616-1-quic_pbrahma@quicinc.com>

On Tue, Dec 24, 2024 at 03:35:21PM +0530, Pratyush Brahma wrote:
> Adding device node for gfx smmu that is served for gpu.
> 
> This patch depends on the patch series [1] posted by Imran Shaik
> adding the clock support for gpu.
> 
> [1] https://lore.kernel.org/all/802d32f1-ff7e-4d61-83f1-f804ee1750ed@oss.qualcomm.com/
> 
> Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 37 +++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)

It doesn't seem that this was tested against the current bindings.

> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 80226992a65d..8eb688e2df0a 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -816,6 +816,43 @@
>  			#power-domain-cells = <1>;
>  		};
>  
> +		adreno_smmu: iommu@3da0000 {
> +			compatible = "qcom,qcs8300-smmu-500", "qcom,adreno-smmu",
> +				   "qcom,smmu-500", "arm,mmu-500";
> +			reg = <0x0 0x3da0000 0x0 0x20000>;
> +			#iommu-cells = <2>;
> +			#global-interrupts = <2>;
> +			dma-coherent;
> +
> +			power-domains = <&gpucc GPU_CC_CX_GDSC>;
> +			clocks = <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
> +				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>,
> +				 <&gpucc GPU_CC_AHB_CLK>,
> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
> +				 <&gpucc GPU_CC_CX_GMU_CLK>,
> +				 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
> +				 <&gpucc GPU_CC_HUB_AON_CLK>;
> +			clock-names = "gcc_gpu_memnoc_gfx_clk",
> +				      "gcc_gpu_snoc_dvm_gfx_clk",
> +				      "gpu_cc_ahb_clk",
> +				      "gpu_cc_hlos1_vote_gpu_smmu_clk",
> +				      "gpu_cc_cx_gmu_clk",
> +				      "gpu_cc_hub_cx_int_clk",
> +				      "gpu_cc_hub_aon_clk";
> +			interrupts = <GIC_SPI 672 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 673 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
>  		pmu@9091000 {
>  			compatible = "qcom,qcs8300-llcc-bwmon", "qcom,sc7280-llcc-bwmon";
>  			reg = <0x0 0x9091000 0x0 0x1000>;
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

