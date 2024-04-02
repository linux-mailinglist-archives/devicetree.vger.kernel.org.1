Return-Path: <devicetree+bounces-55370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C37894FDF
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 12:18:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CEA01C2297E
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 10:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3B65D749;
	Tue,  2 Apr 2024 10:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SxFWYttq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2096E62178
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 10:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712053033; cv=none; b=aEaZlGHnqfHDeRrEZcNR1CbzlyTJ8/dVby53XDmtYCdUrB9yZeAQRP8i+Zjp/17GPIx/SPpIqXmxf0eBcFVSlsoV2qCLONMC9wd+/82wihEkYc32NvrKs1odEL3gaWPxp7vVj0t2YsdsB/6NXBhIxFTjLfArebBjpn5+ckwfgL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712053033; c=relaxed/simple;
	bh=hOYs5mW4aCZuvA7nNKcV/Zz0GepZtVGqvOBxdanCnxA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ar0chAgA5tXYr1KnqpjhQkel7pYUloFuFZHCWDXffxhonjHx5CJctx/5azldjNs+YRiRvGq4aXIP75K59sy7xcsOrxEWXaF2dQhF94dkO7gYpFK8jPtJjCha64vsftSzVCvKvkRozKYHBFf2ruPbUOjiiAk98Rc8/Y+SxfMcDcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SxFWYttq; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56df1dbb15dso405961a12.3
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 03:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712053030; x=1712657830; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=V2UB5q7PxMg2H8tTWOOwPRrfPhWSL4MfYy9ckYZc/SA=;
        b=SxFWYttqO41UzZCuK4wHbqeSBzcejIutIzPrvMlPKwU435dO2TdKMbYAOfyUBVuNFA
         lbBduyc1V21vY67TtZpnXZAWSwZYqU0HZv8R248K2QOCcTxp0w4u7VpN0/ctv29C+Iz+
         mHCZTI4jmQTCQ3lD8YX+Rf8gCRBW+UsWovmJOrmmSgtOdaIC4kdjAJJjH2f3x831Zqnp
         USQFuJbcEppIooKEgEXuCt7icDlyu+lArlXDdaRA58Iqi0kjc2HrYj1HLZfI6hTFpH/+
         VaRPLk5WS75968OYCzPHjI9pbqVk+UVtoi9JE2uHZXvjRmpzWZqe81aQtS9iiMJf+I/X
         lQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712053030; x=1712657830;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V2UB5q7PxMg2H8tTWOOwPRrfPhWSL4MfYy9ckYZc/SA=;
        b=MCrQJK2tlVqmeomqP9LISG0W3xkH6RJL1/jn1hGYUkH1a7KWYcjlRChEz5nQLtP0w0
         2R57uFYD/1qzdj2bthKOODIOofVkTbEQHi9Hs/nD+JeezVkstFdwB/TQ6IQg2nTI34cJ
         lSmgAnMSt1gNRZzqzT8PXonJxckbHdOJ6eialYnYhsWsT1HrQJvb8cfur8iLvveyUm/l
         DwKZYm0sBK+xKjIs/COri6jUdNi6HV6iESA+eiYSoDppNAWwnFb/Q+6DYKc1lRGSmnks
         78zR797AZ3JHmcT9YMEc1jeECaSyaIQX2IVkcsjojMKg+L0udmUNYmKaSFdXl6dM06Dt
         qhMA==
X-Forwarded-Encrypted: i=1; AJvYcCVcaL4YO0c0t7PLtZ2HCzKakYg5KlPBn9wUUdpF4XzE8wbpluWLIybgR+3juKCOaxAMIegNn4pZjQ/JZ5qO6ZEo47xE2pegLIDv9w==
X-Gm-Message-State: AOJu0YwfXYe6C0IWBkOOvk4XGfaqwdxULe4SVzPi4UyGUT2FeBs8tcEq
	KG7XblGzCZcAJ94Xqpdbke8WoK8OsmYo3P7M53noHfsGp4VIr6SdO7SUUYXgoGU=
X-Google-Smtp-Source: AGHT+IEKmmFTDLkXApYk+inK5xfcigqZbWv1DQbz2OicdVZRm1InOl7WCzggrcwdDww32q7oC0gdOg==
X-Received: by 2002:a17:906:e83:b0:a46:e8dc:5d51 with SMTP id p3-20020a1709060e8300b00a46e8dc5d51mr7581337ejf.25.1712053030416;
        Tue, 02 Apr 2024 03:17:10 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id d1-20020a1709063ec100b00a4674ad8ab9sm6309187ejj.211.2024.04.02.03.17.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Apr 2024 03:17:09 -0700 (PDT)
Message-ID: <730ac728-a333-46cc-aa0c-5e922b3c871e@linaro.org>
Date: Tue, 2 Apr 2024 12:17:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH AUTOSEL 6.8 36/98] arm64: dts: sc8280xp: correct DMIC2 and
 DMIC3 pin config node names
To: Johan Hovold <johan@kernel.org>, Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Bjorn Andersson <andersson@kernel.org>, konrad.dybcio@linaro.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240329123919.3087149-1-sashal@kernel.org>
 <20240329123919.3087149-36-sashal@kernel.org>
 <Zguyil0WVwEudPga@hovoldconsulting.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Zguyil0WVwEudPga@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/04/2024 09:23, Johan Hovold wrote:
> On Fri, Mar 29, 2024 at 08:37:07AM -0400, Sasha Levin wrote:
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> [ Upstream commit 61474b18e762671a69b2df9665f3cec5c87a38af ]
>>
>> Correct the TLMM pin configuration and muxing node names used for DMIC2
>> and DMIC3 (dmic01 -> dmic23).  This has no functional impact, but
>> improves code readability and avoids any confusion when reading the DTS.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Link: https://lore.kernel.org/r/20240212172335.124845-1-krzysztof.kozlowski@linaro.org
>> Signed-off-by: Bjorn Andersson <andersson@kernel.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
> 
> This is not a bug fix. Please drop from all stable queues (e.g. 6.8 and
> 6.6).

I should just avoid names "fix" and "correct" :)

Best regards,
Krzysztof


