Return-Path: <devicetree+bounces-58437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BED3F8A1FDD
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 22:05:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4A2EEB22FB2
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 20:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59FA5205E11;
	Thu, 11 Apr 2024 20:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OoXgGN05"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C694017BA5
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 20:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712865937; cv=none; b=hpoZInlAJdAoVF6HSi+TxarqagJrXiYGZTGidyWGSRLiWQdC9CN8sx3x7Tosnpk2cJx4T0GNT1H/AoRwjhEL7mRNuSAWNPL2bN+vN6Vgf10LbuHXfy5ubx5I/Ydb4cK5RVD+J5+w0IV2xWG7LPlzAmcbVxd4S1Bv+7E63mo1ZJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712865937; c=relaxed/simple;
	bh=AwzRCjPDc91MDoHSUS4611CZaA7Epw9DmMTbScEHcOQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s54sxWBP/cL/+0kpxMmYj8fzC11DrcI87ZoX30tz64S47l9p3MOHgDotxtG/+Yi9TI3DaWj36Z6m9cAOjCsPDJfY10qamAe7LRIw8bSuUEeELcPLX29pOwYF5nMbXg/e8clpiO4Wr9dmPEjhaupi4dUE/WfW8VZ6/p8FscHs/s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OoXgGN05; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-516cbf3fd3dso244238e87.2
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 13:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712865934; x=1713470734; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=23X31wBk3BfhcWEk6ltxZSp3rP6W6hNoB7vDkcBeLnU=;
        b=OoXgGN05bK0YJK35duMTJd4NInfkPfMmhfw2dNbrpE7BdmDCpsCiwRIOLQi9TMeCu0
         Jvt5c4VfS0jwSRezJxYw5q3cQhCvZqS4j0xth35dvQqn4Wvf2fcBJU8iSMW8f3I9wSg7
         FXCGfoJBEvFfkC8boOdugRzacofH8FQnHZLz71FuTELI5nEkHjKrDsKg9svI9ERy7qGI
         XnQkCQXF8GMoZsqm1cyFrRGt6EfS6Csgc1fTLoww5qk3vyf122obYCfufES68FXiRZ+g
         sumHln7bVn0CRythrd/BXxxxDXrlag8H0S8AaeybSsoskAv4skSrhs1SyMVt7BONuucP
         5ULg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712865934; x=1713470734;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=23X31wBk3BfhcWEk6ltxZSp3rP6W6hNoB7vDkcBeLnU=;
        b=e6tNhwOmUu3kgiL8zksL80JlU/i9wkTKUdc0eI5KJFzhqBX1FhnGaP1O7Hwt8XK30t
         SGCAuDPkQKqAzFBiw1hxhZ3JN9DA8cPkn2LACnnYrYhWioHFA+sCzLWVrkZilCYb+jNG
         A35zndhuxp2dZ8loU1PUZ29hAX+23ibfWhRS4iCvNEVL8VbeW4/ws3Vb4mdpxUdXEK1c
         HIuccSx4xiV6cM145c/qqHfKapJp8oPTtr3r4FkXODGnofNqWKn4VgH+0/3lX/4/Uvrx
         lqMHAwaYZUQjN0T1JJLNQ/lDyXvMB/o4bQUJst4G+dF9BFDsQJwYnsxHvSisXcI6HyNI
         m4kw==
X-Forwarded-Encrypted: i=1; AJvYcCXn6GhBT+imxRKZhY1QtOcdKbLcK12EYbXwxThmO945KvYwA/QEzaHVvOSAupo3elZNSkHu4ICG3iWTyRsCqhYE3jKTfXJAleuYHA==
X-Gm-Message-State: AOJu0YxloptDYgBPjsahSdq/USVGAwV8TIBurh4cgZJerSP5b1He/qBv
	T3b0M2ThpsU0NGGK+rZ/FNbfHRXSbHVbdZZaQc8Y51xRRuzTZF3L657FdI5L1PY=
X-Google-Smtp-Source: AGHT+IF6zl6iOEo7DKIvfS9423W4hfUtCzBCOkPNljsNjdrxqjXqK8MLYOibvZw1RSh2w+0l6aXFNQ==
X-Received: by 2002:ac2:47ee:0:b0:513:ca65:8c58 with SMTP id b14-20020ac247ee000000b00513ca658c58mr456382lfp.43.1712865933904;
        Thu, 11 Apr 2024 13:05:33 -0700 (PDT)
Received: from [172.30.204.35] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id r16-20020ac25f90000000b00516bfd7e856sm292837lfe.57.2024.04.11.13.05.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 13:05:33 -0700 (PDT)
Message-ID: <2c2bca6c-b429-4cef-b63a-ee3bd6c9eecb@linaro.org>
Date: Thu, 11 Apr 2024 22:05:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] soc: qcom: Move some socinfo defines to the header,
 expand them
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-1-ce2b864251b1@linaro.org>
 <20240410132510649-0700.eberman@hu-eberman-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240410132510649-0700.eberman@hu-eberman-lv.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/11/24 20:55, Elliot Berman wrote:
> On Fri, Apr 05, 2024 at 10:41:29AM +0200, Konrad Dybcio wrote:
>> In preparation for parsing the chip "feature code" (FC) and "product
>> code" (PC) (essentially the parameters that let us conclusively
>> characterize the sillicon we're running on, including various speed
>> bins), move the socinfo version defines to the public header and
>> include some more FC/PC defines.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---

[...]

>> +	SOCINFO_FC_EXT_RESERVE,
>> +};
> 
> SOCINFO_FC_EXT_RESERVE was a convenient limit since we mapped
> SOCINFO_FC_AA -> string "AA" via an array, and we've only needed the 8
> feature codes so far.
> 
> We should remove the EXT_RESERVE and test for the Y0-YF (internal
> feature code) values instead.

OK

> 
>> +
>> +/* Internal feature codes */
>> +/* Valid values: 0 <= n <= 0xf */
>> +#define SOCINFO_FC_Yn(n)		(0xf1 + n)
>> +#define SOCINFO_FC_INT_RESERVE		SOCINFO_FC_Yn(0x10)
> 
> We probably should've named this SOCINFO_FC_INT_MAX. Reserve implies
> it's reserved for some future use, but it's really the max value it
> could be.

So, should SOCINFO_FC_Yn(0x10) also be considered valid, or is (0xf)
the last one?

> 
>> +
>> +/* Product codes */
>> +#define SOCINFO_PC_UNKNOWN		0
>> +/* Valid values: 0 <= n <= 8, the rest is reserved */
>> +#define SOCINFO_PCn(n)			(n + 1)
>> +#define SOCINFO_PC_RESERVE		(BIT(31) - 1)
> 
> Similar comments here as the SOCINFO_FC_EXT_*. It's more like known
> values are [0,8], but more values could come in future chipsets.

Ok, sounds good, I'll remove the comment then

Konrad

