Return-Path: <devicetree+bounces-21527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5A9803F3C
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 21:25:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E33C1C2088B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 20:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2183633CFE;
	Mon,  4 Dec 2023 20:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BCLHeL/o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB978CB;
	Mon,  4 Dec 2023 12:25:31 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50be03cc8a3so3969889e87.1;
        Mon, 04 Dec 2023 12:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701721530; x=1702326330; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O4zwTB/miMPtSWCRzH5LYRAkGFmdPgzBkW3R45x59/A=;
        b=BCLHeL/oROUHSd9M3gfWOOFd6Tt/19UvDPvMIVmG3eOBtzzLYLmueFDaFx7YkFXUOO
         mBmJJvSoqOcH1WPn1JKnSP8aMHVIAyxG6uHLZW4TB8b/uUWGUIGHmnocd4SGMiDfpAOj
         Xmh0pSlkqfLKKMZ7nRLJYvxGXixFO5ASKL8/L1PEP1ViexgsHblasNVv/jIVKnrdtO29
         wkP3YOhbo/GXnaJkaCt36fEx8AhRgalOlviWTE3EmaWhO9Bm9WMvDT9lk/XqqGbQBF1L
         c2MmB/pgmD1MOtm2i5yvHE/iwuFSH+nuW5vUCfynI0Jsf425QeCHdusjsDcVxWfxdTIz
         NC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701721530; x=1702326330;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O4zwTB/miMPtSWCRzH5LYRAkGFmdPgzBkW3R45x59/A=;
        b=N8wM2j60MfiF/ocPFu8F7jKZpz/F3dAKNuiA7bYqr1BznkTA+IPpaFsGxTdq5jAy19
         mGtVScA94SBsMpQzqAKyYXfc0sCIlpQzDk3IBCXzeeH0l8AtP6f8ksanC1lx+ClL7vE0
         pDjr2CH0kEfbeU2UM0kkcWi7Zi7c5orqYlmr2FxRYva8bmFb7XvRkk7IXxiQ1lg0AZTh
         mHK65tezXglPQk1UBxc4nar5tXqI3KKPv5sLglVGtevt3nNjDtCKW7xT4ZeyNPiJTzod
         uCC28iBCCk9uolUSb80NNq4dypTXOGu61nDKsg/MVy076JPqpTIFrSY2kGt75kklovWM
         3mEA==
X-Gm-Message-State: AOJu0Yxvs8QyDvVSOxe8NF6Y/gdz/WcJdG7Pp5AeYc9v6YyrXWbS4SOH
	W3kOfQ5sBU/9/GlzPwmowfo=
X-Google-Smtp-Source: AGHT+IHghfI/wepGC1I4yJLErrynLmDWoNAeInmFJJD7a8PBE9bsHDIMPexR8UEVinabv/Xruuf+Ew==
X-Received: by 2002:a05:6512:2343:b0:50b:fcd6:cb10 with SMTP id p3-20020a056512234300b0050bfcd6cb10mr904083lfu.130.1701721529711;
        Mon, 04 Dec 2023 12:25:29 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id f4-20020a056402150400b0054c9df4317dsm180568edw.7.2023.12.04.12.25.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 12:25:29 -0800 (PST)
Message-ID: <bdda61be-8e02-36f5-6261-37d4b75278ba@gmail.com>
Date: Mon, 4 Dec 2023 21:25:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 3/3] ARM: dts: rockchip: rk3036-kylin: add
 hdmi-connector node
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, heiko@sntech.de, hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
 <f5bc182b-f9b6-26a8-8649-19ce33e3c0e1@gmail.com>
 <447b1bde-584f-4eb4-8bfb-9abd3aa8b6fa@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <447b1bde-584f-4eb4-8bfb-9abd3aa8b6fa@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Alex, Heiko,

On 12/4/23 20:12, Alex Bee wrote:
> Hi Johan,
> Am 04.12.23 um 18:40 schrieb Johan Jonker:
>> Add hdmi-connector node to comply with the inno_hdmi binding.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>   arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
>> index 67e1e04139e7..a213333be011 100644
>> --- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
>> +++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
>> @@ -13,6 +13,17 @@ memory@60000000 {
>>           reg = <0x60000000 0x20000000>;
>>       };
>>
>> +    hdmi_con: hdmi-con {
>> +        compatible = "hdmi-connector";
>> +        type = "c";


> According to [0], kylin has an A-Type HDMI port - so this should be
>  +        type = "a";
> > [0] http://rockchip.wikidot.com/kylin

Not sure from the text or do I miss something...

I did look at that board picture before submitting.
Can be wrong, but to me it looks a smaller HDMI connector.

Does anyone have a Kylin picture from a different angle?
Or reference design?

Else apply and fix later? (Heiko ?)
Let me know.

Johan

> 
> Regards,
> Alex
>> +
>> +        port {
>> +            hdmi_con_in: endpoint {
>> +                remote-endpoint = <&hdmi_out_con>;
>> +            };
>> +        };
>> +    };
>> +
>>       leds: gpio-leds {
>>           compatible = "gpio-leds";
>>
>> @@ -110,6 +121,12 @@ &hdmi {
>>       status = "okay";
>>   };
>>
>> +&hdmi_out {
>> +    hdmi_out_con: endpoint {
>> +        remote-endpoint = <&hdmi_con_in>;
>> +    };
>> +};
>> +
>>   &i2c1 {
>>       clock-frequency = <400000>;
>>
>> -- 
>> 2.39.2
>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

