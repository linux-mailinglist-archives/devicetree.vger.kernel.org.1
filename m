Return-Path: <devicetree+bounces-205850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38109B2AB7B
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 16:48:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13B827239C3
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 14:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20A4241674;
	Mon, 18 Aug 2025 14:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O6vEGUxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C5E239E97
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 14:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755527474; cv=none; b=fh5QicUyubH4gldewj/l/JO8CuVcvqupQ8XO6DXp/+zv8KdPkL4dBF7FuhapYQUQvUjn2B9t0Mv1rr1sGRdJR9I9zzMm8qQ3ifkE5CRsi8vHOLDEwjsOLO39Wv7p81EWW3xI0p+KGev32jUPUCtpPUYXNyNvn9tadkYGkSgs1ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755527474; c=relaxed/simple;
	bh=fG35iN1kFRAXE21etI8+TbfhHtzWP96Txn+0kfsGruE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q7FOjVaizvwvTveSPMa00DulBpBRFGqZaJUAAYVKEPuizW9XpQLnTbQgK0m7K1E90e5l02B7S9EC6R0+9gacFqL3zwk+oNESKbTYDp1eMucRLo7w+XdlPaBEUdyl0Gw4Se6G4IRjr1WuZikYkxs9kV9PIvwnUiPeH7lKs6Sq4d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O6vEGUxU; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3b9dc5c8ee7so2687798f8f.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 07:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755527470; x=1756132270; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YqUCIFuyjgf9dWStxbEJTvtbXAyyq5gx6EE3yh2DLD8=;
        b=O6vEGUxUOI40VfR8RNyn8YC7qhMxeyjuuZnQ7c/OlRa6SwedjZ6xK9bTj+fU8lVlqP
         I0zcq5HRli7+a5AwESDnk2krCDF3LjoefYLUpAenLpy2HovMM6t1OABV780Rv2WSTRWr
         6MdA+UyJEEmr6eWQh5gHZxaYihqPbwji3zU+Ux73x7/8JB98LrNLW5cCHUXoA9qlqY+W
         PQmi2BRK4rw9LKhM2LVhV8lzOGA4fA/2rZjBKE7JJ+cLk7NkaloMpoScNptMJkHKgBIO
         JKBlKh4ane7z87lBlLEepVe5mK4pee2hAG63a1MqYIRppvLuFb0orQyzSwJIu9DZfJ33
         Fz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755527470; x=1756132270;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YqUCIFuyjgf9dWStxbEJTvtbXAyyq5gx6EE3yh2DLD8=;
        b=FL8XeN3eYojl0ray0bMalN/tyFVs85zuYHJuwycXazvRRn4lf5y02XtTNAjgr9Xudb
         EEwlLRCHMnJAOqF//z1iWyHlqvpKP8swFxDZbpM+lb/EblzdQAbc8XbW443szpaqTBpE
         ckTQYhA3++g5jj4dwcMAoLHsrqX7y/J+Umir6bSnAaOaQTBBCJbC70uoeQdtKl0AW4AE
         yYShYOLupQwjtT5JnvTixR+nsnn6OxnYR887wUztxfeopcEVZ6NhRwmMw/xKGIbsIPMt
         UyrVc7ZR9fDZJgQg6hOpYAckQo3ZHBjzpJ6jKv51UPbnX66ad1BhK6Tot0GDJlVQsBcz
         Zudg==
X-Forwarded-Encrypted: i=1; AJvYcCVYMqo1Qd0vTZ1Yiw3bpJn+gV3RCrf+Ls4k+bTRPsruL8sI491kNX+Xm/tIhoaCa/34hWYvYCTqofHe@vger.kernel.org
X-Gm-Message-State: AOJu0YxAzCpTCA2JPxShlICczfJZyNKCB9zyIrgvdcQB8OKgbfABxqbv
	dZw5jBEd8njXrSiUtl+im4qTIuICAaFzL7enM/zeVRv5hagfToMYUjZtjDMcdF1dS4Y=
