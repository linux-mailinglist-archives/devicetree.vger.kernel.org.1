Return-Path: <devicetree+bounces-231927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC2EC13122
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7537C353427
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB6B29AAE3;
	Tue, 28 Oct 2025 06:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R3T2D1ia"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F9629E0ED
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761631645; cv=none; b=tj81IqEeKuhhZdTjt4l11cYjA3fuMQmw0Se96fu+cCc0+5DDG8uuenRQ6/DNHX/Tm/flF+nX1omjXrFfuEklftPNM+ep07NpqCs7Jt/Jrhm3rppm9nOZm5dUn4Kd8oLZhLNG4MyMBqd9cCTwNJP/VOhT91qyX0GZAyuIM5q0WP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761631645; c=relaxed/simple;
	bh=BQpmR2GlXVb/KvYNeHtrpNy6RpVE5xqbmGQxNYoGk/Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=My4C3gaCt96DagJ+XLDQuAPY4OPMTxY/ZSjwUeHch9YlVR1tTXrhMjDtkNhrFI48NUpjY9hS0oXPoRWKhKrtWLgCT48WVWN0Z4b+bDgPtViNjyWqmRJfGzwiexupXuiwspLU60r6BGF2VRGye8QQAIsFVMlkxTFI3Pn+53U9rjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R3T2D1ia; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-27ee41e074dso57775305ad.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761631643; x=1762236443; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X3Mi6dBwQl7K+tk271ylyIVMo6R3DpX7lq7cC7Ipe/g=;
        b=R3T2D1iamXenRPMJ1Xspb1MTBf8Ml6Nv14oRolAxDFic2XD0bGy7yW8KVJTbUuXfHf
         IOSbYhQaXUnDV4fEbmzNxRRxncEI1AlITPYn+nVRLNnjIFgo68/LENCdzyyJG6X2tNDb
         eNQ9iRkkrqrE+HS11i9F1V2CJxz90Sm0a2mCb0yPzIbASLZA7kVG/8ePVBJ5fpf/hlIP
         NJbs9cuXDqqMN6sBjrrzU+RcKKyKVkQtPxUqX8//q+etYwmgwhasazXDRrJbX3MdeJPF
         qtOPsT1L8ZtNXbGM3/sRXRsF3OcDO8fUk09p93iRdI+gq0pFwF4bYNoUY9qXArjzrAUl
         TPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761631643; x=1762236443;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X3Mi6dBwQl7K+tk271ylyIVMo6R3DpX7lq7cC7Ipe/g=;
        b=QWKc1QS/cbWLAClJ/U//eYivvnlBZUKr84bM7niGQ/v/JlSpVoYgV23ggSDibMj7jm
         lc2WZpFUo3YIq17kiOuwaJQmlgirX6v/oLoPWsTW8v2qaTeUpEIF9YVj1+HikCigFG89
         jgYVVpwEyZ6TT+tP1cLnWVuteFAjSCG2ad/KLpY/u2oi1nZ+fpG9UTtYxaOIcyRz5x+D
         GBqs9WkQcH3CqEy4cqeKiJs0MnCJ/Wd3eHmWi5aNEq6JqvzbtqacNRwj9KSs1UCdF2BD
         PV82r5HwlalV+7hvFxMcDRswE4GJnPHAGxyqBRNcb2ricUOQ66tpNMMWDVqFt7izbih8
         Ifog==
X-Forwarded-Encrypted: i=1; AJvYcCVUSYpqE1qVQBFi2h4V718p5BT2IMWt3NyRjvbN8uOyLKRnXwyQFA/WUWLnIxmVyGPtZIftQCE3Ft7g@vger.kernel.org
X-Gm-Message-State: AOJu0YznOLMLzMHY1CAyYbanQ7M3f6hsW49FAeFs6JYwArqgtQ/cxCiW
	5D7SnPxh+dhcbnAN4c3v5Leov6I9PgqtqI25MUUVUq/39r9XkSo2nyxQ
