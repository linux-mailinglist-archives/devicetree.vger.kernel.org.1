Return-Path: <devicetree+bounces-203083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF693B1FFCA
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 09:02:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AEED1675E0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 07:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 387902D948C;
	Mon, 11 Aug 2025 07:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SZQz9W81"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6859A1F0E39
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754895719; cv=none; b=HkkJovqta4NrSUn3T9IUnZGCo1QUhPUkUwlo1p3me94zr45/X3zGclBiS2E+ZODqaqAOmn+XV/LUuFMyyNd82TZeI2aFFdodtp+UqVQUjGr+o4zXLHXUOQMpQVGLBKlzm/8T1+eLXcw5bOgsu7OnU2BxVIAYhyAmO6k/nvKK04w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754895719; c=relaxed/simple;
	bh=i5i+o2f+rrl/OAOkHKuvWRjEKuAxEakK5GVIkg3Co6Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hggxvVCY6feciS6OvESCwpdS7KREFqy6gljJDxU7UYMgPUl8tcpnjoVhlEzOndL1CbEjTtggUH+5fxoVaaohebYrW82FE1WEZZ29ukrzARx55l7YIXuN8q/jENXi4FAiKRMVKiWD8/DqVjgNALlzdPOGZE/M7VzmpmSlPpc1Htc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SZQz9W81; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2402bbb4bf3so44144805ad.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 00:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754895717; x=1755500517; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VHEw2IHzxA4wFPAA7C102H9OqGdRlerd4Wo31dulLWQ=;
        b=SZQz9W81/mXFsNxJ/m3ywX8jkIBpAonPnoei/q2JpUG5H5shjzuloeEut9f5VOTkSZ
         8HtUlOLiknpX9bxHSZM4vD61gZ+mrCfdAzka1joWQg0DaZ2Y2DJyoRjzzR1YiSlFnf8c
         FFPfVHfyjSWC1TWZbhntRW3MvERT286sVK5rNpwSF4qtlaYsVrFE063JIXP5ioKYeInm
         VvQjWFa8QcGP8pAWKtsn05XqknTOF/UIhkhqsDfxA7JGhgoCWzAJBvXbWmRhX46dR9BD
         FntrFGOsuiSC3CCgKdZxmM+cud8WuLuzGF/7dqphZQnTAQtyR1nOz7Cnrtsbe8IHdPCE
         G6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754895717; x=1755500517;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VHEw2IHzxA4wFPAA7C102H9OqGdRlerd4Wo31dulLWQ=;
        b=s9vdgvhWoNGPCjS1ZNV/E6IwdMHxg0uswFYMDzqP2S3M5lpUpvPhI7M3qTE6Wec8tT
         hzCIsCE0crZ6G1vveQFlY1u7n5ycm0T0wUkDoZ/035R9bZhuQlnCpIggNt458M7b+C0D
         WHFk1PZGVtBcL/+kd2Nw2DvgYZCxmo+r+9nfo7wTIOcaEgf93STRaWAdFpG5TedOtiN2
         Zi62wtYuE6Y9Lv05IhSZDpMI4UjtqUs9shtDEjcodNVrgOrNdImD/zb2y9salZOn8HDi
         DjrO4cBazN7mzFuYqqw7jkoln2exeuOFYXVGjX4Q64CvAgJ9qSWI4u/V2Q8EoGN7CDWF
         vglw==
X-Forwarded-Encrypted: i=1; AJvYcCUfqEhBSd1cejimEe1qtN5F2p9cg2VcGP31YCQuzVk/TwlfyoLDLIa8taY2oVWK7dW7tJi+CfIovxbQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2NnjL8vqhXOV5f1xdNiQJOuP2FGiEikm/07RnXOIVX3wGFTnd
	Zp/tUKjYdMF9Vp/PrF+fLdJqyJBOKXb6Uoc2nCAqMAmxHwmTDtdiyOPljJtahronB9k=
X-Gm-Gg: ASbGnct3NMu+aHohNkyMLsaKDt2yVu1DqpA/r/osyHocMDuXzREfLK8ugjO+6kcVAru
	ZTp8e1Js0obExJ/afIQ8IlN6DsIoxEom3kW1ijrj/j6pZhNSICslS9UKyeOnfKqckp8zpm2h9NZ
	nV9CMFrlIRR/znYpFll2gUz7GbKlSNL0I2nSqBe4Ik5ZpWgWbiN5iYOmvBwK5nVzMkVU6ByI/rZ
	P11JaJJ9iLeTJMBi36o/Ibp88qBZJblaabaymWdnQGlPomvv5ZA2oBtQ8NlbFV2ehGFsmzT2HoP
	+OKiz11DM3/OCBRnk6HPIhNLOhdQUAW603Bq+MGaXhJ5Pk4F91srrIQ95pyCBLYyfq80WVakGJp
	mporX/ek0p3rKp4zTx4bMMFTz54ekbtQwv5Q=
X-Google-Smtp-Source: AGHT+IGfBYscmszLcQ4WIVww+p90HeYYLjnd7VEGcPNozcJMTJpfpN4Si84n434k13+c6xYJKAYYSQ==
X-Received: by 2002:a17:902:fc4e:b0:240:469d:beb0 with SMTP id d9443c01a7336-242c21fc427mr199498845ad.31.1754895716651;
        Mon, 11 Aug 2025 00:01:56 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899aaecsm265961735ad.119.2025.08.11.00.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 00:01:55 -0700 (PDT)
Date: Mon, 11 Aug 2025 12:31:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	konradybcio@kernel.org, rafael@kernel.org, ilia.lin@kernel.org,
	djakov@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	Md Sadre Alam <quic_mdalam@quicinc.com>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v6 3/4] cpufreq: qcom-nvmem: Enable cpufreq for ipq5424
Message-ID: <20250811070153.5rjj2cudgs7rwiwc@vireshk-i7>
References: <20250806112807.2726890-1-quic_varada@quicinc.com>
 <20250806112807.2726890-4-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806112807.2726890-4-quic_varada@quicinc.com>

On 06-08-25, 16:58, Varadarajan Narayanan wrote:
> From: Md Sadre Alam <quic_mdalam@quicinc.com>
> 
> IPQ5424 have different OPPs available for the CPU based on
> SoC variant. This can be determined through use of an eFuse
> register present in the silicon.
> 
> Added support for ipq5424 on nvmem driver which helps to
> determine OPPs at runtime based on the eFuse register which
> has the CPU frequency limits. opp-supported-hw dt binding
> can be used to indicate the available OPPs for each limit.
> 
> nvmem driver also creates the "cpufreq-dt" platform_device after
> passing the version matching data to the OPP framework so that the
> cpufreq-dt handles the actual cpufreq implementation.
> 
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> [ Changed '!=' based check to '==' based check ]
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v5: Add 'Acked-by: Viresh Kumar'
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  drivers/cpufreq/qcom-cpufreq-nvmem.c | 5 +++++
>  2 files changed, 6 insertions(+)

Applied. Thanks.

-- 
viresh

