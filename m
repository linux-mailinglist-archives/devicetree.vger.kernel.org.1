Return-Path: <devicetree+bounces-16403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0007EE844
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 21:23:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC4F41F24B60
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:23:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BADD546448;
	Thu, 16 Nov 2023 20:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E/yD9Kmr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20DB81A7
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 12:23:23 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-77bc5d8490dso74314085a.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 12:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700166202; x=1700771002; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8GUlWg1ZEoyQZveH6OPSmAcCdbQ8S0uDxWTzpTEqMGU=;
        b=E/yD9KmrIfVSUPONrsW+YIpI/MHA97NzD67cjfgHLbebQ6rMPTAk6J19sAnynhEPyu
         7IIjsk+VGmae3mjJxxG/CV17B9uh82zm/IJidnJKZD9C0t13EA/4BPoutDQSPr/rmzt5
         RTahNFYPD1IdLm9ZdrGQiqPlGmBE7p8uu0tQORPxtVpT5wcbuc79jH3PpowkdFJWsr8q
         lsLz/3SFqvZkmH9ccIFG1Dx66W+dGp0Ny+kfso0JjMbdUHZ+4AXI/3tPZ7v5uL4jErYK
         jqdbxADHZpeG6iU7DxjtkdNtLyjiSP9zV1YjgMyNLW5iIeVtg+Z9xaGhL4hTQ9B7XMO+
         KcYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700166202; x=1700771002;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8GUlWg1ZEoyQZveH6OPSmAcCdbQ8S0uDxWTzpTEqMGU=;
        b=GBOoMCYTrkUDOvC06pM6XSUmp32lJTreD2YIO+DJ9geQBR6WBtcjlGmNs1jRUmOiIA
         A08g0FPZabMARE45HCKvPycinKCiijx4axu0iQyqnSBmB5xNhKO0pGeyi4V+uVqNEYZ6
         3Mq9n7eA8W69MRUEgqKDRiYNfNxaXILU5EAdpUXH/f6iP/7xAggnOyMKzEx8w1HB+mRF
         uu1cJsgjQPa3YTM5mjclGRYvE5PmcgfBnvChVMKKyYXt8U4GHnMUTRPEg3Ji6eaZ3NKD
         qSAAK4E8c8LmY/TeJJtTScHKIxOmuxu6Qpgi6qFOfLCysIlm2OvlH4Z6q5MjIGFlT37A
         yHkQ==
X-Gm-Message-State: AOJu0YySEwvxiFh+v6IjoFzDHX//KqE9e6JXJ5B6BHTPHAlLoajPtiOT
	1hgsIIgRKyiCA2frVH9ZSdOnDQ==
X-Google-Smtp-Source: AGHT+IHdlnIoK3McOkSZGJGdqPOkFoFnb65zAWb/Tglm0/sbqcUR1sc25ZXYql5N3Er8YYjK3zF/6g==
X-Received: by 2002:a05:620a:2a06:b0:777:3da6:531a with SMTP id o6-20020a05620a2a0600b007773da6531amr10818181qkp.1.1700166202284;
        Thu, 16 Nov 2023 12:23:22 -0800 (PST)
Received: from [10.44.189.251] ([12.161.6.169])
        by smtp.gmail.com with ESMTPSA id o18-20020ae9f512000000b00765aa3ffa07sm66782qkg.98.2023.11.16.12.23.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 12:23:21 -0800 (PST)
Message-ID: <d8363bac-df41-416a-9043-f6212ad61e13@linaro.org>
Date: Thu, 16 Nov 2023 21:23:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michal Simek <michal.simek@amd.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>
References: <20231116181218.18886-1-krzysztof.kozlowski@linaro.org>
 <5727404.DvuYhMxLoT@phil> <a338048d-bdee-4be5-bd47-c744b301913a@linaro.org>
 <3266223.44csPzL39Z@phil>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <3266223.44csPzL39Z@phil>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/11/2023 21:03, Heiko Stuebner wrote:

>>> I guess the only thing I do have questions about is the part
>>>
>>>> +4. All properties with values
>>>> +5. Boolean properties
>>>
>>> Is there a rationale for it? Because with it things like regulator-*
>>> properties then end up in two different blocks.
>>
>> Good point. It is only a matter of style that this:
>>
>> foo {
>> 	compatible = "foo";
>> 	reg = <0x1>;
>> 	clocks = <&clk>;
>> 	wakeup-source;
>> 	key-autorepeat;
>> }
>>
>> looks better to me than:
>>
>>
>> foo {
>> 	compatible = "foo";
>> 	reg = <0x1>;
>> 	key-autorepeat;
>> 	wakeup-source;
>> 	clocks = <&clk>;
>> }
>>
>> But you have good point that similar properties should be usually
>> grouped together.
>>
>> About which regulator properties are you thinking now? You mean the
>> supplies or the provider?
> 
> I was thinking about the provider. There are 
> 	regulator-min-microvolt = <>;
> and friends, but also
> 	regulator-boot-on;

These are in regulator provider nodes and above guideline would keep
logical order:

	regulator-name = "vdd_kfc";
	regulator-min-microvolt = <800000>;
	regulator-max-microvolt = <1500000>;
	regulator-always-on;
	regulator-boot-on;

	regulator-state-mem {
		regulator-off-in-suspend;
	};

What exactly would be here misordered?

> 
> 
> I guess I would just go with
> 
> 1. compatible
> 2. reg
> 3. ranges
> 4. All other properties
> 5. status (if applicable)
> 6. Child nodes
> 
> aka grouping the old 4+5 together. The difference is probably minimal
> but doesn't create corner cases and you don't need to know if a property
> has a value or is boolean when looking for it.


Best regards,
Krzysztof


