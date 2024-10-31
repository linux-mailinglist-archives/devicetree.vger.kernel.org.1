Return-Path: <devicetree+bounces-117856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C379B8201
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 18:59:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E991B1C21E42
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 17:59:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CED11C9B6D;
	Thu, 31 Oct 2024 17:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HZJffybf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2B41C2307
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 17:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730397544; cv=none; b=jEhuQMlLkBrpOPmVC4G4S/vFDeRV0xpJBLt/4B78xirOiGoeRO4xqzdw4DXZKw2qUjGrQ7Qq18dlW4vVAfdPfGSd5ZEanHyGf4YrHaW59bkmTlYIY/HAqpTGhO/apFrzDUw68D5cRm9InUMUIpu9+AgUN4jJ1pKMEAjcuMtl7kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730397544; c=relaxed/simple;
	bh=VcPhg/lN+FcqsNlnQk/AR8TKjXox62BIIeVmO1/jB5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NK4bfuXsdLsw+VncPgK5WZsRQRosh8OHs0j1JINOb8LmH/7t3aQ17JtQFS5F0kIRGfiWGOROrnILtn4SBkwlzXhj+bSJKH3/cOgkTumo27NamIUerAzazpmNjBNtS2286MGT5gVxDX74I/pUeJUs013UDZfQhLgD2h0qXqs9qy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HZJffybf; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4314b316495so10687305e9.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 10:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730397538; x=1731002338; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VuifK9ssbByZoxkDSJx5oYjnqJDuMVfVzL90tw7nJak=;
        b=HZJffybfshMryuHJM1vW8oQdxOYOaDpAB5HCdwvmq/P/IIDn/9SYfoTRq9DLPNJgjD
         mimxTGbn1gLTxG4f9K/iFBNvLa01NCXAqQqYWEjQEHZ+fKYt48ww4FshYy/GDLZv/Igu
         1q/G2J7+HhPuQuduVgmaKQGu77RnYOKFBORTV69Zueipw/uqMwcQc9t9kIs2NiNoBTWo
         urEwUEdS/j9eX7CGrO70EH784niZHoe2nhcpJ37oghOWoVmWSMxGE4D/Wg3sLERAF/u1
         Tsuou8kZ4P3LhcKFIMQjECDmNjuAe7LInpaRwJCPeiQOFXO7bEb0nswURvQqOrCwOOlZ
         F5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730397538; x=1731002338;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VuifK9ssbByZoxkDSJx5oYjnqJDuMVfVzL90tw7nJak=;
        b=IdzxOgIXpC0g4uPG3mxzgG7xNFxNmSDeAZbo5aFQET9zDcM8ekDbd5TPaMNzm0UQJK
         IAxPojI1ub+Dj2Yw1Fjd8N42AiOmgNqRB1BKh3XPxpFmjItP0glCuI7fcuoS0XLKa8ST
         45sl16bT5a5m/MQp7pC4nMqK1rVUkBEtm1HhzM0ZG7qK20Qi35Z8vquI40TC44NJMlH5
         fKNxSfsv66SPI4y/OsrJqrkgiMkxwAI7k/Kecwn7wd9vLP3jPzppmxNRJcIymHqjDAOg
         wKu9/EYf3tTqn7ia19k9MF15a1A8Mq/S6pdSmlloFJ9TvoNvP+5B9i1CZFhiQy77Ksmu
         d6ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0U/h15QdmT1jguwrBt6LatIXc53R2QMH/ndGy+de0ka5p0gqjzsPIDDgU4tAcnEQ00gpA5k/Wxuln@vger.kernel.org
X-Gm-Message-State: AOJu0YzIAoKAHMBfDRQcHfAvHjIMzi6qcDE6gs/YAZL6Ehr06Ah8pGFD
	41BjyWaL2Kp9xP4wjKVo5mk8GnvUwfSAo6EOzykPciZIKpIFPj4PKCbNaAzLONw=
X-Google-Smtp-Source: AGHT+IHVFS3EEahXMmwf1uXc498PntDJFpAi99I26Hiqrk9r31i5G0llOXVhvkN/yJFqVWGq3yU2SA==
X-Received: by 2002:a05:6000:4013:b0:37d:4517:acdb with SMTP id ffacd0b85a97d-381be783511mr3580290f8f.20.1730397537669;
        Thu, 31 Oct 2024 10:58:57 -0700 (PDT)
