Return-Path: <devicetree+bounces-205468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFC3B2924E
	for <lists+devicetree@lfdr.de>; Sun, 17 Aug 2025 10:42:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CB953BE209
	for <lists+devicetree@lfdr.de>; Sun, 17 Aug 2025 08:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE6D422068B;
	Sun, 17 Aug 2025 08:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="SiZIK5pL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3B7215191
	for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 08:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755420156; cv=none; b=ZQHFACNYjqvY9YGfTprjvQAY7L9jlurpPWQW225bLVQCwdNul57sIs91L3iukZ3+qO21mwrwPywz3KpLnJqY09W33ZM3/61zxuFqGKwaUqwHmC77cKoX8z8hF/wR85JqbQxoSxTE/rM3HBn6yvO+D2O7EDPizn9BNviW6m2CLLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755420156; c=relaxed/simple;
	bh=fBnf8WeAF0dOSwSjhG5XgLZ6fmTgeSi3O4YkmGSc76c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X0+/CVWOOH4cGIwtHWM5tzYNT+PTSMR6BQD64IQEnr9ehlAa3VuAdlnFfWdCctVgEKWYtWXO3e649EG6ZHxcAbWVGtfboBB7J2N7d59yCRdPlUQiJ23fWxvm44p4D8SJGIPSjdQ/jllgZScLLY5AG1/o1uQkaBDYEE+qq1HWSFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=SiZIK5pL; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-76e34c4ce54so2244531b3a.0
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 01:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1755420154; x=1756024954; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sfkmu36UsEhyXB4ryL2gMWCuVzsfK6S+k6i65pf0ysE=;
        b=SiZIK5pL890Y0nAYrpzUl/LXSjurKr0TjYOLlteczYFelQn8uxwsof+riCnTJP2fVK
         zxNUIt5gypSoslh/btFHlHq7oA2HJuV1uXZpzI/0jTGRFXG+pBvaxccRHtLHrXtNj+pp
         uB/byKpPHRNJ7sX51Ygx+bDcmLBxtUnn5bTZbPZWV2r4PmpL4m+J9gzKhaM4G5Vh2Dqj
         Wulc62RM/VBCjDFpwgc420ZtHFGjLMikNCPgNyXGl46PY/csQE2G8FmTSEHr5TkFlg+1
         5GONkl5ESo6cF//QAvSUnFNNvoW7TbB2VkhCz2Do+DPHWy3kAWaaUCmk0FTRHgIQrqr+
         PG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755420154; x=1756024954;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sfkmu36UsEhyXB4ryL2gMWCuVzsfK6S+k6i65pf0ysE=;
        b=wNUXC60Dd1dwiozBgOIVo22tm3wDYmlEypR6pG2rNJJbePH9+PMyR0HjIFTtQw44gb
         vymvxMpG4tpuqDgTmS4PYFb1XqjMv+Vz52Zeq80Z4C/HRjB63CaqaPPW3wMUoCdxGp6J
         HaM+9W2Qz3C96nJOyk9u80jRthwqxNjjLfe/IYpxPp9tzV67BCLmDEZN+bgofpEmxUuX
         CWEENocAo4WR3Pgb793bUJ5AGECSYMAoS6EglLhkQaow29QYHSTTO2Fg5BTbRQAsDnyB
         8MumvvQZSN2Vjx3DbmHGGzn9jodR2LYBdKbQi/BzOo37G0hlIaLSPLItdoMBjQhe9HXW
         a5aQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUJeVnT9BGWSuJiPiPH27t1lYAzdi3z3Bkj9vyB/5Un8mj3kXIUWraRSgywubu27H2QNbY7olI7wxY@vger.kernel.org
X-Gm-Message-State: AOJu0YzkiUQw8yZdGeEVgdlow0U59KH7Gw7pY8GhjnIOAI76Pe+x1Mo4
	SL3uD37Whn0IYP66yMCcRPHLL9w+mVINRDGMeTEPuFMnrWLC1IPkttGGdz4rfckd+rpZYpl/iWZ
	FYF0=
X-Gm-Gg: ASbGncsUDFmroxlKcEfwU/3rstQ+TDj4UgPEZeYmVZPxvye5FR2v1vpFJHeUK2OV0yl
	pt4oLK24735n+dYuqtwY1Hjlo4zl3PsRkSLqUsTBZiSLXYuMcNzkFgX+Z/mTnpP3DCgzubC9Up3
	5TtYQYGsE4ZtMdUCyPcXjXrZV4iY5171SEVn7t3jiikX0MQdQDix9fzDVn2ROmZrR+BRdZf5I8S
	0zfNCuo82N9x6CA/A5YZTHizDsAkbfDXkkGE5xxlTiv6BGvGrnG4IoMLqqkXumUOB8QFvddhnIM
	XFt2ns7WcRJHfZvBFli7j6aptYqDyEz8Jr417BaTs+cXbpe0vKkxYrM8MIPShk1VncrFaxC1BDm
	EVSpdaZyu3fT29ZjKs/oJAOthmYGEEApuaWlK2CEw1i+0Bz2zxR+bejylwQmCf9Mo1fPr9In5Nr
	w=
