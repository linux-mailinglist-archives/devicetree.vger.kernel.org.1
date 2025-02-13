Return-Path: <devicetree+bounces-146373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 917E3A34B24
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 18:03:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1790C16D2BA
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4FC44C7C;
	Thu, 13 Feb 2025 16:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lomr7dAH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EC928A2D9
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739465813; cv=none; b=GTWhWEe9byNq3EFdQZsKXBhSrOwboN6n+jDhURKxmfVMKHAaDUh+vR/cyG0j772CovQZnqXhJ6Hj9b15jQpOXVe+BiDnuKEfuQZXHoYGtV5A0hRwc3AYDbtOMT1tb0YYkKly78Gkj25ePZXYeQkXTar1VodKHrgebBOv0g70yWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739465813; c=relaxed/simple;
	bh=MvrtoHxe/saZ1n2D1pB5Nw3joZKQpDZfJcJqITQNRDY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gNOl/lj9qJ2r7GR6MDRlpy2p7cUtYFHcySrxOL0o1yRStv6mbp/RyIBmNEgKsCc/4gKObEQaDcmWAVg1BkBGM9NBhvklie+lF6ry/623b4wWkIf+Zur5DP0hw1uGBkv372i0Y0NIyDmIgxV3f7Y1MzCaDA8pVzxJCj7+R6FMgu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lomr7dAH; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54509f46614so1100828e87.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739465810; x=1740070610; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YyQ7iBPn2LLvOrCnmEhJGLbqAv4rLkRdUEyL8CZvRP4=;
        b=Lomr7dAHmAHUkv3zN+ZuzLXpCcP6Uc/LXY2Z/i1OeuEHTaOD1Ww3+4fKKTBY/HMfIi
         bBihgTmwD4PHmAP7wonR003TcsS5hs4+yMJCznPSfumy6a3pJ1Enebr3slolsjB3aMIh
         CyvZJWY8XEZcroZnVOgwt2Zz16pLFMfJqjDOu7F0HM65UAK0qy6seamruhHfc8yVdaxq
         HC2sarvy+DdspLEqNbIq+wqYUovg2Z8ZT1Vc5rsPkRAidbmPxkYBKHFlUZAWYEb9FdwU
         no/0FAeNGN7xKCEawrhZ5CF+qdm1Akug8QlVqaql55gCuL/xp0JOVjw3/BMMSZ78hSM5
         Dd0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739465810; x=1740070610;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YyQ7iBPn2LLvOrCnmEhJGLbqAv4rLkRdUEyL8CZvRP4=;
        b=UAZcWSlpRLbBeF38F6MZ37hyB6PMhEQ6lMq6B0QQh2b1QA5uMfBgiuqnUKty9dzrIB
         X8pUSDIu1qy+jR8wbJstfHHTMIzg1J+ZOPGDrChBRKh/zrGkC+MyvoVFISfddwWNR6CS
         EQEBxj9Xhu1VLjL5fNJzg+IJM4QCJxzMSAB9KP7U4oJVvfHXgXgAiIrmvg5AFeLFG0wR
         GYtfF9ShDmY3vYQa6ceG3Hov77miUs5OMfVNawrMrygNo19e4RtePv9ALYOtU+Czaca6
         Tu/VER6uYanNxB32+1kyFvUmuqzeZhK+czCQ5c5N8cZaT1M138DTCITnpF8OYNWyvyRD
         Lx2A==
X-Forwarded-Encrypted: i=1; AJvYcCWiDw+J2zIACdYMEL78+FaE4Z7+kHTdgRx9h6EYKQ5NP59FpmzabL7wAy0tuB2tq2/VrToCuA+KHbhD@vger.kernel.org
X-Gm-Message-State: AOJu0YxiOVefjwCpQ+eXOD1Z4aC2cah+dGT2aejk2PZSGImfLpihfKQW
	vcAmnWcbjVIPLz2PY8B7em5Xs73pwvTqtmLoCEiF/ANp2zZSZKyhSkbXdH14Gjs=
