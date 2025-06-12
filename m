Return-Path: <devicetree+bounces-185162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D15FAD69DC
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 10:02:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A6E2165438
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 08:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 597CE188907;
	Thu, 12 Jun 2025 08:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hi9BzEwX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D46A20EB
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 08:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749715358; cv=none; b=fqKserXwwiDb7xoU9TMGZqEnQZYioTp/stduZI6VFFMWEbNMx46imz+fama9hAB3lHGxN9TmqsWCtJ6EosQGqR9EauktuCBatcj3sDYt/5GmgFDycXoNBaz8T22fIse3pRKkFpt/XFOW+tNS4z8UP8tXRWYmr31POtHRcNNT/m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749715358; c=relaxed/simple;
	bh=3eutFv0YUpUcBiELcRGQ/X2KXhDa7HG75EdddSZ3Hb0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O8+VBeWRu7VxsO1FIxfHFMpGjfb2rwk/H5Mno3FcmyzOF7w8I6+cByPA0QPY6A6QlRUaDtHkyRf6jF8cKmQJ/mdNPEiyd/onNAvBhxdeFL7EGgIlv/uht6N8DHe8hSYRnXwxqeBYawO5D2nNIDB6bcYysKNxJLdRRl2swiiyKXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hi9BzEwX; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a4e742dc97so1182041f8f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 01:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749715354; x=1750320154; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E+YnI2VE3dubMd3daM6I5J2k+cxEj00izt+Iu1pSlY4=;
        b=hi9BzEwXvn5wYy5yKKiAbcUB/4VRkPkX7bzmxTWmAIyCAcHBGwd7sxpikktqxCCA+Q
         3HKyo/OtoD2TIGukUsx9cu/pNeITCYVnazVCozQkHpFbTpVZv25xHBGd6IZFR1A4MRcD
         G9Sc1qcdF7/OQOUW+gCbfgzZdE2cP6KWO/qbIJ5YcxkftHqD8nZ81ApiPxIdtZ1j+O1X
         ClKDsuP7SCzvCUyxHxhf/4RkrLUfn6qficiqx9rbtGoksbkHjZOiC3INW331diI9BRMO
         DlxaJ5JSbmEz0OFz0SSZXCrKIRQNGpqXZ4/3k86NKxiXU+iHMil/qiZ2D2FEGV4WZZvb
         2c/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749715354; x=1750320154;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E+YnI2VE3dubMd3daM6I5J2k+cxEj00izt+Iu1pSlY4=;
        b=qap5JNGgD2QTpiU6kbhMfkBZrTLvvuHObhBn96t+IGannkIXMwCtc7vh1baLXvAV4R
         UBgVnp9UscYFcQzIxc3Jqs2NMp37go7t+i4aXZyTrSOZJ8xuC7MyJD2cZYUTmR5Wq5LN
         Y+BI9pufXWDcraXXVfy7lvOQKoUcz7MD4utYEWL8DVPUnT3Rj7/Yb/pmBcP4ivbTnCmZ
         zUPQwcIZ2OlU+rR7iDDBacLJADFC2D5CTGDrcn81igCQ5+eVv9zRnWmB0Bd1WUMDqJSu
         c0QnT+oUmuMi+0VY5D9SUJmdm5oUJHnbEG9rYTGDduYLekRXgix4Z3iRvI70Jd7VtUf8
         4zug==
X-Forwarded-Encrypted: i=1; AJvYcCUBWsVcOnmHpnkgowSOt13tVZnNHhmiTVv163ymXT3LUzCh1y9cobOzTqLmwDVfsMNzy4jXzba/0xSg@vger.kernel.org
X-Gm-Message-State: AOJu0YxKRbuP2dcxDsGC061nuXizD2Lnt2kCyLguhkiiy97EZG4R4qjj
	AY2RuJWRtZ2gm4ja3IgJrW0GAssHuxszAXTLHw1X3O1LJyYGSrRu5L1cuyYv/yujjoo=
X-Gm-Gg: ASbGnctFdrSJU2qSrkRKpezFecBwfFxOCH/JFM2zEWSztggbT9LYI2Y3DdfUIMrZ384
	Wf0QbWsUZbxEvUnOCKCVXmTvx4NiotYkV7D7Zuqx5GfUuJ7MrlB4SNHhtfXZhkSGr7vwnOkmjWz
	mIqGCKFdES08l3sUWnpf2i2Q82x/6Gduncq6HXfvJM9hhjrxUS9ghNXJ6ZS23HAoNyGhK6UIH2N
	O1HpdNm99RLJvGctggwLUwi+GmkhqQ1GBp0MLFyvQRnGascngKsMiH/L32I5Hg1rjZsBkx9Oc16
	u+DqWCqdBDxrvJaz0arilvwZK9SuF2liRG5nFenYDtQm1+D7DmzFKYHPbMHdB78lHsBm8THwNu1
	T/Lq+szIppanuaZlEk+/K0eNydes=
X-Google-Smtp-Source: AGHT+IHr17lu04o6X3T3YbGhmI/P2yypu+DOM9jKCZ/WyDlw1KtOQazaviQwWkcOGDM2PNTVAyQCaA==
X-Received: by 2002:a05:6000:178a:b0:3a1:f724:eb15 with SMTP id ffacd0b85a97d-3a56087effdmr1859459f8f.2.1749715353121;
        Thu, 12 Jun 2025 01:02:33 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a561a3c756sm1214328f8f.52.2025.06.12.01.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 01:02:32 -0700 (PDT)
