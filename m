Return-Path: <devicetree+bounces-78709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D3817913378
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 13:46:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29374B20C25
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 11:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E0B1153828;
	Sat, 22 Jun 2024 11:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ezOxR5VG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CD014C587
	for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 11:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719056778; cv=none; b=IDwBHgKvX7jdGHTe53Gze3vjGH2WgcFd8qDC0jBFA2ZHaIAeXIAOdvR3KnmzDyCwJd2pgMuUpI3udifno1029NPADxFehIuzZTujnOmnWcjDnhjKgml1KJgBfat3pBj7FgecsNo2JH9hAozvA1335W4ULh+plx43cllvKVCpOTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719056778; c=relaxed/simple;
	bh=+66agaYiiFnc9wda50Lfas0i4FmApAa6AwkKsCf/3+Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UwoQd7iEIp5d4U2mcQ9gW8UwrI3VLyj2PhBH7303xM30//wkjnQcc56rgl+BCZh8GChYO0+l2cnI5QN71DngrIY4YFejk9AzwnR25WseqFezAjGCIq0NAgCNZkEf9bCGmuZAwUDrjLhdyC/Elnb+GWzeMmbiLonh7yv/NPIPhro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ezOxR5VG; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-57cf8880f95so3267596a12.3
        for <devicetree@vger.kernel.org>; Sat, 22 Jun 2024 04:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719056774; x=1719661574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ex0tM6LxW25V2+wIZSeOGMpb5a0XLFOxkY4gbLUAZJ4=;
        b=ezOxR5VGsKHZZ9635CGMveXRb0NTtDFNfNq5/BEdMUIGhJouI8h5jKpXrH7Oj/KO1I
         pYYUEUTUAiLUq0qzFf8gzZNz9Vu9yJbOEEmVMIWMzAO899xhLyV/hXnaLYZislMW2EDo
         15pF69GoWn7hq8rQ2ETDFw0w0/sDtX+yOVU5GVXE0F3ff2DxXJPiUp5tzsiXCZGezrZA
         IMdKWEDBAzbF+W9QThgXNALvgiRO5WKYxCEec9JHPXtM8Xn4hTvH51AhRsJyuXE2ObLL
         860GizdMVJ6uiBUEHyWqE8ciN6DqUvKLE8sbFLGu8pCWEnQC4kE2GOJV4Iv9AaJhJrno
         03ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719056774; x=1719661574;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ex0tM6LxW25V2+wIZSeOGMpb5a0XLFOxkY4gbLUAZJ4=;
        b=mlkqJWr/Nq9EkZrNJRrSxPzG728KJ3RrDLkNAcdhzrZNLfqYUgg2aVqsHv6cxAXsB7
         Q8fjfCqK47xdwfbkm3Y/VARQ67JKTk4BkQlgTK9iNwn189sPPhoJJGgyRD7BgtJvuktX
         LdPRtuE7+4HQLPOJ4qiNCdPcPzXeeDhXVaog9Hen1SbCfYv1kSfPAZXOL6dHnrsdmp+8
         6xZYm3T3oVD+uruFxO/EvVIEf9j532Jr7ldYznkMcmXgUIIJGUNPfsdHvA7acUxq5uXz
         /ulyqmnNYnWF3JjcByutDQyBTClhisQfHcme4cNSRvHJkGjxJ63WEZLKI0d+9L4KpxP5
         KSqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbuOjuv0fw2pFltF9XAhLo09qDF0I325g649cxTyKXHZg2ANlvLXvdQF3yEEsPVIuryeTjhGl80Pebm1F2FtEb4O+sZhgSyEA0wQ==
X-Gm-Message-State: AOJu0YywR14lZH0PmOBF8WvVhis7EnaF98qK6w4LVnN9xD39bx6FzbuT
	xFQeTsDtcxVrPE6dnKZpSkScq/aXRsCHEkT3X3QYm0fsM7I0m3vy3oUaNaRDiLM=
X-Google-Smtp-Source: AGHT+IG13RlR/h9teGk653CmpQ7usaf+YKjqH/yhLCC1Ebtglmw6+ywyyHzoCVz9ij/kluyQEMFntQ==
X-Received: by 2002:a17:907:969e:b0:a72:42df:cd27 with SMTP id a640c23a62f3a-a7242dfcd78mr21027566b.71.1719056774060;
        Sat, 22 Jun 2024 04:46:14 -0700 (PDT)
Received: from [192.168.128.35] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf56073bsm185617566b.169.2024.06.22.04.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Jun 2024 04:46:13 -0700 (PDT)
Message-ID: <6e7e7b44-3c06-42ce-9d9b-9dcc83387657@linaro.org>
Date: Sat, 22 Jun 2024 13:46:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] ARM: dts: qcom: msm8226: Add CPU frequency scaling
 support
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20240619-msm8226-cpufreq-v1-0-85143f5291d1@lucaweiss.eu>
 <20240619-msm8226-cpufreq-v1-5-85143f5291d1@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240619-msm8226-cpufreq-v1-5-85143f5291d1@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19.06.2024 11:02 PM, Luca Weiss wrote:
> Add a node for the a7pll with its frequencies. With this we can use the
> apcs-kpss-global driver for the apcs node and use the apcs to scale the
> CPU frequency according to the opp-table.
> 
> At the same time unfortunately we need to provide the gcc node xo_board
> instead of the XO via rpmcc since otherwise we'll have a circular
> dependency between apcs, gcc and the rpm.

Hm.. thinking of a solution to that, should we maybe split the mux/clk
part of APCS into a subnode and bind the clk device to that?

Dmitry, Bjorn, thoughts?

[...]
> +
> +		opp-600000000 {

Can't find this one in the random msm-3.10 I have

> +			opp-hz = /bits/ 64 <600000000>;
> +		};
> +
> +		opp-787200000 {
> +			opp-hz = /bits/ 64 <787200000>;
> +		};
> +
> +		/* Higher CPU frequencies need speedbin support */

1190400 kHz seems to also be a supported-across-the-board one.. unless the
watch edition shuffled things around with a newer tree


> +	};
> +
>  	pmu {
>  		compatible = "arm,cortex-a7-pmu";
>  		interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(4) |
> @@ -231,9 +262,75 @@ intc: interrupt-controller@f9000000 {
>  			#interrupt-cells = <3>;
>  		};
>  
> -		apcs: syscon@f9011000 {
> -			compatible = "syscon";
> +		apcs: mailbox@f9011000 {
> +			compatible = "qcom,msm8226-apcs-kpss-global",
> +				     "qcom,msm8916-apcs-kpss-global", "syscon";
>  			reg = <0xf9011000 0x1000>;
> +			#mbox-cells = <1>;
> +			clocks = <&a7pll>, <&gcc GPLL0_VOTE>;
> +			clock-names = "pll", "aux";
> +			#clock-cells = <0>;
> +		};
> +
> +		a7pll: clock@f9016000 {
> +			compatible = "qcom,msm8226-a7pll";
> +			reg = <0xf9016000 0x40>;
> +			#clock-cells = <0>;
> +			clocks = <&xo_board>;
> +			clock-names = "xo";
> +			operating-points-v2 = <&a7pll_opp_table>;
> +
> +			a7pll_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-768000000 {
> +					opp-hz = /bits/ 64 <768000000>;
> +				};

Looks like scaling this PLL should also scale some voltage domains:
CPR (fed by pm8226_s2) and MX

Perhaps hook up MX to this one for now and add CPR to the CPU nodes( & OPP table)
after that is brought up

Konrad