Received: from [192.168.0.17] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c113e856sm2777954f8f.87.2024.10.31.10.58.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 10:58:57 -0700 (PDT)
Message-ID: <b3fb76d2-5433-438e-accb-f62fca130ab8@linaro.org>
Date: Thu, 31 Oct 2024 17:58:55 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] media: qcom: camss: Add support for camss driver
 on SC7280
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241030105347.2117034-1-quic_vikramsa@quicinc.com>
 <20241030105347.2117034-4-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241030105347.2117034-4-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/10/2024 10:53, Vikram Sharma wrote:
> From: Suresh Vankadara <quic_svankada@quicinc.com>
> 
> Add support for the camss driver on the SC7280 SoC.
> 
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   .../media/platform/qcom/camss/camss-csid.c    |   1 -
>   .../qcom/camss/camss-csiphy-3ph-1-0.c         |   5 +
>   .../media/platform/qcom/camss/camss-csiphy.c  |   5 +
>   .../media/platform/qcom/camss/camss-csiphy.h  |   1 +
>   drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
>   drivers/media/platform/qcom/camss/camss.c     | 339 ++++++++++++++++++
>   drivers/media/platform/qcom/camss/camss.h     |   1 +
>   7 files changed, 353 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csid.c b/drivers/media/platform/qcom/camss/camss-csid.c
> index 858db5d4ca75..8d3dc26e2af4 100644
> --- a/drivers/media/platform/qcom/camss/camss-csid.c
> +++ b/drivers/media/platform/qcom/camss/camss-csid.c
> @@ -1028,7 +1028,6 @@ int msm_csid_subdev_init(struct camss *camss, struct csid_device *csid,
>   	csid->res->hw_ops->subdev_init(csid);
>   
>   	/* Memory */
> -

Extraneous deletion.

>   	if (camss->res->version == CAMSS_8250) {
>   		/* for titan 480, CSID registers are inside the VFE region,
>   		 * between the VFE "top" and "bus" registers. this requires
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index 7d2490c9de01..f341f7b7fd8a 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -505,6 +505,10 @@ static void csiphy_gen2_config_lanes(struct csiphy_device *csiphy,
>   	u32 val;
>   
>   	switch (csiphy->camss->res->version) {
> +	case CAMSS_7280:
> +		r = &lane_regs_sm8250[0][0];
> +		array_size = ARRAY_SIZE(lane_regs_sm8250[0]);
> +		break;
>   	case CAMSS_8250:
>   		r = &lane_regs_sm8250[0][0];
>   		array_size = ARRAY_SIZE(lane_regs_sm8250[0]);
> @@ -557,6 +561,7 @@ static bool csiphy_is_gen2(u32 version)
>   	bool ret = false;
>   
>   	switch (version) {
> +	case CAMSS_7280:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
>   	case CAMSS_845:
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
> index 68a3ea1ba2a5..9722cee4143f 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> @@ -108,6 +108,11 @@ const struct csiphy_formats csiphy_formats_sdm845 = {
>   	.formats = formats_sdm845
>   };
>   
> +const struct csiphy_formats csiphy_formats_sc7280 = {
> +	.nformats = ARRAY_SIZE(formats_sdm845),
> +	.formats = formats_sdm845
> +};
> +
>   /*
>    * csiphy_get_bpp - map media bus format to bits per pixel
>    * @formats: supported media bus formats array
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
> index eebc1ff1cfab..67a96ef55bb6 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.h
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
> @@ -112,6 +112,7 @@ void msm_csiphy_unregister_entity(struct csiphy_device *csiphy);
>   extern const struct csiphy_formats csiphy_formats_8x16;
>   extern const struct csiphy_formats csiphy_formats_8x96;
>   extern const struct csiphy_formats csiphy_formats_sdm845;
> +extern const struct csiphy_formats csiphy_formats_sc7280;
>   
>   extern const struct csiphy_hw_ops csiphy_ops_2ph_1_0;
>   extern const struct csiphy_hw_ops csiphy_ops_3ph_1_0;
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index ffcb1e2ec417..61f6815a3756 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -334,6 +334,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
>   		}
>   		break;
>   	case CAMSS_660:
> +	case CAMSS_7280:
>   	case CAMSS_8x96:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
> @@ -1692,6 +1693,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
>   	int ret = 8;
>   
>   	switch (vfe->camss->res->version) {
> +	case CAMSS_7280:
>   	case CAMSS_8250:
>   	case CAMSS_8280XP:
>   	case CAMSS_845:
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index e8cd8afe7bee..addaed8f77cb 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -1480,6 +1480,330 @@ static const struct resources_icc icc_res_sc8280xp[] = {
>   	},
>   };
>   
> +static const struct camss_subdev_resources csiphy_res_7280[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy0", "csiphy0_timer"},
> +		.clock_rate = {
> +			{ 300000000 },
> +			{ 300000000 }
> +		},
> +		.reg = { "csiphy0" },
> +		.interrupt = { "csiphy0" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +	/* CSIPHY1 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy1", "csiphy1_timer"},
> +		.clock_rate = {
> +			{ 300000000 },
> +			{ 300000000 }
> +		},
> +		.reg = { "csiphy1" },
> +		.interrupt = { "csiphy1" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +	/* CSIPHY2 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy2", "csiphy2_timer"},
> +		.clock_rate = {
> +			{ 300000000 },
> +			{ 300000000 }
> +		},
> +		.reg = { "csiphy2" },
> +		.interrupt = { "csiphy2" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +	/* CSIPHY3 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy3", "csiphy3_timer"},
> +		.clock_rate = {
> +			{ 300000000 },
> +			{ 300000000 }
> +		},
> +		.reg = { "csiphy3" },
> +		.interrupt = { "csiphy3" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +	/* CSIPHY4 */
> +	{
> +		.regulators = {},
> +		.clock = { "csiphy4", "csiphy4_timer"},
> +		.clock_rate = {
> +			{ 300000000 },
> +			{ 300000000 }
> +		},
> +		.reg = { "csiphy4" },
> +		.interrupt = { "csiphy4" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sc7280
> +		}
> +	},
> +};
> +
> +static const struct camss_subdev_resources csid_res_7280[] = {
> +	/* CSID0 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csi0", "vfe0_cphy_rx", "vfe0", "soc_ahb"},

csi0 should probably be named vfe0_csid, same with the other csiX clocks 
here.

7280 is similar/derived from 8250 so the naming convention should be 
followed.

> +		.clock_rate = {
> +			{ 300000000, 0, 380000000, 0},
> +			{ 400000000, 0, 510000000, 0},
> +			{ 400000000, 0, 637000000, 0},
> +			{ 400000000, 0, 760000000, 0}
> +		},
> +
> +		.reg = { "csid0" },
> +		.interrupt = { "csid0" },
> +		.csid = {
> +			.is_lite = false,
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID1 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csi1", "vfe1_cphy_rx", "vfe1", "soc_ahb"},
> +		.clock_rate = {
> +			{ 300000000, 0, 380000000, 0},
> +			{ 400000000, 0, 510000000, 0},
> +			{ 400000000, 0, 637000000, 0},
> +			{ 400000000, 0, 760000000, 0}
> +		},
> +
> +		.reg = { "csid1" },
> +		.interrupt = { "csid1" },
> +		.csid = {
> +			.is_lite = false,
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID2 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csi2", "vfe2_cphy_rx", "vfe2", "soc_ahb"},
> +		.clock_rate = {
> +			{ 300000000, 0, 380000000, 0},
> +			{ 400000000, 0, 510000000, 0},
> +			{ 400000000, 0, 637000000, 0},
> +			{ 400000000, 0, 760000000, 0}
> +		},
> +
> +		.reg = { "csid2" },
> +		.interrupt = { "csid2" },
> +		.csid = {
> +			.is_lite = false,
> +			.hw_ops = &csid_ops_gen2,
> +			.parent_dev_ops = &vfe_parent_dev_ops,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +	/* CSID3 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +
> +		.clock = { "csi3", "vfe0_lite_cphy_rx", "vfe0_lite", "soc_ahb"},

As with 8250 I'd expect "lite" to appear in the clock name

When fixed please add.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

