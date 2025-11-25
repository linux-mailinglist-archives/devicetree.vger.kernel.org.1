Return-Path: <devicetree+bounces-242165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D7002C87790
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:34:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2200A4E16D6
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 23:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D27A12EDD53;
	Tue, 25 Nov 2025 23:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MCFfcoX4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFDD2EBB9A
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764113656; cv=none; b=LJqi/+niBRVuz8Vwx/b4DoCJo8wT4wJVmZU1Ca9trDNct4QMm2xrMQ/26e1i7XyF+fg/JdG221c4mGsTrq8eGmHC2VeQj6joeFgZVSe2uBfpAH2Z2EjnIHWrNqh93skeYC8nyA714NHLUCnGgEu5NZQizLIPpuDxu/ivNxP+bfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764113656; c=relaxed/simple;
	bh=7OIcc9KkXH6wW5HnKG3kaGMWstSD64sRgn5IR3BBUQE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KEKiKyHBmfxv2aIFIY//1rH/uRpNFJMzGFStNsDm0L7UYKOfKJ2AVds75odF23ei4aR7UUc0xy5kLmJUdgiUqOSCoZMouWDFgUhPOc28ikZlVtcDB61C4O3t0betocrNlHP0O//auMSF12yrwJ9zSFZwTdQDkeV4YEA+Ym7ubf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MCFfcoX4; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4775ae5684fso29303405e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764113653; x=1764718453; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YSgFECtP1z+NfavQTbIkfavnGHKDphcmbRff6uSNyR4=;
        b=MCFfcoX41b50PjXU/MyH+EWNKtFgNMeprKBxznEuXO+b06vqRwB7NCgd7Su3EFleFM
         iEnnUFeIVUKzup0K7/tPOF0v2etOOHoWBOAGAyiMmpJadFe2TdtlMkXeXbpGQZBSEXUV
         wFjN1eejLYzi7tPbkSYf6QC+/YBxf2EX6Wmu4qtkPdF//M0jrHAjHQ7eMAOYcXFdugHZ
         84IKz/sNdoaQceg1Zcu1E9L4AqSrQAuxqpFwTppJrk7f0nM9nVOMUoVIAIilXjwi3Ph7
         kQGWoDQt8+WRqWat5vZnWeAqnkVnZfJYht3XLZJd2NAcrCGRoTU5arrBzz0X34u+YQy2
         M4NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764113653; x=1764718453;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YSgFECtP1z+NfavQTbIkfavnGHKDphcmbRff6uSNyR4=;
        b=hYFS8xBsI03+vjnuGfuzKIDYYn9oWndkFnmBDst9VnVgdMF+pEavybxzGC/Zhk8TXg
         L7HRkqehjpUw0uFMQV+Lu7soW8OMqlSmnbEKiScfvGLwjrQZAdwTrESnDyowUNL8lcOa
         fw3/k9pPPsqaNvlfH3qhIJC5Tc1wgnQtWnf6la+V4iv6x7YXHrWLoII6LhDxu2ZFaKMw
         Hnxi/u6jcp1zcQEVB0+YuK7izq4gzaIDek9+VHHgUdpvqdiSZ2sYQpGytgxoxTC6AyiL
         u8VM8rJwOKpx0KW4tjtqwGvt07DfAPi/oRx7e1oAfFjHxzFDk8cV3/NQVvzHbeWTtt/r
         fzHg==
X-Forwarded-Encrypted: i=1; AJvYcCWEq6516rEC0J44Ha4LepZGJLKslAdik8uEuNlv57ka6OPYuCDePQAa7yLqxYYE/pbD6NkUjr4pknGG@vger.kernel.org
X-Gm-Message-State: AOJu0YyT5JkGtqnT8Gtidc/I7Uq1bgIV5j4ENf0CF4L1QubSVEJM0Y/D
	KzYtEwxofVztBAhiIARX6BOK+F2NqDFJcYbZEyOPbw4lPCOUPN6Gd11i
X-Gm-Gg: ASbGncsGHBKS0fXSy6Kc3zTh+y7iCY3zghGGj3CvDpHpl5TkZUiwCe/d0Vh7707akVW
	dd87evMLlGGdurjK8PjXriatBShylZBuljkjtBQe8t5z+p4if4dNEHG3WxF3nDLyn9zCEU2ZGVx
	jigeC995ojnU5Bsi9p+boCpT8iMo2q1ReEkP/lHdyb4oxjuF/qsLUjNTKU6e9R0neaXX7FLXdKy
	JTUyXHSFTCYRhTX8zrrj7C9lZn4UUPZwNjNRanuQvSuyTMocBcOvim9iDq1V/BPNaKTxKtKtcA0
	Bx+OvISlUfzKArNyheFrPzYD/PesNXHXWDur2qH4qMwplkehADd9+fyb0OKz47irbZGPL/SbSmJ
	impbRExT3tRt/KWe2s9xfEUnOBKtHgy9bmTZt2HxZu7bMMgpAT3qqAmU1CoK5MP2ar/aonyFloS
	oHW2EfdEmK8Lveau6GszBnlIuyNxJee/j/WwZtTzptfw==
