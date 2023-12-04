Return-Path: <devicetree+bounces-21237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F57802E44
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:14:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12F2E1C20974
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90A4212E70;
	Mon,  4 Dec 2023 09:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ng6vYGRC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C83B0E6;
	Mon,  4 Dec 2023 01:14:48 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-6ce5a0c37cfso238169b3a.3;
        Mon, 04 Dec 2023 01:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701681288; x=1702286088; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=td7arQQdUq802c/iq8WzPBS2L5rlsrypnKsRbx7YZ7Q=;
        b=ng6vYGRCQP/ncD+Qvk22Gm7VEtdsYHiJGUlXc5AryQKJhrHw+02TbWkWR7LNKzrx3A
         NbYb6zuImU5SO+QrYNIHtsTIq6yuvGQs5BDzZEOhyRXbAv2vy+JN9SlqJ5D/YpG0IAPV
         Uk4mk+29kR4HA2mihb0fD460OOFipO87UcXLNQeBKOv+Ibj8gxtAmeopX2vWfyjWf5VJ
         6mEbxn2k4A8lykg58oMnBF7bxtBuqkEYg+dt2DAGdSOP0PhOV00vIIoe4zU26NtssS9R
         kEyB6/QtprfIhKKAf4mKV/Z5QJBjfjlDnUAqw9victdBSh0cpEiFXPefIqDNiXdw9j9N
         7kZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701681288; x=1702286088;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=td7arQQdUq802c/iq8WzPBS2L5rlsrypnKsRbx7YZ7Q=;
        b=Xj5RIA7wPzeiw5/eE7RRAccAfAyRyVFr4xzE1fpn+Zcf1K0bLuuP6tZu1yX32FYJFr
         eqr2XapZ/4GnKfT1TQpKTAE9TD1AVT7fNFefHNMjmQ9GT52WIdeZAMBXOY3je+ZjCblU
         usD9NRVmXytpnn66DkIQEy5/OUUp7Cb8AHtEdWqrgckUIr4te5A2DfgjYZTvQG7jVeuI
         fUIktclcf0Hz/nsoOLodZZb3ggqFgZpPfhrE8wnuy23uCR0JxoS3yV5t2PF+laFqskV7
         PUhGMLUsI6YCFM8fjq/BnqxPgiKG5sRCs4EK9XM30EFsGWiPTkXXujcw9SLbwbHuxMSP
         n3Rg==
X-Gm-Message-State: AOJu0YzMG2IqE0HaQqlljRgmUjjlv3iEJsNDltHxFuPNsFTx0YjTojq8
	DtSyzMFp/N1gkXeMNr60blc=
X-Google-Smtp-Source: AGHT+IFXKxEEFX8vP4aBeoqt1BTZEmVpqXJif6onxC1JfujMmktO4OxKGd9+qeCqhfM51JReO+Rvfg==
X-Received: by 2002:a05:6a00:3495:b0:6ce:5312:c413 with SMTP id cp21-20020a056a00349500b006ce5312c413mr660791pfb.15.1701681288078;
        Mon, 04 Dec 2023 01:14:48 -0800 (PST)
Received: from [10.10.14.80] (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id m17-20020aa78a11000000b006be4bb0d2dcsm7349362pfa.149.2023.12.04.01.14.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 01:14:47 -0800 (PST)
Message-ID: <ad6fb2a1-c376-4e03-8b18-12b228799bcc@gmail.com>
Date: Mon, 4 Dec 2023 17:14:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] Add Facebook Minerva Harma (AST2600) BMC
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, patrick@stwcx.xyz,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
References: <20231204081029.2272626-1-peteryin.openbmc@gmail.com>
 <fddcbad4-5368-4c2a-ba87-f4c4326a8385@linaro.org>
 <3ff5dcd7-69a3-4098-92c6-ed1e8f0bd8f9@gmail.com>
 <f2519d16-1b34-4d77-be69-cf80fa3415a1@linaro.org>
From: PeterYin <peteryin.openbmc@gmail.com>
In-Reply-To: <f2519d16-1b34-4d77-be69-cf80fa3415a1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



Krzysztof Kozlowski 於 12/4/23 17:06 寫道:
> On 04/12/2023 09:46, PeterYin wrote:
>>
>> Krzysztof Kozlowski 於 12/4/23 16:20 寫道:
>>> On 04/12/2023 09:10, Peter Yin wrote:
>>>> Summary:
>>>> Add linux device tree entry related to Minerva Harma
>>>> specific devices connected to BMC SoC.
>>>>
>>>> v4:https://lore.kernel.org/all/20231204054131.1845775-3-peter.yin@quantatw.com/
>>>> v3:https://lore.kernel.org/all/20231123050415.3441429-3-peteryin.openbmc@gmail.com/
>>>> v2:https://lore.kernel.org/all/cdbc75b9-3be1-4017-9bee-c8f161b6843c@linaro.org/
>>>> v1:https://lore.kernel.org/all/20231024082404.735843-3-peteryin.openbmc@gmail.com/
>>>>
>>>> Change log
>>>> v4 -> v5
>>>>     - Rename document and file from minerva-harma to harma.
>>>
>>> You must explain that you dropped people's review for some reason.
>>>
>>> Best regards,
>>> Krzysztof
>>>
>> Due to changes in the project name and content, please assist in
>> reviewing it.
> 
> When dropping people's tag, the patch changelog (---) should say that
> you dropped people's tag.
> 
> Best regards,
> Krzysztof
> 
Thank you for your explanation. I will pay attention to it next time.

Thanks,
Peter.

