Return-Path: <devicetree+bounces-129544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5404E9EBF88
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 00:45:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A49A284AC3
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:45:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0FC229152;
	Tue, 10 Dec 2024 23:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bgtyUdOS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB73225A2A
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 23:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733874300; cv=none; b=L9aMje+gwAPlBwBuqQGwC/5nOYU/T+vCQWWPuQht2ghjHNzcJXyTtqGiixLPE2BarMxGVLNAWq0XGsYhynryPY5g9NQRFsEA/G6ut081gyyDoiXt5aaQKrf36nEBQ+7k+7GY5fBPnhNLZag/8gzt+uJ7/1m12TiyoBWRXbQDf90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733874300; c=relaxed/simple;
	bh=tmLrRuRjTXHBXDiU8d+vDPEvNjajKnx4EMattycDEDw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gLjw6HGTcjYKDV1MiwgO4TU0MUG7MqP0AFo7+GXEPJibq8PPOm7S4sGU+6HJLROiF0leJtbihDSQodPvUhK8YF2bqH9KmtYX/lKG0w2i/j7b1h9iE5Z1m/Ix6P84NjQcmhRbaHF+dvHQA7pc5k6pvuHwetR/bugj3e1UR/jiKhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bgtyUdOS; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5401b26fb1fso443357e87.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 15:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733874295; x=1734479095; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i2GK2n7E25ECPtAL4qBYMFCHU1IDv9yiMZUmEef7d5c=;
        b=bgtyUdOSw8t0EKcZdPsSWoyat+5WOZzgMwxGI3+ZTMiFH6Z8mAugEMfa4aLFd1JxNw
         weSCczLeRJPnMmaYsrc5UJUBi0cgUdfKiJilC3x8nFDtUjFQSwfQnfC/fQBFImhbCZNt
         Y/+QQ8261ppdO7ALT0MZfSDoq4m4QWka8g51Evm1HbgGpeLfgDwsdkP+RciiPYRzFFVr
         pkQH3xnfKXxjCahSlUFveAxXxPC38gcNy01Bpw6lKVLseVoym9mTbCeYgRe6nAZ82EOu
         Hy4+ofAduObuC/nhlGxLmpfOsP30s6caNTkzV2U+3fu2/6x1/0eJtMYhSTp/x0OnOZkR
         jpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733874295; x=1734479095;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i2GK2n7E25ECPtAL4qBYMFCHU1IDv9yiMZUmEef7d5c=;
        b=Ub36aG1xtWyUSY9UbcgmhNLbCaFjIe8y3AqBkAEhlah8VeN/PNBGJN4KEXLBEgc7Z6
         Hbh9kef6Sxl6qSiwEq22/xHFVcxhvpo+clX/gNlKZgbjhnATWPlaWtbcBlfekbU3iYL3
         kKfxkgAsA0FDXwczjsGRcNLsGOf28Dzoyypw93ri5jAC4Otn+2jjcCfKoutZeZ4/pJhN
         8fpmIYUf85xG6UcKxZ7UUyux4aDI43f5rKozkwPlNSlyaVTFMjBEvwqhbZ2SlGrecrgy
         Gx4RCFudRVIOMVzPTPDtRX5NWtCtiveWZ8CR/WZXwyDu6Q4TK5bn0vZivrhYa17jOl1G
         0oZA==
X-Forwarded-Encrypted: i=1; AJvYcCX8pZHQUG7KmOMRYCr7SGMHNfjQGTXuGnioo7VF7JYwN9pc2BCo15T1oDS5mN/0kxqiKc53xTWstDHK@vger.kernel.org
X-Gm-Message-State: AOJu0YzoS7MZH6sfTP4tui+iNoVK70Td3gJqasVJOUq9zn3Nhx+07h0g
	jyTZD5lJ/Z/8auvi8biPz1/+u4VAfkzIuAuWfTgP+N2jCoy3MAbUzjLWJFMiYm4s14JlL/8Gxca
	n
X-Gm-Gg: ASbGnctqXkFz8Cuqo60pJZE7TG5npuiWNKYRBzcUxk9hNZE78arTXXQ8amBAeTO9eWx
	7h3X6Rdwe03qGb0Lm1QHhKFMAAXxvPxFBq265oCBbXapQbgk5wQSBMMgzr7UjEXQnsNLbeAqV0k
	R/2Uue4Au4Oc5HfQ47noz2kib84SPSiBHOqucntiUtIeG4AYhDQTEY9HJ0OPz+L/mJS0XNXeFcc
	jS/HFtkmolLlMumaHKTtYeGX+45eSV0wDkVH59cZvfQOLs4D/f+l9Emr70fotyfUTtZeQ7cC0dt
	H/n7E3x6bwu63UddZEXKOTWhw+fT2siq
