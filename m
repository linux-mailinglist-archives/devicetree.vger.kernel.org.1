Return-Path: <devicetree+bounces-205790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7C6B2A390
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:11:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5449B4E5BF3
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 13:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C895318126;
	Mon, 18 Aug 2025 13:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="txS1dG3I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C1E3218C9
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 13:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755522322; cv=none; b=u931T020mTl3ElCNvNDykEWMTXIyYUHviwAQdKUqx1K2V2CTg8Lr4DDSatoNFBvV1GmQu77qIeH7ge4kL5+B4anWbVoXei6Df01rFzqajCqtPJSsRcFupHsKlRd/wNYiO6SI37wCOdbvCZqmXaAAec/QD9e39WxlJ0VzVgnYKIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755522322; c=relaxed/simple;
	bh=RpAhxP2uLqbqjInuTE70JRXrQca1fdqD+vDq2S1ckfg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iM5w+ZLFa9i9drgT+OXuBlfAC2hnHd7sxMMXzvHFLODKLU2SD1sXEzHnLNXms/1Obki3tCjsOzx76j3FaejlVwSTZTgUBfPe+WUSQFj19nu3bqXTQounu5oeJ/XrdQaXPFbUypkm6vsGxHft78qytnIi24cekNgSSYC4ETWjS9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=txS1dG3I; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3b9dc5c8ee7so2631641f8f.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755522319; x=1756127119; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=86BJmrJXeETeW2kp8meE7Uq7AvyYwzMOqYpCJJXyfLs=;
        b=txS1dG3IyrSDBriMFeWWgHeQgrwquh8uAPpEcdMV0g79noALWuVRWDccj7GLJ7S74Y
         xkcSjVV0TP3EUphTRiqj2wd00Nv2vZtKKlt1+cDQk7vHlDVDZWqNg6CFHB5jtR2pYed4
         KYa/OM2BVxixE02a5tGd5K80r8nMYfogIWCMXiAMVqBbLFZxIJP4MTmZ/M/xq0ln6npN
         bJFKbOMdXwvy5iqAHXiX3HMH8XHxU0VRsE89AMD/mE/GT0+6VlT+0LoB7/CsNA3TtOoN
         0FmczBnNwrvZHas8ZQEyissCYVIzhwnGkBJyR0OlpcvH/LtbFw05tsOL04Z7JnJuRv7X
         6fZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755522319; x=1756127119;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=86BJmrJXeETeW2kp8meE7Uq7AvyYwzMOqYpCJJXyfLs=;
        b=maCa1wIyu4aqqji8E3nmiQgIakIsI+2vzKBLXyKHrvdAXZPYExklg0PZLQbT07vRAf
         UZRIWgI5Om/mCUnib/6PQYnzHam2U/IARmwQtoPZtB4zE8GLcZey/qtF+gBC3UALQ1us
         piDeqHmmSHGklh4w4rcrjV+0EMV65fIMXoa7H0s/6rMSoy0zv3csBhjPVBc+0JA9gaf6
         FJXC211fhSVQDfbRzczaDadS2eZrvn08CW0r6b4OqKv41whNlNnjfHKKR78isDaWy2AV
         LAcmTwycB/nJLR2USvTdebJmULpErEgKnCgcM30CMuqpOPuN1LkR2PupOEsKmOcAxdKw
         xhZg==
X-Forwarded-Encrypted: i=1; AJvYcCU/MhL/o8RTn79G5pF/lINz+zVFdaLcMwuWSInqfjw1Em09HOfwb7AD/rmgg10OB7F7qjjmokxv99Oj@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5q9oP48dT8qswk6exLFi24FIsktQBoCpX2aEmWTT8i9sBsnvO
	jDJmgB/3+np4tH7q2chGWVMiWyDBCYbjF6NRoZaQsyeZuAt92ZddTC6JIX17ZAsKM4Q=
X-Gm-Gg: ASbGncv9RNb+nlsnUmK0wdmQ78GGLkIx3lSkpckRgCiESi7xHQ7J53t2Y98feAlDr4E
	vxM03xwEmLZZ5eUbE4T18pz2hL3NTao9AON+oBFzmUvodyMq8Hv7WokEjphs9MpJO4PwmKrqz2q
	7ueKDQU4bzLcrWm5ZONoUsjUlmvuTdvlRQ+S8wEpTlUWp9HWoQ/GFl33FIlG0v65/NrKh6axy8P
	H5sioZGx1v+fP4iZg/2aSEV62Oa5UCcRnF+fM7AHNHET3WFo6q6KnC2f9IOD3GFiyy64prluhRb
	Yrlnnf807ku4Nqv3ut+8rmTI2QmrrbxkxdQ3Ko3B6oYp8HHTAG5pMNmCvVImxx49ulsp/w5kOQ7
	J+VRjBZtSA6RMlQMmxVZvW25utfipaPRVLT9gmw==
