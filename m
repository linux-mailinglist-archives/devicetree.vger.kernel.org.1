Return-Path: <devicetree+bounces-196364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2F6B05242
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 08:54:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B245E1AA7FD5
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 06:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2E4726FDB6;
	Tue, 15 Jul 2025 06:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uuHIrnti"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CAAA26CE17
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 06:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752562414; cv=none; b=IfEoJ33bhz8DVht+vzv7k8ykp6omCxuTkW4gtszdV91ooiZCtzGWjyjCn263Dp/DuaKO9b4fqyGoUzzGrRxVFs1XuBgRW3PJPyWzoJmzs+5yLRKli/NWUsfj1qNyw+XGg0Rm7r+m/+Bvg6oqc2bZ4cyd9SNgThjPxi6pwb7gnps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752562414; c=relaxed/simple;
	bh=7Pgt3265MUvv0KO/DG+JIDcgier23nzqYxB6scwqRbM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UjTzcPLCvZ9Qg0AE1bFnZRCTa6mB5Lt2dJgotU7uQgzjim3/DrFCqepQCKQUiuV+2cNXEQm+rFK0GI6jKsge+ORo34USpM06h8HDaycaxbhZh7/IEcx42+uFKpj3JK1q6QpyR0qwvwTsrnoR6LexmVuPfi6U/DIkFTy6zVIoxhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uuHIrnti; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-32b4dc9be5eso5829691fa.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 23:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752562410; x=1753167210; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IvcOD4Cn8eI42dR9/vuoZROCEodBzgnn8pqK2R/ysOA=;
        b=uuHIrntiXVwd0zUT0sDuSkjZTDDfill65Dx/43o8Euv00KMBwcesYrjIW+Bj6IvBCj
         cS3/biyblTHaHzV+U7KF6UB9+XDUhLgvSVuYyajNSp08ATXYEQekD6gjiA0yLAUiH/s7
         B9iVIDYM3+2IgEkrWxw4M52ulWQmHyLaxXsNbVorPffNIGEPTaKHx7t9/US+h6m+3nUc
         a3IEuD7NJ4Wc9pF5Lks5n356u0yRHXqkW5SNo9kgxeNGDWGCEwWCdaUOr7yR7jsmpmrn
         ogp6alvjQAhdMgKEp1qpWoWyReXbv+eylOhrPJPvN9B2tekORXKjITTKwdT4QuWlKHvt
         1JWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752562410; x=1753167210;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IvcOD4Cn8eI42dR9/vuoZROCEodBzgnn8pqK2R/ysOA=;
        b=BVkmBk77t9LuVYCc/Iv/liOoURQnCQ/RQm6QtrVhzg2s0ZJE4kFqAa9PrQ5UDqksZE
         Bdncp1ApEkzcya8moATLkmlGuRtQidNfRQSF5SsSgZrXzIYuB1IC9t9zYbvNeYE9sn78
         RlNQx8di/ILbE1Pebt8v+f70MfVzBv1RfdtOqLM9vLGu1mH+JOJTsiAmRvt2NutAuACt
         V2zVmSZ2B1Dnclb+eQFik7ylZOsfofTTyozYLrX92F9A0lzia5AQAsySNIlWf1iP/d/U
         uVVO8G1PPWSxmGqNLbUoc2+Gnze5lscnVMJfF4TSGKTFdo5wjJeSgPsd8oDWimoot/IA
         tzyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXW5DaGb3Nr5qb/A/uHZVnmepcWCgJsKxuGJ5taptOwlgF7QmwMYHKm7lvysbEMu2EuyNELvxt/9uzX@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2RAc274Kh8ql3OQBLY+/DN/j3mxrQ1v6Y2CbQm8EnQ7niSHpd
	zNm1EZUky7K/86ZtcXPtAcNxjMfKDHRP/vq4JSmhGLZquCNbk7M/udY5XjQRE+khX88=