X-Google-Smtp-Source: AGHT+IEj5yKW7F8ws4E5YLdOfdAEX6KIo50dsAXx+hxN+8hXkqsDFHeQl00YGG+6keeJrWj42pTIZQ==
X-Received: by 2002:a05:6a00:4a0b:b0:76b:fdac:d884 with SMTP id d2e1a72fcca58-76e321f6064mr12072837b3a.3.1755420154608;
        Sun, 17 Aug 2025 01:42:34 -0700 (PDT)
Received: from ?IPV6:2401:4900:8898:f586:e00d:52f9:31de:96d4? ([2401:4900:8898:f586:e00d:52f9:31de:96d4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e45566937sm4719641b3a.70.2025.08.17.01.42.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Aug 2025 01:42:34 -0700 (PDT)
Message-ID: <1884651f-5192-4fd4-9d94-ed755ea89570@beagleboard.org>
Date: Sun, 17 Aug 2025 14:12:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: Add support for export-symbols node
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Herve Codina <herve.codina@bootlin.com>,
 David Gibson <david@gibson.dropbear.id.au>, Rob Herring <robh@kernel.org>
Cc: Andrew Davis <afd@ti.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 devicetree-compiler@vger.kernel.org, linux-kernel@vger.kernel.org,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20250430125154.195498-1-herve.codina@bootlin.com>
 <20250430125154.195498-2-herve.codina@bootlin.com>
 <0770a47e-fd2f-4b6f-9a9a-b0d539ace30c@kernel.org>
 <20250528185740.4bf91bef@bootlin.com>
 <49e1e1fc-412d-4334-8337-16e352a34788@kernel.org>
 <20250618113232.6d237208@bootlin.com>
 <ed6beb97-12f1-4d71-b4dc-b34d4d611b81@beagleboard.org>
 <3ff4b3f9-cc8d-4044-b2eb-33010d8951c0@kernel.org>
 <3889e19e-7f1e-4306-9e11-77a61432b402@beagleboard.org>
 <f3184805-3617-4b46-be23-70cebcf27207@kernel.org>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <f3184805-3617-4b46-be23-70cebcf27207@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 8/17/25 13:52, Krzysztof Kozlowski wrote:

> On 17/08/2025 10:18, Ayush Singh wrote:
>>>>> Hardware:
>>>>>      i2c0 from SoC --------- connector 1, I2C A signals
>>>>>      i2c1 from SoC --------- connector 1, I2C B signals
>>>>>
>>>>>      connector1 {
>>>>>          export-symbols {
>>>>> 	  i2c_a = <&i2c0>;
>>>>> 	  i2c_b = <&i2c1>;
>>>>>          };
>>>>>      };
>>>>>
>>>>> In order to avoid the coding style issue, this could be replace
>>>>> with:
>>>>>     connector1 {
>>>>>          export-symbols {
>>>>> 	  symbol-names = "i2c_a", "i2c_b";
>>>>> 	  symbols = <&i2c0>, <&i2c1>;
>>>>>          };
>>>>>      };
>>>>>
>>>>> Krzysztof, Rob, do you think this could be accepted ?
>>>>>
>>>>> Ayush, David, do you thing this could be easily implemented in fdtoverlay ?
>>>>>
>>>>> Best regards,
>>>>> Hervé
>>>>>
>>>> Well, it is possible.
>>>>
>>>> However, on connectors like pb2 header, there will be 50-100 export
>>>> symbols. So it will start becoming difficult to maintain.
>>> And the first syntax solves this how? I don't see the practical difference.
>>
>> Well, I was more worried about matching which phandle belongs to which
>> symbol easily. Let us assume that 2 symbols will be in each line (after
>> accounting for the indention and 80 char limit) and we have 70 symbols,
>> so 35 lines. To check which phandle belongs to the 2nd symbol on line
>> 25th line of  symbol-names, well, you would at the best case need to
>> have something like relative line numbers in your editor. Then you know
>> that the 35th line from the current one is where you need to look.
>>
>> In the current syntax, the symbol name and phandle are on the same line.
>> So well, easy to see which symbols refers to which phandle.
> OK, that's valid point. Any ideas how to solve it without introducing
> underscores for properties?
>
> Best regards,
> Krzysztof


Well, we can modify `get_phandle_from_symbols_node` to allow matching 
`*_*` to `*-*`. And we can do the same in devicetree easily enough. Not 
sure if implicit loose matching like that are the best idea.

Zephyr does something similar for compatible strings. It pretty much 
replaces the all non alphanumeric characters with `_` in compatible 
string match. Although that is more to do with the limitation they are 
working with, i.e. the devicetree being converted to static headers 
instead of being runtime thing.

Best Regards,

Ayush Singh