X-Google-Smtp-Source: AGHT+IHcwykrBK8tXrdhApeeaxgZhKOjTfFirzDPuKeFi7nfZYLL6OLNQGBRz5fJTm0ZvXzAmYWt9A==
X-Received: by 2002:a05:6000:1788:b0:3b8:d493:31ed with SMTP id ffacd0b85a97d-3bb690d3800mr10683315f8f.47.1755522318746;
        Mon, 18 Aug 2025 06:05:18 -0700 (PDT)
Received: from [192.168.1.3] ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3bb64758d1csm13236548f8f.8.2025.08.18.06.05.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 06:05:17 -0700 (PDT)
Message-ID: <90d40899-c9b8-4628-a0b5-06ee0aa497be@linaro.org>
Date: Mon, 18 Aug 2025 14:05:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/13] spi: spi-fsl-lpspi: Set correct chip-select
 polarity bit
To: Frank Li <Frank.li@nxp.com>
Cc: Mark Brown <broonie@kernel.org>, Clark Wang <xiaoning.wang@nxp.com>,
 Fugang Duan <B38611@freescale.com>, Gao Pan <pandy.gao@nxp.com>,
 Fugang Duan <fugang.duan@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Larisa Grigore <larisa.grigore@oss.nxp.com>,
 Larisa Grigore <larisa.grigore@nxp.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
 Ciprianmarian Costea <ciprianmarian.costea@nxp.com>, s32@nxp.com,
 linux-spi@vger.kernel.org, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250814-james-nxp-lpspi-v1-0-9586d7815d14@linaro.org>
 <20250814-james-nxp-lpspi-v1-2-9586d7815d14@linaro.org>
 <aJ4TkKdkIPiJhhF4@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <aJ4TkKdkIPiJhhF4@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 14/08/2025 5:49 pm, Frank Li wrote:
> On Thu, Aug 14, 2025 at 05:06:42PM +0100, James Clark wrote:
>> From: Larisa Grigore <larisa.grigore@nxp.com>
>>
>> The driver currently supports multiple chip-selects, but only sets the
>> polarity for the first one (CS 0). Fix it by setting the PCSPOL bit for
>> the desired chip-select.
>>
>> Fixes: 5314987de5e5 ("spi: imx: add lpspi bus driver")
>> Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
>> Signed-off-by: James Clark <james.clark@linaro.org>
>> ---
>>   drivers/spi/spi-fsl-lpspi.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
>> index d44a23f7d6c1..c65eb6d31ee7 100644
>> --- a/drivers/spi/spi-fsl-lpspi.c
>> +++ b/drivers/spi/spi-fsl-lpspi.c
>> @@ -70,7 +70,7 @@
>>   #define DER_TDDE	BIT(0)
>>   #define CFGR1_PCSCFG	BIT(27)
>>   #define CFGR1_PINCFG	(BIT(24)|BIT(25))
>> -#define CFGR1_PCSPOL	BIT(8)
>> +#define CFGR1_PCSPOL_MASK	GENMASK(11, 8)
>>   #define CFGR1_NOSTALL	BIT(3)
>>   #define CFGR1_HOST	BIT(0)
>>   #define FSR_TXCOUNT	(0xFF)
>> @@ -425,7 +425,9 @@ static int fsl_lpspi_config(struct fsl_lpspi_data *fsl_lpspi)
>>   	else
>>   		temp = CFGR1_PINCFG;
>>   	if (fsl_lpspi->config.mode & SPI_CS_HIGH)
>> -		temp |= CFGR1_PCSPOL;
>> +		temp |= FIELD_PREP(CFGR1_PCSPOL_MASK,
>> +				   BIT(fsl_lpspi->config.chip_select));
>> +
> 
> Feel like FILED_PREP(..., BIT()) is stranged.
> 
> I suggest #define CFGR1_PCSPOL(x) BIT((x) + 8)
> 
> Frank

It's using an existing macro that everyone knows though and I found 65 
instances of exactly this. It can be read as "set bit X and put it into 
the PCSPOL field without any further investigation.

If we make a new macro, first the reader will have to jump to it, then 
it still doesn't immediately explain what the "+ 8" part is. Using 
FIELD_PREP() also has the potential to use autogenerated field masks 
from a machine readable version of the reference manual. You can't 
statically check your macro to see if + 8 is correct or not, and it also 
doesn't catch overflow errors like FIELD_PREP() does.

There might be an argument to add a new global macro like 
FIELD_BIT(mask, bit). But it's not very flexible (can't set multiple 
bits) and you can already accomplish the same thing by adding BIT() to 
the existing one.

Thanks
James

> 
>>   	writel(temp, fsl_lpspi->base + IMX7ULP_CFGR1);
>>
>>   	temp = readl(fsl_lpspi->base + IMX7ULP_CR);
>>
>> --
>> 2.34.1
>>


