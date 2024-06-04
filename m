Return-Path: <devicetree+bounces-72068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E178FAC40
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 09:41:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B972EB2219C
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 07:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30D6D1411CA;
	Tue,  4 Jun 2024 07:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZakKh75X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061D3140386
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 07:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717486852; cv=none; b=MM2q3KKKoM0qoHtI8a6By8wnhxc4XdXCcA2OPuzGsaJgMhc95jZjOF3Pvi5u4ppbXgWbXsfWLu5aExkhnndIKSXfPbnHsWZT3Sj7TAJMBvURA1qCMZJYaeOwsy53y0klRg+j0hvdZmmaWaf8eW5R1A+nbBSGjOXcJ76BJHSXcfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717486852; c=relaxed/simple;
	bh=OmkyxyTRPnFyw7vCZeno/1r+FALpHrvXv74O03ureiQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GClAFLNiwtJguQZIkVc3eTfDEggLPBiho8pgues40eKbzF7L65Wiab2gazHFZKlMBG6W6AK8nzDEzRKwP0g/HUNVTOld8lJwLjkG33/Riwpesc+nZvEdBj73NLxMVUP4UDaIYg4mkg4W0+k2FLvf3dmPD123WOYp7mAdBbX4JTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZakKh75X; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-354be94c874so4282832f8f.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 00:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717486847; x=1718091647; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HSI3Y5+8IYt5b8nN6au2S/hM0Q8zXmQbOluTbIKJEZg=;
        b=ZakKh75XmbF727DRspXX2B4s0dpwyUmPCulnt1z7jex6hb0CnQ123yPs5wubgltkRx
         X4uWe3RHi8sAKnfVwDc4Glyowm0CGKbgQveS44txawCq2pxfMLdUe7o7UsISrCwB+T6A
         k+FXrmqiDeCacIqfiLzy/kMcCBKFKjrNDFf3fmO4TJ35tL7E5dBAIawvWJ/rGKpL2tHE
         JR9ywVqmFUnnU7T2O26TBHGRyy9LbR2Q+Mn0wTf0lSV2RzdDH2q1sttn2ebbptDddZTN
         ZiEFLB9IKO5lug242gJb47pv2S6MD3FXAQiLFTzqpOnqPiHOzr3okXx2OTRaCbhL5UzP
         yC9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717486847; x=1718091647;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HSI3Y5+8IYt5b8nN6au2S/hM0Q8zXmQbOluTbIKJEZg=;
        b=JBnx5dDtEOsTZ/RyRMNWtY3q4k41IfxlpbZjU8vnTlG1vI5XGZrUKgDftWlUm5UQq4
         AD1PPT1QJpwreGzqK3Oh1n16zUusVP2hWx5MK4nQXGmUzzZ+c4ww45FuLRSKgeT6W2Zq
         Xo0FfueB76uX2I8JjhpPsYI36kwTc2TD+qQRzonvq2olq6VGFKD02rQSuEkAz+M63Vsl
         4x8+dFNDmdL+4R6rgxd1j/Vw+wxe4hboK0lP5vwHESL8flZ0lw7ZkgF+Kz2J8d1K/uDL
         YQvpph4OKwJilmPLNG9BTNGvZC0Au66yl07SOcV1yoAditc5UYbVAnw+lTjnvGBBsrqy
         7x1g==
X-Forwarded-Encrypted: i=1; AJvYcCUvdD8FirGTcRgt06sYn451RQ3OoDCCTGqHGLUVItTBLQDADixO5ptS4/zjeqEGvkjyX3eQx/ZDRl/5Pol4dsTBgqYXHkt3G12AYg==
X-Gm-Message-State: AOJu0Yz2+Ga/bzWEa96ff9uul3ajIZsaPkkryNgg+gPKKUkXhsZKZ5ma
	LmjjPsR5FdE/2yadJeS+K6TgJTtXVT0UnvWISlDH2iabG8UsoWXwha2Bk+rOtiA=
X-Google-Smtp-Source: AGHT+IGqLsVil4OXAEcflDBaMWYLsqf9kWZ1SoN3G/ty6TUe8yhllFeSovkEoOpfmBVmPw+iTEWpdQ==
X-Received: by 2002:adf:fecb:0:b0:357:7070:529 with SMTP id ffacd0b85a97d-35e0f2596a0mr8610558f8f.12.1717486847327;
        Tue, 04 Jun 2024 00:40:47 -0700 (PDT)
Received: from [192.168.2.24] ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c0f2asm10765856f8f.3.2024.06.04.00.40.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 00:40:46 -0700 (PDT)
Message-ID: <43d5b9dd-a36b-41ae-be4d-9efd99d8a26e@linaro.org>
Date: Tue, 4 Jun 2024 09:40:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 1/8] dt-bindings: clock: qcom: Update SM8450 videocc
 header file name
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20240602114439.1611-1-quic_jkona@quicinc.com>
 <20240602114439.1611-2-quic_jkona@quicinc.com>
 <bf9fe3c1-6d62-4b7f-84ac-51c9829ea01d@linaro.org>
 <016e545d-058b-42f0-8f86-fbaaa8a580fa@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <016e545d-058b-42f0-8f86-fbaaa8a580fa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/06/2024 15:27, Jagadeesh Kona wrote:
>>>   
>>> -  See also:: include/dt-bindings/clock/qcom,videocc-sm8450.h
>>> +  See also: include/dt-bindings/clock/qcom,sm8450-videocc.h
>>
>> One patch like this for all files.
>>
>> Best regards,
>> Krzysztof
>>
> 
> Yes will check and post it as a separate patch outside of this series.

Eh, I mixed up patchsets. It's fine, ignore my comments.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