X-Gm-Gg: ASbGncuLFfrVn1/pneqYsywo8M1KHbMKARTTb+fVSPRWH0j23pPCP66m0hECFaDcuCx
	7/pJaztQsjSpnfdjbXYfxkcxKQVvyE0pvHvpdqF/V1EJbfUe3BUaikodo9ikRvUh8iP1rXurOPO
	pRU33QY9glZc9jZww7xD3vzRsWtaA3/TR8TX6o/eN3Qw0olZ2FJljIjFeo6ata6lYLH3sGnDh0u
	Q8LW8YxKJvT/Vl6RUpclXXLjF0y//eKLGLx/Zrwz+RyfSLwXRQBjK/NolugxmsTf+0wSnAYV/dh
	L2bmvDlMyuNdRtO3dVctL/zQ8/GZ7Cid0iPTCuWtjq4sAteYGSS5unvf4tkkuyMqd4FtTEY=
X-Google-Smtp-Source: AGHT+IHPp7z9mHrglxs4Ys3IyXNLHHY1OQEK7JqWZvEuKQ6rWpt9p/SBEJZ/ltRNQXoWyTRbRwY6vQ==
X-Received: by 2002:a05:6512:128a:b0:53e:3a7c:c0b5 with SMTP id 2adb3069b0e04-545180e5df1mr2549482e87.10.1739465809683;
        Thu, 13 Feb 2025 08:56:49 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5451f10cc28sm221256e87.201.2025.02.13.08.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 08:56:48 -0800 (PST)
Date: Thu, 13 Feb 2025 18:56:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcs8300: Add gpu and gmu nodes
Message-ID: <p36nz6p6bbzur7uoitbzc63hv4qf7hhsix3mqa36igarasj67b@evcdfpeybgsh>
References: <20250213-a623-gpu-support-v1-0-993c65c39fd2@quicinc.com>
 <20250213-a623-gpu-support-v1-4-993c65c39fd2@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250213-a623-gpu-support-v1-4-993c65c39fd2@quicinc.com>

On Thu, Feb 13, 2025 at 09:40:09PM +0530, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and gmu nodes for qcs8300 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 93 +++++++++++++++++++++++++++++++++++
>  1 file changed, 93 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index f1c90db7b0e6..2dc487dcc584 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -2660,6 +2660,99 @@ serdes0: phy@8909000 {
>  			status = "disabled";
>  		};
>  
> +		gpu: gpu@3d00000 {
> +			compatible = "qcom,adreno-623.0", "qcom,adreno";
> +			reg = <0x0 0x03d00000 0x0 0x40000>,
> +			      <0x0 0x03d9e000 0x0 0x1000>,
> +			      <0x0 0x03d61000 0x0 0x800>;
> +			reg-names = "kgsl_3d0_reg_memory",
> +				    "cx_mem",
> +				    "cx_dbgc";
> +			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
> +			iommus = <&adreno_smmu 0 0xc00>,
> +				 <&adreno_smmu 1 0xc00>;
> +			operating-points-v2 = <&gpu_opp_table>;
> +			qcom,gmu = <&gmu>;
> +			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "gfx-mem";
> +			#cooling-cells = <2>;
> +
> +			status = "disabled";
> +
> +			gpu_zap_shader: zap-shader {
> +				memory-region = <&gpu_microcode_mem>;
> +			};
> +
> +			gpu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-877000000 {
> +					opp-hz = /bits/ 64 <877000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
> +					opp-peak-kBps = <12484375>;
> +				};
> +
> +				opp-780000000 {
> +					opp-hz = /bits/ 64 <780000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
> +					opp-peak-kBps = <10687500>;
> +				};
> +
> +				opp-599000000 {
> +					opp-hz = /bits/ 64 <599000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
> +					opp-peak-kBps = <8171875>;
> +				};
> +
> +				opp-479000000 {
> +					opp-hz = /bits/ 64 <479000000>;
> +					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
> +					opp-peak-kBps = <5285156>;
> +				};

Does it have no speed bins or are they pending on the nvmem patchset?

> +			};
> +		};
> +

-- 
With best wishes
Dmitry

