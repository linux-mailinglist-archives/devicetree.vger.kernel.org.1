Return-Path: <devicetree+bounces-188706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C01A4AE4B34
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 18:42:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B2111899BD8
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 16:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CEE829B233;
	Mon, 23 Jun 2025 16:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PZutgFjj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDA31AF0C8
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 16:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750696426; cv=none; b=KnR1J1zi72Zc2sOBDglev78aongjx7qburq0GM5Qq0xlfsc+yCiX//T64wFSXQ+juhvJjDzsDM9Izgs4a2ueRcEWiFCDeVjtdFxBU7PbxY3Qrp50J8WJF2gjFC3tXqMoKDO4zv2qt4jvpE3HZur8CsLrQOag2uneiX7b1ZRP6y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750696426; c=relaxed/simple;
	bh=bUrESiPRUdiT3aZBD/7m90ntrZOEQs+uNbXB0hfmyLE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BC4grrtWPg2B0MPso+O9V+47KaOlH5wMWEg3dGGR5fZ1kaz4VxFXmwtAYB5VLou3uiQ9sCR8z2kCwOIYjeMogQu06ghGWZ2vWEXt9XjsHXSYW6n77X/C0y1ZPbb37Gzs5j94KKEkkr5WD6DaMWFVVcQ9JLsergTzbK4B42lEcZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PZutgFjj; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-acbb85ce788so846518066b.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 09:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750696421; x=1751301221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XXbXOUYB6IBOkueWjAb33r4P7mb75EnqewGXePwUiUc=;
        b=PZutgFjjE1wzaRvF4ETc7QoGsoTEEUDKTVkzYNkXkoYszUGKlGsHGUSRk0enpvArNS
         lTBA5d1Lu3ZQzGDN40009BUpWDw6RkspNHAGO6JqtGIm18QjpVY+3TtjQNNvkgVphkSG
         H7jDfH0fdHjyXxjwmBa+N14Ox3L3AiNgJtP7sYxJ4qNdTmAXRuGIb7/S64sQNPzergW/
         Yfftagh5OSoY8a3EdnW5XBg9uu6wVZ7W3hD78jqK0iHYkiypuEKEvVN38u9uJqkiUe6/
         2uoTIFnPBTDwdaYuYC7XLc3qbw5mEbrVHDS35AOxNiIdsuSW9N2593UYBiXv8630J4Ai
         WB7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750696421; x=1751301221;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XXbXOUYB6IBOkueWjAb33r4P7mb75EnqewGXePwUiUc=;
        b=m149M4Hj7wZ7O8NJmWd5eB7bKPtRoM3bvhpHGtF1pn17WG5RELhyl+fCn/1+Ci22jR
         w+Ndth/Dtxb6lVnvDzl3Ubp/vmW2EC/DyNy18aHpmK75OWA3ixfuRJK3jTLz0mO7ian0
         4lDcRFbNDToGmdotNg7TcaB0EfsG+tPIuyGdZfETkidzE5V720szUnDlJDuhPxTMgT+D
         /+Y7U4bdjb92BcRkar1HpLoYbjurATFu0N6eZJsMiRQ5OAW0RILqeqApgwErdPIZ1E1w
         4jocywRwaScR56PXJoqhDaLAE7/co1sY73nL1ilfpcQGnzDDwx6gsXPU3s9MtJnL9t0B
         0xOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtjmDuSGO1mor4dm/JH1f7cKOo45w6xnYtOycCLuX1JVh9OQgPpMzz25zogZKwvPj00Re7Pl/guBU9@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwsfu2nTGivjClneL/MnSs69VkWCRpv+jt2bogKYkdGoPjEe4x
	WdXsJmg++o6HCkbePED9uMVTPFHGJzWfLxcvG8HjGlIZENF/YMYmGfbZltz9sbmgUxOU0M8UF3b
	B4Z5O
