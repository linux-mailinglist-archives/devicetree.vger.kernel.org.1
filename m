Return-Path: <devicetree+bounces-136732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC73A05F61
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:55:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE1B51661C3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 14:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258FE1FCFE7;
	Wed,  8 Jan 2025 14:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gTQ9OZV5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5134B1FCF68
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 14:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736348137; cv=none; b=IyeyZgOTJrg2zURRh0GbpqfnrVhtHc0RlOtggNxbv4dN7WK+w2HZlelWp0SolegypEt6iiVr1Hom6aDPyg1Ess1Udbn1XBNqc+5bsVxCV10ziiCAjURrbeV6De3Ls6XZ6zEXp1HwVjQyXE7BXUoaZaXJazD5k7MrwxnaPURFnOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736348137; c=relaxed/simple;
	bh=67JK1rlmJtGcesXL4SPQSN/FDXqiuAIio1r2G9KnuLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uy9XXaqF2KV3eQh6g6Z5h5lBRipPNDuKusUnbQ30X1NGLqcr/+cyn3WFx8QAfbPn2xRf4u29iawwyihNCc2Ld6/b7Fn4P/XLV4jlc3v/GxVpPwjC4tdX681wGsD+I0GlTk19AGiNdWjrwkm097PGxHXc8Tgz6xp52nyRWL78lTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gTQ9OZV5; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa69107179cso2807462466b.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 06:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736348134; x=1736952934; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x+O0NMpY6QzRmleywGIkKRE2USypKZLsxBppr3RZn6U=;
        b=gTQ9OZV5Glt4NgQCChHsIO7gTRCxfCNANjgUeGdow3pdDXjJlUQZQBvV2GMGuoKe2t
         30Q6zBXDekFd8Z1h6nI+uFXANA+Zzi/GIfciF7uBIyEbRaRlcH63KbR689EvLKqcp6uw
         BJvCzjcPEfDXPz3JGS2qflBzoNOKc4CkOCfGJPeMJZs8jhNwAhr1Xzm04PEozucDQTCL
         F3xRm6gzgIguPb1W2CASAOe7WNeiwqVwr9aSNQNSX9jCgYNd74b5xV5424lGqu7DzGg0
         BAPqOwsCKGq/O2+3PUO9Gbw/jGolEvG5LUO1I7Zxg7KnWRHT1GtvLlCJHU1Z60T5VqfX
         +mug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736348134; x=1736952934;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x+O0NMpY6QzRmleywGIkKRE2USypKZLsxBppr3RZn6U=;
        b=ACvLRWWrJ2B815qdyKXlIqOw/fUYypLoAaTOBDcOBjPU9PCdV1wW/zCxHXUbiJOJMu
         qzHKENbazytxNmpk/JR+JwXvqZSBUuc6jDN7waif5+YsXez5kbVlKhiQzBWRVycBWm4C
         wD6y0PeOBkSCi+UqwOIP99x9ojn3aQB0ymkRCF1E5cNMls5P67ByN/7VE7z0zz4HXfhj
         6emrDlPrGogD0FdLTlB84hyQiH4dQf7UOKDjJMKDyDrPJQnGBtR2AdFcv49VA951ZcUa
         EYUbSdvL0hkpS8QefxUBD0pNrT99jvs4jkZfCUNobb89vu6cg+OszNJ1fotDbus1Pr0Y
         Rx4A==
X-Forwarded-Encrypted: i=1; AJvYcCWezSknBTD5oh0ANKjBWOiXEU0dqTcj5yRFEUg4aWCN08RiO0F8Os8nFKX9kz3ZLcol37osJf/3QGBt@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5BpbUbs7GTjokkjoX8dZruh9A2LTh9+16cl/Xr2pTwKTKG4gc
	rQ5Za5O7EFqNpHFKpLgg9s2eGumVRmcYqcDXD+ie0arj24VqRzbR7uWwZ63MYw4=
X-Gm-Gg: ASbGncsh6I0eM5CIuCBMYzu4ZbWUuvSDawTEEH8EEBQ/TMZpL2atzMZkxEYOE1YtDFk
	5TJLr/WjIJ77jN2sjU8597umfDT0VL7xZUzSl7VsOkP8ShZ+AkqT1+T/3zYq3FY6SJ4M3JrxshC
	AYzuUVagYvLJRRxStu1KDH+Xwr/nh3krJBtofrbhl9jcHUsxPjrqcgJCZ0jcz/7BJcG9B8z2QX+
	0qVlDKa9l6O4FQXRVdyq+o5giQedYv2VDeQTNnN+QhuhAxJoxkL4Cgg1ivV8BHEKfUpDLnD89FK
	4FgygeT/U5ZpXf0hzhV3BOvmiotCay2MJ4ylTlU=
X-Google-Smtp-Source: AGHT+IFnWVoDQuHcKTyFxi4kBSfHYu1d60lV+zwr2XqYC5cBIMfaq1XRcTiYwNflIFjII+AZubU8Uw==
X-Received: by 2002:a17:907:7e91:b0:aa6:4a5b:b729 with SMTP id a640c23a62f3a-ab2ab6f3447mr256057366b.33.1736348133620;
        Wed, 08 Jan 2025 06:55:33 -0800 (PST)
Received: from ?IPV6:2a02:8109:888d:ff00:ca7f:54ff:fe52:4519? ([2a02:8109:888d:ff00:ca7f:54ff:fe52:4519])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d983a172d9sm73309a12.57.2025.01.08.06.55.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2025 06:55:31 -0800 (PST)
Message-ID: <fff03f10-7e87-48db-8e8f-b06a47d4545f@linaro.org>
Date: Wed, 8 Jan 2025 15:55:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: qcs9100: Add support for the
 QCS9100 Ride and Ride Rev3 boards
Content-Language: en-US
To: Konrad Dybcio <konradybcio@kernel.org>,
 Tengfei Fan <quic_tengfan@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240911-add_qcs9100_support-v2-0-e43a71ceb017@quicinc.com>
 <20240911-add_qcs9100_support-v2-4-e43a71ceb017@quicinc.com>
 <dc1216db-128f-4cb4-9df9-ba095dfe713d@kernel.org>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <dc1216db-128f-4cb4-9df9-ba095dfe713d@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 17/09/2024 01:32, Konrad Dybcio wrote:
> On 11.09.2024 1:10 PM, Tengfei Fan wrote:
>> Add device tree support for the QCS9100 Ride and Ride Rev3 boards. The
>> QCS9100 is a variant of the SA8775p, and they are fully compatible with
>> each other. The QCS9100 Ride/Ride Rev3 board is essentially the same as
>> the SA8775p Ride/Ride Rev3 board, with the QCS9100 SoC mounted instead
>> of the SA8775p.
>>
>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>

I don't understand this, if both boards are identical except for the
name of the SoC then why do we have two devicetree files?

You can surely detect which SoC is in use at runtime if necessary, and
maybe pick a name which doesn't have the SoC in it if you really want to
avoid confusion.

If there are differentiating features which will be added later, then I
think this at least deserves a comment stating as such.

Additionally, the files should be shuffled around to better represent
that there's two very similar boards with just some minor differences,
this is a common case already and there is a standard way to handle it
(see e.g. sdm845-oneplus-common.dtsi and
sdm845-oneplus-enchilada/fajita.dts)

#include'ing a .dts file just seems like a mess here.

Kind regards,

> 
> Konrad

-- 
// Caleb (they/them)


