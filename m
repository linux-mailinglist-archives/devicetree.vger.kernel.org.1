Return-Path: <devicetree+bounces-7603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0701D7C4D6D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCC2328207D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DB9F156FD;
	Wed, 11 Oct 2023 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nGskIy8t"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9628AEAE4
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 08:42:51 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AE45DC
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:42:49 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9a6190af24aso1139202066b.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697013768; x=1697618568; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SQVblcaazyZyyU0Xz3jnKqUUTme4HT3sP0gqd9Rl6LQ=;
        b=nGskIy8t17VQGUMqu+P1RGj8PpN/Cncib72u3CzB1TeWEWCjp11pkjflmMwI9VTxhx
         1PGwA8U2r4l6UCuXh26mNq3ZM6ZBHtnXlSEW+FjPg0C7XtjJsfziE1NGkdI5dK0AMBNu
         Y+z/BgKyuME17W3hraarej06cbrDSvQGQBA2WGvs2mSTqQAYzyVVeBi7SXYrrMfw4HP8
         +Q7Wh2tJxu21x06a84E4CdhcGIakC3bOncY+rJoHtbBStsgGQIcnQWLbZRhdGPgr5VqF
         2LsFuWupNM7ywYzskw3SlV4GNvBlA7p4iaOjUcegLHia+o8htd6K2NrCyzYzKpZl7zdD
         LCXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697013768; x=1697618568;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SQVblcaazyZyyU0Xz3jnKqUUTme4HT3sP0gqd9Rl6LQ=;
        b=sumrBPnWBr2zjzuDs64531t1hNQrCpiXc6ehVSb5LhyQc+ytoJ2OXVdk0ZEKXqCYjO
         KycTRfdn+4yGQIp7+ABkSgx4rWnoV8gRZ+6OLis1vpEjYknSuy7rn5K6tDApdOBDm/U7
         1FjCulv60GJUpALJtQxNeBNz5tI8u7vwE+bFk0reMbGsu2JG8ktJ+EWBBbRqa0UscFXJ
         MO4MJgWs2FyIp+sCsDLdksOgA+brn5XdxD3/q1K2qjc39wI80bWkPB0PxYIO5y4yXrm3
         7XHgfiZ1jP7DhGo+PHC7TDJfI6KV03VD0bB9bSLs6mxNGgzp7Y4p/f5/abUVz/mvo7Cf
         ZNMA==
X-Gm-Message-State: AOJu0YxO30omNtdXOUR8rnkFfImNA/18G869Ivo3vYJkVtBC1HSDquZi
	VRAnbsOuz1NOH+KbXHeapwtRnw==
X-Google-Smtp-Source: AGHT+IFFg9jr8zTjiY0TW0V0idrabs2Pvc3T+NkXfL0RZxNQvIFEQsPwLLN6izM2Z3nlnBAnK9uYbg==
X-Received: by 2002:a17:906:1097:b0:9b2:b786:5e9c with SMTP id u23-20020a170906109700b009b2b7865e9cmr17958158eju.28.1697013767910;
        Wed, 11 Oct 2023 01:42:47 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.123])
        by smtp.gmail.com with ESMTPSA id e12-20020a17090681cc00b009a9fbeb15f2sm9536588ejx.62.2023.10.11.01.42.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 01:42:47 -0700 (PDT)
Message-ID: <14bb7d8d-0f99-4a5e-aee6-b0db1d17c1e6@linaro.org>
Date: Wed, 11 Oct 2023 09:42:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/20] Add minimal Tensor/GS101 SoC support and
 Oriole/Pixel6 board
Content-Language: en-US
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org,
 tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org,
 wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com,
 will@kernel.org, arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com,
 andre.draszik@linaro.org, semen.protsenko@linaro.org, saravanak@google.com,
 willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-watchdog@vger.kernel.org, kernel-team@android.com,
 linux-serial@vger.kernel.org
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
 <92de302a-f6b5-465c-a5da-2a711861089e@linaro.org>
 <CADrjBPqOmGEzeVEKiysxQNo9+B0=zD3Z+G24fPDKrFsgUXYJjQ@mail.gmail.com>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CADrjBPqOmGEzeVEKiysxQNo9+B0=zD3Z+G24fPDKrFsgUXYJjQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 09:16, Peter Griffin wrote:
> Hi Tudor,
> 
> Thanks for your reply.
> 
> On Wed, 11 Oct 2023 at 07:10, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>
>> Hi, Peter,
>>
>> On 10/10/23 23:49, Peter Griffin wrote:
>>> Note 3: In `dt-bindings: pinctrl: samsung: add google,gs101-pinctrl
>>> compatible` I tried to narrow the interrupts check to
>>> google,gs101-pinctrl but I still see a warning: gs101-oriole.dtb:
>>> pinctrl@174d0000: interrupts: [[0, 0, 4],[..] is too long If anyone can
>>> educate me on what I've done wrong here it would be most appreciated!
>>
>> I guess the initial definition of the number of interrupts should
>> include the largest min/maxItems. I no longer see the warning with this
>> change:
> 
> Yes that is how it was in v1. The review feedback though was to narrow
> the scope to just google,gs101-pinctrl compatible using if: then: else: which
> is what I can't get to work properly.
>

Right. The diff that I sent is on top of your changes (patch 6/20).
I expect that when the interrupts property is defined it should include
the min/maxItems of all the available SoCs. Then use "if Soc" to narrow
the range.

