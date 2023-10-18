Return-Path: <devicetree+bounces-9720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AF77CE1FD
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:00:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2FA85B20F4D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 16:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D9293C061;
	Wed, 18 Oct 2023 16:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P7F7wDTT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83AF131A86
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 16:00:34 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AB6210C8
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 09:00:19 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-53e07db272cso11002856a12.3
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 09:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697644818; x=1698249618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=POKi49S1OWvMArZJIA79m6UJxhSMMZpTCToq5XjVsjY=;
        b=P7F7wDTTzpqQJTifTlI6e8V7EL7/PCu3S7I8Fe0I3LuT+iH406+DcvoiF+AbtV0U7K
         7kQ4s2+5rzZpzUXlvwLcoK7g/vWUkt2pew9j20cplOT2wem9NIwoYyWtkanj4XEWspJp
         ZWVOS29PRulUtzhV4yLWDzoL6jQCVjsTn0SrWs/WWAtBNnyc5cV6xZEa9mRe0hEPb2/r
         tmE1nsdsitUj6DfIQPtjK3ZqUbUIzePA0J9kw4f11fRh7RabbhdRDJM12262Qi3NdwQq
         rSf5ls1wp15mMAJVWsjODd8pa0a0beP3FFfKqLleeidHjPFk7dK7wjcLThhZjjH0h59s
         7aAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697644818; x=1698249618;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=POKi49S1OWvMArZJIA79m6UJxhSMMZpTCToq5XjVsjY=;
        b=QyKL5kHL33XkNMKws32dA/8i8wDyOBJaITrEq2+5GiTx1U8jRBA3jDavmwdcLeZvtp
         Hgdwudi0pog0QijiJDhB6D0ffX45v27Ulvhz8/PMvhLMU4O4SnsXyhxBNgDK0r1FeUPL
         K9Tk8opRXCQ3yOvuLDkyf0NUJiMUL6PrHZMHvvSZ8qnJjLDUA444swPrnUIrIHOYkLcl
         uD4slw/QAByZmleRyOJSPnoTHscVWvM2+7zeHBCrCQgfinbq1/065O0w3+soh29Z4vzW
         TK7YThp1sA3RRE1UoJC0YNHxGYyqQ51A1RuN+9YmWWQhMBBC2YM2mu3Ce0GHavxrNaT/
         ffsQ==
X-Gm-Message-State: AOJu0Yw4n3X6/rI8EO9IDJdA8lsa70Ax/0GxoPYpO/nFH1mXwf40T9xv
	OnxG+pD9QXYZsSxFd5ynFs3kDg==
X-Google-Smtp-Source: AGHT+IHkAKNK/SpkNnn4h3XvX0forCcLEJ/Z7lNySAu5wiImRqkT91Z73eAp/bAVImw9dKE0vPBYrQ==
X-Received: by 2002:a05:6402:2691:b0:53d:f4f5:7ab0 with SMTP id w17-20020a056402269100b0053df4f57ab0mr3795783edd.40.1697644817717;
        Wed, 18 Oct 2023 09:00:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.154])
        by smtp.gmail.com with ESMTPSA id t21-20020a50d715000000b0053d9f427a6bsm3071532edi.71.2023.10.18.09.00.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 09:00:17 -0700 (PDT)
Message-ID: <4b210859-c6ef-4722-adea-9af89420211b@linaro.org>
Date: Wed, 18 Oct 2023 18:00:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] w1: Add 1-wire master driver for AMD programmable
 logic IP Core
Content-Language: en-US
To: Kris Chaplin <kris.chaplin@amd.com>, thomas.delev@amd.com,
 michal.simek@amd.com, robh+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, git@amd.com
References: <20231013093109.37165-1-kris.chaplin@amd.com>
 <20231013093109.37165-3-kris.chaplin@amd.com>
 <3aed801f-cb11-4306-b588-b1de1405f93f@linaro.org>
 <7946d74b-6d07-41f1-9dba-6c2d98683e26@amd.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <7946d74b-6d07-41f1-9dba-6c2d98683e26@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/10/2023 17:54, Kris Chaplin wrote:
> Thank you Krzysztof,
> 
> I shall post v2 tomorrow:
> 
> On 13/10/2023 16:20, Krzysztof Kozlowski wrote:
>> On 13/10/2023 11:30, Kris Chaplin wrote:
>>> Add a master driver to support the AMD 1-Wire programmable logic IP block.
>>> This block guarantees protocol timing for driving off-board devices such
>>> as thermal sensors, proms, etc.
>>>
>>> Add file to MAINTAINERS
>>>
>>> Co-developed-by: Thomas Delev <thomas.delev@amd.com>
>>> Signed-off-by: Thomas Delev <thomas.delev@amd.com>
>>> Signed-off-by: Kris Chaplin <kris.chaplin@amd.com>
>>> ---
>>>   MAINTAINERS                 |   1 +
>>>   drivers/w1/masters/Kconfig  |  11 +
>>>   drivers/w1/masters/Makefile |   1 +
>>>   drivers/w1/masters/amd_w1.c | 422 ++++++++++++++++++++++++++++++++++++
>>>   4 files changed, 435 insertions(+)
>>>   create mode 100644 drivers/w1/masters/amd_w1.c
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index 6ec3922b256e..7f26dab5261b 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -1072,6 +1072,7 @@ R:      Thomas Delev <thomas.delev@amd.com>
>>>   R:   Michal Simek <michal.simek@amd.com>
>>>   S:   Maintained
>>>   F:   Documentation/devicetree/bindings/w1/amd,axi-1wire-master.yaml
>>> +F:   drivers/w1/masters/amd_w1.c
>>>
>>>   AMD XGBE DRIVER
>>>   M:   "Shyam Sundar S K" <Shyam-sundar.S-k@amd.com>
>>> diff --git a/drivers/w1/masters/Kconfig b/drivers/w1/masters/Kconfig
>>> index ad316573288a..9232fd1f4e5b 100644
>>> --- a/drivers/w1/masters/Kconfig
>>> +++ b/drivers/w1/masters/Kconfig
>>> @@ -67,5 +67,16 @@ config W1_MASTER_SGI
>>>          This support is also available as a module.  If so, the module
>>>          will be called sgi_w1.
>>>
>>> +config W1_MASTER_AMD
>> This looks oddly places. Isn't entry above 'S', so A should go before?
>> The rule is for entire Linux kernel: do not stuff things to the end of
>> the lists.
> There doesnt appear to be a specific alphabetical ordering taking place 
> in this Kconfig:
> 
> config W1_MASTER_MATROX
> config W1_MASTER_DS2490
> config W1_MASTER_DS2482
> config W1_MASTER_MXC
> config W1_MASTER_GPIO
> config HDQ_MASTER_OMAP
> config W1_MASTER_SGI
> config W1_MASTER_AMD

I understand, happens. Still stuff should not be added to the end of lists.

Best regards,
Krzysztof


