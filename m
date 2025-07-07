Return-Path: <devicetree+bounces-193703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BF9AFB643
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 16:42:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 364BD172D7D
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 14:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFF9A2D8DB5;
	Mon,  7 Jul 2025 14:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gm7GOlYa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E07D81724
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 14:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751899340; cv=none; b=hFII0KvGGJWNiTAQudTyaKxRLlpYSo1mNZGcpYSqMj4EgkcgLZDtLTE0pRBWwrCWRQgqYTiVSzj0pczU8YuQVGDxlR2LYSyi+S1dOUZL/HGgYtaCktYJAxhIVkvkEel7I5c8MTUJj8IPVbask/rd77wLyULH5ZW7ApMRjEfwHLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751899340; c=relaxed/simple;
	bh=WdArDEtLe89Q6g7L4LligwAlwWkbQ5MDMZfw7t5oEXo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GtyTxCikW8FsBTO5BNGJMmS007/JT/lEqxhAA4VONyegLjD8mQzPEK08hOeD3EqrRTi/HYLB1ta/uLFPAnl2IoBXaeRgZl7H1Pk33sgp9wwjwhkdCpckt962Db6ZBa2n0djavrUi9PXW8en7nrdBWSbAqB+wAP4NdWtrkpZmi0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gm7GOlYa; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a6cdc27438so2707012f8f.2
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 07:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751899336; x=1752504136; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PG8mV4pDhYymeozzS82ZZcM9xZV+pEOeW3uE1qROtU0=;
        b=gm7GOlYapgAzIhHWkI9PQZFa/3JYUN7jYeN7v9dgRIDXhT9JPSIZQKhYHHOYEJ/I9F
         xVMxX5vhx1Zixu95kLwJcnYkUvtM9vKTBTa24j73pR0VdQxVSy0pg2+Jhi+gKBMQD3Sg
         iyT7duN/l0rL1wKkdeD+u8vc0d+YpA7kUeNfAzHCIGKhzG1deGPKYANhbRdWsWZYhJjq
         zN/c4ZJGaDvjQGKDxJuHe4Kg89KydPzCUYTZiDARUGVPYFmVRYqV7Yu3CbRNBpmS227l
         akRAwE6vdKJX1sfIhmHb9Ts+o3GKGpJIwhwCyll3554vDzJEp9OO2b+891+7mklueidY
         Ua0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751899336; x=1752504136;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PG8mV4pDhYymeozzS82ZZcM9xZV+pEOeW3uE1qROtU0=;
        b=BZ/hQ497XHfg9ZrTXi6We7/AxR+7QXyFW9xOinTGBDo1dUTct68GF5sGG2uh320O6o
         EOJlkEBQAUEE7SlJupiD6x88n+yhqMLAZQwQIMRWqm7RDSRYtH2bjtJPjD5PGG9gAvKD
         EdJabKLyEKRieF3BXlVR5fz6nytKdaKQWfvC2Ni6IHAcpOqCfvflB41LPsL93hdYY7LR
         a8Z9AmhaC0/RMz3sizPJZrfMnHEEbj/T8p71Lc9Q6q/Hv0iZ6tpxR6Gl5uHqOrTnv5vI
         Z7ZYBeykfDE52Ul5NXA2VJJg4L60WkMKYpOsMgoihAiYJnYUPpdPF3FwlyHFtWpnOWkd
         nsOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSuX/hZ5O2KFh3d65NgUH7SUjDZWzcSosPHD5vnEPkpzipjHKJtgR2qn4zy4kTK7HKjDGk1Ob2k61h@vger.kernel.org
X-Gm-Message-State: AOJu0YzyQKr2D/95t+jUnAXLBOFw+Ww93qeSETl2vFtQLRDpcG2xjepn
	+SP+KU9YpnBpHti893NHyvSDf0cmHXBF0aUlaILn4YNEGcPvIaLRh6e0POK1CjKJNwI=
X-Gm-Gg: ASbGncsxHXbRUCmL9CNgzXXRBUFJo+uebTdEI3dwzDeCzxLNXxVxTYdwGN+pF3kmfgq
	i+5qYmUk3g28BdPm9PPJQKOmRroNykz6y1kW7ix9KUCJKsuMD5i89u6tifhENQreG0PrEso8xCz
	mHBz9lvyEHfW6lDF2PkdSwCJjZCiSc0YMZXEugr2KontVjsRrDvcwdF3gmRwFV5SEoAzsrj/Njy
	uX5B6CK0TxizMIbSPqzn+o2VjCg4W9nBCfzXU2azlO6yXqRIGbgsYGt0o7lOjZr7mlX72B4T0yh
	rRRLoLLwepX2bDHgOemNO9StmufOavrcoc7HLmuEiRnI3F5fYENwgPT679yVul3RCZGPWSjjVb6
	cOA7OHOEqTAZSxCWZ8uSQucl7/BBvTJQ=
X-Google-Smtp-Source: AGHT+IGyYoZy50qjmAjoyeY/+RRpyL9VdrWvFAUJlbX9qLSoaWQqvRrm9Uhn/ZI8f2iL8dQXzws9/w==
X-Received: by 2002:a5d:6f0a:0:b0:3a4:ef70:e0e1 with SMTP id ffacd0b85a97d-3b49703dd84mr10413739f8f.55.1751899335190;
        Mon, 07 Jul 2025 07:42:15 -0700 (PDT)
