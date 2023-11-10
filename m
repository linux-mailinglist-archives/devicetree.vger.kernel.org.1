Return-Path: <devicetree+bounces-15025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7212F7E7D3D
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 16:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 952751C209DE
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 15:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6504419BD7;
	Fri, 10 Nov 2023 15:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rTcd7yyJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85691C691
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 15:02:11 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D6A43A213
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 07:02:10 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32fb1d757f7so1276924f8f.0
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 07:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699628529; x=1700233329; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=foOfDHUEPzkJ6egsBOPq9Vm/AXlPPamWeveF5Fe0THc=;
        b=rTcd7yyJCm+V3GlGq1Cz8AdGeBhlbv8B98Q1FljBe24wwG7nqoswDLDApJwTjHcQ36
         mnqowQd+YXKpwBUNBURjsYQ50fq9uyHJvpT8DJ4KxlhWnTbxsotywRrvee6kxqZENFX5
         5JF5Qgmk1VXDQ/FpeLQw0/s0Q6QM4SGpuSEdqwT+iNslD7KGLuLyQgZ8FCQkRIPMXd3w
         /ybvPOZ78FFK06HcPhT3DATkid3SghyXLPEgkCNhSdzBDuOXh6Dq8YLivs6fWW62psz6
         wSq7Tj6FuxKjBwpj/6J4IEqdKN3g7OJ/vDQmyLaotP8nTaEPWSkP49cNAi6to75hazsL
         gx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699628529; x=1700233329;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=foOfDHUEPzkJ6egsBOPq9Vm/AXlPPamWeveF5Fe0THc=;
        b=suKNeckWfMEIxMtq826AnsiI1OPBspDPSSUDHeiSgvJjZXhOTaIPjJWyUlrIlMO5Em
         1B668Oo5Iey6Ns2D1rzrf4Rvnz75Vg7XkRcSq2uA7eRGBluJAi9Rib0lKjM8K1SBeDhz
         dWDXC69hz40fw/fumMbGKVimPNZE4bIVHWwIW1Q3YifVuFWDOfwS/x3EkgOMACcXYRkQ
         JREoSWxV0Kx5d+DFgPQFALEtfMZCcoWkUp7zWnekHCSsLf7ggzoJxdsWGy7NemE6oSSg
         VAjwhiO2rjiope/+dILzNaI+oy8tyNXIAAYUdiTQfbkMnlarMbAbMF3jTJRp1vD0wDv3
         wAVg==
X-Gm-Message-State: AOJu0YwVyuJlPHe4+priMDkr+sNoZ3vsmWZYyr8U3HEAXUdSdg/lvAtZ
	DMitQROGbx6nopvyTczAx9HIng==
X-Google-Smtp-Source: AGHT+IFYY3O/Y7LPLZRtENyhnRPngU4jeKNBTHQqctX/h6SwNzEtdmtrYkTEjtYUlPvoH0dW8xd+7A==
X-Received: by 2002:a05:6000:221:b0:32f:a5b1:47e8 with SMTP id l1-20020a056000022100b0032fa5b147e8mr5007159wrz.27.1699628528903;
        Fri, 10 Nov 2023 07:02:08 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id o15-20020a5d58cf000000b00327cd5e5ac1sm2100553wrf.1.2023.11.10.07.02.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 07:02:08 -0800 (PST)
Message-ID: <de9ef958-158d-4f56-8e76-9bfe62dfd6fe@linaro.org>
Date: Fri, 10 Nov 2023 16:02:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 4/4] arm64: dts: rockchip: add Powkiddy RK2023
Content-Language: en-US
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
References: <20231109215007.66826-1-macroalpha82@gmail.com>
 <20231109215007.66826-5-macroalpha82@gmail.com>
 <15be209c-753d-469b-a7c4-7403c7745a9f@linaro.org>
 <SN6PR06MB5342CA386D24487297783A17A5AEA@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SN6PR06MB5342CA386D24487297783A17A5AEA@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/11/2023 15:30, Chris Morgan wrote:
> On Fri, Nov 10, 2023 at 02:14:23PM +0100, Krzysztof Kozlowski wrote:

>>> +
>>> +/delete-node/ &adc_keys;
>>> +
>>> +&chosen {
>>> +	/delete-property/ stdout-path;
>>> +};
>>
>> If you have to delete so many nodes and properties, this means your
>> common DTSI is not that common.
>>
>> Common DTSI means there is shared hardware. If you take shared hardware
>> and put it into another board, pieces of the shared hardware do not
>> disappear.
>>
>>
>> Best regards,
>> Krzysztof
>>
> 
> I can redo this with a different top-level dtsi so I won't have to
> delete so much if that helps. I'll redo both the RGB30 and RK2023
> so that they use a common dtsi and no longer rely on the Anberic
> one. I'll do that and submit a V3.

I am not sure whether you need another top-level DTSI, but maybe rather
move things from common DTSI to each boards. Or you are using wrong
common DTSI. You are supposed to reference common DTSI if the hardware
parts are common. Don't use some DTSI just because DTS looks similar.

I did not investigate your hardware to give recommendation how DTS
should look like. But judging from node removals, something is not done
obvious way.

Best regards,
Krzysztof


