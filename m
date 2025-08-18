Return-Path: <devicetree+bounces-205957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E0245B2AF91
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 19:38:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CBED4E8065
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 17:38:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 135B5258EDF;
	Mon, 18 Aug 2025 17:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="MiilwakU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9B0204F8C
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 17:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755538687; cv=none; b=OsiDTt/4rG77XOfRLqLzAsHRpVCm8mJuFgUHWKVhWRO8nXbVVdIVtskxlgYYcFazWOn6Tq/EfQY0EMdMeVD0nKZdXhGf7cPy6VRVQWRFbzl2DIciabB5SPgYE1irTT+XW30QtpLCmnd8U2leSYufUf3NJjuiQOkqPDWgmZH8tjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755538687; c=relaxed/simple;
	bh=KpndLTPj+1ibla1979UwuPwKaedBmG3tKximGyaNpgw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bVF0ummE9QnZjK/jqruY6VE3kFuNobAgDCDuSDyZSlLkJMEaE1FSvzAjFlMe5H8lPJR9BqUYnVrMa+9HlBDco0YMPZzKBry/xi4qp47sXTx9Agu+a3ucv/Sb4qzkI1rKgWSZBYMxTqBN6+JIhWmrsN3kiZrgF1gCPGnKAMn5EnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=MiilwakU; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-76e2e614b84so4199602b3a.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 10:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1755538684; x=1756143484; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/vks8XXxfstdatM1G//bwUHh/WZjAyNbpmzcLDcM9lM=;
        b=MiilwakUfDxFTtpD/aA9IKsbbN+wG/vZZXwg25r1lcdmunKnIRo4C0DPpKP2A/4BuY
         CJrsJBucXBzK7dtHrN43GBJlYJhAzzoLNbfZY/6QXbqnJ1WcjIg1iYJIQPhpN/qmXF5V
         h+1K5HpnPzjc8uhE3k8BoOtywE58ii83thgyB1vI4TufTZCp/IpfXlQRWOKomaiuSTuB
         FXjjgoP3RgsouUKH9awECzQ15ithq7uiA7eS1F/B9lgaGcNkfQ0Se2w9dDRbVfeIIEVs
         ih8mkxoa+qkkQ5JxFzGbewrKkaLAtq52NSseGlp2Y7sOqq4JkhRhi2pa+uGTJjCrL+RE
         QPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755538684; x=1756143484;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/vks8XXxfstdatM1G//bwUHh/WZjAyNbpmzcLDcM9lM=;
        b=B6qZxu8miSqq+/HCcqdHJmyn2sEEaBIwhs2wq4rl+KtuOi7wAOsuek5yMX1ZRZHfLR
         1LRmJnqo0X2d8cdLZ4vRsEoG70PvMMvS5PSasp1/kPM8ZJl/RekGtgh0BbfLCB/4uyLk
         4/q/e9UQECdQN+O4EEJbK9gnp59byylqrjX4AVSOyXr8LpFS1WvIW1VGs8Wh6uRuVpzZ
         +GjtkSe7f551cYRScnfBebH5EBGrbJnM9Y6Z5ZlGXdP+e6a2G1PUnWtZmsFBS9x3sPhl
         nlgVXcLRna+n4HBt2MiW94Y+ELMODCtQaEYVvQpe1U1ZYzSNQoeeq2ng38Ej6izhkSoq
         j0mQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/xjBZ7LIqrp1ISs57pGksLUJF7A9Ab3TRy6XwSh5DAMlxkfl0hL1VB/nmZEonCSoQZuvTx9EmtNfQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy28nEiQsNrBHAcSQroVk/QK9xwsbVUdmabFxVmzkHIMD5eUM0d
	g7npqYeIPBspVH//8oJpFkwEhjHMJmRPQIWSRFaQm8rpUBp9KMXOGoXKo7yXvKZ4aA==
X-Gm-Gg: ASbGncuzGb64XRcHCb1T6EypAX9PazbGTjyXz3jRWbbZsvbLpdVugSMF5AlxDRiinzQ
	sbpSkJE5N7n3krEpCWDVrnJO7Rxn8rb2H4nnyAcbfl2QBpjuXSfZzlI5Gdw/UOLF26sKDI3qREB
	Is/dV214qIUTXvwkhW6L6hQKJMjVmN94SRB34fvZ0npwnd+aUeW0WP+hpFjjcWp+VwTYliqrDFo
	mYKeBdr64XrzkObmriVgD7GmUpWtUNKmJPveaKRse8cMUdOYZNtiRBfFDFAiKZSax5Zh1fEdAob
	LNRiUE4Jo92XXMUyfSVjVpxqsiQpHh1b894fd+JP4ESxgAFN3O8f+tAayRgeLo13R5y8Sc/e+pZ
	dfB5ogp/JmLKfgDIVL/uGn6Y+FOonLZ5j1t23mxVO/x+xcDsUMjeHQhO0dycqjdkrXoBvW3IhiW
	ELxirczQnevQ==
