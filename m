Return-Path: <devicetree+bounces-75537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9022F9079AC
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 19:21:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D4EE287991
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 17:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA3C14A4FB;
	Thu, 13 Jun 2024 17:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e3iiQebH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74514A0AD
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718299239; cv=none; b=LzB20GGXq6cMd3RLTeh565yNJRtSpGv1/06cSV7dlzpR1yao3chkyFwsiOBMWjGXzh/g+ybyrXo+v4zd0TjL5OMBhYZsdkZ4u2dMMy3SmIuF3v7wfbtGMS0eYp+qQrr3Ow89mmAp1QWkhKeR3/X8Etl3a+4AQhS4Rkm3MuKZoJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718299239; c=relaxed/simple;
	bh=vX4tZlfdMiDbAOqyzjLKdId0wIu+miOZ29FnR8jsohU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RNTaERuFQB7gLp1NIOoiTYMJCilcHCsQvgt9q3haPO/Haz7ec3ZSZbm/VG+zB4vOsj+2T3DpLqOALzf+xKOUAWvdcAp5VE4EcKs/LSvZglkR9JzQHI7j+woyD+IsZDx/EtkVwi3u1Graip9MXtxFLPi4MhG4ZsNQITbESmNmmtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e3iiQebH; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ebf5b259ffso22044341fa.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 10:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718299232; x=1718904032; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lmCat4yFzakLoPqsICLGJKZ86qrL9CrdVXXkrAz9XWA=;
        b=e3iiQebHT4EK0OwiMj4owv5tcaaj3m5nUDjIFNNYwjZQcwWx/r0Y9RbNgeqjRkC/U/
         nv1RMkUDeQ6jaCeIWvWS3bKpN87vLZo5G0cBOChYrBGfCDCiYpXJBU2V3qucfEaFLPks
         /Bla1sMan0J5Hnt5sq+FDbh3VIiFQC6jXBhg326Fn6iuulw4GQh4cCrHk+T8MUQQDZcb
         D4+2Mvpg+c9wZlqdFii4EwNTYk4J67fqZyCi5T4/Lq95CTzGVt3nuXbqAAc2NA8AqVDE
         rwI0Jv4CnqzFRB13olKxgFGoNlh8lfK/xqIaJGssOdDLPRrCrCZ/JJqxLu9gJMJG2EKo
         s2wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718299232; x=1718904032;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lmCat4yFzakLoPqsICLGJKZ86qrL9CrdVXXkrAz9XWA=;
        b=PglJZEn0vwAFTyt2FRIHZVcHCBPM8v8T9v+iW0uZursvH8EbEtinSbbq24V5vN9Jm7
         AI0cZKTdW3c0dY4pAOSRreqAIML66E6EjbRmRJ4eoiXDFL9/XJRbhjYQ9FkwI+GgRYCF
         DeGjSvMlPm1oRgX47povwC7A+/uuJxgOVfqybvuDWRowvol1MTiuRV3drjR9wzZediFQ
         YirTfg3u9BB9qoEejKDTSaoMl3cHEixyJddfV1kxiaumiNExCdmVWjg1wE30XXYOfbYt
         f/Zn/Z58Pvc/sMjPMWOVqodB6VzGxXS7EGlSuWeagfDf07tWUs/ZxtQOStO5qjMJD09U
         3CVg==
X-Forwarded-Encrypted: i=1; AJvYcCUyb20cRff7AZlY38X05Ln9ri7VaqCxAXcyr/LNxEiwdWTbsUJmLV0g86WHaqb+4cZzkedZx9fHgVVX4HB2QSJoIPM8iMBNMp5GIw==
X-Gm-Message-State: AOJu0YwJczHAZn8ViFnexCNyr+IsOEwsa8Z9ZewznUILBdLdIOeKK0tA
	dYHxJ6jh8Pf7nTflPrlOZ3n7dqrKr+jnOWSczHGsSWdG43qlnqTh8sL9Cc44E7Q=
X-Google-Smtp-Source: AGHT+IE4j3HMxhLWYVU29TQZzIBVMZHRaQ5xZ54nQ/SRi+BohkpWnbIsKLlp0bKYqGHndxwko/uGhQ==
X-Received: by 2002:ac2:5183:0:b0:52c:8daf:da1c with SMTP id 2adb3069b0e04-52ca6cb877emr133289e87.20.1718299232137;
        Thu, 13 Jun 2024 10:20:32 -0700 (PDT)
Received: from ?IPV6:2a00:f41:900a:a4b1:9ab2:4d92:821a:bb76? ([2a00:f41:900a:a4b1:9ab2:4d92:821a:bb76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2887effsm295391e87.257.2024.06.13.10.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 10:20:31 -0700 (PDT)
Message-ID: <5e916d38-7dce-43d7-bee0-a10842faabfe@linaro.org>
Date: Thu, 13 Jun 2024 19:20:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: motorola-falcon: add accelerometer,
 magnetometer
To: Stanislav Jakubek <stano.jakubek@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 phone-devel@vger.kernel.org, linux-kernel@vger.kernel.org
References: <ZmWMh6fuLasvGkR/@standask-GA-A55M-S2HP>
 <2b39d763-5b79-4b21-85f9-22fee9f87468@linaro.org>
 <Zmsp8kPRCE/fIPQk@standask-GA-A55M-S2HP>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <Zmsp8kPRCE/fIPQk@standask-GA-A55M-S2HP>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/13/24 19:18, Stanislav Jakubek wrote:
> On Thu, Jun 13, 2024 at 09:48:26AM +0200, Konrad Dybcio wrote:
>>
>>
>> On 6/9/24 13:05, Stanislav Jakubek wrote:
>>> Add the accelerometer and magnetometer that are present on the Motorola
>>> Moto G (2013) device.
>>>
>>> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
>>> ---
>>
>> [...]
>>
>>> +&blsp1_i2c2 {
>>
>> Consider setting a clock-frequency = <>
> 
> Hi Konrad,
> 
> checking downstream [1], qcom,i2c-bus-freq for I2C2 is 100000, which seems
> to be the default. Should I specify it anyway?

Yes, at the very least to silence the dmesg warning ;)

Konrad

