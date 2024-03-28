Return-Path: <devicetree+bounces-49375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2149D876285
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 11:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D17162819A5
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 10:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E758E5579B;
	Fri,  8 Mar 2024 10:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L34vsXe5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2547E5577F
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 10:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709895525; cv=none; b=ssmLA4x7ecg3NQkN88lDd1mCNMQlD0E9/8Di/AMtVgm+igYjpI8IF8kdCHhl84pvUdyKMGYacnejwFDhPFSqsfdhHLBzKkzbU5ndzlEOde7e/4chY8elxvym9K3uHABxQR/Bot+TWrgonP7mY6f3y9cr17Y3l5nYh2JssoqIJAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709895525; c=relaxed/simple;
	bh=NsBAMVV3UGnfxcnXbaurwKVQRZzPsLLq7CIVcfF+8yU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DUeallLaBThsgFSdrhXoMHaLI4DOglmWYldithUgc5rtSVWFJPM+dSE21rB2Ss1gh2CMXa+9KvoExa4kmnUtfcSGeksLMJK1dpbjQ4Oavh3Y/1TuyLYc5twEIXM/ti4g4pepD8Zg1Qz/MgMBrd/1FejtF0jxF+5oek2k0WrP8jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L34vsXe5; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-412f988b601so14683425e9.0
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 02:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709895522; x=1710500322; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PcnQrF5xYcn5uA2BgCDjMiJSTjBuh0mLxYEyK2hOjDE=;
        b=L34vsXe57OqqeHORbzp5GddKLk6UxjEWM0Cj5Uoq4ALouvlcEJpc3FWVFXmWbDpWuC
         XAkon/fFo0dB0SwnSLZ6DWmU0wXEjiP6nke3RQjQKQGR+rd7MIYEBrRur/nUHAldq1ix
         c1a8iQebCARs8Aux2Mqzk5cXjzRsannsxKgsZNvT8P8pwSUZutQNPTXRYQ5oluAmOeMH
         rup4DKsHYDb4FOa/UyvZHD0MM1XTbUF4poyHdcdwGqrXk+eOf8NeUEXlf08g7o9tdZn/
         brel2RgjU3KIhm0cUBMrrKqnV6pSVycVt6YjXabQK3WQxYt4Vruh0Mm+CLS+wE72x7/v
         tk8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709895522; x=1710500322;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PcnQrF5xYcn5uA2BgCDjMiJSTjBuh0mLxYEyK2hOjDE=;
        b=ptvneqjXqh5YA84p/I8I0R4FVNPI0y65LkRaxLbdZaEgbE9zWQ0rST7LR7C0SpHLjH
         TFYOfuGKjqLJORn0/4Dc2/zKO4Q1dG99VPpJftu9gCMLhb6vCAuj5XTwzV73FEiNrywU
         N4hW60LtoZG/+HHIL+xHQl4uWNLWbVh2CHXs2iGgTrosLou+uH2Sk4bq0gVkytfyYTfm
         neskVmdhqQcSwkHyha33TYtvnxZ6+/GkDysUQeffbAQlSobvzKY3GYky25BSXzDNmGsC
         z9S76P1nte4IyHrhf2qqxOe3umfBQmdH1BSsKVzG9CQnYhGImD+9E/7eSfG2yglUXN6L
         FHUA==
X-Forwarded-Encrypted: i=1; AJvYcCXc7APOMhvbRBgV9ElDg7H7J8bziifIKbGbRE9sUDQZgddjmxKuZwblC0YrvvDrppcX3p+p+7F4ISJsgnzwNVpprYbVWm6TxEWoEA==
X-Gm-Message-State: AOJu0YwXin1oDEPip6Gdfvy/C3GWjxXu4OVYByCl6z0PSeJnKlU2nlPK
	FjDo34b1h37XFZT707pAW9n6c4+8/xwv2nDFa0WxMgIUTJyTs/OS3SF1PtLc/ck=
X-Google-Smtp-Source: AGHT+IEr6crvsduU8MOWRTpH+ToY9A8BjBd9O1NFZkqJKiiergiii2dZaxn6uXWzWJFLFdMhtokrsQ==
X-Received: by 2002:a05:600c:4689:b0:412:ca58:81ce with SMTP id p9-20020a05600c468900b00412ca5881cemr16061693wmo.13.1709895522479;
        Fri, 08 Mar 2024 02:58:42 -0800 (PST)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id by1-20020a056000098100b0033e22341942sm20086822wrb.78.2024.03.08.02.58.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Mar 2024 02:58:42 -0800 (PST)
Message-ID: <d893e8f8-66a7-4460-9468-0f3a359cece7@linaro.org>
Date: Fri, 8 Mar 2024 10:58:41 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] clk: qcom: Add camera clock controller driver for
 SM8150
Content-Language: en-US
To: "Satya Priya Kakitapalli (Temp)" <quic_skakitap@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Stephen Boyd <sboyd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
References: <20240229-camcc-support-sm8150-v1-0-8c28c6c87990@quicinc.com>
 <20240229-camcc-support-sm8150-v1-4-8c28c6c87990@quicinc.com>
 <18567989-fb60-49ae-92e6-94e1bc2fa1c7@linaro.org>
 <83fd1995-a06e-b76a-d91b-de1c1a6ab0ea@quicinc.com>
 <4817a5b0-5407-4437-b94a-fc8a1bfcd25d@linaro.org>
 <e2627a99-307f-1e10-abfd-ce688cc2ec03@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <e2627a99-307f-1e10-abfd-ce688cc2ec03@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/03/2024 10:46, Satya Priya Kakitapalli (Temp) wrote:
>>
>> Not if you mark it critical
>>
> 
> Marking the clock as critical keeps the associated power domain 
> always-on which impacts power. For this reason we are not using 
> CLK_IS_CRITICAL and instead making them always on from probe.

How does the clock do anything _useful_ if the power-domain gets 
switched off ?

---
bod

