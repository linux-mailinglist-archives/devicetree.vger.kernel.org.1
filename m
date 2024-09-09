Return-Path: <devicetree+bounces-101322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7CF971578
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 12:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DB242808E3
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 10:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F43C1B4C2E;
	Mon,  9 Sep 2024 10:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fCpZP2Z3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2803C1B374D
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 10:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725878310; cv=none; b=RjQ563ATtvR7EbpFcKQnvbV15S67HCGx5dqwPH+qyfEcTrTAtrtXlUeCeDRpm7AJKPpLbperHO4uRPB6fqEtBO/hjgYOcy7JSGfMCjJ58c85As7T3fPRRuGArOQD+Ke5cRLyzQIRomTM901oAAP8TJszTQyu918aMwBu3Iy4hL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725878310; c=relaxed/simple;
	bh=6/F0wT7inBEmaWykWGbz5BE8PBD72m9tx6HDZJCE590=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YtHyOj+E2A+r1uxrG63asoNbK0bSM4qc3HBYbPm62hI1NM+lhDFTjW+9oE1ggu6H1M6fzmDXLeo/8UprOwVE4tlCZJjV1HJXOoB99KGVh5WvxKoLeRINio59CT/3ZXDn0RK/TDHkp+iTces7+4EbHwBShjMHb3PBSemOGiC9DI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fCpZP2Z3; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42cb198f23fso2330915e9.1
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 03:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725878306; x=1726483106; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ijYUl9N3eSS0f0UB+sT+1fxof8sK7+47VVf4ZxSBQqs=;
        b=fCpZP2Z3HEAhlY4S671Z9g7qGJQgC045coZUDkgslkQObPodUz/0y+efFZzgJKI99b
         mfjEnewMRfvQAWi0Heaf3QrmzMvS7OTsriQ5QhxunVERK9vdbRb8mp4dMdgYkwEa8FcU
         5u9uuZCu66gs6M9+jwjwk7/67NdT/BTw3pDaEgKwlLedmO4zIX6MqcXSwGHd1gfJ6R6e
         YRmpghjyigVWTO9T5+tGBUWVUMP5brx5MLhFnXIkunFvsX+ckcoKGxMc5zhowEDjEl/z
         Uxunwn3T1rCfAGEAa3NDAJM2FwlctR01wlr8bubTDurwl0xBw4sbpZK4AK5cpjE9xScx
         kIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725878306; x=1726483106;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ijYUl9N3eSS0f0UB+sT+1fxof8sK7+47VVf4ZxSBQqs=;
        b=VMudBMpkE3tkl1FTL12pvae6UIeI8O4POs/Z3a9ZHjNcyd4kovL+Qj9i1DPJB9caSt
         MZujCdkdsgITmFCfwyt4iFSkVbMhxfSP6sJT4LaQwu0UUzpdub/yIXfsp2cN0c7Aq92h
         F6wHtYFgEJxRq6MIChD2o7qStOjBrrZpacurVoSg0p2oi2+vMesCE0cSSkOy/vKcyjKF
         kj5o6Es+RKwtPjcvvlvCsEbVhyd+1fFrCTTVJ31MQegKO09ZvDak0AO//fDqpi77rzTT
         2eQTVrg/lFv+mIedUDpyAgFS67Q5TQlVbqiRdApiCeWpfFpyajbxixLUGNQG+b/WRyBc
         +Gpg==
X-Forwarded-Encrypted: i=1; AJvYcCXDDvCBlZtfCSRouQD9vUXl5BwVYiQdXO9CrSdCd5uJc+Ipz0hBnpETbGy8giN+LEjqPd9KD46b7Onq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz94flnp2YT6H8RJF7EgPBJ0Y3pIq2sIaHiRyP+HN1vYEfoIoeW
	sCAaFiSsmJK7rvhL4pBpDiTzflxfIsx7ywLKUh3bvBByNgtWwbU+VNpgTHI1vw0=
X-Google-Smtp-Source: AGHT+IFDLK63GZH/VXcYHv1Pz3VepCfJL2pAqtm7kevYgRA4TLaFcNcJJe+27zjauLdzZyBhseF+gw==
X-Received: by 2002:a05:6000:2c5:b0:374:bebd:e714 with SMTP id ffacd0b85a97d-378895ca7c6mr3603101f8f.4.1725878305859;
        Mon, 09 Sep 2024 03:38:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956ddae5sm5657776f8f.97.2024.09.09.03.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 03:38:25 -0700 (PDT)
Message-ID: <ac72665f-0138-4951-aa90-d1defebac9ca@linaro.org>
Date: Mon, 9 Sep 2024 12:38:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6.6 1/4] riscv: dts: starfive: add assigned-clock* to
 limit frquency
To: Conor Dooley <conor.dooley@microchip.com>,
 WangYuli <wangyuli@uniontech.com>
Cc: stable@vger.kernel.org, gregkh@linuxfoundation.org, sashal@kernel.org,
 william.qiu@starfivetech.com, emil.renner.berthing@canonical.com,
 xingyu.wu@starfivetech.com, walker.chen@starfivetech.com, robh@kernel.org,
 hal.feng@starfivetech.com, kernel@esmil.dk, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, richardcochran@gmail.com,
 netdev@vger.kernel.org
References: <D200DC520B462771+20240909074645.1161554-1-wangyuli@uniontech.com>
 <20240909-fidgeting-baggage-e9ef9fab9ca4@wendy>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240909-fidgeting-baggage-e9ef9fab9ca4@wendy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/09/2024 12:17, Conor Dooley wrote:
> On Mon, Sep 09, 2024 at 03:46:27PM +0800, WangYuli wrote:
>> From: William Qiu <william.qiu@starfivetech.com>
>>
>> In JH7110 SoC, we need to go by-pass mode, so we need add the
>> assigned-clock* properties to limit clock frquency.
>>
>> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
>> Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: WangYuli <wangyuli@uniontech.com>
> 
> What makes any of the patches in this 4 patch series stable material?

That's for stable? It needs to follow stable process rules, so proper
commit ID.

Best regards,
Krzysztof


