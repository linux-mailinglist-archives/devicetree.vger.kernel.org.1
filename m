Return-Path: <devicetree+bounces-1831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A4C7A8844
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:27:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1161528266D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 442283C680;
	Wed, 20 Sep 2023 15:27:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D8F3B7BD
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:27:29 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02EF68F
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:27:27 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-532eb2a1bf8so1347427a12.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695223645; x=1695828445; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wo1mQgPnJiiGHC8PMNJRnSxUKypGW2RCDzAOKloAhdw=;
        b=jeOKyuyQaTgpnVtDVGM9VO9jEFgYw5yZ2JrWiHc27MWVmawKVtqaTVjpu77sSojiJH
         +sY+WCH7yjeewUX2ceOAsTawz0QK1zxRa8NYhuKh4TxFfHcvf8kCpUnUiIu3wmyRw2Hm
         Eu1EEMs2wotqkwpO4lwUR+yxsGP51+TnOjey1ZEbNNLfRl/OaExkozzL9utX3DrtWPPj
         GNP5gQIphhdnbGTp60/OEaU2v24ow/K/uZ3M98Y6JJyNaqNzGJAP5DsUUwnsxj3/6Oum
         DXti3HqJWI+puCaF6OAOWwF1DcLpS8Le2Dsm+yZEZGjRwzmFRJ0Riw+rLV6DrNiSQmtR
         Y1YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695223645; x=1695828445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wo1mQgPnJiiGHC8PMNJRnSxUKypGW2RCDzAOKloAhdw=;
        b=mJ+kwLz2Zj04ThCaHscGPEMPCsfZMW2YE5GN4u2R59V8O0y+HYbSdIpMqGDxM+8Ki3
         jAMAASikGUi8TuovQvalVNFnbdQkCWACoggKkKVh5kNlXD/tWsUjP6iNgU3hNtIH9Iqa
         RSy7lL3XoalL7Jp5Gnew6NOihpChQj/3ZkaUAl0j67uNGNRWm7XJgBGZe6ntz3+AcFuV
         veVNHE5LUcWEWGvon9SuNoagvR1czVaE8nObUFEbUqS8AIl3lU9IQVqu5NPn6xXGdQJ3
         vlJedmFANS1krVyb/qyYsnJs+UZsydlxwA6RZWnEn1NgT88vDe12w/aJCVMzZkBPMyEX
         tT9A==
X-Gm-Message-State: AOJu0Yydqbb5uV0cHvlQYcfI6WIO3VOXtIOFb+WGEi7o88bEF34/uW2D
	D0HFGmcOGWxurwXGd60+Nh3GpocYJfm0h1ggqbtoiQ==
X-Google-Smtp-Source: AGHT+IFf0OsflsAqCBJwnxqg2qtNncrbiWYuEiolcloSW2fAScdAB9FF4DRU/tmMk/elGeW9Xz6lxg==
X-Received: by 2002:aa7:c0c6:0:b0:530:b75d:7a83 with SMTP id j6-20020aa7c0c6000000b00530b75d7a83mr2482123edp.21.1695223645347;
        Wed, 20 Sep 2023 08:27:25 -0700 (PDT)
Received: from [172.25.81.108] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id ew9-20020a056402538900b00532eba07773sm1422496edb.25.2023.09.20.08.27.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 08:27:24 -0700 (PDT)
Message-ID: <9f5f663f-3ab2-3599-8f94-96d1fde0b6b7@linaro.org>
Date: Wed, 20 Sep 2023 17:27:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/3] arm64: dts: freescale: tqma9352-mba93xxla: add
 'chassis-type' property
To: Shawn Guo <shawnguo@kernel.org>,
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20230811085401.3856778-1-alexander.stein@ew.tq-group.com>
 <20230811085401.3856778-3-alexander.stein@ew.tq-group.com>
 <20230920152023.GG11740@T480>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230920152023.GG11740@T480>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 17:20, Shawn Guo wrote:
> On Fri, Aug 11, 2023 at 10:54:00AM +0200, Alexander Stein wrote:
>> Add the chassis-type property to tqma9352-mba93xxla.
>>
>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>> ---
>>  arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
>> index f06139bdff97..f0d0bf84f6ba 100644
>> --- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
>> +++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
>> @@ -18,6 +18,7 @@ /{
>>  	model = "TQ-Systems i.MX93 TQMa93xxLA on MBa93xxLA SBC";
>>  	compatible = "tq,imx93-tqma9352-mba93xxla",
>>  		     "tq,imx93-tqma9352", "fsl,imx93";
>> +	chassis-type = "embedded";
> 
> Rob, Krzysztof,
> 
> Do we have binding doc somewhere for this property?

Yes, it is a standard property, described in dtschema.

Best regards,
Krzysztof


