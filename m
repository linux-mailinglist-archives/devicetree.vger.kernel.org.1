Return-Path: <devicetree+bounces-149316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FA7A3F0DA
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 10:48:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 997E819E042A
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3F8A2080EC;
	Fri, 21 Feb 2025 09:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nmiXNYn2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BE2204C29
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 09:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740130935; cv=none; b=HbzxnPtvqWfq7WajvG0Rv2J8t6tHyS/bBoQ5YzT7CJYNUYwNagriAnOeuJOMGzVUdhvvZ/wa9UItoxSck2ro7oO0bmK3VRVlhIqc6HEM6pxREsGSyc/xEk3WANRNOCpMmcYTfpnJch8hxG/pMmYYqg0P36SETCzx8XJ8ni3gObo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740130935; c=relaxed/simple;
	bh=3d2Q2o3fJiHi3cJPY5LQ4dMhZv4asm/ZCUv1sU8Cby0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a9D736ncGvps1G7zXt/UQtGujW9F9fXoZYTZBCDiKM1jMxEiXTv793l8Jk40KM1kmb0MEKHibU+Tg2PHqjISE6yH9GQjGeOCpqWjZEc1YWnKsjwwSXFDixph+mO797TxVkBCxDEqBzQSS2PdOmuYFtZy5tVqO5lzJAqGfuW704Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nmiXNYn2; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43937cf2131so12730425e9.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 01:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740130932; x=1740735732; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B0J1Zwx7ue86k31iPRIPZZnmcI3lqDR1yT4y7QR55Zw=;
        b=nmiXNYn2abBlSDT+VzOFkFi7ImXLd9LMVco/Bw+50r7zsoF2yHY8TqX+FoFGBdPhQd
         Yo2YO96ALOdf1bWyc4B1LumgZ/nWv0s6Bi03BOCBsnalh9GQzncqYFFak9BCNLR6zuKK
         Gc/ItE9O4O6hX/UCwF9WD9SlzeCHZ0JGLSQEeXx+jJqbTwKSDnxnswtxBT5C/eY3BkEf
         f6ckh4SGW+Lh7mp3T1duZi6AYQFP7dYMnDj5NQ2Ed7cc+WGwOmqyGcFeO5jPkhE7Ca+O
         zMBeIWVdVuO7+bKo9yEEr8pcj580qhLknL6x2w9/WuZVEx/sHj9YxlV0FT4j5eMOBlE5
         K65w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740130932; x=1740735732;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B0J1Zwx7ue86k31iPRIPZZnmcI3lqDR1yT4y7QR55Zw=;
        b=PNvXeKcQbUozT9CeyoG8A2urdZm6IfmwwlCacKI4Hal/Y7R0Mi0VroykixspVZZB7c
         0cXDE0dpZDosWsipQn1JTpqJghVb4bLZldqsoaMJVIPYAQ+QOGA7sE1d05elF5mEybPQ
         6WoFM+F2ryFcSyNMUNrZOQQvC9LXNN5Dmxa60H7k3mu/cTyeqqndDLKyGly+2UlK5rWa
         9hh8ST1orhIBT1UwO3cWmUPbizT/EZafWFfctLcuteRH4ToCGVEPFrHWKQjrkYPi/Zwt
         Vu7YXNLvCvtecd9IdzCoC1X9pw26magCsMyeCOZYPDvw43KZdc2KGcBfb78JGhJhWqoF
         Jpdg==
X-Forwarded-Encrypted: i=1; AJvYcCVu3W+tO9sWme35/D3j7NflUSpjWfGJuU4C+KEEGJmtRmadEL8hacRqvoxAKdQY++C4u7nb8SxMZYxF@vger.kernel.org
X-Gm-Message-State: AOJu0YxvWTaEoomksprz1s2FkKE3xc5MAbtrg29D0Yo3RtZzwq9J4Ln+
	j5yXeCQCuwZhTEmQzYwSckCpl1hUZa5C9nBg/ITQjO4Yq7yB+pTgi/lNQTdEJBE=
