Return-Path: <devicetree+bounces-42613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4266E857E27
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53EE11C24FD2
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 13:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E2012C53D;
	Fri, 16 Feb 2024 13:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KMb2w7Vv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BBB12BF24
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 13:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708091730; cv=none; b=IU8qvpRNV9nKnEPTjlVhmG2957OVvb6by6lkY7YPHcG3sVQb39biaItoUtNhjZyMdmBYFDiJ4EP4Oxj2KUjm3V4IaJHSUO5FtorfSZS7DrSbRK7enPsQ2lLeUdKw3y7oVdBn8N4dC9Cph4D8FpVtG7MLbz/HiZ+4qTUnBbuV4d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708091730; c=relaxed/simple;
	bh=/mmB228C/BQ7s2uCVtfW3Iw03rGkUt4iO7SoUQ3CO14=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mp0KBQBq2lYJuRbjMuZioxdehgKsAZg9YxL1/80XIbGeEtoHae1preEgYdmiD/C1yy3Q+QHpyxvGk5gt0Jf4lvZHx55BPRZ1hi+v3QqtKfgfyCrhj9gvLTrxHWrh/QhPTVqvHPSMYNZ4mQ6/kJspC/7Lw9O2AkY8PLFYBFUFBKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KMb2w7Vv; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6e0a4823881so1396281b3a.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 05:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708091728; x=1708696528; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bI4Ce7Y+3/vThHJnrphpGJSZUsrKr18V/3gqTitmj3k=;
        b=KMb2w7VvfHy9uJGSCtwR7cKMjaC/XnldpWPtUnVsDC7mjx3yw3LA080p98CPQw/+1Y
         dSPqAmTCKAb9iCSwJlyG+E6ouJTL55gmBMIRq3GgY2UaJ86FiUKvGeHghPWbgCwOSXrG
         Md+EP8mPhRdY/YsS1cGStuExDLPfQ/S0R+KQbvcdm9iMiLQ9b2/ULMzvzRE0eWgJw6D+
         WM6B+VFjr4PMUxSKH5axAEcodHDV9yYCfUrD+sURtU+L91njKfU09jyOF6Q+gln4Jqk7
         zC2apHriOND5d08UpwMvIb2zPmtL+yZ8ZbgypcvQtNgIOKdA2Why1iASp2p4zjXPb1p7
         0sig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708091728; x=1708696528;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bI4Ce7Y+3/vThHJnrphpGJSZUsrKr18V/3gqTitmj3k=;
        b=qhAepI834EPawU1UCWQWOjLEnC+KqOn1yXi5/aO8H5WtwLv65Ny9TKrnheLM8UyEmI
         EzCe2cwPRpY+cnyo1C61XZyzxI+7Ao/c3qrIUF8k77eIN4EGP7CopJinwLkbFBw4qhF8
         /s2pSOhc+a1L3M4HFA3SAOvNIFShzkmaBWR7gAkslICTTvtPK/R4ldWEapujZ4Qrfx1x
         u8hINql9yBrfDSa3qLTrfS/vuEK+0Lc67DlOTL/CXORO9aBJZTcguvkq2I/DGxVY3XXu
         O0q59X5xiuOpH69KXnvep+u18fWz81i3bs+tNjuQhJHjD4bh/h7l202FbH/+87u6hzHf
         dSBA==
X-Forwarded-Encrypted: i=1; AJvYcCVw6aj+uAKHIDLyha+94Fj6k+CjdT9KRZ7g3+VaMfOvK7/3oLh64p1UdPAxv3wVjx92VK/mHRbGbVlWKz9RLkRPIbqU+U0dCq6XtA==
X-Gm-Message-State: AOJu0YxGTNxMuJ6qQ8k9fUMzBl7LbE1cYzlU7VPcmQ0NBEu1lQQWa+zK
	uc5VolKWFKh3PPxUfu0LoW3YuWrfbGysI6zEtjdotCzm5ZEDvjUFukIySdEnHg==
X-Google-Smtp-Source: AGHT+IG5X9pFHNpEVClMkRvB4oUBk5uuCFFhE0K0bOxMjLfz7CmeR6OBbOeQW+aMCqoelUXN6nRq/A==
X-Received: by 2002:a05:6a00:2d81:b0:6e0:9da7:8cfd with SMTP id fb1-20020a056a002d8100b006e09da78cfdmr6229080pfb.5.1708091728322;
        Fri, 16 Feb 2024 05:55:28 -0800 (PST)
Received: from thinkpad ([120.138.12.48])
        by smtp.gmail.com with ESMTPSA id r17-20020aa78b91000000b006e08d628e2asm3181579pfd.19.2024.02.16.05.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 05:55:28 -0800 (PST)
Date: Fri, 16 Feb 2024 19:25:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Can Guo <quic_cang@quicinc.com>,
	Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: msm8996: specify UFS core_clk
 frequencies
Message-ID: <20240216135522.GK2559@thinkpad>
References: <20240213-msm8996-fix-ufs-v2-0-650758c26458@linaro.org>
 <20240213-msm8996-fix-ufs-v2-3-650758c26458@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240213-msm8996-fix-ufs-v2-3-650758c26458@linaro.org>

On Tue, Feb 13, 2024 at 01:22:19PM +0200, Dmitry Baryshkov wrote:
> Follow the example of other platforms and specify core_clk frequencies
> in the frequency table in addition to the core_clk_src frequencies. The
> driver should be setting the leaf frequency instead of some interim
> clock freq.
> 
> Suggested-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Fixes: 57fc67ef0d35 ("arm64: dts: qcom: msm8996: Add ufs related nodes")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index 80d83e01bb4d..401c6cce9fec 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -2072,7 +2072,7 @@ ufshc: ufshc@624000 {
>  				<&gcc GCC_UFS_RX_SYMBOL_0_CLK>;
>  			freq-table-hz =
>  				<100000000 200000000>,
> -				<0 0>,
> +				<100000000 200000000>,
>  				<0 0>,
>  				<0 0>,
>  				<0 0>,
> 
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

