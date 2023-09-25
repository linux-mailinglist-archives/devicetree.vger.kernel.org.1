Return-Path: <devicetree+bounces-3213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4D57ADAA3
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:53:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 032212814B1
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:53:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478121C697;
	Mon, 25 Sep 2023 14:53:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0A71C290
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 14:53:07 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A3B5197
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:53:00 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c131ddfc95so99813401fa.0
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695653578; x=1696258378; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=12lvvZVko7HwcFd7BVr7FRaCYZcG3/6yf/N02oFBsK8=;
        b=znnFwVGn+zck2eznawy53HuyrlhwhEcgK90aK6K8nOemWEjHO5lc1uOQYuVTiZaTwf
         shGOESxGUXmzoqCzqUkLzDn5KjK/kGSnjqkLWxL/rrgzkK7axQq9kJT62xROgrazZV8L
         Er9u6sq3F1fGoca3K4gY33FCwvRvS2VO3gsjnyOX90CiRsCfrQkRbHgXeXP6tzQFH7Ic
         x48he8NVvebbENIMVc2Bjkgu3WOkf/3YSW5jR4CaJkI4uxu0tsktnlNbIuqq8ZSO/8Ac
         22Xwd0Mlnot3pcqemqLyIbSQfGHee6RYyUB1DJbYhIDvseBqgQtMD+SX4pPm65govz9u
         /06g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695653578; x=1696258378;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=12lvvZVko7HwcFd7BVr7FRaCYZcG3/6yf/N02oFBsK8=;
        b=GEwHfwSEVKLoq1ry4TPJOT577dBMhEJ6ZM+Gxxbym5ppYxbq0kncuH4Bx11Og1tFoP
         GnpIb//XP0HQDcvmQqkm3kC/J/26zsJBFe0PEIfBNW0Wmb1ezBviDfT3vARvxlrZZHUa
         Xxj9r1ky0w43pA6uiqEh8mPJpKRT4wZpOMf43lHF0lblQnekOSkoXgUGkXNp39CGPNwO
         30UT1q5cR4hBdi1Kxdl80uZ+GLQaupb0B/8HDQy1oVQ7zAA5vCL04MIrRMjyhHZybrFF
         u5Dn51tidJ3gIgtUxaxaniBV1572rqiARtxuuAnaT2FaMxdWdSsA2Failbi4OAwCfdPJ
         c8BA==
X-Gm-Message-State: AOJu0YwaeJbBBg/mPKiNuwbF77zllUjhgJZXsIXeRoZHhaHFMka9R85F
	1ZjdnMVH+QCceh0BMqXJO+xwDQ==
X-Google-Smtp-Source: AGHT+IFDQpUk2VXmAw55MR/ZBzMc5xEwHe1FQv75sipuCMabU5D0JcaGYP7gRdWeBjtjiRNoVPTmdA==
X-Received: by 2002:a2e:984e:0:b0:2bc:eceb:6a4b with SMTP id e14-20020a2e984e000000b002bceceb6a4bmr5683898ljj.28.1695653578381;
        Mon, 25 Sep 2023 07:52:58 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id md1-20020a170906ae8100b009a1be9c29d7sm6455357ejb.179.2023.09.25.07.52.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 07:52:57 -0700 (PDT)
Message-ID: <a16e1b9e-06b7-0dce-124e-f13c672d779d@baylibre.com>
Date: Mon, 25 Sep 2023 16:52:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 2/5] thermal/drivers/mediatek/lvts_thermal: Add suspend
 and resume
Content-Language: en-US
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
 rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
 matthias.bgg@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
 ye.xingchen@zte.com.cn, p.zabel@pengutronix.de
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, wenst@chromium.org, james.lo@mediatek.com,
 rex-bc.chen@mediatek.com, nfraprado@collabora.com, abailon@baylibre.com,
 khilman@baylibre.com
References: <20230530195132.2286163-1-bero@baylibre.com>
 <20230530195132.2286163-3-bero@baylibre.com>
 <371790cd-5a7c-8fa6-cc38-3a3680525092@collabora.com>
 <b544e079-c9de-23d3-80f7-cff89293eeb5@linaro.org>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <b544e079-c9de-23d3-80f7-cff89293eeb5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 23/08/2023 09:48, Daniel Lezcano wrote:
> On 31/05/2023 10:05, AngeloGioacchino Del Regno wrote:
> 
> [ ... ]
> 
>>>   static const struct lvts_ctrl_data mt8195_lvts_mcu_data_ctrl[] = {
>>>       {
>>>           .cal_offset = { 0x04, 0x07 },
>>> @@ -1268,6 +1300,8 @@ MODULE_DEVICE_TABLE(of, lvts_of_match);
>>>   static struct platform_driver lvts_driver = {
>>>       .probe = lvts_probe,
>>>       .remove = lvts_remove,
>>> +    .suspend = lvts_suspend,
>>
>> Should we do that in noirq handlers?
>> We're risking to miss a thermal interrupt.
> 
> I'm not sure missing a thermal interrupt is a problem in this context 
> but we may go in the irq routine with an undefined state sensor setup 
> (eg. the internal clock stopped in the suspend and then read the sensor 
> in the isr).
> 
> IMO, using suspend_noirq and resume_noirq may be required here.
> 
> Alexandre are you taking over the next iteration?
> 
> 

Hi Daniel,

Sorry I missed your message...
I don't think taking over the next iteration, Bernhard should continue. 
Let me check internally to be sure. As I understood, the next change 
should be heavy.

-- 
Regards,
Alexandre

