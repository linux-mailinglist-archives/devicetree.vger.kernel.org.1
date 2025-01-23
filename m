Return-Path: <devicetree+bounces-140519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1C7A1A1E7
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:32:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D32183ACA31
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 10:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D393F20D518;
	Thu, 23 Jan 2025 10:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sUeFycJo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4968120127F
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 10:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737628331; cv=none; b=hCcB/jANHlgj/ll4Z14eOvWy2+IHG2MlLUBQmOIKZkOAYd0H2x3bhaGecBR/kcZJ4ZEdz4Syf97oAshB9xiNV0vJUij4MqXH3YnAuu1v8zkjcJbus7q1Zeqh+SL6j9OaCDV6K4KSGgO+DgGXVPv2GRNKD5NgO17LkjkhZZesu7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737628331; c=relaxed/simple;
	bh=5QDj1vkJS+yvsDLMcSTcf4UcVo3dW9OBFZHH9q/AKL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QuG87lxJA+03bl7u3GDUlQK8Rnmg0pz6X/GIIS28+EboP+/uHdz/t8xkBkZIEDfi0WKaH/Jq0vSH8mymfTwf/yKsj/Z/6LYcpV5CCw/OifWv47aHil1Sz3TlEh2D/XUZFIWepk3mQ88MS1k38CL9nmcRTmT0DMJPkGRPaGai9lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sUeFycJo; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5401be44b58so878783e87.0
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 02:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737628327; x=1738233127; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X8zPn6AGoIbhFoUTj/9NofY6/9PJDSu0fp28fJrrat0=;
        b=sUeFycJoY8eVrmn2ciEgD0Id/plwIAj5ZkwQes24EB34ADxVGMjmHep2zoTh3YgP8f
         IVcrCHaLwMi/AejmqcPjxV5LyhQwcPyFtgodDFxTqvlR1CFlHJ6XzwL33BBCeOMaXmvi
         1l6hp2MiY3JlFmr3I3cUDH74nTZsUPUchKsX/KaHhmQ/T3VRgWKfAflzmTeIjLKQ2vFN
         eSQF+1x2iFE5TrJFAiGDdfJfEnYnfZW/zCnDNGvaLaK4Qhnvz3XRDzqJExZQk3xUu6B9
         1TvZsMaOyPvX6VdQ3aKGIidUPztGuPgHAy7uZejSkEroaAdmDm9wtXTjact/Pg3xicrK
         YuMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737628327; x=1738233127;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8zPn6AGoIbhFoUTj/9NofY6/9PJDSu0fp28fJrrat0=;
        b=YjDVT6br03AcEogeeg4wTQVA5FXEyrT20VgXu6FT51b4hBLsZt3dfieGR7xWy0m7J8
         Hkh2YdFAhrrRONWpqc+VwqKTB9klUtHUGJUnvhkFxYxc4ZNQDkYYezRCvoKDXSCIfb9h
         ozm9HzOrWuEHDJZvxMjMK0+Y7pJ49pQ1K9UQJxTs05pbuYf+nyXyhO75z+cyDpy4Yp3G
         mOPf2g28EGqq6o32PKl3FqVyGn1Fd2pJfqmPRL7pAVvCkUIHjCZ/oMTVh34qSNEWLppn
         +HGGkX+tzlFf7rUmpyeIIXxU6cKkij45DldX7sgchUCkuGOGxAv+g1S3lDKuHsKTntV2
         lR4A==
X-Forwarded-Encrypted: i=1; AJvYcCVDSS77d3rkth8/y6/He0OSGaHm75UkpmQz0yy+/Yz34vPgZS0DApBSOS8/C4vaoSvXjA6m8ARzE4Qg@vger.kernel.org
X-Gm-Message-State: AOJu0YwfGlOO587J1mEaZCCtr35gQpPtfBmQGXlcyOH6NJblQfSBA/bg
	9ohh/HCHCbvHysSpJxinEHgdbS8IB3juOMvPIuu1Lp7rkL9InVcQlHDAvf30DmE=
X-Gm-Gg: ASbGncu+xTjkYtBLWr65MKzGqhV1tXdVm8eg1LB6Z2E+HfUTtDDcgQWwCCsZiWNHNiI
	6AhHQMNQyWKpYSzWL6lQqEdZoofFa9sSQTSKlXlJiQ0xy4juW/KLISdyoEMMNUJc8d44mQENjVQ
	+3VxJxpt/hKzLkT+dsHeIrd6z8gjd+rcFuUu7RTshxtMgDALSCdCb0aKUX42ktvrjCgzxlJxX/1
	oZedXQmPZ6fBdqCMtG+DSW04EeXRDUvz4SuGX/zlj2tpPnWYdCNABVRoMOjpM8StSfFkqqCB+l5
	A+Nn6x9TmdJkyNWrNMsOg3TMPDhR6Z2LvClIMVOoE0qxdqgf3t/wF2oUMk0G
X-Google-Smtp-Source: AGHT+IGLOWKp552MjDCQsj2GiquOR4bNT+j/x0B85ycTrL+y/NsfELNzywPJjLCdF2ZBMhuuro0c9g==
X-Received: by 2002:a19:914c:0:b0:543:bae7:ead3 with SMTP id 2adb3069b0e04-543bae7eb93mr2295595e87.30.1737628327267;
        Thu, 23 Jan 2025 02:32:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af0ead5sm2577284e87.74.2025.01.23.02.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 02:32:06 -0800 (PST)
Date: Thu, 23 Jan 2025 12:32:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_kuiw@quicinc.com, 
	quic_ekangupt@quicinc.com, quic_kartsana@quicinc.com, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove cdsp
 compute-cb@10
Message-ID: <i65z3bpnhsqx2cg4ga5lampicdpydtqwkbpr45kfpc5xg7eydv@kaw7aenrcy3g>
References: <cover.1737615222.git.quic_lxu5@quicinc.com>
 <45e0882efe080d882fa083c16c51f613f70e52aa.1737615222.git.quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <45e0882efe080d882fa083c16c51f613f70e52aa.1737615222.git.quic_lxu5@quicinc.com>

On Thu, Jan 23, 2025 at 02:49:28PM +0530, Ling Xu wrote:
> Need to remove the context bank compute-cb@10 because secure cdsp
> uses the s2-only stream.

This doesn't tell us anything. is cb@10 secure (it isn't marked this
way), are those SMMU ids incorrect? Or are they S2-only? Or something
else?

> 
> Fixes: f7b01bfb4b47 ("arm64: qcom: sa8775p: Add ADSP and CDSP0 fastrpc nodes")
> Cc: stable@kernel.org
> Signed-off-by: Karthik Sanagavarapu <quic_kartsana@quicinc.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 0aa27db21f3d..81b2fba94841 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -4585,14 +4585,6 @@ compute-cb@9 {
>  						dma-coherent;
>  					};
>  
> -					compute-cb@10 {
> -						compatible = "qcom,fastrpc-compute-cb";
> -						reg = <10>;
> -						iommus = <&apps_smmu 0x214a 0x04a0>,
> -							 <&apps_smmu 0x218a 0x0400>;
> -						dma-coherent;
> -					};
> -
>  					compute-cb@11 {
>  						compatible = "qcom,fastrpc-compute-cb";
>  						reg = <11>;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