X-Gm-Gg: ASbGnctl9jOnJSju8LZPRwPp+26OdmTWu/SKD82Q4y0lZiH2G/JMs6H0+MtnGXEvtpr
	Oon76Hx6RMLpUlwIZwyByX7lV3yCALR0FcWh/NWnns1PT+iU4JkDg004HSFGjjkdfjzj/DARFg3
	lLyrMWSaqLF9nmKvkPdkSKk6Pg49wXXxARo++Z9MjRAErjdZA2x3aUTdz0QWeSzy1QMP6b1itvN
	S9Sxtm3/UKSSRmIS11sYqkfcbK8oseodefdG87KPKYHhwNIyXohYezoy5dNraAk4wxRCT4OWfJz
	HfitRr/+qN3laNMwlaxwR4gxGsUA9OVeFmYh/NTmEiKe4eSX+xez/1va1l0LIVk9HzrlFpHemLX
	pE7bp3i6OcPsQhIKcbazaAAgr0UPdMmz7tihBzJSGAsCuWtXW0DFMazc9m1o9iDV9KZmTJfxzRf
	msGewHoFE+D0qVNfouFAPowip5mFe6DCuwMrKLF80Te5mENNwi538ecQ==
X-Google-Smtp-Source: AGHT+IEqDKe28CM1wcw1T5jIas5LPW4A4iQTrqZvLc/K2EgN8TV441SShFqZjxfapz7ZcPNUWZg1Vg==
X-Received: by 2002:a17:902:c945:b0:265:47:a7b0 with SMTP id d9443c01a7336-294cb37b969mr24029555ad.10.1761631643254;
        Mon, 27 Oct 2025 23:07:23 -0700 (PDT)
