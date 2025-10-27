Return-Path: <devicetree+bounces-231613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 203ABC0EED2
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:23:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53D754F72DA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1153002D3;
	Mon, 27 Oct 2025 15:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hYK+Lbqm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C687D2C3768
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761578270; cv=none; b=I8eimSakQ/3SSRucXgw2d+oJ4e51qFPd2JPjHjmFvf0VSeebZ1/UXt4YZodTtjGX+vM29n8Ktp2r0VMgph/MSAYf/lR1Iiapj8lBuDtLqxQ19wxvmLuKt2GNtaIcCG8SRcONqD3+y3t/FWEMasBF/x6EWRA4jrvM0YJMqDx9jvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761578270; c=relaxed/simple;
	bh=j7iaI6dMKBMwEA/p9J76DQJqd78/n7N+OXj7MgdoWU0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S5sEXUN2VWEwguWJYEv13Qyr8NLNV9xjaoHqgZvCAMp8RR+I4E4d5ClqhiWR4DOYZERvQJxo5tHhfgmeQrFe3tNNYo/2KYECIP6qKlwe1mQey3xT5kskTvda6en4w2p43cqxON22PfPJPuYjJbTICobSI+qIbk/ruimgsoIrSKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hYK+Lbqm; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b4f323cf89bso1142248166b.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761578266; x=1762183066; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+RhaaAECagc9DFp9XYeX6cR74fQi362tPJsuNQfwUA0=;
        b=hYK+Lbqm8F4EWCYEXc5zzo57bvJUDMeXeM8P2cem3hFG+dxv4es9Xdiz+m5WacCk9M
         dkZSNTBy7LtK7RNcsBbOd1pZI9KtdHdl1E+Af5oDgnPTaADYTALvQ7kN6Llrf02BlFdb
         5bpQ9m97qxwHxusgsaxqyLPuYiJRaX7KE9D30a3MbJR6CWhkpyI2B2oGogSZA7MhfaFt
         omsIv0LlnZLC0ycfKHT9SviJw8LJBWq3YHnCxY5+j/5tzgvSBZATaT8JkcH7OtXRbQNu
         llJOIbS9FEgLctmybGdtGA5ZjQJNm4tLowhEQhp2wqjqcQeEgHj0r2LLN2uGFp162Lkq
         Zz6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761578266; x=1762183066;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+RhaaAECagc9DFp9XYeX6cR74fQi362tPJsuNQfwUA0=;
        b=pOmL/3cnwqBTS/14leNgNBrk6Oj7XIKPObE/0OD5ydkajRNKGMA1rPnRU34CaPLuNZ
         Zfe+Gq/nEkrzAhLy5/05dNvmrDjh0xtdFJqc/8avDk+IcmKajPLRdmM+Dsxb4xBs9kT2
         xwggtPiIKs4m0TBuKuuq0eRam1ixyysWa1+78+xemW26734cHA9kDYObUMCvaLfRkmsU
         nzd6Dqfw12yMxLiDmWtnift5YOpAeLBRBUs1jNrO8WO5mx+WOdQCnNG4goN4HLMMhwIv
         9ry6fdzmFc60NUeUAF8GuC0Vc4UBEoiwRHyspHmJ8hYzueYkI9TUBeLFjV1mASx6G21f
         V4rQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtnLQY2+Wa338Ilds/sTWwfPyShEgi4XpJNEeEamqnrCQ/Fb/dxXU4csS/za1IDrnjDQxKrr3Mnnos@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8B96YVoP+evcmKofz05fiQT4qsuBUzwxEiPXwwYPXDVnOs2Sm
	WWW6+afZRtvQnCB1R9ZptwbHVmjULr4kFxdVXQvXpN9k3ZQmS3dMqxL+
X-Gm-Gg: ASbGncuBRo/U0U9pCGg0axl8ZDi/Vkb3Dj3WvWmbGJw7rTbxEJMiJLm8Uh/IGLl9arE
	tEJ9iVM3W5aRW53EWpkIs3nhRlqXeWowD9hfwNXMED0cgcsqzKvlbGv0m6VdMRuNgyfYSW57AxE
	dTfuv2AeC27uxVxorZlmxGYPyhknXjnx3NcjY+G/eYWsgRfIl0aWg1B1BBLgM3liFTA1U0o+Gwh
	jD0apoq+VutJLN8Ff9NgW+c+K/kTnvjhG6OOuVVUnnrXFTh9NkniJywRf78Db+bOXd0DuMAakrQ
	yGL533Yt9x0Bb9festlBSg6goFHSNXueir1walI2bQJyqbbZodKSEkuZEsey6Cj8oRfegY8JBqo
	KjJfMSTQKNuii5LU05Ref+TD7Mb68xkTjYtTqXzJDiISzS1nGStb38Bhx4d/w/qd8DQDGZQDXUB
	X9J7rwcVA5/P8lfef+Og/yZmWPMTiAbg==
X-Google-Smtp-Source: AGHT+IFwRk45A3Ur3DKKqB7hUJTu/XpniiqiGgHDiWfPN2WS4tjYIiwIglRdwwwXDeEdp9t66AD1SA==
X-Received: by 2002:a17:907:97d6:b0:b45:60ad:daff with SMTP id a640c23a62f3a-b6dba49c6d1mr31539266b.28.1761578265848;
        Mon, 27 Oct 2025 08:17:45 -0700 (PDT)
Received: from [10.25.208.2] ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85308cb0sm809592766b.9.2025.10.27.08.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 08:17:45 -0700 (PDT)
Message-ID: <feba1845-5f2f-4716-950c-9abc7c4594a9@gmail.com>
Date: Mon, 27 Oct 2025 08:17:40 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] dt-bindings: clock: document 8ULP's SIM LPAV
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, Shengjiu Wang
 <shengjiu.wang@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
 <20251017112025.11997-3-laurentiumihalcea111@gmail.com>
 <20251022140841.GB11174@nxa18884-linux.ap.freescale.net>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <20251022140841.GB11174@nxa18884-linux.ap.freescale.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 10/22/2025 7:08 AM, Peng Fan wrote:
> Hi Laurentiu,
>
> On Fri, Oct 17, 2025 at 04:20:19AM -0700, Laurentiu Mihalcea wrote:
>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>
>> Add documentation for i.MX8ULP's SIM LPAV module.
>>
>> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> ---
>> +description:
>> +  The i.MX8ULP LPAV subsystem contains a block control module known as
>> +  SIM LPAV, which offers functionalities such as clock gating or reset
>> +  line assertion/de-assertion.
>> +
>> +properties:
>> +  compatible:
>> +    const: fsl,imx8ulp-sim-lpav
> This block also contains QoS registers, General purpose registers, HIFI
> general purpose registers, and others.
>
> I am not sure whether need to add a syscon fallback here. dt maintainer may
> help comment.


syscon programming model is NOT compatible with this programming model.


If you need access to other registers (not covered by reset/MUX/clock APIs), you're going to have to either go

through a subsystem API or manually create a device link between SIM LPAV and your consumer and then use

something like dev_get_regmap().


Either way, you need to make sure that you're using the same lock for register access.


as for the interconnect QoS-related stuff: can't really comment on this as I haven't worked

with it, nor do I have an use case for it ATM. However, the binding does need to be complete so

suggestions in this regard would be much appreciated.


>
> Regards,
> Peng

