Return-Path: <devicetree+bounces-12149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8747D81B8
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:21:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27C4D281F98
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE4B2AB25;
	Thu, 26 Oct 2023 11:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kJRZvA49"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273B3C154
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:21:29 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82CEB1AC
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:21:27 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-508126afb9bso1033824e87.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698319286; x=1698924086; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WSKeXxSFvdhUI991XGbb0vn+r/xj55RtU6bSV+aiUUI=;
        b=kJRZvA499Io+GyM5T3GfbM3+h2hB/B6Mk9Eae3A3WpZL3lRI6tPy0ObDLxUXaF8tSX
         Of21RetbJ/j6AwP+TzQeNu7pFGggXs+c7GAzdxka3mr7ojrRtoLrPcYHD1X0fpmfFRTN
         irIcgvcBL7WENLRrwexE9AJ2GXrZUDEkHcsZevJOFqewIm4EytMRMS/Lse8TvtotrWQb
         B91fIkJsDJAzpXi2sGvlCHUtq1mVrgMq9qj2SgAaHqf+ZwtuumH6AbAm6fMj1Fs+uc42
         j/Q9x0e2tASb10eCvnBxdJz96Uo+N3J70ks82CaAOidkX8S9A0PXWPQLa282z8z7G+Z9
         Gj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698319286; x=1698924086;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WSKeXxSFvdhUI991XGbb0vn+r/xj55RtU6bSV+aiUUI=;
        b=UexSiaiYlucjj8bqiTHeo5Fjg8CdlCMCNlo+RR85cVXSwn7c+SSSTnMSLD+H6V947F
         n1KNrREU1zadW2ptTTmCXa/NOju7nDASQt7pW8tHxcvFJohG5vCF0O/oWzH/bWQUFFOK
         6ywcD4Va2BSX5LmTCWVbK6WTgsKC8PZ83G5qIIpItqkeq2u6959qrjafQh7n09GOr6la
         REcog8SRy7fArS02Jwlyy6hifbIP+YQV8LzhDA+KhVHCpfVCP6KvucR2GAo9BhGflrJt
         U0kpyCevOqx3ZTPg7ii/VOh/Tfk4BHdgoPSqebifqCFpVa2F7IDgOA1T+fRElDTMXPG1
         S6bQ==
X-Gm-Message-State: AOJu0YwmL/dbbutIv3MiAM2otb8vtPJGYPpLvsSVdV4/fn4p8Ud+GmfU
	p9UbUw0gp1UVQEdxHjh+lHIn/w==
X-Google-Smtp-Source: AGHT+IGMDRJ++uq47HfhGaS8EshCxhhx3j3Ev8XjrLvyBnG+fsZOQ1XrKzrhUL1bi6EvEiqHg752kQ==
X-Received: by 2002:a05:6512:3094:b0:507:9f24:ad17 with SMTP id z20-20020a056512309400b005079f24ad17mr15567200lfd.43.1698319285654;
        Thu, 26 Oct 2023 04:21:25 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q5-20020a056512210500b00507a14e18d4sm2974495lfr.222.2023.10.26.04.21.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 04:21:25 -0700 (PDT)
Message-ID: <20e2801d-df4f-436e-a677-2c81d43e3273@linaro.org>
Date: Thu, 26 Oct 2023 13:21:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v4 3/4] clk: qcom: camcc-sc8280xp: Add sc8280xp
 CAMCC
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 dmitry.baryshkov@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jonathan@marek.ca,
 quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
 <20231026105345.3376-4-bryan.odonoghue@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231026105345.3376-4-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/26/23 12:53, Bryan O'Donoghue wrote:
> Add the sc8280xp CAMCC driver which follows the sdm845 CAMCC lineage
> with additional CCI and IFE blocks and more granular clock parentage.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
[...]

> +static struct gdsc titan_top_gdsc;
> +
> +static struct gdsc bps_gdsc = {
> +	.gdscr = 0x7004,
> +	.pd = {
> +		.name = "bps_gdsc",
> +	},
> +	.flags = HW_CTRL | RETAIN_FF_ENABLE,
This should really be HW_CTRL_TRIGGER from [1]

and then downstream uses cam_bps_transfer_gdsc_control and
cam_bps_get_gdsc_control to control hw (fast) or sw (normal) mode

similarly in drivers/cam_icp/icp_hw/ipe_hw/ipe_soc.c for IPE

[...]

> +	/*
> +	 * Keep camcc_gdsc_clk always enabled:
> +	 */
> +	regmap_update_bits(regmap, 0xc1e4, BIT(0), 1);
/* Keep camcc_gdsc_clk always enabled */
regmap_update_bits(regmap, 0xc1e4, BIT(0), BIT(0));

[1] https://lore.kernel.org/linux-arm-msm/20230923115008.1698384-4-abel.vesa@linaro.org/

Konrad