Received: from [192.168.1.159] (p4fc3d4fa.dip0.t-ipconnect.de. [79.195.212.250])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b471b968ebsm10252375f8f.47.2025.07.07.07.42.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 07:42:14 -0700 (PDT)
Message-ID: <fe454257-aa21-4304-868f-aefbea9963c4@linaro.org>
Date: Mon, 7 Jul 2025 16:42:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] pmdomain: qcom: rpmhpd: Add Milos power domains
To: Luca Weiss <luca.weiss@fairphone.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20250707-sm7635-rpmhpd-v2-0-b4aa37acb065@fairphone.com>
 <20250707-sm7635-rpmhpd-v2-2-b4aa37acb065@fairphone.com>
 <06760125-4800-4068-8936-dddf27c28d17@linaro.org>
 <DB5VDDKCAQQG.LDCMHXAZN17S@fairphone.com>
Content-Language: en-US, en-GB
From: Casey Connolly <casey.connolly@linaro.org>
In-Reply-To: <DB5VDDKCAQQG.LDCMHXAZN17S@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 7/7/25 15:49, Luca Weiss wrote:
> Hi Casey,
> 
> On Mon Jul 7, 2025 at 3:23 PM CEST, Casey Connolly wrote:
>>
>>
>> On 7/7/25 12:18, Luca Weiss wrote:
>>> Add the power domains exposed by RPMH in the Qualcomm Milos platform.
>>
>> \o/ codenames!
>>
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>    drivers/pmdomain/qcom/rpmhpd.c | 19 +++++++++++++++++++
>>>    1 file changed, 19 insertions(+)
>>>
>>> diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
>>> index 078323b85b5648e33dd89e08cf31bdc5ab76d553..e09552a469264f28952fc46c3ab8c125e87310da 100644
>>> --- a/drivers/pmdomain/qcom/rpmhpd.c
>>> +++ b/drivers/pmdomain/qcom/rpmhpd.c
>>> @@ -217,6 +217,24 @@ static struct rpmhpd gmxc = {
>>>    	.res_name = "gmxc.lvl",
>>>    };
>>>    
>>> +/* Milos RPMH powerdomains */
>>
>> I can't find any public docs telling us which SoC is Milos (the only
>> relevant result is Bjorn's email asking you to use that name instead of
>> SM7635). So for the sake of future generations could you reference both
>> names in a comment somewhere? Or even the commit message would be enough
>> tbh.
> 
> I don't know the full list of model numbers for Milos. I assume it's
> SM7635, SM6650, SM6650P, QCM6690 and QCS6690 based on the info I could
> fine, but such info is hard to get. So this is not a definite list that
> all those are actually Milos, or that this is the full list of Milos
> chipsets.

oof, I see... that complicates things. It sure would be good if this 
list was documented in the kernel though imo.

> 
>> Off-topic here, but maybe it would be a good idea to add some Qualcomm
>> platform docs to the kernel with a table of all the publicly known names
>> for each SoC? This would also be really helpful even ignoring codenames
>> just to know that SM8550 is Snapdragon 8 Gen 2 for example.
> 
> So far my source for this has been the postmarketOS wiki, and this
> Google Doc, but the latter hasn't been updated for new chips since a
> year or so, and is also probably not very complete:
> https://docs.google.com/spreadsheets/d/1WrKHLj_oSoiykhSc6xqXAkT3nlD2hq-fzUPSGiq3Kbc/edit?gid=1270863184#gid=1270863184
> 
> And I've got some notes locally for a couple that I regularly need.
> 
> But I'd love a more central place that isn't specific to postmarketOS
> for example. Not sure where though?

kernel docs seem sensible to me? Maybe a wiki on gh/linux-msm?

> 
> Regards
> Luca
> 
>>
>> Kind regards,
>> Casey (she/they)
>>
>>> +static struct rpmhpd *milos_rpmhpds[] = {
>>> +	[RPMHPD_CX] = &cx,
>>> +	[RPMHPD_CX_AO] = &cx_ao,
>>> +	[RPMHPD_EBI] = &ebi,
>>> +	[RPMHPD_GFX] = &gfx,
>>> +	[RPMHPD_LCX] = &lcx,
>>> +	[RPMHPD_LMX] = &lmx,
>>> +	[RPMHPD_MSS] = &mss,
>>> +	[RPMHPD_MX] = &mx,
>>> +	[RPMHPD_MX_AO] = &mx_ao,
>>> +};
>>> +
>>> +static const struct rpmhpd_desc milos_desc = {
>>> +	.rpmhpds = milos_rpmhpds,
>>> +	.num_pds = ARRAY_SIZE(milos_rpmhpds),
>>> +};
>>> +
>>>    /* SA8540P RPMH powerdomains */
>>>    static struct rpmhpd *sa8540p_rpmhpds[] = {
>>>    	[SC8280XP_CX] = &cx,
>>> @@ -723,6 +741,7 @@ static const struct rpmhpd_desc qcs615_desc = {
>>>    };
>>>    
>>>    static const struct of_device_id rpmhpd_match_table[] = {
>>> +	{ .compatible = "qcom,milos-rpmhpd", .data = &milos_desc },
>>>    	{ .compatible = "qcom,qcs615-rpmhpd", .data = &qcs615_desc },
>>>    	{ .compatible = "qcom,qcs8300-rpmhpd", .data = &qcs8300_desc },
>>>    	{ .compatible = "qcom,qdu1000-rpmhpd", .data = &qdu1000_desc },
>>>
> 