X-Gm-Gg: ASbGnctTy8xxKZPhtE9cyqc8VmYBT9pybV7uaqCvWp25QpyNOyZCFv+HlHc1xmbRC/V
	sLS/rcd+EFXZY2LPf7yW7lfB0Gu2HA8HieymHWSnvSYFMPhs2fKISwqTZrINPeYj3leg5Rj7T7P
	kT0t+4lGYJ3ya33y0VZdIplHSlvMqrNYul+KKMYiz7sahjCf6dOYZINA69myT21vOOdYVte+rHt
	zFVydRrcdza6x8hELupJzh/MTxMlab+GF8YHUnz8HWRfawJDtqp0DuZzeae0+5Cs3Bt7xppPwMT
	JAkVluOw0M9cyl9g0UnaG/jb/16lP7hT+rlOaq40AGUignq54ZRT83BGhNCRKnR8xUF49bvJ0sK
	Zj1lkdEU4MA==
X-Google-Smtp-Source: AGHT+IExPgFei+2P+PVJukxiS3aE9U+PHRfpSN5B4qb4zFW+/87BEDL9btqRL9zzd7hz7A0oT7z89A==
X-Received: by 2002:a17:906:2c1b:b0:ad5:23e3:48b6 with SMTP id a640c23a62f3a-ae057bd6e23mr1051197566b.45.1750696421104;
        Mon, 23 Jun 2025 09:33:41 -0700 (PDT)
Received: from [192.168.1.159] ([213.240.182.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209349sm734281666b.152.2025.06.23.09.33.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 09:33:40 -0700 (PDT)
Message-ID: <613f2812-3c60-41fe-bdd3-fbe8ea7eeb69@linaro.org>
Date: Mon, 23 Jun 2025 18:33:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/11] power: supply: qcom_smbx: program aicl rerun time
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-hardening@vger.kernel.org
References: <20250619-smb2-smb5-support-v1-0-ac5dec51b6e1@linaro.org>
 <20250619-smb2-smb5-support-v1-11-ac5dec51b6e1@linaro.org>
 <2d3ff07d-1cd8-4eb6-8b3b-2d0d6f64445f@oss.qualcomm.com>
Content-Language: en-US
From: Casey Connolly <casey.connolly@linaro.org>
In-Reply-To: <2d3ff07d-1cd8-4eb6-8b3b-2d0d6f64445f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/20/25 19:00, Konrad Dybcio wrote:
> On 6/19/25 4:55 PM, Casey Connolly wrote:
>> We don't know what the bootloader programmed here, but we want to have a
>> consistent value. Program the automatic input current limit detection to
>> re-run every 3 seconds. This seems to be necessary at least for smb5.
>>
>> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
>> ---
>>   drivers/power/supply/qcom_smbx.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/power/supply/qcom_smbx.c b/drivers/power/supply/qcom_smbx.c
>> index d902f3f43548191d3d0310ce90e699918ed0f16f..b723dba5b86daefb238ee6aae19b1b7e5236fce3 100644
>> --- a/drivers/power/supply/qcom_smbx.c
>> +++ b/drivers/power/supply/qcom_smbx.c
>> @@ -1091,8 +1091,14 @@ static int smb_probe(struct platform_device *pdev)
>>   	if (rc < 0)
>>   		return dev_err_probe(chip->dev, rc,
>>   				     "Couldn't write fast charge current cfg");
>>   
>> +	rc = regmap_write_bits(chip->regmap, chip->base + AICL_RERUN_TIME_CFG,
>> +			       AICL_RERUN_TIME_MASK, AIC_RERUN_TIME_3_SECS);
> 
> FWIW a random downstream clone I have sets 0x01 which is claimed to
> mean "every 12s" instead

hmm I saw that too, I think more documentation would be needed to 
understand this properly (I'm not exactly clear on what this actually 
means, when the AICL would re-run, etc).

I have reports that this works ok, so I'd just leave it unless we have 
info to suggest otherwise.

> 
> Konrad
-- 
Casey (she/they)