X-Gm-Gg: ASbGncu0rhXT1aysyvIQDMgj/VKI11SbeRSYfOVZQedQNp5cpFxwagocQ0HPecWmVBk
	YdFdioGXWn5WY7G5YY3056fa3IhcyJNgJeezKcM848uddMK8S7JI/i5ULfghDXi4vzxMOckHMWx
	+tXx33wd5A4LpNgkfnKzd68fXnA+Kkmp/F2BQivJEqEEv2qVabgmWDoyRz8360x144r4KGpjlCC
	tr+MEBiHwMNtWPLwdGSVPeLdv2MuUs4Y9dDyxf7WTkTMPQT+nuf4n50TBbUpAC8wy9L4rVJXGvv
	BEAZ7ndG4o1k8t4fjZTA5N8F6tSUBYqKVfFUCeiDb/oESYeVcS20eKXtM9LwkqbRTAWm8tiFdMe
	/FY5EfkQInbE+gOJpK02utCEp5lWI836aCsnsN8K6yDhO4pwkBLUJU+2TAaYjwZtgD6pLoULuZW
	Ok
X-Google-Smtp-Source: AGHT+IFodu1HnNtyzy2FJlD/fynnVpnoIvnN8l+K4AJ3AsUd4f17BT9WXmpIiPUMoelKfh8FHowKUQ==
X-Received: by 2002:a05:6512:32c1:b0:549:8fd0:ddaa with SMTP id 2adb3069b0e04-55a1fc78578mr60358e87.0.1752562409993;
        Mon, 14 Jul 2025 23:53:29 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b8abfasm2204780e87.255.2025.07.14.23.53.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 23:53:29 -0700 (PDT)
Message-ID: <9361e954-e2c9-41c6-be4c-12b0e4f367f5@linaro.org>
Date: Tue, 15 Jul 2025 09:53:27 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 00/15] Add dt-bindings and dtsi changes for CAMSS on
 x1e80100 silicon
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/11/25 15:57, Bryan O'Donoghue wrote:
> v7:
> 
> - Reimagine the PHYs as individual nodes.
>    A v1 of the schmea and driver for the CSI PHY has been published with
>    some review feedback from Rob Herring and Konrad Dybcio
> 
>    https://lore.kernel.org/r/20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org
> 
>    Both the clock name changes from Rob and OPP changes suggested by Konrad
>    are _not_ yet present in this submission however stipulating to those
>    changes, I think publishing this v7 of the CAMSS/DT changes is warranted.
> 
>    Its important to publish a whole view of changes for reviewers without
>    necessarily munging everything together in one sprawling series.
> 
>    TL;DR I moved the PHY driver to its own series review comments there
>    are not reflected here yet but "shouldn't" have a big impact here.
> 
> - Having separate nodes in the DT for the PHYS allows for switching on PHYs
>    as we do for just about every other PHYs.
>    &csiphyX {
>        status = "okay";
>    };
> 
>    We just list phys = <> in the core dtsi and enable the PHYs we want in
>    the platform dts.
> 
> - The level of code change in CAMSS itself turns out to be quite small.
>    Adding the PHY structure to the CSIPHY device
>    Differentiating the existing camss.c -> camss-csiphy.c init functions
>    A few new function pointers to facilitate parallel support of legacy
>    and new PHY interfaces.
> 
> - A key goal of this updated series is both to introduce a new PHY method
>    to CAMSS but to do it _only_ for a new SoC while taking care to ensure
>    that legacy CAMSS-PHY and legacy DT ABI continues to work.
> 
>    This is a key point coming from the DT people which I've slowly imbibed
>    and hopefully succeeded in implementing.
> 
> - In addition to the CRD both T14s and Slim7x are supported.
>    I have the Inspirion14 working and the XPS but since we haven't landed
>    the Inspirion upstream yet, I've chosen to hold off on the XPS too.
> 
> - There is another proposal on the list to make PHY devices as sub-devices
>    
>    I believe having those separate like most of our other PHYs
>    is the more appropriate way to go.
> 
>    Similarly there is less code change to the CAMSS driver with this change.
> 
>    Finally I believe we should contine to have endpoints go from the sensor
>    to CAMSS not the PHY as CAMSS' CSI decoder is the consumer of the data
>    not the PHY.
> 

1. This is an incorrect assumption, unfortunately it was not discussed
previously for whatever reason, good news now it gets a discussion under
drivers/phy changeset.

2. The whole new changes for legacy/new CSIPHY support is not present
in v1-v6 of this changeset, it just appears out of nowhere in the v7,
and since it is broken it should be removed from v8 expectedly.

It's a pity to realize that instead of providing any review comments
for the CSIPHY support series sent to you one month ago a lot of time
is wastefully burnt on a broken by design change development.

-- 
Best wishes,
Vladimir