X-Google-Smtp-Source: AGHT+IGt2rzHm2c0yWIZfG5qpn8ST+FNzx/C4GRx6g1QL0yfMmPxs4J/lKbLdTxxP/1fn9fDEgJ/Dw==
X-Received: by 2002:a05:6a20:7fa0:b0:240:16ef:ec16 with SMTP id adf61e73a8af0-240d3039127mr20868377637.46.1755538684535;
        Mon, 18 Aug 2025 10:38:04 -0700 (PDT)
Received: from ?IPV6:2401:4900:1f3e:5044:d00f:fc7a:cce6:b4df? ([2401:4900:1f3e:5044:d00f:fc7a:cce6:b4df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7f0b4e6esm32440b3a.78.2025.08.18.10.37.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 10:38:04 -0700 (PDT)
Message-ID: <ef7720ae-bada-4133-a685-d277cd4aa7e6@beagleboard.org>
Date: Mon, 18 Aug 2025 23:07:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: Add support for export-symbols node
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 Herve Codina <herve.codina@bootlin.com>,
 David Gibson <david@gibson.dropbear.id.au>, Andrew Davis <afd@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
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
 <1884651f-5192-4fd4-9d94-ed755ea89570@beagleboard.org>
 <CAL_JsqLSB=6FduyOE_JNRdy=Uf6dLOcHV-O4qa8psjCobJPaAQ@mail.gmail.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <CAL_JsqLSB=6FduyOE_JNRdy=Uf6dLOcHV-O4qa8psjCobJPaAQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 8/18/25 22:35, Rob Herring wrote:
> On Sun, Aug 17, 2025 at 3:42 AM Ayush Singh <ayush@beagleboard.org> wrote:
>> On 8/17/25 13:52, Krzysztof Kozlowski wrote:
>>
>>> On 17/08/2025 10:18, Ayush Singh wrote:
>>>>>>> Hardware:
>>>>>>>       i2c0 from SoC --------- connector 1, I2C A signals
>>>>>>>       i2c1 from SoC --------- connector 1, I2C B signals
>>>>>>>
>>>>>>>       connector1 {
>>>>>>>           export-symbols {
>>>>>>>      i2c_a = <&i2c0>;
>>>>>>>      i2c_b = <&i2c1>;
>>>>>>>           };
>>>>>>>       };
>>>>>>>
>>>>>>> In order to avoid the coding style issue, this could be replace
>>>>>>> with:
>>>>>>>      connector1 {
>>>>>>>           export-symbols {
>>>>>>>      symbol-names = "i2c_a", "i2c_b";
>>>>>>>      symbols = <&i2c0>, <&i2c1>;
>>>>>>>           };
>>>>>>>       };
>>>>>>>
>>>>>>> Krzysztof, Rob, do you think this could be accepted ?
>>>>>>>
>>>>>>> Ayush, David, do you thing this could be easily implemented in fdtoverlay ?
>>>>>>>
>>>>>>> Best regards,
>>>>>>> Hervé
>>>>>>>
>>>>>> Well, it is possible.
>>>>>>
>>>>>> However, on connectors like pb2 header, there will be 50-100 export
>>>>>> symbols. So it will start becoming difficult to maintain.
>>>>> And the first syntax solves this how? I don't see the practical difference.
>>>> Well, I was more worried about matching which phandle belongs to which
>>>> symbol easily. Let us assume that 2 symbols will be in each line (after
>>>> accounting for the indention and 80 char limit) and we have 70 symbols,
>>>> so 35 lines. To check which phandle belongs to the 2nd symbol on line
>>>> 25th line of  symbol-names, well, you would at the best case need to
>>>> have something like relative line numbers in your editor. Then you know
>>>> that the 35th line from the current one is where you need to look.
>>>>
>>>> In the current syntax, the symbol name and phandle are on the same line.
>>>> So well, easy to see which symbols refers to which phandle.
>>> OK, that's valid point. Any ideas how to solve it without introducing
>>> underscores for properties?
>>>
>>> Best regards,
>>> Krzysztof
>>
>> Well, we can modify `get_phandle_from_symbols_node` to allow matching
>> `*_*` to `*-*`. And we can do the same in devicetree easily enough. Not
>> sure if implicit loose matching like that are the best idea.
>>
>> Zephyr does something similar for compatible strings. It pretty much
>> replaces the all non alphanumeric characters with `_` in compatible
>> string match. Although that is more to do with the limitation they are
>> working with, i.e. the devicetree being converted to static headers
>> instead of being runtime thing.
> This is just going from bad to worse... If there's a real need to use
> underscores, then use underscores. But that's all beside the point. I
> didn't like v1 and nothing has changed in v2 to change that.
>
> This looks like continuing down the path of working around DTB format
> limitations like DT overlays originally did (which both David (IIRC)
> and I think was a mistake). But now instead of somewhat hidden,
> generated data, you're adding manually written/maintained data. I
> don't have any suggestion currently how to avoid that other than we
> need to rev the DTB format which no one really wants to hear. Maybe
> there's some other solution, but I don't have one ATM.
>
> Rob

Well, if anyone decides to do a v2 of DTB, I would love to help in any 
way I can.


Best Regards,

Ayush Singh


