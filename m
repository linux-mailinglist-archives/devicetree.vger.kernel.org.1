Return-Path: <devicetree+bounces-80426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFEC918E69
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 20:28:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B20DD1C21E73
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F8E190680;
	Wed, 26 Jun 2024 18:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JyvVrjta"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502046E613
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 18:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719426479; cv=none; b=OebQAbSuN/RpfddfRlV/QaGx77xiXlOB97pii3p6o/y/v/kxn8sL+h8asnUefUBV0KFnHBZ3vWYVDhIcvHn0adIwOxqdHjO8PM/U1KsyuLoB3chLuHADuy1jQVCo90ARZL7gArpK2vCK2lA0m8D8XcnVMCj3SLzyRMho6krTvtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719426479; c=relaxed/simple;
	bh=a6FzYWv69DsUbCcBb7bvimOb4Ei4H97bwUuQjSB9wu8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kjYtYGZY5Je8EVbvRoueMTMnQmt8IJYYacBIHdNJX1ro1g040sbItii11qD7STT2Zszvue+UoV2WliJxJZJPBVk+rsFaFJmBZHFl+Y1kXDlhX7hvQj9mL4xvzvKVe9Ldj0dJ4X4ezrDwbcpx9kpVlti5U9AqBFVg0Naf4YXaarc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JyvVrjta; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52cdea1387eso4802939e87.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 11:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719426475; x=1720031275; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MhjXcHw7FVgAMx0G+RWSt5aInx19NHmALWCSrJmelhw=;
        b=JyvVrjtaFBtcFzvH/BcJz602aL3zYT1+4fl0KXdYklkl2AObikm/xP/6biIK8Y+aFE
         PM476zp1Gk9L3NkKNFRRnmlNqizktwFmmrDKo7itloahqhu0ptFKUh0vlY9aRKWXDVQS
         ZVHAIzTEdTAOH3KwksydTU7RFA5aRexp9e7tIHY1zA6zGd4836yLIEfwwvE+XLCBFsV5
         Wm/DkrxUajCoGh2wg25vyV15xn5QXfrfzgpx6oXkvzlndVWv2yib1aA/Db8JOEMbZNEN
         c3WQpo/OjssEdoAnDVSYPYAlNFLoBunhRFx5a3gBYJxV07AFX10fujF8icjyQFRvylr+
         Gbhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719426475; x=1720031275;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MhjXcHw7FVgAMx0G+RWSt5aInx19NHmALWCSrJmelhw=;
        b=kdfxk/3tGoRbIYULFDL8b00cnarnQZJ+ll8b6pvL1Ehp028UHXEVYzS/Yr2pclnQnf
         Szc9+50JAGSmnG6jkPqoFhiFaL7vcA14b64VDiia33gUfjZmStKmn7JspAHYAmpdAON3
         lM4db6EDq99uVFYBzEvEHnahjf2NWyQkI5UnA0sa67ifN3HhvpgETKC2yD68WpK6HAa2
         tejuYOXpPIbmSN54yPuUmgZMTgxUN8NH4LaSFnLYupyIBG2lZKTYUiUw8nwqkeHBF8ok
         wKTIGFm4Vyh5amDyMukKShc4NIduXHdUef/U9CFSbE7ePCh5cy3nAEfX4UJZjmuM/mmn
         alQA==
X-Forwarded-Encrypted: i=1; AJvYcCUaDm/YmiNdgfr0kR2rcu7Dn/J41U165JyZwsdoEaufVCy6iTcZV+w9Wms3WgMQ624cZ/S4aJ2rzpTaAHOESwJE2A6N9v4MenMArw==
X-Gm-Message-State: AOJu0Yw/yCIWRXnwOAzWp2PbPKw/CgRxYLdAy9Rd+32WvJ8fmJoL7DbM
	zw78fGJHqm93NnAlDdZ6SBNBbFu04bg3z/gduJQ7e8b77fOmn7tuR6h0fLY4mVs=
