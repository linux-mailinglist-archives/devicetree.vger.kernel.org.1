Return-Path: <devicetree+bounces-5759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5F17B7CD5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:08:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D3FE41C20752
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 10:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08ADA1118E;
	Wed,  4 Oct 2023 10:07:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990431097E
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 10:07:57 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A56983
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 03:07:55 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4066241289bso18517135e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 03:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696414074; x=1697018874; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=MBKM8WudF4CqsEttpndJwRTdLPCz/dkPP0MH3GBVDlA=;
        b=kGnIldHkqjYF49qEzlOaehapPYwPRe1ID6FuSYDEUFaNzx3Y+ctrXpc4exGa41Frio
         N9EDm5ZXwyJbptHrgx7RTicg3plZpXCpbpcDI2/LS8UfQvPBCgOAwA6DKUTjxllDPffB
         wDWkVW5CjsojHDuTkzzaWAoL21P/Qs0N+NV9wxvZBw8o7vBOlxmKa0cWRJdiUpuuN04K
         aTK3Fpd6nu1RamQENtCxTwGvNVS+QnLvMX83l3qpu00VrSesuZ1Hg7grkSeRGPExouvL
         iHp2PgduiPHM5hq92dHlcofCnsy2HjSfNI7f1AnVpmc6TJSOnzCaZbKhT0SoIf/ho+Jh
         GVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696414074; x=1697018874;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MBKM8WudF4CqsEttpndJwRTdLPCz/dkPP0MH3GBVDlA=;
        b=oOIlpKJyRmOX+ZYQ9d9g32yOGSfHZs091WPxmqPMVtiRE2C8tC0DrjBUZAWHGT1Irp
         RGDF+Ui6y+jKEBEu6WY4Rf6xGXFAzfmeAuh+53tgLNHkGVxzWrsQgwl4q1DgsMG+0dID
         eavIyCUx8KaZfu5I2fteJ/cUGN6mGwbgTAl0igGD0bHsgqc1LF//f5zuCNXKNsqiu1v0
         Sq99IJiGmOddFTtFcnBlu75+xKP0eVtKiIb5fdZyUH9dglR6Cx5225kr7hxluZmRAwsm
         3VSe1KHloMbiPuNvKcc9guShZoiQyNuTmDYJP/h42Dr56SDqpeNyLRjjVec6jipXRJ2p
         VHKA==
X-Gm-Message-State: AOJu0YwUnOu1zYxiw9db8Sl68b9NBru7FlBMVxECNL7wcdIbAvBuaJ1s
	QeWsLjrzf5n7OvAA20gLJyGqmA==
X-Google-Smtp-Source: AGHT+IHQs2OVv7qxHlgfeXUsFovafyJV0iId+qZZAuGf2Y7OewcW4WvIpw4kR8j5aS/my81AXiNOdA==
X-Received: by 2002:a7b:c8c8:0:b0:401:906b:7e9d with SMTP id f8-20020a7bc8c8000000b00401906b7e9dmr1729419wml.18.1696414073831;
        Wed, 04 Oct 2023 03:07:53 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:d9fc:647c:aca8:fc21])
        by smtp.gmail.com with ESMTPSA id k1-20020a05600c0b4100b00405442edc69sm1109745wmr.14.2023.10.04.03.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 03:07:53 -0700 (PDT)
References: <20231002141020.2403652-1-jbrunet@baylibre.com>
 <20231002141020.2403652-3-jbrunet@baylibre.com>
 <b81a296d-0640-4b2e-aab6-c9de37d10206@linaro.org>
 <1j5y3ozvmk.fsf@starbuckisacylon.baylibre.com>
 <CACdvmAgzBxja-oJkS9c88=P0Wmc1ptkJExz6YjaJUyyv6yxh0Q@mail.gmail.com>
User-agent: mu4e 1.8.13; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Da Xue <da@lessconfused.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Da Xue <da.xue@libretech.co>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add libretech cottonwood support
Date: Wed, 04 Oct 2023 12:03:40 +0200
In-reply-to: <CACdvmAgzBxja-oJkS9c88=P0Wmc1ptkJExz6YjaJUyyv6yxh0Q@mail.gmail.com>
Message-ID: <1jh6n6ya2v.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Tue 03 Oct 2023 at 05:15, Da Xue <da@lessconfused.com> wrote:

>> >> +
>> >> +    leds-gpio {
>> >> +            compatible = "gpio-leds";
>> >> +
>> >> +            led-orange {
>> >> +                    color = <LED_COLOR_ID_AMBER>;
>
> Should this be LED_COLOR_ID_ORANGE?

It should (and initally was)
It was coming funny '(null)-standby' in sysfs and I did really checked
why

I can change it back, no problem

>
>> >> +                    function = LED_FUNCTION_STANDBY;
>> >> +                    gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
>> >> +            };
>> >> +    };
>> >> +

