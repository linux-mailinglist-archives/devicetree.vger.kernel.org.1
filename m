Return-Path: <devicetree+bounces-34702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 209AA83AA03
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:40:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD671289737
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82EFD77632;
	Wed, 24 Jan 2024 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lDrhPLrS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C9176910
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 12:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706100033; cv=none; b=NtODH65qfrgutz2a1XBUkn7rYrxCzcC3fE+pzSUcJ3tWKvI/yeBCT5fttPT5VybR4D2YMYJ0EAOVyiNdyakqMbl+cywlkMar2fmCUWNr/jDQHO6pPlzkAkMVUyV0cHUncCRhNK6GxMNdXxAQsUxyDfP3gr3tgZ0j36sFb10E3Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706100033; c=relaxed/simple;
	bh=HZXySNav2eCtfTYb3Q1eACHjRWMxY6l58Qkh/AX91ik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jyKWdYq48BtoDhlkcMP/KdwvmDQh0J55blSqVgIZGLJz28xk0Ih8gFQmEfxZpNswwCwiS+v2LGltM4Zsyza3+wsG03/g2FNQQq2A7GL0DqWVCNYFZwJxbIDvUV34Pk6Hzfgw2aR0q/Bm8E7ZZAhTUMkvZ4903HA95FXtfQMop30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lDrhPLrS; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-50e766937ddso6437721e87.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 04:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706100030; x=1706704830; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eQ56JkGxr0Lm3oi7nSQ8ExiMFRGEgpi2bV6cmhPLeG0=;
        b=lDrhPLrShQf98cxKwRx6koTswR0jHbO5vSgKJiELlzf3mR1zr1Udaz0n4/QlPNSKP3
         1WO8Gj/ZvJ9XakY484yCgBLTFK4ULwekzhgI3jegt0mvXaqjG+v2680aAapdfccfSkTu
         x95qPb7/PWERy6Tkf1Y1bEvwXGZgIueoqKItG8DcRzKmedMZqyNGWzZvu7y9j64Fk4eE
         TeaOwcBkZ3R0nevUHrqT4XBlHCY3/P4gGy9J+n2yOkdZoAPhWhdX7GZrSGxZ9O9nNCE/
         m2CA5eXKbWRhs94rYRf39ZUI8QHib691k1hCI6oakb7EoLqO1a0hOXixhoiqYnFujGBC
         BI+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706100030; x=1706704830;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eQ56JkGxr0Lm3oi7nSQ8ExiMFRGEgpi2bV6cmhPLeG0=;
        b=m7gKhXeQxd1qi4As9fxOW6S+rKunWpzc6m6riZV+UUsmE3qPuyLcxlxqJ0cADuuAvz
         H5vZ0vABvG6pIJGrWUaqnh1Ef+xK7TaZnanF3fiThVI5bYeIOf8j6DIYUWcftEKcmuwb
         RP6rFyZvkxYjKSBLMq0AJo8LKNBNhh+0XeUnUmILDtLsFDqZIlvzGFOwPoj4YGPTXaDi
         Pr8t1vkwCfX9d3JXdD7HgZM2rRKYTB+NPFqbmn6YzCz936CPDRjfQd69Uvul7e1cQqnD
         3X2X2X/45ncevN3tuR5jmHbTKuWd2zzujK+naMRAqSTndxqy8CGh6yHLsh4Mf0oyh+w9
         BDFg==
X-Gm-Message-State: AOJu0YwHIp1PM66B62mhqGND7KXGVlw0RRIlOXst9KmRREA7Ff8Drm8l
	y7YXExW/okxHkFpMb/CViweB7Upgwaa4Bzr57QShSk4uTZNfVt6qdRyMzrY6PLA=
X-Google-Smtp-Source: AGHT+IEWR4WNzxLOvPZFaHdGV1W5zHsK0kZ/f7Yvx1L9lhQY4aJx26rUkniEml7UEg3D/KUf/DHMPg==
X-Received: by 2002:a05:6512:3d94:b0:50e:b2f0:3dbb with SMTP id k20-20020a0565123d9400b0050eb2f03dbbmr4420385lfv.79.1706100029881;
        Wed, 24 Jan 2024 04:40:29 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id b1-20020a056512024100b005100a13a019sm402504lfo.76.2024.01.24.04.40.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 04:40:29 -0800 (PST)
Message-ID: <8eefc777-4e41-4ffb-ad4b-444e3754b2e6@linaro.org>
Date: Wed, 24 Jan 2024 13:40:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/11] arm64: dts: qcom: x1e80100: Add ADSP/CDSP
 remoteproc nodes
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
 <20240123-x1e80100-dts-missing-nodes-v4-4-072dc2f5c153@linaro.org>
 <e1313275-ca10-49be-ae68-ce783c3262b1@linaro.org>
 <ZbEEppK80NpwqUT7@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZbEEppK80NpwqUT7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/24/24 13:37, Abel Vesa wrote:
> On 24-01-23 19:22:35, Konrad Dybcio wrote:
>>
>>
>> On 1/23/24 12:01, Abel Vesa wrote:
>>> From: Sibi Sankar <quic_sibis@quicinc.com>
>>>
>>> Add ADSP and CDSP remoteproc nodes on X1E80100 platforms.
>>>
>>> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>
>> [...]
>>
>>> +		remoteproc_cdsp: remoteproc@32300000 {
>>> +			compatible = "qcom,x1e80100-cdsp-pas";
>>> +			reg = <0 0x32300000 0 0x1400000>;
>>> +
>>> +			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
>>
>> Is there no PDC mapping for this one?
>>
> 
> Nope.

Meh. Okay.


Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