X-Google-Smtp-Source: AGHT+IFalyeW7faMHDifKV64koi9lzILMgomHzb1dC1jupNeqdx4t6uHO6adv/AIDeDahL7H73btnA==
X-Received: by 2002:a05:600c:4443:b0:477:af74:ed64 with SMTP id 5b1f17b1804b1-477c114f00amr174145245e9.27.1764113652924;
        Tue, 25 Nov 2025 15:34:12 -0800 (PST)
Received: from [192.168.1.129] ([82.79.237.20])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790addeeaasm12850205e9.7.2025.11.25.15.34.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 15:34:12 -0800 (PST)
Message-ID: <9ce8bcf1-7a62-44ce-81e3-f1c51f8be9b0@gmail.com>
Date: Wed, 26 Nov 2025 01:34:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] reset: imx8mp-audiomix: Replace mask with bit
 index
To: Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.li@nxp.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Shengjiu Wang <shengjiu.wang@nxp.com>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
 <20251114133738.1762-3-laurentiumihalcea111@gmail.com>
 <aSCHjNqj3CV3ahX0@lizhi-Precision-Tower-5810>
 <6be8a682-6c72-45c8-be0e-880ab66045ff@gmail.com>
 <aSR8q5cE/XXbZuF0@lizhi-Precision-Tower-5810>
 <4a022153-009c-44fd-8c4b-39819ae69390@gmail.com>
 <9f07e541fc000d9065c1ff1716f1edc4c2278c8d.camel@pengutronix.de>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <9f07e541fc000d9065c1ff1716f1edc4c2278c8d.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 11/25/2025 12:40 PM, Philipp Zabel wrote:
> On Di, 2025-11-25 at 01:59 -0800, Laurentiu Mihalcea wrote:
>> On 11/24/2025 7:41 AM, Frank Li wrote:
>>> On Mon, Nov 24, 2025 at 01:28:32AM -0800, Laurentiu Mihalcea wrote:
>>>> On 11/21/2025 7:38 AM, Frank Li wrote:
>>>>> On Fri, Nov 14, 2025 at 05:37:34AM -0800, Laurentiu Mihalcea wrote:
>>>>>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>>>>>
>>>>>> Replace the reset map mask with the bit index to make it clear that all
>>>>>> reset lines are managed by exactly 1 bit.
>>>>> I don't think there are benefit because I met some periphal need a magic
>>>>> number to reset.
> Toggling multiple bits in unison is different from having to write a
> magic number to a register field. The driver currently supports
> neither. That is why I suggested to change from mask to bit.
>
>>>> Please provide more information. What SoC? Which peripherals? What block control?
>>>>
>>> I can't reminder exact one. I grep some code
>>>
>>> [IMX8MP_MEDIABLK_PD_LCDIF_1] = {
>>>                 .name = "mediablk-lcdif-1",
>>>                 .clk_names = (const char *[]){ "disp1", "apb", "axi", },
>>>                 .num_clks = 3,
>>>                 .gpc_name = "lcdif1",
>>>                 .rst_mask = BIT(4) | BIT(5) | BIT(23),
>>>                 .clk_mask = BIT(4) | BIT(5) | BIT(23),
> According to the reference manual, these are three separate software
> resets for three separate clocks: lcdif_pixel_clk, lcdif_apb_clk, and
> lcdif_axi_clk.
>
>>>                 .path_names = (const char *[]){"lcdif-rd", "lcdif-wr"},
>>>                 .num_paths = 2,
>>>         },
>>>
>>> mask is more extenable and easily support more hardware in future.
> If such hardware appears in the future, it will be easy to adapt the
> driver. Usually we don't prematurely add complexity for possible future
> hardware.
>
>>> Change to bit number have not big benefit.
> It improves readability as it makes immediately clear from the code
> that all resets correspond to a single bit.
>
>> sure, I'm fine with the mask-based approach. The big idea here is to make this driver
>> usable in as many scenarios as possible.
>>
>> Philipp, please let me know if you're okay with the proposal. Will also have to tweak
>> one of the subsequent patches since, so far, we've been operating under the assumption
>> that reset lines are 1 bit.
> Given that the current code is already using mask, and if you think it
> is likely that there will be need for reset controls that require
> toggling multiple bits with a single write, I'm fine with keeping the
> mask.


ACK. Unfortunately, I don't have an use-case for this driver in which we'd want to

manage multiple underlying reset lines as a single one like in Frank's example. I'm

also assuming Frank doesn't have one either based on his previous comment.


Despite this, however, the previous version of the driver was already able to handle

this use-case. The single-bit reset restriction was introduced by this series. Therefore, I

suggest we reduce the number of changes and revert to the old behavior.


This way, we'll avoid reverting the patches if someone does ever come up with

such an use-case. I'd say the driver is simple enough that the code readability will

not be severely impacted.


Either way, I think we'd be fine with any of the two approaches in the end.


>
> regards
> Philipp

