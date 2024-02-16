Return-Path: <devicetree+bounces-42634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6289857EB0
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 15:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77C3A1F289DE
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773A412C817;
	Fri, 16 Feb 2024 14:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a2Xb97On"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C7812CD9F
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 14:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708092331; cv=none; b=ARBx7qWR962lN9gnIvOXw5U28Qjc/FkZ7hcUTzHgCDs/quJKgSNxyeN1bKeR3mFNQKM7VFeI5yNSUS4dy72AW7ayOg+XjgRs1IohGDpanYz7/D5jrXbtB45n2kbBEE8bJk9knu5rDe2LvLTIXciZiZDlhUWqrDmxHV/jaHng+64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708092331; c=relaxed/simple;
	bh=F8midk/T+omEqYMOQEp3ihmjyhJ5UadddKfjPp7cwrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jnU72E5upH+Axo5oCEPn5FO0vTtzca3csPrkKfsA+lU5A5tGw4kadE0TGSAaPy1d3Jy0vAjYyPIQdH67BWumA+cP7yk7Wtk5EEvXNXrqLicqz6+1pvRIyPGzv1CoeuKRsb7oe+v+LW1Nx0CmGagluDgtYCpoXYcTUF0Z/ItCar8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a2Xb97On; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6da9c834646so1871744b3a.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 06:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708092329; x=1708697129; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oZufnX9tFnQjoiNUPIE21T+F66j9xwWMF6VYP2fLe/4=;
        b=a2Xb97OnLh4JVfLTfeaTUWfn/bPVLRmMYsAosIsJj9HyAGnaQmdZNjw3vIyMCbaSgg
         otyX58j2hcM29jm0Yea6jzXR+YOUYuw4gnbDvj9L7V9KhNb+6gjkWc9hCn0Rk12+2NTc
         ZtrFdt+dxY9lKxiW4gLD8NGngY0A9Z1Kkhlj0oPp3LBN6xOXx8LMuck96o8XaDEs8+V0
         pLnF8jvhxhokrJQZuUlyvt5aPVLg7jwCm/nOd6+PHBCzjk5VTRlRCCNkfih/QVYWeEAu
         K1bB0aC4kRt0wCWDcXkQn002ZZoLFtI79TUI7iWO9GzV5koNeE98E69dzxGZLaNTDxkr
         1dQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708092329; x=1708697129;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oZufnX9tFnQjoiNUPIE21T+F66j9xwWMF6VYP2fLe/4=;
        b=m2k2iT/MwT0/h/swjcvorCp3CPHitB27XFxGoG6NZ45kytOZtx46yHwfK4jf8+gIoG
         mM3e0xQJDkYpeEs8njuaZXzwysmdTRb+3/ugfi66KkHp1Qf570vRuvDXsEHtcG/lRtHK
         UEjtnIp0VgbwHArXowyYwNk55kJ2D7Wvv3QIF7+o+QYfTjxgDQSdWgzKCrYe3t3/WS1T
         ZZFga1y5wLb/ixXeXWQfw1FtkEW1ssbB1/WYGhQUsHW6osPAybJ5zSl9/3zi6zfAT+xz
         7OAg91oIr+S6vhAgnEJNkWKuSBMWiOG4Xg78AGHZJp2ghFZlTpQz1isiht7qxJ0DJMr3
         MuTw==
X-Forwarded-Encrypted: i=1; AJvYcCWi3K4TYDYeQoYbU9t+5zqz7UmmqcgvMVwXaRV+q5Y8J6N4QbQITd8Enj6Zyh5sBV0tbo/GcNR6P3UM+UN0ir9m//l7NMN4czy6Qw==
X-Gm-Message-State: AOJu0YwC8HkPzvH7snv0+elp3qlzM6VYqxf/brxRFDcl4JOrpo+ltSOx
	eFoYFSYT1PqiRTGsM5BIxiDNijQRpDgA7TqWWdaSODhvQbYWh1b/1uiFSb/lbA==
X-Google-Smtp-Source: AGHT+IGIJLu2xD9WGLhIgNSyonAe5waClziHCq3k+o8/45VHBkgDyawGWbdNR9czUymA9dr7fOD03A==
X-Received: by 2002:a05:6a20:c6ca:b0:19e:a1a2:60f6 with SMTP id gw10-20020a056a20c6ca00b0019ea1a260f6mr6534298pzb.57.1708092329236;
        Fri, 16 Feb 2024 06:05:29 -0800 (PST)
Received: from thinkpad ([120.138.12.48])
        by smtp.gmail.com with ESMTPSA id m20-20020a63f614000000b005dab535fac2sm3279726pgh.90.2024.02.16.06.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 06:05:28 -0800 (PST)
Date: Fri, 16 Feb 2024 19:35:22 +0530
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
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: msm8996: set
 GCC_UFS_ICE_CORE_CLK freq directly
Message-ID: <20240216140522.GL2559@thinkpad>
References: <20240213-msm8996-fix-ufs-v2-0-650758c26458@linaro.org>
 <20240213-msm8996-fix-ufs-v2-4-650758c26458@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240213-msm8996-fix-ufs-v2-4-650758c26458@linaro.org>

On Tue, Feb 13, 2024 at 01:22:20PM +0200, Dmitry Baryshkov wrote:
> Instead of setting the frequency of the interim UFS_ICE_CORE_CLK_SRC
> clokc, set the freency of the leaf GCC_UFS_ICE_CORE_CLK clock directly.
> 

"clock", "frequency"

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index 401c6cce9fec..ce94e2af6bc5 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -2076,9 +2076,9 @@ ufshc: ufshc@624000 {
>  				<0 0>,
>  				<0 0>,
>  				<0 0>,
> -				<150000000 300000000>,
> -				<75000000 150000000>,
>  				<0 0>,
> +				<75000000 150000000>,
> +				<150000000 300000000>,

Btw, I noticed that this platform is passing UFS_ICE_CORE_CLK_SRC as
"core_clk_unipro_src" which looks wrong.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

