Return-Path: <devicetree+bounces-14816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F22B7E6B58
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 14:44:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E58A1C2099F
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 13:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525121DFF7;
	Thu,  9 Nov 2023 13:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s9gtDvQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E71F1DFEE
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:44:50 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D694830D1
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 05:44:49 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4083dbc43cfso5377725e9.3
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 05:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699537488; x=1700142288; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y/upOHJ+PHpaZV2stE6UqZyQX42WRDbcQMQDPTdbtQg=;
        b=s9gtDvQJ0Sf+/trGlgOaSNJ7arr9R92UnlgVdRj9U8HPjnD6kkfzRBYd1IvC4sP01A
         owF9Vl0tNjJM9P1T+MUMQRUdYLIHVOf14ZFNmbnajD+vQYr+StrgljLjRlLx0RxfxgCc
         cnlXG/UPdSJ2f4nTL0hKj1U3bCmmTzMCbYQGUQCJQatoPM77m75lzBAfODKVSMzQNoRr
         8OrvZrkPcgUC7UpxNiSN3VnSEn45mO7hr8wsw2E4w6F03St+SGwycvuTIoKDUAeQpQm9
         2KCkpqafLSpdr9EM0fMFTre8LNVWlLy1BXIUJtSDjTX3a7isUgXiA1aonZIGJSE+i47E
         AC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699537488; x=1700142288;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y/upOHJ+PHpaZV2stE6UqZyQX42WRDbcQMQDPTdbtQg=;
        b=DSLPUon+GDIVUH0x9R3lEn/rHGsodu4bYL4IvBmgKY54sdIKhM/LcHDieV0VEya32W
         gBpdoCBbdFhoIiJfD2M/trLU/Xv31imoxfRKV6ls/GHj1U+w9RJeDjIs7VzLYJQj8XIC
         hB8XM0oGLcfCc39k9bzdregbBTq5KisAPzhxOQ2SXvSp1wYO4tKyeXlHJmywxIBWPQPk
         rBhcT0+dSgYYwFwGebGwJYjJe0xeUlCr47PeH7ikoEk3/n/difv3A7zkUwFoUcbDKIhO
         FS7+mFVawWAU6LPtafXKpTmXLXeUo3IYhlYunsMxaaLlPkjlW+KFJL1XEQZ5MYhZDCqi
         I8oA==
X-Gm-Message-State: AOJu0Yz4Mm1bsQVRQ2PdNzYN2bP1zceJeh7Q8QdTvuQhZBvdb9uRBIda
	7zThIbKzmw7/c0tz3cLdBCSz1w==
X-Google-Smtp-Source: AGHT+IHRrU+JfzY0kqwmpCPMcxEvJ3PFd7PE0xe/26BgsjORmrP/PrXas+oHUi1Rj4DSrRdXAwVyaQ==
X-Received: by 2002:a7b:c7c8:0:b0:3ff:233f:2cfb with SMTP id z8-20020a7bc7c8000000b003ff233f2cfbmr4196457wmk.23.1699537488190;
        Thu, 09 Nov 2023 05:44:48 -0800 (PST)
Received: from [10.66.66.2] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id v5-20020adfa1c5000000b0032d81837433sm7445222wrv.30.2023.11.09.05.44.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 05:44:47 -0800 (PST)
Message-ID: <3e0958a9-4d1e-4d1b-a914-5da154caa11f@linaro.org>
Date: Thu, 9 Nov 2023 14:44:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] media: qcom: camss: Add sc8280xp resource details
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org,
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231109-b4-camss-sc8280xp-v4-0-58a58bc200f9@linaro.org>
 <20231109-b4-camss-sc8280xp-v4-4-58a58bc200f9@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231109-b4-camss-sc8280xp-v4-4-58a58bc200f9@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/9/23 12:30, Bryan O'Donoghue wrote:
> This commit describes the hardware layout for the sc8280xp for the
> following hardware blocks:
> 
> - 4 x VFE, 4 RDI per VFE
> - 4 x VFE Lite, 4 RDI per VFE
> - 4 x CSID
> - 4 x CSID Lite
> - 4 x CSI PHY
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
[...]

> +static const struct camss_subdev_resources csid_res_sc8280xp[] = {
> +	/* CSID0 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +		.clock = { "vfe0_csid", "vfe0_cphy_rx", "vfe0", "vfe0_axi" },
> +		.clock_rate = { { 400000000, 400000000, 480000000, 600000000, 600000000, 600000000 },
(why is it 400, 400, 480, 600, 600, 600 and not 400, 480, 600?)

> +				{ 0 },
> +				{ 0 },
> +				{ 0 } },
There's a funny bug..

camss-csiphy.c and camss-vfe.c (sounds like room for commonization):

while (res->clock_rate[i][clock->nfreqs])
	clock->nfreqs++;

this works fine in this case, because the last frequency is followed
by a zero, so overflowing the 2nd dimension of the array into the last+1
member (meaning the first member of the following entry in the 1st dimension)
stops this loop

however

[...]

> +static const struct camss_subdev_resources vfe_res_sc8280xp[] = {
> +	/* IFE0 */
> +	{
> +		.regulators = {},
> +		.clock = { "gcc_axi_hf", "gcc_axi_sf", "cpas_ahb", "camnoc_axi", "vfe0", "vfe0_axi" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 19200000, 80000000, 80000000, 80000000, 80000000},
> +				{ 19200000, 150000000, 266666667, 320000000, 400000000, 480000000 },
> +				{ 400000000, 558000000, 637000000, 760000000 },
> +				{ 0 }, },
Not the case here!

I'd suggest moving this to something like:

struct res_clk_data {
	const char * const names;
	const u64 * const rates; (or unsigned long / unsigned long long / uint?
				  there was some capping for arm32)
	const u8 num_clks;
}

OR even better

separate out clocks that just need to be on/off ("intf/interface clocks" sounds
like a good name for these) from ones that require scaling, use clk_bulk apis
for the former and OPP for the latter to make sure the correct performance state
is requested on the RPMhPDs

Konrad

