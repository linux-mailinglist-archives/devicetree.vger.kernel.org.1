Return-Path: <devicetree+bounces-77291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F5A90DFF7
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 01:34:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E089B22037
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 23:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C9671849F8;
	Tue, 18 Jun 2024 23:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JbjP8rHm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE96015EFAF
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 23:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718753634; cv=none; b=sgp3qFO2zTzk5eiSs42Lb7qg93FUbREK1nSUQY5OwEchCi3S+U+0Fuhp6c2eTCRJ5IZBKZ8DvQGkZ9ctm6wiAjZBfF127Qk/yl/8/5TpQ0pcQOrLmlDsvafh9jQa9tnElTKUn79BwzINLooeB5hFWs2HBLA0n/qwznRIAmAK2Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718753634; c=relaxed/simple;
	bh=nvgJV2cU52xnEo2x3lWvM2rj+jo+RlJLSRb8gwhLWdM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MqeoVq8Htxu+N2yF2lAOEAgLIJdVzZbllCHbaL5osyj2788t6IQYZZHHcDgD7djxIU41sH9jksi98zr1VJciWMjUiWoBC5maRdw4ShR5YOKuEA49byOrTRWglsOjcc9RIy9yo2kSgOaRjOVhYJzZmVJDGvzrG4v0W3cdwaO5nno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JbjP8rHm; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42108856c33so1882475e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 16:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718753630; x=1719358430; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4BfwFOBcFxn/9yJmvVXLVigVaG5MzgevWsmMsZXB7Uc=;
        b=JbjP8rHmyq3zumxmZRIXZtY+B1MML22PA4isRff3kpBRGzc6JAwhVn8ol8JYfHWGgd
         WSdDkcK88n9oCYXXufkRiZj+uBpzBDxeLS+WN1WuHiWPDU4grRImh9mmC6/EPU2DtZBk
         h9p283i2PPNN5ZxluKR0boZAo1QEJKJHxwIR/jMQWynbjG7XjntmZJPqhPScwANpBkbl
         tk8oRCQsWs2J73zcrsvbNGfdvuxd2RG0p5L7Gtcn0sKsUw9e4yu5+65KkpZiZgwIAkUd
         LpmAKGDfehXYad3x5LcaWPGvY+vIuelBtts874fx9WO/CslTIKhB/qs/AxoJGucfyrs2
         SefQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718753630; x=1719358430;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4BfwFOBcFxn/9yJmvVXLVigVaG5MzgevWsmMsZXB7Uc=;
        b=NdxEWAjSC3f01asaiITF4xj+pYvD3Up2LUnVoDP0m5xQU4Y32hp44SmzQIDy8D8rMZ
         XZ5cl3UwuEO+9Adg2tvZYc1lu+m7T5M2WZY07jtYPv5SPCj61vWdZ4ZNF24CFnKmFkOJ
         16vVjD+uLagg1n+LrNXGnlrnuCvLYx4AypUnAWhdrjDweBmSy3qHW8ClHvPKTXJgSbId
         pUlBHlVMCWlpkfWcnZY4gqoe65FwSF6mfiLMdbsI5akMwOYe6GebQs4K6KrY0E/bChFN
         FHsS6qYQx/IXsR55CDFZGvaCjGRQRCA/7Mj/zVwHpdDKXAH3OvKXCWdxkFFZPk06Jhxm
         01LQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeEN6s/+834vbvKS8Iu5IjB/VSt+ZvpPe42xm+JzO3iYVYuG8uJRyQDG3I3s+A5mocv8sEOCHWcK7bIlRBzvXfZ0Rukb5IrQu5/w==
X-Gm-Message-State: AOJu0Yw1YFLyXuj8mb/wr4+JHASpggB/wKg/0XYT67duHZLI3wUQ+dPx
	7JIHOipO9g8JCF9PcJQ2FT/NbGbJI4O/+UK8k+sOVFBU0672WvPmq7Bi40pCHqU=
X-Google-Smtp-Source: AGHT+IHIao0OuSG1XYOKFMaqWoyuBFbBhjekObpcevx7N+l9Zi/ExgLk2u/T3YxpZnZSp4ND/MNIVQ==
X-Received: by 2002:a05:600c:314a:b0:421:811b:b83e with SMTP id 5b1f17b1804b1-4246f5cfa54mr41545905e9.13.1718753629512;
        Tue, 18 Jun 2024 16:33:49 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:6f30:7340:4e06:bff7? ([2a00:f41:9028:9df3:6f30:7340:4e06:bff7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f641a5b4sm205205785e9.41.2024.06.18.16.33.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 16:33:49 -0700 (PDT)
Message-ID: <f8cd4691-48fd-42a9-8e4e-e942c4475ddd@linaro.org>
Date: Wed, 19 Jun 2024 01:33:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 4/9] soc: qcom: cpr: Move common functions to new file
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Niklas Cassel <nks@flawful.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, Robert Marko <robimarko@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
References: <20230217-topic-cpr3h-v14-0-9fd23241493d@linaro.org>
 <20230217-topic-cpr3h-v14-4-9fd23241493d@linaro.org>
 <20230829151509.GN818859@hu-bjorande-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230829151509.GN818859@hu-bjorande-lv.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 8/29/23 17:15, Bjorn Andersson wrote:
> On Mon, Aug 28, 2023 at 01:42:16PM +0200, Konrad Dybcio wrote:
>> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
>>
> 
> It seems reasonable to update the subject prefix, now that things have
> moved to the genpd subsystem.

Ack

> 
>> In preparation for implementing a new driver that will be handling
>> CPRv3, CPRv4 and CPR-Hardened, format out common functions to a new
>> file.
>>
>> Update cpr_get_fuses in preparation for CPR3 implementation, change
>> parameters where necessary to not take cpr.c private data structures.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
>> [Konrad: rebase, apply review comments, improve msg, split]
>> Tested-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>   drivers/genpd/qcom/Makefile     |   2 +-
>>   drivers/genpd/qcom/cpr-common.c | 350 ++++++++++++++++++++++++++++++++++++
>>   drivers/genpd/qcom/cpr-common.h | 103 +++++++++++
>>   drivers/genpd/qcom/cpr.c        | 384 +++-------------------------------------
>>   4 files changed, 475 insertions(+), 364 deletions(-)
>>
>> diff --git a/drivers/genpd/qcom/Makefile b/drivers/genpd/qcom/Makefile
>> index 403dfc5af095..b28c8d9128c4 100644
>> --- a/drivers/genpd/qcom/Makefile
>> +++ b/drivers/genpd/qcom/Makefile
>> @@ -1,4 +1,4 @@
>>   # SPDX-License-Identifier: GPL-2.0
>> -obj-$(CONFIG_QCOM_CPR)		+= cpr.o
>> +obj-$(CONFIG_QCOM_CPR)		+= cpr-common.o cpr.o
> 
> Is there a reason for this to be split in two drivers? Would it make
> sense to rewrite this such that the result ends up as a single .ko?

cpr1 is far, far simpler.. I'm not sure if sprinkling millions of ifs
everywhere is worth it

> 
> Then you shouldn't need to EXPORT_SYMBOL between the two parts of the
> same "driver".
I suppose it's a balance of code complexity (see /\) vs kernel size

Konrad