X-Google-Smtp-Source: AGHT+IEJzRobCNsozOhRUGtRUeSLzudKYYFc/XMfCSoTuQ29oqcRq+W9SXYZmI9jbvdiC8PxtjAIDQ==
X-Received: by 2002:a05:6512:3b0c:b0:52c:e393:6634 with SMTP id 2adb3069b0e04-52ce3937b27mr9047836e87.33.1719426475569;
        Wed, 26 Jun 2024 11:27:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cddee9029sm1380868e87.152.2024.06.26.11.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 11:27:54 -0700 (PDT)
Date: Wed, 26 Jun 2024 21:27:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, ilia.lin@kernel.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, ulf.hansson@linaro.org, quic_sibis@quicinc.com, 
	otto.pflueger@abscue.de, neil.armstrong@linaro.org, luca@z3ntu.xyz, abel.vesa@linaro.org, 
	danila@jiaxyga.com, quic_ipkumar@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 8/9] soc: qcom: cpr3: Add IPQ9574 definitions
Message-ID: <txid2b47zhnuknz35xaosfctuojrnrskcjehhqmyqubuxdimqj@7q7pzxlavk6k>
References: <20240626104002.420535-1-quic_varada@quicinc.com>
 <20240626104002.420535-9-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626104002.420535-9-quic_varada@quicinc.com>

On Wed, Jun 26, 2024 at 04:10:01PM GMT, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add thread, scaling factor, CPR descriptor defines to enable CPR
> on IPQ9574.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v3: Fix patch author
>     Included below information in cover letter
> v2: Fix Signed-off-by order
> Depends:
> 	[1] https://lore.kernel.org/lkml/20230217-topic-cpr3h-v14-0-9fd23241493d@linaro.org/T/
> 	[2] https://github.com/quic-varada/cpr/commits/konrad/
> ---
>  drivers/pmdomain/qcom/cpr3.c | 137 +++++++++++++++++++++++++++++++++++
>  1 file changed, 137 insertions(+)
> 
> diff --git a/drivers/pmdomain/qcom/cpr3.c b/drivers/pmdomain/qcom/cpr3.c
> index c28028be50d8..66c8a4bd9adc 100644
> --- a/drivers/pmdomain/qcom/cpr3.c
> +++ b/drivers/pmdomain/qcom/cpr3.c

> +
> +static const struct cpr_desc ipq9574_cpr_desc = {
> +	.cpr_type = CTRL_TYPE_CPR4,

So, is it CPR4 or CPRh?

> +	.num_threads = 1,
> +	.apm_threshold = 850000,
> +	.apm_crossover = 880000,
> +	.apm_hysteresis = 0,
> +	.cpr_base_voltage = 700000,
> +	.cpr_max_voltage = 1100000,
> +	.timer_delay_us = 5000,
> +	.timer_cons_up = 0,
> +	.timer_cons_down = 0,
> +	.up_threshold = 2,
> +	.down_threshold = 2,
> +	.idle_clocks = 15,
> +	.count_mode = CPR3_CPR_CTL_COUNT_MODE_ALL_AT_ONCE_MIN,
> +	.count_repeat = 1,
> +	.gcnt_us = 1,
> +	.vreg_step_fixed = 12500,
> +	.vreg_step_up_limit = 1,
> +	.vreg_step_down_limit = 1,
> +	.vdd_settle_time_us = 34,
> +	.corner_settle_time_us = 6,
> +	.reduce_to_corner_uV = true,
> +	.hw_closed_loop_en = false,
> +	.threads = (const struct cpr_thread_desc *[]) {
> +		&ipq9574_thread_silver,

If it's silver, where is gold or bronze?

> +	},
> +};
> +
> +static const struct cpr_acc_desc ipq9574_cpr_acc_desc = {
> +	.cpr_desc = &ipq9574_cpr_desc,
> +};
> +
>  static const int sdm630_gold_scaling_factor[][CPR3_RO_COUNT] = {
>  	/* Same RO factors for all fuse corners */
>  	{
> @@ -2828,6 +2964,7 @@ static void cpr_remove(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id cpr3_match_table[] = {
> +	{ .compatible = "qcom,ipq9574-cprh", .data = &ipq9574_cpr_acc_desc },
>  	{ .compatible = "qcom,msm8998-cprh", .data = &msm8998_cpr_acc_desc },
>  	{ .compatible = "qcom,sdm630-cprh", .data = &sdm630_cpr_acc_desc },
>  	{ }
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

