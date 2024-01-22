Return-Path: <devicetree+bounces-33766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0327583642A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 14:14:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A671E292922
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 668D33CF63;
	Mon, 22 Jan 2024 13:14:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GcJwKeAd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0485E3CF4B
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 13:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705929272; cv=none; b=hI56QTDtJKlcco4NdMpI9tovfG8X8xMDBix9xlckj7bFfWlWY3+FWbtrRbt5q9+Sr85DddZL0/An65kcgsLnuG1b/Gmv8mxPE9UonHA3pvk0Q4jETdQWemdrs1qPtC9+GOtbEJi3ocVSalSg5vp8LAAWnC6uDPIoBrPrtT5c/Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705929272; c=relaxed/simple;
	bh=K30LieWFbuwgszGRYmUn5+kXRPSalW7eeHMf+IDE62g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iKeFMcyrBnXKKgui4/1G/i23kxTEwVuQKFfDtsSa8YyO5kyilZbTxUXoxcL6Xu0aq7EfqxGrYEeNl+jITdDxSWrx90IZXgkrtnraHP8JFeHtqeHPUh0CCzE8M/sALNe1pD4pBxdEOxu7/1QmeCDpITcQ3UZBeSd4xuO9VjmBDaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GcJwKeAd; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40e76626170so36108445e9.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 05:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705929268; x=1706534068; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wFt+s6kaAmxwMWrnZJi1q/AOQW4iNIVpOYVaOF/Qrwc=;
        b=GcJwKeAdUEOFTE/j1rH+2Lcp24e4WKQ3YcWrO6xvEApdX6kLJl/epjk0T18heFJ8kd
         01u5wSxmV73Y9eFimgJRQkeRu2xDRY3WAcY7hnSlUlqE7xDGlKv7I6fAP46eZMMYgBMX
         gWDtQnY2aaAUQGY7Ecro0/mWmTpd9/oMI1v7W+vPMsyd1Hb/ZAj7utMyFWxgn+sjwkcZ
         TmdJsRiI/l1yTHSsCjx4HLSBKH+kwg3IWCfjBoZzGLkph3puG2Bf6k3kjvQypIKGZV6/
         0AppotIrdC7BRpMvy7y7HbuPoS7LfkBFEV5mN5nPFKLHqM2CFgIjWxEDPPWLIQQVk35y
         600g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705929268; x=1706534068;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wFt+s6kaAmxwMWrnZJi1q/AOQW4iNIVpOYVaOF/Qrwc=;
        b=s8U8RPiPRJeP5SQLdlTLTYtL7znXuORmJQwtyBnsVfzpVPjWF9J9y7q+1bOpMnRJBs
         uYieNp2qerdSAQyLnzQyrbgEY5AAeOaHO4juzLie+rEksHMWBmnv3WFiFJzsNN9A9V5J
         y24vmskwNbaMyrx2Aemt3BYyFzbvPvhp1pSzLEJdjaVmay6eRAgtu01B9VEOBWHxFjil
         hBgUV7yLpkW24s5SlWTFrsiya2FgLRlaMnNJCxVj5UnfcgVDtzvEcwGanYRH1KukNjwK
         IjQYVdDywNSjM57PR5ywNI+RlgzJSmr9vAev+b2PjzPn6tyFxdDZeFG2hJ+YBwbEomx2
         E3ew==
X-Gm-Message-State: AOJu0YyaqG4e6BCws5sgDTemuk7AP/HeBMJgre+3pW3XC+8h5qHrVCzt
	ras8zkcfTy6PVjl2joPFjgor+m1IK/3wb/BcJCOtl2bS+RMWEnswbn4iBT8ZHjc=
X-Google-Smtp-Source: AGHT+IFTsl8JkpDUNkti9RfnoRhGJyQBzy/Bb4U5+tC7t6ZkjxEXjF4CFKjcQdvCBTXnp3uhyZHpWA==
X-Received: by 2002:a05:600c:228e:b0:40d:5c7e:6f69 with SMTP id 14-20020a05600c228e00b0040d5c7e6f69mr2714157wmf.147.1705929267644;
        Mon, 22 Jan 2024 05:14:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id n18-20020a05600c3b9200b0040e4ca7fcb4sm39267210wms.37.2024.01.22.05.14.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 05:14:27 -0800 (PST)
Message-ID: <0b6a7895-bd87-4edb-b392-5000124ad133@linaro.org>
Date: Mon, 22 Jan 2024 14:14:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] reset: Instantiate reset GPIO controller for
 shared reset-gpios
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Cc: Bartosz Golaszewski <brgl@bgdev.pl>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Sean Anderson <sean.anderson@seco.com>
References: <20240112163608.528453-1-krzysztof.kozlowski@linaro.org>
 <20240112163608.528453-3-krzysztof.kozlowski@linaro.org>
 <5ad7badb85bdece735901a0f6317183b1d628a68.camel@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <5ad7badb85bdece735901a0f6317183b1d628a68.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/01/2024 12:26, Philipp Zabel wrote:
> On Fr, 2024-01-12 at 17:36 +0100, Krzysztof Kozlowski wrote:
> [...]
>>  struct reset_control *
>>  __of_reset_control_get(struct device_node *node, const char *id, int index,
>>  		       bool shared, bool optional, bool acquired)
>>  {
>> +	struct of_phandle_args args = {0};
>> +	bool gpio_fallback = false;
>>  	struct reset_control *rstc;
>> -	struct reset_controller_dev *r, *rcdev;
>> -	struct of_phandle_args args;
>> +	struct reset_controller_dev *rcdev;
>>  	int rstc_id;
>>  	int ret;
>>  
>> @@ -839,39 +1028,49 @@ __of_reset_control_get(struct device_node *node, const char *id, int index,
>>  					 index, &args);
>>  	if (ret == -EINVAL)
>>  		return ERR_PTR(ret);
>> -	if (ret)
>> -		return optional ? NULL : ERR_PTR(ret);
>> +	if (ret) {
> 
> I think this should continue to return optional ? NULL : ERR_PTR(ret)
> if !IS_ENABLED(CONFIG_RESET_GPIO), for example by just skipping the
> of_parse_phandle_with_args(). That should allow the GPIO fallback in
> patch 5 to work as expected.
> 

ack

Best regards,
Krzysztof