X-Gm-Gg: ASbGncuDoT/RtT3QGoxJNgiU0LaZ2Xa4SUqi6PlRbcgNIfVERCfUIf2h7DmbfkcNpWB
	o7R0Z5gA5rBRSu8iLu0FQTuaqHNQ3Eg/ZWPuqA0m4dBT/kKNOlNoiwXbMw55eftm1XKFpi+YguI
	E0vosDIQZ7Qg7ci8p7POkb7kmimjHyJlgnEcFeHn/KlC7/fQ/bH+X9roSkFV/t/D7EU1wXyuMx5
	ZqBMOtQt20rHSP6a7gdAIMbpn+F22SWIu58wtzglxQsLFXmQLSyLuZmteQeHNszfY8+ahVKA5RN
	wmt+9NZizyDD12CEnWULgR9fstJ9XkOBbFnCVYMG9zlCU7L8CbJ9vmT+XJ+Q95qCdUs=
X-Google-Smtp-Source: AGHT+IFroyABBpOsabWsgrl7KBQzfGBjKB3F9B9Cviyl/eoKnSnufExjTKsMZhY9Cx/IPYZ4EIrCAQ==
X-Received: by 2002:a05:600c:3151:b0:439:a1ef:c242 with SMTP id 5b1f17b1804b1-439ae18fdc1mr24592065e9.0.1740130932194;
        Fri, 21 Feb 2025 01:42:12 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4399be79d92sm53108625e9.0.2025.02.21.01.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 01:42:11 -0800 (PST)
Message-ID: <85a51258-7cee-45b3-8760-bfbf943500c7@linaro.org>
Date: Fri, 21 Feb 2025 09:42:10 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] clk: qcom: videocc: Add support to attach multiple
 power domains
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250218-videocc-pll-multi-pd-voting-v1-0-cfe6289ea29b@quicinc.com>
 <20250218-videocc-pll-multi-pd-voting-v1-4-cfe6289ea29b@quicinc.com>
 <eec2869a-fa8f-4aaf-9fc5-e7a8baf0f864@linaro.org>
 <huluiiaqmunvmffoqadrhssd3kl2toutqtcw7rzamv3sqdglsf@7lz66x4sj3gv>
 <d4c4ecf0-9094-4341-8711-78a48e5d1344@linaro.org>
 <d444f1fb-42a0-48ef-83bc-d5aab9282b22@quicinc.com>
 <gzjyyl2kzv52zsewn5zf6ei65fymyi4pspvsmsjaqj5sklfxvc@bkg46saulni5>
 <fcc31cc7-67bd-4102-a53f-ebe66b4fd1a7@linaro.org>
 <3da96df2-1127-49bf-8114-282cc488c194@quicinc.com>
 <6b0684a0-a519-463f-b7be-176a4752a786@linaro.org>
 <r73hnpusatba3hvyckv7jw3dcvffgvoxwawlcvvxhuol5rrrk7@ngo3fiv7va6e>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <r73hnpusatba3hvyckv7jw3dcvffgvoxwawlcvvxhuol5rrrk7@ngo3fiv7va6e>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/02/2025 00:10, Dmitry Baryshkov wrote:
>> +static int cam_cc_x1e80100_configure_plls(struct device *dev,
>> +                                         const struct qcom_cc_desc *desc,
>> +                                         struct regmap *regmap)
>> +{
>> +       int ret;
>> +
>> +       ret = devm_pm_runtime_enable(dev);
>> +       if (ret)
>> +               return ret;
>> +
>> +       ret = pm_runtime_resume_and_get(dev);
>> +       if (ret)
>> +               return ret;
> I think, it's better to add desc->use_rpm. Then these two calls and
> pm_runtime_put() can go to a generic code.
> 
> Or maybe we can enable RPM for all clock controllers?

That second point is pretty interesting - I think at this stage ~ all of 
them do this boilerplate stuff over and over again ..

---
bod

