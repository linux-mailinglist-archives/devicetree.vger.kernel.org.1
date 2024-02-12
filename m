Return-Path: <devicetree+bounces-41036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F8085219D
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 23:42:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1C7A1F22AAE
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 22:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B26AB4D595;
	Mon, 12 Feb 2024 22:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QCuOld+X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA22E4EB31
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 22:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707777731; cv=none; b=EyMVOeeIIUdaqqIzst5dOa2snu22cGDD1++/nz/tMlb79WkIgnVaegMkiiQD+pfBqvEz/tnztSQvSFpMAtjPtjIB4zCpi2L+92IC7LyOFfLnScUi19u6/Gv1NvVbEyOslcw9IKBL+UJukcY0R6g5882GIzYP0Uh/QqKhvoFblM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707777731; c=relaxed/simple;
	bh=3vgcjHLfq/00X/yUP8BO5uRZWk5ZVbqXQ+PqVJG2mXE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XuWPNy+Ae2hQPwWph4ORgBT0p+U7YkUW36S8a30J+3nfhqB/GxkyLCB36AQA66vn/al1FIns9bxs1BE62yB4KbQPIiCiAXVC/E6V0ZNKU0f2LfdIqbdxoK3WAMcjdqJKV9rvmX6yJpl/GjMIkA/rUp7hrr+JojC+QRLXVM2YT8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QCuOld+X; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so5010770a12.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 14:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707777726; x=1708382526; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+NC5nXZUhD7OgbbLjAWuedjAC2AnjYG2VXHEAtTQZ1k=;
        b=QCuOld+XYO0cYJbfJKRJt1AzB96r8vn/zf2Hih01Id1oB1f1g8aUAM57keDxrLp6Ak
         +wNyfAkwYpnfLKpYCkWmep2/lBPFqqUICdvx7jA+ygPthqoZ84Xnb5rvSnjbfzByutBH
         PSMEmD44a0ODoc8Bimzl6Aq8Ks34WcC7vzNXgxGXV204/msdIk/484Xf3+ETqeVY87mo
         hekQ9IsnkQBMQk8lAjYqrXUJA1hb1ZmEs8ghNOVVzaELYlyb/yrjOPMhgziWz3Rnj8P/
         jYKhEbE/YhAe/6/gEsySNB0CC1KVWmi4WUUncYG5wr0I/StiOGFJpnu++MzJoLuVYWrG
         6iYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707777726; x=1708382526;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+NC5nXZUhD7OgbbLjAWuedjAC2AnjYG2VXHEAtTQZ1k=;
        b=hNc/Ux36rBfHlYDhg5G934uIzDF74YPdbQKpMXYJHpHpI/FOxr4BCiQZSb7IGtfuqK
         5I3Rd+nl5+2HqNqQahGB9uaWwjcgU2DvwaNkUg8YcAAbbeWMOsxe1LvUCrcVxOvPcQc4
         6SmZbGa/+pi8SABroT31ymXM1qi8donE0RhmGmJRoeRKICGbfc84yxyt7M6La9EufT+V
         CmrW4r/lbsTdfy69BTHHqHj/xP+5vdtdXPzGk6a3MJ89zdtV3AEvg7FJ1MbzBDgBn7jc
         WFwQC6RN+grcqONzX/K2jVNiAq4OueUv6Cc+W6Gl2YiapNZFiJ97KvgKe3FvbRKpteso
         PPAw==
X-Gm-Message-State: AOJu0YxioYFULaFhZ/jZ0jSNKe9LMo4GEuDG2mRfEq29T/89rarljYug
	PUS2K0uio70SKwpPyyg9RjRNxaMcPaw3RrdNDf/ZMjB2REPT8vtWScBiYjIqXlU=
X-Google-Smtp-Source: AGHT+IFnrOmQoo6eJe1/RxznBdECXPfen0HdUphSAC9KrCi2m89MpvKcbiuhkfeA9VZKPwLLLd5Y1g==
X-Received: by 2002:aa7:d614:0:b0:55f:2f0a:d959 with SMTP id c20-20020aa7d614000000b0055f2f0ad959mr5696422edr.37.1707777726065;
        Mon, 12 Feb 2024 14:42:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWOI5WW/OVCweeWd3zCJ9WQtpFTgK5uz7v2v3QjvO2e+u2RQH6A+nRA3G+I/CbKdMoiHvD78DHdo2ZYR52UOJOANaw/f4hhreVUsTAtN03QsVSBBrFMK7Q5DcoRdaO7sGarH4YgMW2Bxs2+wtEftIz/0ivBsawQD+Cm6kLklCy1Y0Z9rRrjo933mti9HjNR6x026Ya5TGTqka+3yy2Ju2SE4BNkj6YOSR91+vTSIyzztz+ExVy7Y8DV7ANbJq0BUdoIJ8thM02wdrI/FBbjG8kcPgXj/vPKcNqPYn/EZcoHJAMigVG8ujKTn2x8VE1tjw==
Received: from [192.168.192.135] (037008245233.garwolin.vectranet.pl. [37.8.245.233])
        by smtp.gmail.com with ESMTPSA id ig4-20020a056402458400b0056098a293cdsm3107887edb.69.2024.02.12.14.42.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 14:42:05 -0800 (PST)
Message-ID: <f108d588-c6ba-4efd-9792-bd4dbd68fb7d@linaro.org>
Date: Mon, 12 Feb 2024 23:42:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm6115p-j606f: Add some peripherals
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240212-topic-j606f_periphs-v1-1-5dcacd483e28@linaro.org>
 <CAA8EJppHv9g4HnEFaEaCH=FnvJdnFfnr+rt=Onyqh-er8UA6TQ@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <CAA8EJppHv9g4HnEFaEaCH=FnvJdnFfnr+rt=Onyqh-er8UA6TQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12.02.2024 22:19, Dmitry Baryshkov wrote:
> On Mon, 12 Feb 2024 at 15:44, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> This tablet features quite a bunch of I2C-connected devices, such as
>> a Richtek RT1715 USB-C controller, a MM8013 fuel gauge, FSA4480 Type-C
>> audio mux, TPS65132 regulator and some more.
>>
>> Add the aforementioned ones and document others.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---

[...]

>> +                       /* TODO: Add a proper PD setup */
>> +                       typec-power-opmode = "default";
>> +                       try-power-role = "sink";
>> +                       power-role = "dual";
>> +                       pd-disable;
>> +
>> +                       port {
>> +                               rt1715_hs_ep: endpoint {
>> +                                       remote-endpoint = <&usb_dwc3_hs>;
> 
> Most likely this port should have the SBU endpoint connected to
> fsa4480. Also, if SS lines are connected, there should be a link
> between this connector and the QMP PHY.

I wish there was usb3. Unless lenovo did that in hw and didn't hook it up
in software, but that's just wishful thinking. I'll give it a shot anyway :P

Konrad

