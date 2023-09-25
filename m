Return-Path: <devicetree+bounces-2958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE127AD080
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:48:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3BD1E28167B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 06:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DB32101E2;
	Mon, 25 Sep 2023 06:48:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73CF101E1
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:48:41 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD3AFF
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 23:48:38 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9ad8d47ef2fso691761466b.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 23:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695624516; x=1696229316; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RRHfYUaUwaQG3A6Z/h3MLWTuG9ozq2P6YaSueXJJPv4=;
        b=AmhUWRKrckx76YDrHRt6u4BaPIMM7ffS/u13Es3eNe2NxhacBATlyI11bTLWYSZHnP
         QEHSU1Kod6DVfcb6JogQ0qYEvEJ0LzgGjWJxnVbTnsjgX0SZllcAO+F99py+Jsn1WjXq
         zpwkIv+t+KA3iBs228xhr/xv2M0dRcwBvPz1vEqhiuEk4yqP9NWxrGApmIsXnqnGmMLh
         wuLKqY/F+1H3jgdyUCrnV3ZGjHmoSs8hippx3TRvCT6Vpq0+a95JXSXIV3FzM/jJIXu/
         /iUcGNPfo2FgkpnX4YEcz76hMVXX6jjRM4tcR/WgO230NlBZJqhvUawRIYTfbdO9/v17
         UZxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695624516; x=1696229316;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RRHfYUaUwaQG3A6Z/h3MLWTuG9ozq2P6YaSueXJJPv4=;
        b=EUto6AtOEXLUlWiZjwGRoHQWXPbd03vJoiNhQBgJmRjMj6W1FM6GyMo6CmQx6uAA87
         ee45Gtffx2WCBUCjSbNocDCaIeKZk/5l1jbUSUqIfLrAb7WNXPpeNgo0RaUtH9hKOmyr
         29KCD88/Wumi9FjTd/0rvOOt9wYbUIRcMHskMBylXpkxurzoHRFqTtLTUjufA6JSn+fn
         Yk95/2ZrYPTsiE4W9DXjRh4MjXrQFUMzlqvq5nsQlNvVQ2cK6eEgYBbtMHHhBsXpLzGs
         hAjqBoEsBjWfdO9PgblRiE2cbCOlQWsaw4YFzIVdCyGOSCqHhYAR1NoCcMETPccvRDHh
         Tzxg==
X-Gm-Message-State: AOJu0YwGNFMweAYWVtmd9WvWfcxCAj2MG32lhZlWMm/9CSlkxGP3zge5
	AxLACXiFR3+pvWB2pGmZaU41Fg==
X-Google-Smtp-Source: AGHT+IE1WNgoE52ph8NS0vZh5TlGpVj5yJMB68s7+kU6Cg/ZLiDtQUcv7RG8/eeMjGlHcww8FmAnIQ==
X-Received: by 2002:a17:907:1dd7:b0:9a1:f5b1:c864 with SMTP id og23-20020a1709071dd700b009a1f5b1c864mr4684105ejc.10.1695624516550;
        Sun, 24 Sep 2023 23:48:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id l5-20020a170906a40500b009ae4ead6c01sm5826044ejz.163.2023.09.24.23.48.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 23:48:36 -0700 (PDT)
Message-ID: <e1723311-1612-4bb4-98fc-d94215d8f898@linaro.org>
Date: Mon, 25 Sep 2023 08:48:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] MAINTAINERS: add tqml device trees to TQ-Systems
 entry
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>, Shawn Guo <shawnguo@kernel.org>,
 Gregor Herburger <gregor.herburger@ew.tq-group.com>
Cc: Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@ew.tq-group.com
References: <20230829-for-ml-tqmls10xxa-v2-test-v2-0-b1da63785b25@ew.tq-group.com>
 <20230829-for-ml-tqmls10xxa-v2-test-v2-6-b1da63785b25@ew.tq-group.com>
 <20230925010449.GB7231@dragon>
 <c1ab31ae-97ec-4630-818d-06cd37ea3d86@app.fastmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <c1ab31ae-97ec-4630-818d-06cd37ea3d86@app.fastmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 25/09/2023 07:30, Arnd Bergmann wrote:
> On Mon, Sep 25, 2023, at 03:04, Shawn Guo wrote:
>> + Arnd
>>
>> On Tue, Aug 29, 2023 at 11:27:02AM +0200, Gregor Herburger wrote:
>>> Update file entries for TQ-Systems Layerscape modules.
>>>
>>> Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
>>> ---
>>
>> I do not have a branch for this file, so you may want to send the
>> change to Arnd directly.
> 
> The MAINTAINERS files can usually go into the same branch
> as arch/arm/mach-*/ and arch/arm64/Kconfig changes. If you have
> nothing for that, merging this one along with the corresponding
> arch/arm64/boot/dts changes is also fine.
> 
> We used to have a separate branch just for the maintainer
> file updates a long time ago, but they rarely cause conflicts.
> 
> Whichever way you end up doing it, please ensure that the person
> sending the pull request or patch addresses it to:soc@kernel.org
> cc:linux-arm-kernel@lists.infradead.org to make it end up in
> patchwork, otherwise I'm more likely to miss it or expect that
> I'll get it as part of the normal pull requests.

Plus, there is no really reason to split such trivial maintainer change
into separate commit.

Best regards,
Krzysztof


