Return-Path: <devicetree+bounces-5758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABC57B7CBB
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:59:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C22B9281403
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3435611182;
	Wed,  4 Oct 2023 09:59:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB9910A38
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 09:58:58 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF22F9E
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 02:58:55 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50435a9f800so2248313e87.2
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 02:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696413534; x=1697018334; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=2zQurfJPbiuUjWnuhOpNrLMV2pgMXd/ebBa042cwmYc=;
        b=ssznBkeL/RtBv2O86Jzp7gM4CHOPBqfAjN34MlY19kgtSgGWZjBXllFFsgGQDBOCA2
         F3olrFY6DYdYUho5Q+ce6CRl9WqSToVLcN1Rc4jacv84tTE4PrRCl93ZXxOlaXSqlFfl
         AZUlRJJV/L8+uHAdfp/9BPGXjwlaEltpw6Z2lek500lrSEdWfOsaqf7D5vIWCsYreZ5z
         5HF0vZ87+g7wVXRbvGfd8YzzZ172+bJDVlZ6yBsEOonPDFbgwRNHHQ71NIKKfniJBfdt
         4tJBUf8PqObkc8KF/5pNByTUs1TBQrRIgREiisD5wCzFf4g2hsNqdQ7up+G3Jmqowmnb
         zWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696413534; x=1697018334;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2zQurfJPbiuUjWnuhOpNrLMV2pgMXd/ebBa042cwmYc=;
        b=MbYMgLvZzXP7J1v7EgHzsiify8pTLacjSCOGZAJOLPQOYY1SHEMczil8SeYyRRP7V+
         drIU/sFQ+M2nK9T7CinGGWPCZE1Yx+gqkcZ57FWtHdH+IbAo/XLD8uOfksgCvIyPw8y4
         koLFAQ/Dr/TxG0GX4kquy1adANTpHinkJVdHg/0zAsYOIV2P8hLZyN5xLZL81Y30rllT
         O1y9DmsjMkl33d5fzmmS8dz1IyRnC9+2SwAROBQZhiLxaaV+cCkO78U/tQLHFzlx5LRD
         HGyTOuwz3QU0dtUGl+2jDZ8vDT2BHMOjQW/qZgC9O9weUJT4KlowqfvOeBOU77HkBzNy
         mlew==
X-Gm-Message-State: AOJu0Yw3lp8Rpj+4BP1Iiv/yX3uiYW+xiGhFcIIjrFq7+bRIQ6+EWnxd
	r1Aqoj+7up9CD6FKK/ilhBSkjA==
X-Google-Smtp-Source: AGHT+IEVyhw3oWGM3Jb/CM0G2T6xFOUfrj2mUvQvjyxBjBNYvCMW2izu2JSFSPd2ut8kSsupybhWPg==
X-Received: by 2002:a05:6512:1052:b0:503:fee:5849 with SMTP id c18-20020a056512105200b005030fee5849mr1827173lfb.53.1696413533806;
        Wed, 04 Oct 2023 02:58:53 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:d9fc:647c:aca8:fc21])
        by smtp.gmail.com with ESMTPSA id x2-20020a1c7c02000000b003fe23b10fdfsm1086938wmc.36.2023.10.04.02.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 02:58:53 -0700 (PDT)
References: <20231002141020.2403652-1-jbrunet@baylibre.com>
 <20231002141020.2403652-3-jbrunet@baylibre.com>
 <2248b34e-d755-4142-986c-0ead80796e13@linaro.org>
User-agent: mu4e 1.8.13; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Da Xue <da.xue@libretech.co>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add libretech cottonwood support
Date: Wed, 04 Oct 2023 11:49:00 +0200
In-reply-to: <2248b34e-d755-4142-986c-0ead80796e13@linaro.org>
Message-ID: <1jleciyahv.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Wed 04 Oct 2023 at 11:20, Neil Armstrong <neil.armstrong@linaro.org> wrote:

> On 02/10/2023 16:10, Jerome Brunet wrote:
>> Add support for the Libretech cottonwood board family.
>> These 2 boards are based on the same PCB, with an RPi B form factor.
>> The "Alta" board uses an a311d while the "Solitude" variant uses an
>> s905d3.
>> Co-developed-by: Da Xue <da.xue@libretech.co>
>> Signed-off-by: Da Xue <da.xue@libretech.co>
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>   arch/arm64/boot/dts/amlogic/Makefile          |   2 +
>>   .../amlogic/meson-g12b-a311d-libretech-cc.dts | 133 ++++
>>   .../amlogic/meson-libretech-cottonwood.dtsi   | 610 ++++++++++++++++++
>>   .../amlogic/meson-sm1-s905d3-libretech-cc.dts |  89 +++
>>   4 files changed, 834 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
>>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
>>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts
>> 
>
> <snip>
>
>> +
>> +	leds-pwm {
>> +		compatible = "pwm-leds";
>> +
>> +		led-green {
>> +			color = <LED_COLOR_ID_GREEN>;
>> +			function = LED_FUNCTION_STATUS;
>> +			linux,default-trigger = "default-on";
>> +			panic-indicator;
>> +			max-brightness = <255>;
>> +			pwms = <&pwm_cd 1 1250 0>;
>> +			active-low;
>> +		};
>> +
>> +		led-blue {
>> +			color = <LED_COLOR_ID_BLUE>;
>> +			function = LED_FUNCTION_ACTIVITY;
>> +			linux,default-trigger = "activity";
>
> "activity" isn't documented, perhaps heartbeat instead ?
>

The trigger does exist though. The other way is to extend the DT doc.
I don't really care one way or the other

I'll defer to Da on this one

>> +			max-brightness = <255>;
>> +			pwms = <&pwm_ab 1 1250 0>;
>> +			active-low;
>> +		};
>
> leds subnodes should be named as led(-[0-9a-f]+)
>
> see Documentation/devicetree/bindings/leds/leds-pwm.yaml

That I do care. The schematics refer to the leds by name. There is no
number assigned, much less hex. Making one up makes no sense.

User should be able to quickly (and easily) link  what they see in the
schematics with DT.

So I'd prefer to submit a change for the regex rather than changing this

>
>> +	};
>> +
>> +	leds-gpio {
>> +		compatible = "gpio-leds";
>> +
>> +		led-orange {
>> +			color = <LED_COLOR_ID_AMBER>;
>> +			function = LED_FUNCTION_STANDBY;
>> +			gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
>> +		};
>
> Ditto, but you can simply use "led" since it's the only one.
>
> See Documentation/devicetree/bindings/leds/leds-gpio.yaml
>
> Neil
>
>
> <snip>


