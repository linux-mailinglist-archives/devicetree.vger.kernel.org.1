Return-Path: <devicetree+bounces-48840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 303D7873C37
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 17:27:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7EC21F27F5B
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 16:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3BF1361D3;
	Wed,  6 Mar 2024 16:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jj1RDJb9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D915612EBF3
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 16:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709742464; cv=none; b=JuUFu+6ANbrnvitnEBk91VIxQQLfYUI1pzSpSBKL7puGRSF0xo4IutnC6VJfROXjGuR3lM8b9hLxJo83SkOXwO7vW+fcF+RjNXxtC/VMyffkZ22DCDqLfHPAYN/BLv+Ja551ymnzcuwc4FLoTZ2JwuEUhJuPVrD+Vg6I2OPMnLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709742464; c=relaxed/simple;
	bh=yEXFKs84hTr0UyD4ojePo0Svlb29UBTd8UFd7uJjn1k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aENqXYz1fHoe3F3JuIflWcygNGF9sJgDOJSix/3dIua5+DE+lqevwBzJAiRO3mVdlPzb3mHr2WiU7bzjLbpj03fLulgwZ44q339VRy5WGtabjsnb/DzQePFeFOKJQZywxc5VRp55uE6zY4sTtIb8ZFTZdikWYI2IMsG3TWXZU/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jj1RDJb9; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5131bec457eso831211e87.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 08:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709742461; x=1710347261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tAZMCH8J07QiijNq8o/NNBXhy5JhnjDlTuZhK1cgvds=;
        b=Jj1RDJb9ClKBaKQm/HIvqaNeCwKFo1gfELy63XVtFcQYczE46C8WAGHDSpsK/VhBjX
         YMpCF+O6j8Ytq8AFirexXjIu2d9eA2Xj2id67kkJpsWozTQnifW08oFNQuwOYEHlMVS1
         WCz5BseurrMKngRZ7i5Q+bpDLztOrkw1Kkguhn//8ZudRuLzq9HYco01y47h/AnwZ2QA
         uv1LtWmTuHGuxmkV1Ww4xmbL2x7Ny0FWJVZf0H5/mJRBmLGyWyg9UsGTTaqsdOy4utdT
         W5w31ctIEQgIlrvjEiSXnpKdvtkYMTR1acepcPKXAD5lyRexJriosAf6mpN4kr5NeBBV
         5DDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709742461; x=1710347261;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tAZMCH8J07QiijNq8o/NNBXhy5JhnjDlTuZhK1cgvds=;
        b=a7+jfmaYWKvJxCkotIH2lx4AjkVgaqHSBUYmT6hGLS3J6QUkrnBYEVwUo5+IKMmLOn
         9gKuCJmv1nRwGp9KaOotQDz9zlfZ32jPN4Za5AN2tkQKLQCB+lwgR2CTDW7yVeA6v5WW
         q7HX3lGcIPyfmrrTaol4oXUwt99/rlteKvO2k7Khwc5TITiAezfWzxYUz1mUl8wohejR
         MKjPkGhca3fP030hRTjdvZA7aVYTzYqIRahQJ36ruIxf/kNBygdKuxAXzZ2lEFk1ZfBz
         gMtcV8FwAGnqy1y7in4cUaBZGrnOv8cfcxf2apudVEC7BzNRnccLSiNBQesomBjfpl8n
         8L/g==
X-Forwarded-Encrypted: i=1; AJvYcCWC57cNyGTEJotvnPlAgXpNJ2xlsmDCAR1hFpt+5KR3SLIf4Vjgv0t1GleA404fTD2AuQvmmaERAYRjZptZUvzUYfD+r99PYq3uHg==
X-Gm-Message-State: AOJu0Yxmh7a9USVZvfZ0GIaRNmsinbTIrfp3ALgStLtYRqbyPXGAB1P3
	PDP4LUcWzus/V/7EIij7lO8EvMV0Y79rv6+Aoho+2qR8Y9PcNpoErAz5fggk8yI=
X-Google-Smtp-Source: AGHT+IHFSt5jWo2bCyn5EXHjWo85KHHEtu2g3w+sAhUaXX7yL60kB98Uk0rzf0XF8spju2KcgjvxlQ==
X-Received: by 2002:a05:6512:ba5:b0:513:5bbe:7b29 with SMTP id b37-20020a0565120ba500b005135bbe7b29mr1708191lfv.1.1709742461054;
        Wed, 06 Mar 2024 08:27:41 -0800 (PST)
Received: from [87.246.221.128] (netpanel-87-246-221-128.pol.akademiki.lublin.pl. [87.246.221.128])
        by smtp.gmail.com with ESMTPSA id u25-20020a196a19000000b00513588ac414sm561395lfu.161.2024.03.06.08.27.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Mar 2024 08:27:40 -0800 (PST)
Message-ID: <19176685-898b-4aeb-b819-fec54a126233@linaro.org>
Date: Wed, 6 Mar 2024 17:27:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] spi: spi-qpic: Add qpic spi nand driver support
Content-Language: en-US
To: Md Sadre Alam <quic_mdalam@quicinc.com>, andersson@kernel.org,
 broonie@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, manivannan.sadhasivam@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20240215134856.1313239-1-quic_mdalam@quicinc.com>
 <20240215134856.1313239-4-quic_mdalam@quicinc.com>
 <d1c80d3f-3b70-4630-8f7d-b00983b487dd@linaro.org>
 <f5177fad-214f-1b60-46ba-1dc0a4fb059e@quicinc.com>
 <3e544d37-b1d2-9c58-3130-9e6950430671@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <3e544d37-b1d2-9c58-3130-9e6950430671@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 3/6/24 07:01, Md Sadre Alam wrote:
> Konrad,
> 
> On 2/20/2024 5:44 PM, Md Sadre Alam wrote:
>>>> +    ecc_cfg->cfg0 = (cwperpage - 1) << CW_PER_PAGE
>>>> +                | ecc_cfg->cw_data << UD_SIZE_BYTES
>>>> +                | 1 << DISABLE_STATUS_AFTER_WRITE
>>>> +                | 3 << NUM_ADDR_CYCLES
>>>> +                | ecc_cfg->ecc_bytes_hw << ECC_PARITY_SIZE_BYTES_RS
>>>> +                | 0 << STATUS_BFR_READ
>>>> +                | 1 << SET_RD_MODE_AFTER_STATUS
>>>> +                | ecc_cfg->spare_bytes << SPARE_SIZE_BYTES;
>>>
>>> Let me introduce you to FIELD_PREP/GET and GENMASK().. Many assignments
>>> in this file could use these.
>>
>>   Ok
> 
> While doing the change i realized that it will impact raw nand driver as well.
> Shall I post this change as separate patch. Is this ok? Please let me know.

One patch per file/topic, yes, please

Konrad