X-Google-Smtp-Source: AGHT+IHCkwFGC4hD4vdubzDK0emMtmontaQK9gJJuUmgnTZhSJLFFLnKUal4wI4WeIiBIFbYsxihow==
X-Received: by 2002:a05:6512:15a8:b0:53f:9c10:beb7 with SMTP id 2adb3069b0e04-5402a5e962dmr69727e87.8.1733874294875;
        Tue, 10 Dec 2024 15:44:54 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401d02e665sm891456e87.242.2024.12.10.15.44.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 15:44:53 -0800 (PST)
Message-ID: <124bb490-58d9-4c8c-a83f-7c3d45f61e43@linaro.org>
Date: Wed, 11 Dec 2024 01:44:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] media: qcom: camss: csid: Make TPG optional
Content-Language: ru-RU
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241205155538.250743-1-quic_depengs@quicinc.com>
 <20241205155538.250743-9-quic_depengs@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20241205155538.250743-9-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Depeng,

thank you for the changes and updates.

On 12/5/24 17:55, Depeng Shao wrote:
> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> The Test Pattern Generator TPG has been moved out of the CSID and into a
> standalone silicon block at the same level as a regular CSIPHY.
> 
> Make the TPG calls optional to reflect the fact some CSID blocks will now
> not implement this feature.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Please don't forget to add your Signed-off-by tag, if you pull someone's
changes.

> ---
>   .../media/platform/qcom/camss/camss-csid.c    | 33 ++++++++++++-------
>   1 file changed, 21 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csid.c b/drivers/media/platform/qcom/camss/camss-csid.c
> index 6cf8e434dc05..2cb8c37982f8 100644
> --- a/drivers/media/platform/qcom/camss/camss-csid.c
> +++ b/drivers/media/platform/qcom/camss/camss-csid.c
> @@ -838,7 +838,7 @@ static void csid_try_format(struct csid_device *csid,
>   		break;
>   
>   	case MSM_CSID_PAD_SRC:
> -		if (csid->testgen_mode->cur.val == 0) {
> +		if (!csid->testgen_mode || csid->testgen_mode->cur.val == 0) {
>   			/* Test generator is disabled, */
>   			/* keep pad formats in sync */
>   			u32 code = fmt->code;
> @@ -1042,6 +1042,7 @@ static int csid_init_formats(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
>   static int csid_set_test_pattern(struct csid_device *csid, s32 value)
>   {
>   	struct csid_testgen_config *tg = &csid->testgen;
> +	const struct csid_hw_ops *hw_ops = csid->res->hw_ops;
>   
>   	/* If CSID is linked to CSIPHY, do not allow to enable test generator */
>   	if (value && media_pad_remote_pad_first(&csid->pads[MSM_CSID_PAD_SINK]))
> @@ -1049,7 +1050,10 @@ static int csid_set_test_pattern(struct csid_device *csid, s32 value)
>   
>   	tg->enabled = !!value;
>   
> -	return csid->res->hw_ops->configure_testgen_pattern(csid, value);
> +	if (hw_ops->configure_testgen_pattern)
> +		return -EOPNOTSUPP;
> +	else
> +		return hw_ops->configure_testgen_pattern(csid, value);

Last time I reported about the regression here, it is announced as fixed in the
changelog, but I see it is not, unfortunately.

>   }
>   
>   /*
> @@ -1267,7 +1271,7 @@ static int csid_link_setup(struct media_entity *entity,
>   
>   		/* If test generator is enabled */
>   		/* do not allow a link from CSIPHY to CSID */
> -		if (csid->testgen_mode->cur.val != 0)
> +		if (csid->testgen_mode && csid->testgen_mode->cur.val != 0)
>   			return -EBUSY;
>   
>   		sd = media_entity_to_v4l2_subdev(remote->entity);
> @@ -1366,15 +1370,20 @@ int msm_csid_register_entity(struct csid_device *csid,
>   		return ret;
>   	}
>   
> -	csid->testgen_mode = v4l2_ctrl_new_std_menu_items(&csid->ctrls,
> -				&csid_ctrl_ops, V4L2_CID_TEST_PATTERN,
> -				csid->testgen.nmodes, 0, 0,
> -				csid->testgen.modes);
> -
> -	if (csid->ctrls.error) {
> -		dev_err(dev, "Failed to init ctrl: %d\n", csid->ctrls.error);
> -		ret = csid->ctrls.error;
> -		goto free_ctrl;
> +	if (csid->res->hw_ops->configure_testgen_pattern) {
> +		csid->testgen_mode =
> +			v4l2_ctrl_new_std_menu_items(&csid->ctrls,
> +						     &csid_ctrl_ops,
> +						     V4L2_CID_TEST_PATTERN,
> +						     csid->testgen.nmodes, 0,
> +						     0, csid->testgen.modes);
> +
> +		if (csid->ctrls.error) {
> +			dev_err(dev, "Failed to init ctrl: %d\n",
> +				csid->ctrls.error);
> +			ret = csid->ctrls.error;
> +			goto free_ctrl;
> +		}
>   	}
>   
>   	csid->subdev.ctrl_handler = &csid->ctrls;

--
Best wishes,
Vladimir