Message-ID: <1fc9eb4c-6da2-4146-98e2-1bb6fc422a55@linaro.org>
Date: Thu, 12 Jun 2025 09:02:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] media: qcom: camss: csiphy: simplify arguments of
 lanes_enable and lanes_disable
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-4-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250612011531.2923701-4-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2025 02:15, Vladimir Zapolskiy wrote:
> In some of .lanes_enable and .lanes_disable functions the second argument
> of csiphy_config type is either unused or it can be derived from the
> main function argument, this lets to remove it from the list of arguments.
> 
> Apart of being the simplification the change is needed for further updates
> to CSIPHY part of the CAMSS driver to get CSIPHY combo mode feature and
> a related to it management of non-statically assigned CSIPHY media pads.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../media/platform/qcom/camss/camss-csiphy-2ph-1-0.c  | 10 ++++------
>   .../media/platform/qcom/camss/camss-csiphy-3ph-1-0.c  | 11 ++++-------
>   drivers/media/platform/qcom/camss/camss-csiphy.c      |  4 ++--
>   drivers/media/platform/qcom/camss/camss-csiphy.h      |  4 +---
>   4 files changed, 11 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c
> index 9d67e7fa6366..d9735f61fffc 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-2ph-1-0.c
> @@ -95,10 +95,9 @@ static u8 csiphy_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
>   }
>   
>   static void csiphy_lanes_enable(struct csiphy_device *csiphy,
> -				struct csiphy_config *cfg,
>   				s64 link_freq, u8 lane_mask)
>   {
> -	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
> +	struct csiphy_lanes_cfg *c = &csiphy->cfg.csi2->lane_cfg;
>   	u8 settle_cnt;
>   	u8 val, l = 0;
>   	int i = 0;
> @@ -114,7 +113,7 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
>   	val |= lane_mask << 1;
>   	writel_relaxed(val, csiphy->base + CAMSS_CSI_PHY_GLBL_PWR_CFG);
>   
> -	val = cfg->combo_mode << 4;
> +	val = csiphy->cfg.combo_mode << 4;
>   	writel_relaxed(val, csiphy->base + CAMSS_CSI_PHY_GLBL_RESET);
>   
>   	for (i = 0; i <= c->num_data; i++) {
> @@ -134,10 +133,9 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
>   	}
>   }
>   
> -static void csiphy_lanes_disable(struct csiphy_device *csiphy,
> -				 struct csiphy_config *cfg)
> +static void csiphy_lanes_disable(struct csiphy_device *csiphy)
>   {
> -	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
> +	struct csiphy_lanes_cfg *c = &csiphy->cfg.csi2->lane_cfg;
>   	u8 l = 0;
>   	int i = 0;
>   
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index f732a76de93e..69d95bfeb9d2 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -638,10 +638,9 @@ static u8 csiphy_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
>   }
>   
>   static void csiphy_gen1_config_lanes(struct csiphy_device *csiphy,
> -				     struct csiphy_config *cfg,
>   				     u8 settle_cnt)
>   {
> -	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
> +	struct csiphy_lanes_cfg *c = &csiphy->cfg.csi2->lane_cfg;
>   	int i, l = 0;
>   	u8 val;
>   
> @@ -758,10 +757,9 @@ static bool csiphy_is_gen2(u32 version)
>   }
>   
>   static void csiphy_lanes_enable(struct csiphy_device *csiphy,
> -				struct csiphy_config *cfg,
>   				s64 link_freq, u8 lane_mask)
>   {
> -	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
> +	struct csiphy_lanes_cfg *c = &csiphy->cfg.csi2->lane_cfg;
>   	struct csiphy_device_regs *regs = csiphy->regs;
>   	u8 settle_cnt;
>   	u8 val;
> @@ -791,7 +789,7 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
>   	if (csiphy_is_gen2(csiphy->camss->res->version))
>   		csiphy_gen2_config_lanes(csiphy, settle_cnt);
>   	else
> -		csiphy_gen1_config_lanes(csiphy, cfg, settle_cnt);
> +		csiphy_gen1_config_lanes(csiphy, settle_cnt);
>   
>   	/* IRQ_MASK registers - disable all interrupts */
>   	for (i = 11; i < 22; i++) {
> @@ -800,8 +798,7 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
>   	}
>   }
>   
> -static void csiphy_lanes_disable(struct csiphy_device *csiphy,
> -				 struct csiphy_config *cfg)
> +static void csiphy_lanes_disable(struct csiphy_device *csiphy)
>   {
>   	struct csiphy_device_regs *regs = csiphy->regs;
>   
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
> index 1ba3fc2e33ac..f561811b7617 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> @@ -295,7 +295,7 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
>   		wmb();
>   	}
>   
> -	csiphy->res->hw_ops->lanes_enable(csiphy, cfg, link_freq, lane_mask);
> +	csiphy->res->hw_ops->lanes_enable(csiphy, link_freq, lane_mask);
>   
>   	return 0;
>   }
> @@ -308,7 +308,7 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
>    */
>   static void csiphy_stream_off(struct csiphy_device *csiphy)
>   {
> -	csiphy->res->hw_ops->lanes_disable(csiphy, &csiphy->cfg);
> +	csiphy->res->hw_ops->lanes_disable(csiphy);
>   }
>   
>   
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
> index d82dafd1d270..3b73248f1364 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.h
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
> @@ -72,10 +72,8 @@ struct csiphy_hw_ops {
>   				struct device *dev);
>   	void (*reset)(struct csiphy_device *csiphy);
>   	void (*lanes_enable)(struct csiphy_device *csiphy,
> -			     struct csiphy_config *cfg,
>   			     s64 link_freq, u8 lane_mask);
> -	void (*lanes_disable)(struct csiphy_device *csiphy,
> -			      struct csiphy_config *cfg);
> +	void (*lanes_disable)(struct csiphy_device *csiphy);
>   	irqreturn_t (*isr)(int irq, void *dev);
>   	int (*init)(struct csiphy_device *csiphy);
>   };
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

