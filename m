Return-Path: <devicetree+bounces-34596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A8E83A47D
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:47:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B8FD284771
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B56D81775A;
	Wed, 24 Jan 2024 08:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CwfckkQG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BEE17BA3
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 08:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706086038; cv=none; b=JvbeGvz1GIkrahRan0SekrQ7+w7QmmbPSHa1H56bENgxEEeVnhmo/+6/pVom2bkiR4Shc3NkZFEfr3i4YlxtJF6nnyJLAJ/U7kRO9nbG6JwCOJlQwcBCa6EFr+4uhz2KPZ+7alrG4DodOA0WCI+N/x+VNRuqBJ0iYFzFmRUzAPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706086038; c=relaxed/simple;
	bh=/zscOn2VGjXQu+e3uCRHdAjLTiAFEmj5ojQ5R1TC/KQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cwoCFJtDuQJ9KharXXS8pFjTuueWaZ2Jizu1Kd8SDCQrE/kuyBAnUQuQtpeN0kIYZlliX5xPQX670YYA575FlzCGCOpvOxkYBh6T76yOXmAO99uZU5Hb5TnAMjm55LFHnN5oeL/LIsowWThBStANa+8RPfhY/3t/61z3mf9Ok1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CwfckkQG; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-683cabd96ceso30122006d6.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 00:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706086036; x=1706690836; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vOnv3adWQrKv1Zkv4bX3OIcJzRZ65t2vYD9WyrY+EY8=;
        b=CwfckkQGPhnKM9Pmx6O+LlYtGGJW83sZXAd9LivfOdsY8Um6xgBJuyNPXVS2etgPsy
         kLJhx+PIT2sGvPdk64S2D0p5GWFaIv7BQvtLcb/ZK8GyBYt8OaaZb0EgV6tidNrJBNYU
         sjTeLFUUPcOTREuAi1olCMNH/jK3ivIgkHZMfYTcLZDKpXpODeO5+2OmCRrc40DuPlYj
         m7kWidT/aAnQhcFe9HDpyOamlF7P1C27l9fojL9/zzeOiR7zgQGoHWu2b36NgKPhzZV/
         H66O/7nzBfkhOxfsEirJXy6lL8pmnQYv05I+xiFH5HwiaN0D/wlmVjVWELH8Gh5uY4Bf
         A5Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706086036; x=1706690836;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vOnv3adWQrKv1Zkv4bX3OIcJzRZ65t2vYD9WyrY+EY8=;
        b=JnTNi657/f/IghgsephtDdppxabzWilpQKxpfD3ZeLVH1LuFzsJGHWkKq7yvZW7Z0q
         ojUOv5AM1w1rLZoabvivWdArYmGLJmCiaLLDH+skSkYzexpfEysLYfsufEiQ7v329Wiv
         Qg2Vd+tILORkGl6cCad+bSjGytPtKeWVH56MlGerOsecvfiv4YhflZM9Md+gMAlwb14t
         5Gw5aBFkf1iJJw6j6a0gS90eoI2vT/11p8uYxF3oLgebAt2MOD+UzuiriHI3vDNKYQTs
         Zz2TNtRhoEyB33PgJIcdIqjjcVpaIAh8l8831AGCd5XHa6ktifYGwrzSxGD09ONBbJKG
         HYUw==
X-Gm-Message-State: AOJu0YxPAap4Graeqg/5pp7NPsy4NvAfwm4VK2ya6DCob+1gH+COqBYS
	gNfuK/nWtBaiBsQ1NvirN1qZqebRpcm/tnV8WTE2a/H1HJKYtNhulQ/kVJjJaQ==
X-Google-Smtp-Source: AGHT+IHI35pk3JFRrtsiBg3LW/bMC+Q5U/NC24rnsI0zZ+xuGKIthCubKXQN+iyZccdPkF6iDuPrJw==
X-Received: by 2002:a0c:e285:0:b0:686:2b72:6f39 with SMTP id r5-20020a0ce285000000b006862b726f39mr2160281qvl.98.1706086036074;
        Wed, 24 Jan 2024 00:47:16 -0800 (PST)
Received: from thinkpad ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id ny18-20020a056214399200b006868e6d8b37sm2960906qvb.23.2024.01.24.00.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 00:47:15 -0800 (PST)
Date: Wed, 24 Jan 2024 14:16:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: andersson@kernel.org, vkoul@kernel.org, sboyd@kernel.org,
	mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, quic_cang@quicinc.com
Subject: Re: [PATCH v2 14/16] arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
Message-ID: <20240124084659.GE4906@thinkpad>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
 <20231218120712.16438-15-manivannan.sadhasivam@linaro.org>
 <e905c463-6f89-4939-981a-7a360ed31669@linaro.org>
 <20231220083014.GB3544@thinkpad>
 <a888e261-e990-445c-ab98-f63859c19dd2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a888e261-e990-445c-ab98-f63859c19dd2@linaro.org>

On Wed, Jan 03, 2024 at 02:50:04PM +0100, Konrad Dybcio wrote:
> On 20.12.2023 09:30, Manivannan Sadhasivam wrote:
> > On Wed, Dec 20, 2023 at 01:35:27AM +0100, Konrad Dybcio wrote:
> >> On 18.12.2023 13:07, Manivannan Sadhasivam wrote:
> >>> QMP PHY used in SC8280XP requires 3 clocks:
> >>>
> >>> * ref - 19.2MHz reference clock from RPMh
> >>> * ref_aux - Auxiliary reference clock from GCC
> >>> * qref - QREF clock from GCC
> >>>
> >>> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> >>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>> ---
> >>>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 18 ++++++++++++------
> >>>  1 file changed, 12 insertions(+), 6 deletions(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> >>> index cad59af7ccef..37344abbe8bf 100644
> >>> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> >>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> >>> @@ -2256,9 +2256,12 @@ ufs_mem_phy: phy@1d87000 {
> >>>  			compatible = "qcom,sc8280xp-qmp-ufs-phy";
> >>>  			reg = <0 0x01d87000 0 0x1000>;
> >>>  
> >>> -			clocks = <&gcc GCC_UFS_CARD_CLKREF_CLK>,
> >>> -				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
> >>> -			clock-names = "ref", "ref_aux";
> >>> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> >>> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> >>> +				 <&gcc GCC_UFS_CARD_CLKREF_CLK>;
> >> GCC_UFS_REF_CLKREF_CLK
> > 
> > I'm not sure about this CLK. So I kept it as it is until I verify it.
> I am quite sure everything *UFS_CARD_* refers to the other UFS host..
> 

We cannot infer that from the naming. There is a chance that the same clock
could be routed to MEM_PHY internally. Moreover, there is no separate "ref"
clock for MEM_PHY though.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

