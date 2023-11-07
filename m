Return-Path: <devicetree+bounces-14450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B77347E4B1C
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 22:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 628F128138B
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 21:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C1F2F846;
	Tue,  7 Nov 2023 21:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hufx2xDP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DBC2F843
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 21:49:05 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378A710D0
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 13:49:05 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507ad511315so8951861e87.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 13:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699393743; x=1699998543; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pa2zOyttqh4Cplc0zA1ry0ffJuSQYlFA+LZe6ZD7ldM=;
        b=Hufx2xDPb9KDPontC2VtafLgnOhnW4B/HzXkuFuavnMsL3FZTuKGxYLKEMm05Dk6ni
         WZcI3D6ygnwp4MJToxdrpH1H8Rt8crBdxi92vD91UlLpHB2mcme5uWlpLzqgG7YFkXWG
         kmBhoJNL1o1t+c40sefrceaxROJAKba1fUnzkrThrZKH+gr8H6W7J57uSe0NXFbATXvT
         80jVqTMiBKTAeoc/y5lX40AdR12oeAYuT6tP7MRB3cq8wdryUl6quCE/ptHhyolp5zAk
         Zl8+1yDZ4hYroKQr46easG9hPIuDMxZbHkOetk8XE3W7dj8C69bklbluOfvpUvVfQ7N6
         Stsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699393743; x=1699998543;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pa2zOyttqh4Cplc0zA1ry0ffJuSQYlFA+LZe6ZD7ldM=;
        b=LmY0+0FpG8NgdRofa8Dg8H6CjmM73LM8M1m8QZ8vcXtQjzaVupbgK2pcG9C1QAzWPf
         IkuJCS+dw6EVfnCVNcgiNAJKgiX2gnxqGV0ATaO1a85ebnp107lrrwehvujNzI3YEj5D
         tvYfLsWT3kxudnW1x/Vu3GCDcSkHOpqXu4abg77m0Zre9M3keuOg7zHhX/I5KwNLtme3
         cYlOHa1NPqNoIBZvazsKb+Gyme0tO37Dc7JzR8Zba8w8muYRX67nX7TnrI/g1EQvi6L+
         B3Iwlz+mhCXw4JU6EqntEiq1n2nATOTpf5xKRt/+HVPiw6F/MBi6z+vOM8c4J+AQ6syC
         /7Bw==
X-Gm-Message-State: AOJu0YzzQeS9tpQDZF6YmbfHiLs3JXa9ek/z5lE7rbsWcPF1vuho6WCL
	bbv9ppMmdQHJ2Wnvida7GEpDDQ==
X-Google-Smtp-Source: AGHT+IFh5oBvg3I2V8XiC2QUVEVBT2NMtmPppf2TWbUUy3IzPlecfjStcf1cU5vniuztKcOHfTrCHw==
X-Received: by 2002:a05:6512:3d0b:b0:500:8f66:5941 with SMTP id d11-20020a0565123d0b00b005008f665941mr32260653lfv.50.1699393743368;
        Tue, 07 Nov 2023 13:49:03 -0800 (PST)
Received: from [172.30.205.109] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id i27-20020a0565123e1b00b00507d219596dsm465396lfv.268.2023.11.07.13.49.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 13:49:03 -0800 (PST)
Message-ID: <871e668a-1732-4ed6-9d12-818504296464@linaro.org>
Date: Tue, 7 Nov 2023 22:48:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] media: qcom: camss: Add sc8280xp resource details
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
References: <20231105-b4-camss-sc8280xp-v3-0-4b3c372ff0f4@linaro.org>
 <20231105-b4-camss-sc8280xp-v3-4-4b3c372ff0f4@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231105-b4-camss-sc8280xp-v3-4-4b3c372ff0f4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/5/23 18:45, Bryan O'Donoghue wrote:
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
>   drivers/media/platform/qcom/camss/camss.c | 383 ++++++++++++++++++++++++++++++
>   1 file changed, 383 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 8778fdc1ee342..51619842f3925 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -941,6 +941,374 @@ static const struct resources_icc icc_res_sm8250[] = {
>   	},
>   };
>   
> +static const struct camss_subdev_resources csiphy_res_sc8280xp[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy0", "csiphy0_timer" },
> +		.clock_rate = { { 400000000 },
> +				{ 300000000 } },
> +		.reg = { "csiphy0" },
> +		.interrupt = { "csiphy0" },
> +		.ops = &csiphy_ops_3ph_1_0
> +	},
> +	/* CSIPHY1 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy1", "csiphy1_timer" },
> +		.clock_rate = { { 400000000 },
> +				{ 300000000 } },
> +		.reg = { "csiphy1" },
> +		.interrupt = { "csiphy1" },
> +		.ops = &csiphy_ops_3ph_1_0
> +	},
> +	/* CSIPHY2 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy2", "csiphy2_timer" },
> +		.clock_rate = { { 400000000 },
> +				{ 300000000 } },
> +		.reg = { "csiphy2" },
> +		.interrupt = { "csiphy2" },
> +		.ops = &csiphy_ops_3ph_1_0
> +	},
> +	/* CSIPHY3 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy3", "csiphy3_timer" },
> +		.clock_rate = { { 400000000 },
> +				{ 300000000 } },
> +		.reg = { "csiphy3" },
> +		.interrupt = { "csiphy3" },
> +		.ops = &csiphy_ops_3ph_1_0
> +	},
> +};
> +
> +static const struct camss_subdev_resources csid_res_sc8280xp[] = {
> +	/* CSID0 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +		.clock = { "vfe0_csid_src", "vfe0_csid", "cphy_rx_src",
> +			   "vfe0_cphy_rx", "vfe0_src", "vfe0", "vfe0_axi" },
This looks like downstream hack copypasta.. All the _src clocks
should be axed from here, from the camss bindings and simply be
enabled with CLK_OPS_PARENT_ENABLE on their children (which should
be the default for all branch clocks anyway eh)

Konrad

