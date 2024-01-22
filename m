Return-Path: <devicetree+bounces-33727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 556E583627B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:49:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CF2B1C22B58
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3A93CF7C;
	Mon, 22 Jan 2024 11:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zWxKn8xx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED213B2BF
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705923915; cv=none; b=APkE3b0GnOrjNTAdeSH381ZxG3lo6fYBAeG7QKpavSayupABUlY+LxOZH/+tp+aIfBsiamVOhaXRhphcdyDzydOeSNQgf8s5+lcms+S0VsZkT2FS10Syf8GVuW8Wcowcli5BEqTRDKvU9nUJoH4eZn1apHZ9Xj2xgVsJKDAfXzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705923915; c=relaxed/simple;
	bh=lNk8/+YTvlnfK1x79FWZ3OiIUBaRcAopuEESDKbbhg0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fgHKbZml3g/oeFYXvxJq8vNYvjUQj2GHxVBQiAPCAp5WkW6MKgrMBWiSOvCajs142Wav4msKOI4Qozkqn/XdNG8wH421OGcH7p9IjLhL/yw4ymSzTc3Tp7XNwG4enOxPstK9SMYoN+DZVfoPfThzoNZonRF9O/mO5XWqRKThYkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zWxKn8xx; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2cd2f472665so28286851fa.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705923911; x=1706528711; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MlootliIImGlh84z0DhVWuVBO4CkhtyLIhApMQlxbRw=;
        b=zWxKn8xx6xslFkxtM1K6EVdWCleVZuX9PAGJzJXVtPgKfUUiT+LB7ez1jk7UdTKuSt
         oza1+yTqFEdbB6GYXvUizKCccEXtJZIObhYY1smhfl2ZAHW7yPoT9Y5kyF+PKq+UGcVT
         C65YBoD/I3Ok2kRHbiO3T69nhpWWPrt+SN126ZJj/FRck3fwc2mIJqw3m6HaQEgOmesr
         lCtedSINutXtq9ajMvacoAFN9JrvrTDVaf1SQjS9sTYb8JG6hcxivdLCMrfx+D6qtqq0
         bDLnYHrZLpcvkKag2cqFuCWTZteWcJp/gLeo1XkENIBhH9OjPRCnX/kvQ0HQZHyM78+i
         ggiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705923911; x=1706528711;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MlootliIImGlh84z0DhVWuVBO4CkhtyLIhApMQlxbRw=;
        b=A7w/sTwm37WD0arZwi0u/Z6kOKC0OKC9fvPrmUITN0DrvKTepp1NWNZj3/nAYoDL29
         9E+hUxmLnfiX2OS9rWSPq0LuezXEK4SnqfIgUarz8OeNm3WZ+jhixDuToVtjmgcK+Vv2
         3GrczuTQQ8nULtkWQ0FMaK290iFhAjMUa04aBQjFEP+oFH6aSnXLAvnuj/6mzLWUwN98
         FwutYjxiNVLiCgq82H2SGkEinWHo/qyecQiS9cOlhU4qG8U7s6mqo3cay5r3BkwfBXeb
         U09Awl6mcS71vLSel8SFblY0wEznQXWLTHv7efYYAojBhj80QoVEJ2AfyQr+RvJbULy8
         JKUw==
X-Gm-Message-State: AOJu0YyhyEh90SVo/DEX//46Ml54mSuvvNUn7UW/cmbn05CAkz+NT1Qj
	g9otXsqat/1srwwzi6Civrqh9OiiKrYvqudbu07IoYMjrd9AgMoboz3O+Fzh1r0=
X-Google-Smtp-Source: AGHT+IH2FeXD6oQJdkJS5SvzUH5/K5ozG3MkC44wqGNtEOcPAyITe2L5mLRZdSkg2/vRi4OQQGWBLw==
X-Received: by 2002:a19:4f4c:0:b0:50e:9c17:24c8 with SMTP id a12-20020a194f4c000000b0050e9c1724c8mr1560705lfk.7.1705923910798;
        Mon, 22 Jan 2024 03:45:10 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id cw16-20020a170907161000b00a2ebd9e0de7sm6400402ejd.31.2024.01.22.03.45.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 03:45:10 -0800 (PST)
Message-ID: <657e013c-29c9-477d-bc01-381dd995e853@linaro.org>
Date: Mon, 22 Jan 2024 11:45:08 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/8] clk: samsung: gs101: add support for cmu_peric0
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 peter.griffin@linaro.org, mturquette@baylibre.com, sboyd@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: andi.shyti@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com,
 tomasz.figa@gmail.com, cw00.choi@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 andre.draszik@linaro.org, semen.protsenko@linaro.org,
 willmcvicker@google.com, kernel-team@android.com
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
 <20240119111132.1290455-4-tudor.ambarus@linaro.org>
 <0b825e9b-b921-4ad6-a4bd-a55645877e9c@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <0b825e9b-b921-4ad6-a4bd-a55645877e9c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/22/24 11:13, Krzysztof Kozlowski wrote:
> On 19/01/2024 12:11, Tudor Ambarus wrote:
>> CMU_PERIC0 is the clock management unit used for the peric0 block which
>> is used for USI and I3C. Add support for all cmu_peric0 clocks but
>> CLK_GOUT_PERIC0_IP (not enough info in the datasheet).
>>
>> Few clocks are marked as critical because when either of them is
>> disabled, the system hangs even if their clock parents are enabled.
>>
>> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
>> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  drivers/clk/samsung/clk-gs101.c | 583 ++++++++++++++++++++++++++++++++
>>  1 file changed, 583 insertions(+)
>>
> 
> This does not apply. Please rebase on my samsung for-next or next
> linux-next and resend.
> 

Oh, yes. I rebased, did a boot test and then sent v5 at:
https://lore.kernel.org/linux-arm-kernel/20240122114113.2582612-1-tudor.ambarus@linaro.org/T/#u

Thanks!
ta

