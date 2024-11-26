Return-Path: <devicetree+bounces-124480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 589D89D8F74
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 01:08:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D780286900
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 00:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD25372;
	Tue, 26 Nov 2024 00:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ORbQMwZE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D081C8F5B
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 00:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732579678; cv=none; b=pEySRxhCcbIjApwRtwQrBoR/mVHZafICYeTyAMSVCtR/etVq2Iw1B5sXgalqQTlG5s8xVrhQt8bc04Tog0GdVGKkQO8R57KnZSL7Xx5vh0a35gOAeGjiTuBMdFwh7ddPJ1ymdoILK+4qfcs9MpiXXlYp5Lor9rLcRfGzBLlxnzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732579678; c=relaxed/simple;
	bh=X6mpm+0aSH+yONFTblg/2zcjomYbcE73fIlBfI5RHMg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ugcujsLKapmbnrMeCu1xQR/qKM8OPYEEze5Nec2d3J8IabmWmvDjQra7+jvS82UF4OlTF5gXrSnWEHGEhnNhxjdbVxoQsgHiqSUgJemLUKKh3HbZzM6X0DBBdBz2DrZ15LkTNVJJuJ/VwH/0kt36SIfxhwRukpo4Wgetl4i8Na0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ORbQMwZE; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53dd9e853ccso3054582e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 16:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732579675; x=1733184475; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s0h1yJRyvRJoHgt/KNNsfZgVIwPLNDSnb2kihwUErsQ=;
        b=ORbQMwZEVk0ABiGLa8623WNatb027pWFXlY4SxlKYjZ7H6G48PI8e+vuX7z1lFFXnt
         +4e65DMtXe98gkorqTPk2CxKj4HwnSIJjZxkv92okceEmwZ46K9fjGl0Gf379ZWEyUq1
         9ueVSJKq9QrAkimIZNdXTsoua3dTFiCWbhBD0VrhrEgG4xazcme8RiEneHzQlJ733zWc
         b3+7oRqHaM30Z6A3l42U4lS58K17slfycpArKk4AF95MNw+qKGJwJOhkCCwpp0hPJq34
         NI7dZVzkLQYzoKsCM4El/VLhlp7hdirxc/rCPNYMruALCbIZd/0Cbx5Cblf0Q27OYHuT
         U84w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732579675; x=1733184475;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s0h1yJRyvRJoHgt/KNNsfZgVIwPLNDSnb2kihwUErsQ=;
        b=u+LqjX/vrFgXWWF6ivQZt3eWEFh5A0F7UlS2SgTjax4Mla9RAg4pXbM/mlvlUk0wEU
         KKJuDfl8KCjUSWfB694wdBD0BXf7w4GHkX4jolLlX6kyWpPBhVtHXXcBbvkJLJgvbU+i
         rFzlwc6AdeO3DxpaIlsGbRZ3H/tDzNq28S9WCA7oJ2csq4HK5ccPl7Xyz44+h1+ASRao
         4AurbF0MOdYWZn4GbzOrtZoK0PnuXQ68vJNT2lYPFbVv1jUMowcEr/hX6jCARDRbB0cp
         nHRN1abmvT6nmhj2zCKcZhaedV6vLBiM332X0zORwxdEKkzi1iThvile7oFqRBYZywYn
         3zXg==
X-Forwarded-Encrypted: i=1; AJvYcCXq94C2OQ+0pRZF86j4RaiPSvDcVKLVYbbizYt1KrtCDx6TGdYuTwmXRYbnPZf44yg8VPbmMgN2iXyP@vger.kernel.org
X-Gm-Message-State: AOJu0YxZP6Qaibj2sms7atK/MVLnRNGPvadjU/KhIY5Cj9nGGkJr46BH
	tYaOwFEOkos83Ue8ZCScRalgZBDhWwvhRVQG+WdilNhlY+2c44/ZJpVbmVIIydE=
X-Gm-Gg: ASbGncs6I8zM7yri/wVc2EDC8B+Ix0DTUJ1U1OPUkl/XLfeK39S7Qj9v1fTQ8utbDZk
	2P760C76bKGvXjXQq+nJoK+EZ9qFHlEKDKehQW01QGbE/Usu9fyk3RjKIRPyv8L782unh+abSet
	UpJBpNKFCmZKDZaipBZ2oGxSADCgJ6l20TB7vf9DaVA40jBOYvHuQxq48t2uotpRyQZi6eet7qc
	a6rCc1rlwspfgfjCeK/xgNUnT3kgIW/zh1foo6hBWJKzJ2awXDR8B7HCHz/c2qhrlROgMJneGOz
	up7NQXwrio7L/W4dvQvKksfb7Dh3zg==
X-Google-Smtp-Source: AGHT+IHNAOdFRvV/LBBc9GEXqWd+CaGlgu2KPTG20eKSwEZ7/zIcGDm+IM+4HhB+6bbrWpaYrRfyCw==
X-Received: by 2002:a05:6512:118d:b0:53d:dc12:7cb4 with SMTP id 2adb3069b0e04-53ddc127db7mr3683910e87.29.1732579674934;
        Mon, 25 Nov 2024 16:07:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2451f8csm1824556e87.79.2024.11.25.16.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 16:07:53 -0800 (PST)
Date: Tue, 26 Nov 2024 02:07:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Yuanjie Yang <quic_yuanjiey@quicinc.com>, ulf.hansson@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	bhupesh.sharma@linaro.org, andersson@kernel.org, konradybcio@kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_tingweiz@quicinc.com
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: qcs615: add SDHC1 and SDHC2
Message-ID: <frjnnd7bvrdn5frfo4xnz35rb5zxa33eayu3oc5wux7casay64@t2tfbsf5jrva>
References: <20241122065101.1918470-1-quic_yuanjiey@quicinc.com>
 <20241122065101.1918470-2-quic_yuanjiey@quicinc.com>
 <7c0c1120-c2b2-40dd-8032-339cc4d4cda4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7c0c1120-c2b2-40dd-8032-339cc4d4cda4@oss.qualcomm.com>

On Mon, Nov 25, 2024 at 02:13:22PM +0100, Konrad Dybcio wrote:
> On 22.11.2024 7:51 AM, Yuanjie Yang wrote:
> > Add SDHC1 and SDHC2 support to the QCS615 Ride platform.
> > 
> > Signed-off-by: Yuanjie Yang <quic_yuanjiey@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/qcs615.dtsi | 198 +++++++++++++++++++++++++++
> >  1 file changed, 198 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> > index 590beb37f441..37c6ab217c96 100644
> > --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> > @@ -399,6 +399,65 @@ qfprom: efuse@780000 {
> >  			#size-cells = <1>;
> >  		};
> >  
> > +		sdhc_1: mmc@7c4000 {
> > +			compatible = "qcom,qcs615-sdhci", "qcom,sdhci-msm-v5";
> > +			reg = <0x0 0x007c4000 0x0 0x1000>,
> > +			      <0x0 0x007c5000 0x0 0x1000>;
> > +			reg-names = "hc",
> > +				    "cqhci";
> 
> There's an "ice" region at 0x007c8000

Shouldn't ice now be handled by a separate device?


-- 
With best wishes
Dmitry

