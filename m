Return-Path: <devicetree+bounces-140308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7F1A19283
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:30:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1132A3A2ECF
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D671BDCF;
	Wed, 22 Jan 2025 13:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KvrQYSiZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EE031E4AB
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 13:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737552643; cv=none; b=nn9FPfWRYFGmPmNlU1LHUfYvhizG3vDQTF11tDCbFokmc/QBnrb6L25X9nR0S0AZYabzmx76fSh0qYnlB16RmDarWsymcSk8mjmValeeQwxDqq7hi3sflf4Nc/xT4lfrzSPaE7zQOIh3GiQ175IGksAFgfWWqsTLVlwKMbYgGz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737552643; c=relaxed/simple;
	bh=nQ+EfzcRSwtzPf/2Sjx6eJs4I6cX9R80znntCwpy21c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l0o0yGCnXHG7K9Ww38pG8oLvqa4FWV10UPhE59qqHKZCWb4gfZKfv4TxOaK7aEkHiQ/eU2VZihsb+8tiSGPnyZaDthLc6b+XqihUYtceXH+bcmd4IVpeTXhJk6MrLmuwm4foL0RlRfGFI9WA+BNPsbItEJ0m7pyT1nk02khZKr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KvrQYSiZ; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385e3621518so3188474f8f.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 05:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737552640; x=1738157440; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PsT5ZgwViolUdUf4pKeCqLICO/10Zy8qj04pN0k9tFs=;
        b=KvrQYSiZU1WBLdFJNaulz8Fe3RapypBt1FULEDR3KSK5FPL5qDwJV202UGKKsxSjsM
         +NZYU0CQjkOt6Q5xD3YJJ/TgsoH/khuA6OO09upybgG0HU2t0M3Svs0rQ/eyV4I8QDA1
         houhd4bP004ExDUkGSqnYgiEE82f4fuu1+OBv0FC7/AiFnfgxAjhgNkY4AAh45piBOKi
         9wdXn92P4gcCUcpaSUWJPcdbL1JogQGfLgNOWO7Huou5+i8FUCtFbgizQiBQc5YOg4V0
         0r1+O+fOMbWX7viitlHfQGboVK0pd5CcWdweHCS/RxcvODLmfX7BtughD3XE4ONGqf1c
         P3Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737552640; x=1738157440;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PsT5ZgwViolUdUf4pKeCqLICO/10Zy8qj04pN0k9tFs=;
        b=n/6L8HJN3Q+IPemwevuYsfESBWn30PucFTPLN+6EJp+diC1mtqQ1m/TQxswPjYJ96W
         DAXAbjsEBAL5Y+yawLkqYAOPvQG0WBOJOg9w8J1TrfOHkxOKnx0NXlhcQGqLOT9xuR/N
         sF7bg7t0VDkhvuXZQw2wEVzhzABaqtcp0Y5+jiRUQOfSILHVjhI7msZWkAx5Y8PmwOlT
         vFVZwzUPH2ZwhS0QV7f4oWYurN8EuvBjjPlRblfBEMPPccfuBt9uuqpw15X9BoYQIOII
         SmEOaP23wFJ5yt64J3qdh2cet8uCqiLRjtm7CLLGgI0udj9obfpx2cDj95crIQ2U1tMr
         mk9A==
X-Forwarded-Encrypted: i=1; AJvYcCU4fSwluDaenOh/9CbjA5b4PVhB0UBySdiPOwRV5lZWWfrjuychL1YhrCg2cLuEqkjRSTxQT4Ve8ffe@vger.kernel.org
X-Gm-Message-State: AOJu0YyFnNErktUs5n1LJmnTLx00kuSRrvt6cee5N2Oc3tGdr5Xfi5A4
	LF3LnjyPhpzO+kHUDaeYRQTPhZgZcKax1HFbiwgy7F5+pS3w9zFPpYyi77OWjBM=
X-Gm-Gg: ASbGncsA9tsLKkgwMTNKUcETZRck8hM8wFbyGtblEdiL/0yRXeLWMuYwyyamivDMQ7F
	tyRncJwsZh/6w2NRzBQCoF4Kka4qKWC6MtvN+RIbvoqyOdZ9AUn1Tsb5WeCzABGeu5PpU4yJ9wl
	qOB3EaEB92OeQEKsQjikjWsYorZFpoPCWPw9Cq1o88qRVuudCBHIUVYkVO/FLMc6Fmj3KN8PqHq
	rmXUHykTGiTutH4UIg8xtRT0pdWkVuafSKDJAOdP/Dr9n2zPJgiIq8OvXjxHoTL/uTLyVzxWWWb
	xc1t8g0=
