Return-Path: <devicetree+bounces-226979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2DEBDD5D6
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:23:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BD8BE350E54
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 08:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C18EE239E7D;
	Wed, 15 Oct 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uur9uFih"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E2E2C2348
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 08:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760516633; cv=none; b=mqoIGubRKFAdq92+B5+gj8RMc7FpYf6AP1VIijcxAfS0j42y118EgXmw83ldRfwTv5xmVBvvUMs38FlTFcIPAmuGEHt8MPoqYaplJdRXBH9J6LR+ZMYd/y0eepp+9PECBCWaY2StTU1uXTUgHTVnILu8llzbC2GF35w3Eg8XPEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760516633; c=relaxed/simple;
	bh=zjowPA6LA2JyKNy8/VG7vz2tOZi4UHzYurZ1ohlQmjA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MYTcKVeiyQNHauBdZHQSQ6uQW/D1OcXtjjMe1cXqFk5gs/oPavTynvoPCimt0qQrw/0q0sSHLA4JsN2hqL4LMJfwX8i5sGMMm4TjU/29a6hTfhs9/WJWWXp97Y31D4iVb3XqM/ZfWgVoqqkA9VyER2SIXsG37JZ7ZrlJsxKz4dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uur9uFih; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6394938e0ecso10306725a12.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760516630; x=1761121430; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xEWfeOPoDT8hEUhHinrJj37kfG+XXphWeZaOer8q0XA=;
        b=uur9uFihiQuKWrBEgfq/R4pBrAvhOye4itMhsn3NjK82CW1bFW//9TO2z6VKRXB/7D
         OFt8DenKT1PrwX6bdCtax8ry5QOICiZ6o8yQyhZEqoCS/gRHZgphi2mnXChMgWXton0y
         PiW3PEUIyB0aB77+Yc5XS4luA/Yks+o9P2QDwnx56yC3w07Qv7Ws+nGvXjiss3Ts1BXI
         PAD57dapqzgZRM9gwIZquYPBb8V0nnfIqIHD6o03mw49/FO4zIId9iw4+MiAFpcpJue+
         YkBz/W99QUPHu4yW05LggXa4zd7NHdbUaqApYnbEUw61ZOlKXIIBQKPGOl2Ve7q9tJP8
         EDnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760516630; x=1761121430;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xEWfeOPoDT8hEUhHinrJj37kfG+XXphWeZaOer8q0XA=;
        b=K1h74sBoRfGwp4yy61lalGwSn9X3J/pqZuJpVK2rTHP1IrK8qs5+srbZKY78hPbMzB
         X1teFlTIk0d58BcprB4yZt3i3kbN7KTggUWtuT37C4jLajAtFLLsS0Bil7q/zTs3Em3z
         VaMFjwU3fdpGaqiEiAaSDed0oz5pKCjgKH2Q704Y8yv/hcp82h+dEU5134GIArOMXdby
         zbmFqIj4MW5227lvbse9zdy8798DTbQ5Hhe3BKgr4skMnHt1MolOhNKLVbM2lQPFENM2
         CI1FyFhyiO6+DlTE2YvQ+ydDORqbsIDwsnEwDSyuWSIBz59oUYD6iZWvqwxPJRoGDh1F
         Bbtw==
X-Forwarded-Encrypted: i=1; AJvYcCVn2Aa3bD16juFWW3SI69BSnJBI5qU6clVqPdM80b5Kvta3GYRnWcRzKSr88XDuBTCZqTVQvGZidOUm@vger.kernel.org
X-Gm-Message-State: AOJu0YwbUdcdtGUqJFtmTQ3AiMw4G9sfSxNhwAiOOuyDqyNrqUcT+e9B
	5IK+Ex/fkukQRqHz/lg7jF8q7Dj3Uwj5IVq7Gp8G8uJajjwth/2E3UUmw4h0S3lNgrc=
X-Gm-Gg: ASbGnctEgBlWnex3fvFISYlVzdNbjt1f08g+OqywItjbl8yWo080iYhR+4tm+u08LXk
	hEuz5v02LD+BcrXXb7zWhHkYzdmd4kSNzfkWQBUOKryWP2w7rIEgs11F+1t7mFoUrGaf2gsMeZ6
	ahTBB7OdQc/GBtXWIaHBFEzLqbbBQ/tmFO7aqCvXX6XWgxP1+WQwu6E2ylTj66w5sF0gWDV49n1
	dYh+2eawkbjEKQR+badJlkLfPH42rOLaV++288wlNbswi9Lcu8rNxrK4fuQ1a3EHmxRhY9vOtme
	jENayaBR+Op1H9wA0D06gmy7pdX7zNbXuklGjK+E/Q1DAxdfdGAjbAFC+8VwRf4GzSrEKRbGT8O
	/YzpCOC+C0y/UDtHvWQLGqkokG7qLzVT+EjBxjhgJCdbIIEVEzSW4EoOWyrDkaSMAeArnjn1avO
	5SL5X0vsA9xa6EvQ5L0E1xQPtKlYqUs/XI
X-Google-Smtp-Source: AGHT+IHxbqlKJ1VsMlPtKXhUfB9UFCf51KlIdgD/eUSC/bM2tWlthk0OOIVYAVvC9wH/4v5Ovq+w4g==
X-Received: by 2002:a05:6402:2812:b0:632:d9b:271e with SMTP id 4fb4d7f45d1cf-639d5c3630emr27126917a12.22.1760516630160;
        Wed, 15 Oct 2025 01:23:50 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5235e7ebsm12712602a12.1.2025.10.15.01.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 01:23:49 -0700 (PDT)
Message-ID: <1c422fbb-dd93-46ce-9227-57c94eb55db4@linaro.org>
Date: Wed, 15 Oct 2025 09:23:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: qcom: camss: Enable setting the rate to
 camnoc_rt_axi clock
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20251014-add-new-clock-in-vfe-matching-list-v1-1-0d965ccc8a3a@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20251014-add-new-clock-in-vfe-matching-list-v1-1-0d965ccc8a3a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/10/2025 03:43, Hangxiang Ma wrote:
> On hardware architectures where a single CAMNOC module is split into
> two, one for each of the real time (RT) and non real time (NRT) modules
> within camera sub system, processing VFE output over the AXI bus
> requires enabling and setting the appropriate clock rate for the RT
> CAMNOC. This change lays the groundwork for supporting such
> configurations.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
> This change lays the groundwork for supporting configurations for
> hardware architectures that split a single CAMNOC module into real time
> (RT) and non real time (NRT).
> ---
>   drivers/media/platform/qcom/camss/camss-vfe.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index ee08dbbddf88..09b29ba383f1 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -914,7 +914,8 @@ static int vfe_match_clock_names(struct vfe_device *vfe,
>   	return (!strcmp(clock->name, vfe_name) ||
>   		!strcmp(clock->name, vfe_lite_name) ||
>   		!strcmp(clock->name, "vfe_lite") ||
> -		!strcmp(clock->name, "camnoc_axi"));
> +		!strcmp(clock->name, "camnoc_axi") ||
> +		!strcmp(clock->name, "camnoc_rt_axi"));
>   }
>   
>   /*
> 
> ---
> base-commit: 69a67cb382f428c6dd8ba63e44cd2c59cb84f736
> change-id: 20251012-add-new-clock-in-vfe-matching-list-25fb1e378c49
> 
> Best regards,
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