Received: from ?IPV6:2600:8802:702:7400:1c69:7897:d90:375b? ([2600:8802:702:7400:1c69:7897:d90:375b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b71268bfaa1sm9237607a12.7.2025.10.27.23.07.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 23:07:22 -0700 (PDT)
Message-ID: <a4a7f1c9-1817-4092-9ab1-07209bb44125@gmail.com>
Date: Mon, 27 Oct 2025 23:07:20 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/12] drm/msm/dpu: Compatible with Kaanapali interrupt
 register
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>,
 robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
 sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
 simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
 quic_khsieh@quicinc.com, neil.armstrong@linaro.org
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
 aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
Content-Language: en-US
From: Jessica Zhang <jesszhan0024@gmail.com>
In-Reply-To: <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/23/2025 12:53 AM, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Hi Yuanjie,

Can you reword the commit message title to be more clear on what this 
patch *does*? "Compatible with Kaanapali interrupt register" is vague.

Something like "Add interrupt registers for DPU 13.x" is a complete 
sentence and makes it clear that you're adding interrupt registers.

Thanks,

Jessica Zhang

> 
> DPU version 13 introduces changes to the interrupt register
> layout. Update the driver to support these modifications for
> proper interrupt handling.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>   .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c | 89 ++++++++++++++++++-
>   1 file changed, 88 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> index 49bd77a755aa..8d265581f6ec 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c
> @@ -40,6 +40,15 @@
>   #define MDP_INTF_REV_7xxx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x004)
>   #define MDP_INTF_REV_7xxx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_7xxx_TEAR_OFF(intf) + 0x008)
>   
> +#define MDP_INTF_REV_13xx_OFF(intf)			(0x18D000 + 0x1000 * (intf))
> +#define MDP_INTF_REV_13xx_INTR_EN(intf)			(MDP_INTF_REV_13xx_OFF(intf) + 0x1c0)
> +#define MDP_INTF_REV_13xx_INTR_STATUS(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c4)
> +#define MDP_INTF_REV_13xx_INTR_CLEAR(intf)		(MDP_INTF_REV_13xx_OFF(intf) + 0x1c8)
> +#define MDP_INTF_REV_13xx_TEAR_OFF(intf)		(0x18D800 + 0x1000 * (intf))
> +#define MDP_INTF_REV_13xx_INTR_TEAR_EN(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x000)
> +#define MDP_INTF_REV_13xx_INTR_TEAR_STATUS(intf)	(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x004)
> +#define MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(intf)		(MDP_INTF_REV_13xx_TEAR_OFF(intf) + 0x008)
> +
>   /**
>    * struct dpu_intr_reg - array of DPU register sets
>    * @clr_off:	offset to CLEAR reg
> @@ -199,6 +208,82 @@ static const struct dpu_intr_reg dpu_intr_set_7xxx[] = {
>   	},
>   };
>   
> +/*
> + * dpu_intr_set_13xx -  List of DPU interrupt registers for DPU >= 13.0
> + */
> +static const struct dpu_intr_reg dpu_intr_set_13xx[] = {
> +	[MDP_SSPP_TOP0_INTR] = {
> +		INTR_CLEAR,
> +		INTR_EN,
> +		INTR_STATUS
> +	},
> +	[MDP_SSPP_TOP0_INTR2] = {
> +		INTR2_CLEAR,
> +		INTR2_EN,
> +		INTR2_STATUS
> +	},
> +	[MDP_SSPP_TOP0_HIST_INTR] = {
> +		HIST_INTR_CLEAR,
> +		HIST_INTR_EN,
> +		HIST_INTR_STATUS
> +	},
> +	[MDP_INTF0_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_CLEAR(0),
> +		MDP_INTF_REV_13xx_INTR_EN(0),
> +		MDP_INTF_REV_13xx_INTR_STATUS(0)
> +	},
> +	[MDP_INTF1_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_CLEAR(1),
> +		MDP_INTF_REV_13xx_INTR_EN(1),
> +		MDP_INTF_REV_13xx_INTR_STATUS(1)
> +	},
> +	[MDP_INTF1_TEAR_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(1),
> +		MDP_INTF_REV_13xx_INTR_TEAR_EN(1),
> +		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(1)
> +	},
> +	[MDP_INTF2_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_CLEAR(2),
> +		MDP_INTF_REV_13xx_INTR_EN(2),
> +		MDP_INTF_REV_13xx_INTR_STATUS(2)
> +	},
> +	[MDP_INTF2_TEAR_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_TEAR_CLEAR(2),
> +		MDP_INTF_REV_13xx_INTR_TEAR_EN(2),
> +		MDP_INTF_REV_13xx_INTR_TEAR_STATUS(2)
> +	},
> +	[MDP_INTF3_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_CLEAR(3),
> +		MDP_INTF_REV_13xx_INTR_EN(3),
> +		MDP_INTF_REV_13xx_INTR_STATUS(3)
> +	},
> +	[MDP_INTF4_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_CLEAR(4),
> +		MDP_INTF_REV_13xx_INTR_EN(4),
> +		MDP_INTF_REV_13xx_INTR_STATUS(4)
> +	},
> +	[MDP_INTF5_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_CLEAR(5),
> +		MDP_INTF_REV_13xx_INTR_EN(5),
> +		MDP_INTF_REV_13xx_INTR_STATUS(5)
> +	},
> +	[MDP_INTF6_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_CLEAR(6),
> +		MDP_INTF_REV_13xx_INTR_EN(6),
> +		MDP_INTF_REV_13xx_INTR_STATUS(6)
> +	},
> +	[MDP_INTF7_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_CLEAR(7),
> +		MDP_INTF_REV_13xx_INTR_EN(7),
> +		MDP_INTF_REV_13xx_INTR_STATUS(7)
> +	},
> +	[MDP_INTF8_INTR] = {
> +		MDP_INTF_REV_13xx_INTR_CLEAR(8),
> +		MDP_INTF_REV_13xx_INTR_EN(8),
> +		MDP_INTF_REV_13xx_INTR_STATUS(8)
> +	},
> +};
> +
>   #define DPU_IRQ_MASK(irq_idx)	(BIT(DPU_IRQ_BIT(irq_idx)))
>   
>   static inline bool dpu_core_irq_is_valid(unsigned int irq_idx)
> @@ -507,7 +592,9 @@ struct dpu_hw_intr *dpu_hw_intr_init(struct drm_device *dev,
>   	if (!intr)
>   		return ERR_PTR(-ENOMEM);
>   
> -	if (m->mdss_ver->core_major_ver >= 7)
> +	if (m->mdss_ver->core_major_ver >= 13)
> +		intr->intr_set = dpu_intr_set_13xx;
> +	else if (m->mdss_ver->core_major_ver >= 7)
>   		intr->intr_set = dpu_intr_set_7xxx;
>   	else
>   		intr->intr_set = dpu_intr_set_legacy;

