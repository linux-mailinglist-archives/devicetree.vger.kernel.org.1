Return-Path: <devicetree+bounces-19429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D13917FAE37
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 00:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 886AA281C39
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 23:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01D29495CD;
	Mon, 27 Nov 2023 23:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bFkvWR4h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D89CD19D
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 15:11:40 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-507975d34e8so6761329e87.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 15:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701126699; x=1701731499; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2O0dW0IvtYbmUd5WDQQ70C6UcMUSfLVExIq62xHR7FI=;
        b=bFkvWR4hsRnMGUTvcuzkyEIU/1AzlXMjcMzRsIthd/jV4hXd82acG9Oit3vm8RyMoM
         37BjF74+she/miYSzaf65j/Ld0FkQVjy+XKSXgGVoXQh7gkhtxBQ7MBZM5EEqrxI34dZ
         LsBVtD/qZlEsfhVpvxyWYaEAgf999fhIuCcLmwQ6MPVSYXKh1QmDWn6/R4YuDYES9xYd
         /DvxU8A1wSl0z4TC5B6gIR7sjJgTnJKblzCFRRVPa9xJz00mmROQ1M/9NRCzEXsxNXOV
         y9v+MJy9eolKftLVaj6Bb41bYt6qIbBjP7Ec1iKirSUS8umgvsHKNC8IVjSzo/mNb2M4
         n21Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701126699; x=1701731499;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2O0dW0IvtYbmUd5WDQQ70C6UcMUSfLVExIq62xHR7FI=;
        b=IhIwp8xTCRThSua3dxbBd1EmDuSsrWopX5d6Y2i897txVARETAMgByYTU0aVUf7DkF
         EWSZAC3xpvw/wbsbo3HMB9ky3bll5C7rgLtUD7baTmmaipaYPbgWbQvDU+0fOvsB/qxa
         0qKTS6j9k6EILljHjmdK/Q0pp4zKWp+GHP2vtUJuEfQGrFsMQZ0JWytVWj9hK0GVuVuw
         f9HOlLEm312NwwM6vMjw/bU9yntz5RJZTdLrdaVIENmrUiAt/yUwx8QXRVA86WzggZUo
         W9Bm8bz4tofdIgPMmEj3p1EQtxK8rV9j9Es9RQZiLSkcii+vUWBChyVHE54Dh+CeTw0E
         NN8Q==
X-Gm-Message-State: AOJu0YyXSyBLOY5C8P13YFLEONMGa4xqsP6467sKVWbhaLia3vP93p14
	bQIZHxv0ItQDn/Gf376TsQ==
X-Google-Smtp-Source: AGHT+IH0VtotD7KRttNBrPXNxLc34h6r/wFXkaJR2CsrXtT6475wgB21bBKPZFdDmP+gYvU/GxoTug==
X-Received: by 2002:a05:6512:3b0b:b0:509:1301:8470 with SMTP id f11-20020a0565123b0b00b0050913018470mr11987019lfv.45.1701126698825;
        Mon, 27 Nov 2023 15:11:38 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:9a73:f6ee:21ce:aa15? ([2a02:810b:f40:4300:9a73:f6ee:21ce:aa15])
        by smtp.gmail.com with ESMTPSA id b14-20020aa7dc0e000000b00548a258227asm5738443edu.30.2023.11.27.15.11.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 15:11:38 -0800 (PST)
Message-ID: <5e89eb12-3462-422e-aca3-7cc18743310c@gmail.com>
Date: Tue, 28 Nov 2023 00:11:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Lunn <tim@feathertop.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
 <7b8a830d-42d0-4220-b9fe-3f5fff43e74d@linaro.org> <50694679.MN2xkq1pzW@diego>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <50694679.MN2xkq1pzW@diego>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Heiko,
Am 27.11.23 um 10:45 schrieb Heiko Stübner:
> Am Montag, 27. November 2023, 10:27:41 CET schrieb Krzysztof Kozlowski:
>> On 27/11/2023 10:23, Tim Lunn wrote:
>>> Hi
>>>
>>> On 11/27/23 17:52, Krzysztof Kozlowski wrote:
>>>> On 27/11/2023 00:06, Heiko Stübner wrote:
>>>>> Hi Krzysztof,
>>>>>
>>>>> Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozlowski:
>>>>>> On 22/11/2023 13:22, Tim Lunn wrote:
>>>>>>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
>>>>>>>
>>>>>>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>>>>>>> ---
>>>>>>>
>>>>>>> (no changes since v1)
>>>>>>>
>>>>>>>    arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
>>>>>>>    arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
>>>>>>>    2 files changed, 25 insertions(+)
>>>>>>>
>>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>>>> index 4f85b7b3fc4c..167a48afa3a4 100644
>>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>>>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
>>>>>>>    				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
>>>>>>>    		};
>>>>>>>    	};
>>>>>>> +	i2c2 {
>>>>>>> +		/omit-if-no-ref/
>>>>>>> +		i2c2_xfer: i2c2-xfer {
>>>>>>> +			rockchip,pins =
>>>>>>> +				/* i2c2_scl */
>>>>>>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
>>>>>>> +				/* i2c2_sda */
>>>>>>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
>>>>>>> +		};
>>>>>>> +	};
>>>>>>>    	pwm2 {
>>>>>>>    		/omit-if-no-ref/
>>>>>>>    		pwm2m0_pins: pwm2m0-pins {
>>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>>>> index 6c5c928f06c7..cf1df75df418 100644
>>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>>>> @@ -21,6 +21,7 @@ / {
>>>>>>>    
>>>>>>>    	aliases {
>>>>>>>    		i2c0 = &i2c0;
>>>>>>> +		i2c2 = &i2c2;
>>>>>> No, this should be per-board to match board labeling/schematics.
>>>>> At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin namings
>>>>> and also all board schematics I've seen so far are very consistent for
>>>>> these ... i2c2 for example is labled i2c2 both in the pins in the socs
>>>>> and also in the board-schematics using them.
>>>>>
>>>>> So while I can agree that things like mmc-aliases might be board-specific,
>>>>> I do think aliases for the core busses should be able to live in the soc dtsi
>>>>> as for all Rockchip SoCs so far?
>>>> If you do not list here all aliases, it is already board-specific, isn't it?
>>>>
>>>> https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/
>>> I had only added aliases for nodes that are implemented. RV1126 has 6
>>> i2c busses but so far not all these exist in the soc.dtsi.
>>>
>>
>> OK, that would explain why you have only two. Anyway, it is just generic
>> guideline, so up to Heiko what to do with it.
> 
> People see "uart2-tx" on their pin-header description and then of course
> want to use ttyS2 ... same with reading i2c2-sda on the pin-header and then
> running i2cdetect on said i2c2 dev node.
> 
If that's "the" rule, why was rk3128.dtsi merged after similar 
complaints came up [0] without having aliases for the core buses 
defined? It's pretty strange to have to define them on board-level there 
as well.
I'm happy to submit a patch which changes that.

[0] https://lore.kernel.org/all/22076018.EfDdHjke4D@diego/

Regards,
Alex
> And even if i2c1 is not populated (would even be very rare), then people
> would still expect i2c2 to be named that way.
> 
> As this is the same for _every_ board, it doesn't really make sense to
> duplicate it every time. Which I guess is similar to what I wrote in reply
> to the mail you linked above :-) .
> 
> 
> It's different for mmc, where this naming scheme isn't normally used,
> so we (mostly?) migrated to them being in the board-specific alias section.
> 
> Thanks
> Heiko
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