X-Google-Smtp-Source: AGHT+IHGz3oZZDXrd7dn+W7Dx6QiFyDmlY7D2ck63M0pEtyL+pVpGkX33GNbY2T81rXpW5skMbhNiw==
X-Received: by 2002:a05:6000:1f88:b0:386:459e:e138 with SMTP id ffacd0b85a97d-38bf57a604amr16210415f8f.36.1737552639966;
        Wed, 22 Jan 2025 05:30:39 -0800 (PST)
Received: from [192.168.0.35] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf322a838sm16081440f8f.48.2025.01.22.05.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2025 05:30:39 -0800 (PST)
Message-ID: <93be5858-6c1e-4a09-bfe3-ac89d458a892@linaro.org>
Date: Wed, 22 Jan 2025 13:30:38 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] media: qcom: camss: update clock names for sc7280
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20250121180746.1989996-1-quic_vikramsa@quicinc.com>
 <20250121180746.1989996-3-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250121180746.1989996-3-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/01/2025 18:07, Vikram Sharma wrote:
> Update clock names to make them consistent with existing platform i.e
> sc8280xp. Rename gcc_cam_hf_axi to gcc_axi_hf and add gcc_axi_sf.
> 
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 15 ++++++++++-----
>   1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index a85e9df0f301..b1358457c66e 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -1443,12 +1443,13 @@ static const struct camss_subdev_resources vfe_res_7280[] = {
>   		.regulators = {},
>   
>   		.clock = { "camnoc_axi", "cpas_ahb", "icp_ahb", "vfe0",
> -			   "vfe0_axi", "gcc_cam_hf_axi" },
> +			   "vfe0_axi", "gcc_axi_hf", "gcc_axi_sf" },
>   		.clock_rate = { { 150000000, 240000000, 320000000, 400000000, 480000000 },
>   				{ 80000000 },
>   				{ 0 },
>   				{ 380000000, 510000000, 637000000, 760000000 },
>   				{ 0 },
> +				{ 0 },
>   				{ 0 } },
>   
>   		.reg = { "vfe0" },
> @@ -1468,12 +1469,13 @@ static const struct camss_subdev_resources vfe_res_7280[] = {
>   		.regulators = {},
>   
>   		.clock = { "camnoc_axi", "cpas_ahb", "icp_ahb", "vfe1",
> -			   "vfe1_axi", "gcc_cam_hf_axi" },
> +			   "vfe1_axi", "gcc_axi_hf", "gcc_axi_sf" },
>   		.clock_rate = { { 150000000, 240000000, 320000000, 400000000, 480000000 },
>   				{ 80000000 },
>   				{ 0 },
>   				{ 380000000, 510000000, 637000000, 760000000 },
>   				{ 0 },
> +				{ 0 },
>   				{ 0 } },
>   
>   		.reg = { "vfe1" },
> @@ -1493,12 +1495,13 @@ static const struct camss_subdev_resources vfe_res_7280[] = {
>   		.regulators = {},
>   
>   		.clock = { "camnoc_axi", "cpas_ahb", "icp_ahb", "vfe2",
> -			   "vfe2_axi", "gcc_cam_hf_axi" },
> +			   "vfe2_axi", "gcc_axi_hf", "gcc_axi_sf" },
>   		.clock_rate = { { 150000000, 240000000, 320000000, 400000000, 480000000 },
>   				{ 80000000 },
>   				{ 0 },
>   				{ 380000000, 510000000, 637000000, 760000000 },
>   				{ 0 },
> +				{ 0 },
>   				{ 0 } },
>   
>   		.reg = { "vfe2" },
> @@ -1516,11 +1519,12 @@ static const struct camss_subdev_resources vfe_res_7280[] = {
>   	/* VFE3 (lite) */
>   	{
>   		.clock = { "camnoc_axi", "cpas_ahb", "icp_ahb",
> -			   "vfe_lite0", "gcc_cam_hf_axi" },
> +			   "vfe_lite0", "gcc_axi_hf", "gcc_axi_sf" },
>   		.clock_rate = { { 150000000, 240000000, 320000000, 400000000, 480000000 },
>   				{ 80000000 },
>   				{ 0 },
>   				{ 320000000, 400000000, 480000000, 600000000 },
> +				{ 0 },
>   				{ 0 } },
>   
>   		.regulators = {},
> @@ -1537,11 +1541,12 @@ static const struct camss_subdev_resources vfe_res_7280[] = {
>   	/* VFE4 (lite) */
>   	{
>   		.clock = { "camnoc_axi", "cpas_ahb", "icp_ahb",
> -			   "vfe_lite1", "gcc_cam_hf_axi" },
> +			   "vfe_lite1", "gcc_axi_hf", "gcc_axi_sf" },
>   		.clock_rate = { { 150000000, 240000000, 320000000, 400000000, 480000000 },
>   				{ 80000000 },
>   				{ 0 },
>   				{ 320000000, 400000000, 480000000, 600000000 },
> +				{ 0 },
>   				{ 0 } },
>   
>   		.regulators = {},
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