X-Gm-Gg: ASbGncsOHO8484uHlie+hgEXehLZLG/x3Nhsyy75dmFN2e8aYG1HmGlXrKSbTZ+ioOS
	3iDMPeWew8bczxzsP6wgdg/slNCmiLkknopXj/8YMv/42vOPRNHSIIh3XF7OAMyEJhzGnTXUUcF
	+Il+4DxRrey+4ehQi9R8gDz1Sw8A2x8JabzVnMu/LvLtQZrUpYeI8pFatyrbS3dAolZORERWVD8
	qigzE7PXFMstEbJEH7Jm4plYoVTE4GNjZnPurWvvtxU/YlQaYv2uKWysx8KI69oDdB8lvHl7vWG
	oodswA5dq+uYmXczXozJ1uG4HveMoAjoLicwScp4h5HraI5GzKi6hhz2hV3ZhV6OJ5oje9BdJUs
	IMv0paeSeQDMn4+Hz5RSalKq5gZI=
X-Google-Smtp-Source: AGHT+IEIVkPMjBrXWVFI0F4OEOVQGx0ZBgi9PzSgWdLSOcLjkm3Z6slxreu6ZYNW317l5cxTvC2cUA==
X-Received: by 2002:a05:6000:2289:b0:3b8:d14b:8f86 with SMTP id ffacd0b85a97d-3bb690d1f0amr9352479f8f.45.1755527470412;
        Mon, 18 Aug 2025 07:31:10 -0700 (PDT)
Received: from [192.168.1.3] ([185.48.76.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3bb64d2a405sm13313387f8f.20.2025.08.18.07.31.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 07:31:10 -0700 (PDT)
Message-ID: <1f3b68d4-e0cc-4952-a695-322ed9756b95@linaro.org>
Date: Mon, 18 Aug 2025 15:31:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/13] spi: spi-fsl-lpspi: Add compatible for S32G
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
 <20250814-james-nxp-lpspi-v1-10-9586d7815d14@linaro.org>
 <aJ4qNVIp788gc2ZU@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <aJ4qNVIp788gc2ZU@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 14/08/2025 7:25 pm, Frank Li wrote:
> On Thu, Aug 14, 2025 at 05:06:50PM +0100, James Clark wrote:
>> From: Larisa Grigore <larisa.grigore@nxp.com>
>>
>> S32G doesn't have the max prescale erratum and it can query the max
>> number of CS from hardware, so add those settings.
> 
> binding doc should first patch. Create new patch serial for add S32G
> support only.
> 
> Frank

I'm not sure putting the binding doc commit first would be right? That 
would imply it was a valid binding before it really was because the code 
change hasn't been made yet. Practically both are required so it doesn't 
really matter which way around they are.

As for splitting the set into two, Mark mentioned that he was ok with a 
single one, so I assume that's fine? The devtype_data changes would 
conflict unless they were applied in the correct order anyway, implying 
the need for a single ordered patchset.

James

>>
>> Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
>> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
>> Signed-off-by: James Clark <james.clark@linaro.org>
>> ---
>>   drivers/spi/spi-fsl-lpspi.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
>> index 6d0138b27785..a4727ca37d90 100644
>> --- a/drivers/spi/spi-fsl-lpspi.c
>> +++ b/drivers/spi/spi-fsl-lpspi.c
>> @@ -159,9 +159,15 @@ static const struct fsl_lpspi_devtype_data imx7ulp_lpspi_devtype_data = {
>>   	.query_hw_for_num_cs = false,
>>   };
>>
>> +static struct fsl_lpspi_devtype_data s32g_lpspi_devtype_data = {
>> +	.prescale_err = false,
>> +	.query_hw_for_num_cs = true,
>> +};
>> +
>>   static const struct of_device_id fsl_lpspi_dt_ids[] = {
>>   	{ .compatible = "fsl,imx7ulp-spi", .data = &imx7ulp_lpspi_devtype_data,},
>>   	{ .compatible = "fsl,imx93-spi", .data = &imx93_lpspi_devtype_data,},
>> +	{ .compatible = "nxp,s32g2-lpspi", .data = &s32g_lpspi_devtype_data,},
>>   	{ /* sentinel */ }
>>   };
>>   MODULE_DEVICE_TABLE(of, fsl_lpspi_dt_ids);
>>
>> --
>> 2.34.1
>>


