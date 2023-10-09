Return-Path: <devicetree+bounces-6901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC747BD9B4
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:27:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 551A02815A5
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 11:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FF1C15AE4;
	Mon,  9 Oct 2023 11:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="A1HdxuZG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6231C2C5
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 11:27:09 +0000 (UTC)
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EED21BE5
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 04:26:08 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6910ea9cddbso3618747b3a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 04:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1696850768; x=1697455568; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dsfe35r8ooSP3DhlzGaGZax530VOuZcCVqPc76Jz+G8=;
        b=A1HdxuZGG7c6E2S8QwiA33bowHUeVkyNn0oTQBgLERaGNnOvsVDqpW+zFNbBT4VZEW
         ucyTcITjHka5LNh7kD7cbPCN+3r5xp2/pwIFjmealkWCObt+wvJ3COdPYy22g+MNdwPv
         tUaR8oD3B04mxywlr3p0Hoq/na+WCmEPbons9a27Q9e/uPKoTdevHtnwiu3DjFH9o3ci
         vZQFDHTk8iIJyd45NNPtG0fUOMk5FzD3lZRwPOZIFmTZZ+H4tlV0b8FektnNdvCdGzGH
         nTptmwmosvfHazWKWWu+iStyq6R8dVw4ZT74L3nnG9FMNxVszBKxKcPAnJ/0XGp/qQlR
         sXJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696850768; x=1697455568;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dsfe35r8ooSP3DhlzGaGZax530VOuZcCVqPc76Jz+G8=;
        b=KBA5J3qESqqBeGIENLRL0si+32zlqM3cwxvvcvFwCa+4I6XrN1r72LqHaHtoK+pmjR
         lq1kQcDboG5/hyj9U4ZLjzmcvU3HwGEsgfCujAS3Fi/tvHFZVCOE3ls+Y1aIH7OGtc3T
         97UP5TyNVisnHRw2O2buwGEIidPfnVd5njfVo8DuAAl6y/GMRzkkkuPjuKqeuIWPtafp
         O6HUuln6ncBqVRZRXSqKJPN6IbWfvvi9RnjPH6GJERspjYHcpPxyC1QI1r+lc9xJC4A7
         /gOF5zCvP4KJAcI6wJk81D4B9WdnFCA3TxAqh7wuQA00mY81SH48fedpNBOPNyM/piLm
         IFeg==
X-Gm-Message-State: AOJu0YyTDua77nzdaeQKcZ4BHgr3rEBQ07euDK0nfKsT8COW4qyV/3ro
	p0/kU6R15CJQmmN3mgWoRwo4oA==
X-Google-Smtp-Source: AGHT+IERamTChL8jto5HfuCQzBKteg7fz6+WRHZF4cZ3oSUN3CsKBzo0JRWZ1NvfP+iNGmC7XNKjSw==
X-Received: by 2002:a05:6a20:4422:b0:16b:d137:dfb3 with SMTP id ce34-20020a056a20442200b0016bd137dfb3mr11519517pzb.59.1696850767700;
        Mon, 09 Oct 2023 04:26:07 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:bfd1:310:d6e3:7630? (2403-580d-82f4-0-bfd1-310-d6e3-7630.ip6.aussiebb.net. [2403:580d:82f4:0:bfd1:310:d6e3:7630])
        by smtp.gmail.com with ESMTPSA id be8-20020a170902aa0800b001b9e9edbf43sm9327575plb.171.2023.10.09.04.26.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 04:26:07 -0700 (PDT)
Message-ID: <6151507f-e0a5-f862-d6bc-f54c7f88f50c@tweaklogic.com>
Date: Mon, 9 Oct 2023 21:55:59 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: Avago APDS9306
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Gazzillo <paul@pgazz.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
 <20231008154857.24162-2-subhajit.ghosh@tweaklogic.com>
 <4e785d2e-d310-4592-a75a-13549938dcef@linaro.org>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <4e785d2e-d310-4592-a75a-13549938dcef@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

>> +description:
>> +  Datasheet at https://docs.broadcom.com/doc/AV02-4755EN
> 
> This is exactly the same as two other Avago devices. It should be
> squashed - first two device schemas squashed, then add new device support.
> 
> Also, the supply is not vin, but vdd.
>

Yes, they look similar. I will combine them all in a single yaml file in
the next revision. Thank you Krzysztof.

Regards,
Subhajit Ghosh

