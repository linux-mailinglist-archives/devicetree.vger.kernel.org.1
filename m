Return-Path: <devicetree+bounces-2708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4908A7AC37D
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:11:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id D99431F23A86
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5AE200B4;
	Sat, 23 Sep 2023 16:11:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97DD1F60D
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:11:02 +0000 (UTC)
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99A4192
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:11:01 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-690d25b1dbdso3463138b3a.2
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695485461; x=1696090261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BH/JsGH2nljUFB6WQzyA1DaI9y4FgZ9zqPZXjjr4wAo=;
        b=luACA6mZMaHpVfjaUZgI0i5Gc8HmCoq61Hn9bWCJU7znkK6WtIeWd5PPQxyRL8iO/B
         nu50FszFS8EbdCkaRmMWANh9SSmHKdr8GpDt5OWXEoTQpVrxQMc2Mdda/nliyurQ1HxM
         rVCD4WTGGhHQro0O4QnF/Oc2+l+WH2trHZPFspT/EAdUW/Pqf7fhlo8bLjxDEVfqey9K
         KYkcdIHuk2fcgyaufBhnMYWIGgSjgZ96MyjSxo3Vuy6u63R6AFiv9dUQc8KdODd7YIzI
         wfXL3ywqeOOLZiQi0Bg0F3k5l1FCgI6LTMf3bE5gHz1bSXuB45KhO3jWZye+j+1siGC4
         FndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695485461; x=1696090261;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BH/JsGH2nljUFB6WQzyA1DaI9y4FgZ9zqPZXjjr4wAo=;
        b=GHb0hUpAA9oiVk59f7ovAYZYAiNwa6uqzPm1Lrq9TKbwd4SHqfJF83vhoA4gfitpIM
         xmUCsgt+2vI4+tXr9+YDLgZqG4VhOa8giaAbgSoe3y47kPNjUnlqJk7vmy6CfQop+/Ni
         CV+1LAVIg4T2pOFDCYmUA24c/Pazr/I5e4muZ4aw05qpg1mxhDCPvRAvCLywbfVNng0D
         Bc4Ver85lP44ECLqWbOx9btgyigHDdPkYoEuSy7O51XNDFH//ecjmlIbzY3legwOZfsV
         DTvRdAKk1Q9s8P9/4SQK3WR3BIGDyB2enk6XeXY5w/hy8ujBciKPPR8Q2NH5II5UOGkM
         AKYA==
X-Gm-Message-State: AOJu0Yx5ezt4vdjrQAYzMvHT3O/xcmPUugtKhHpdoyNC8IvN6+AlyZ80
	IC0SsL5z2Cm/yqpHtr/rq9A=
X-Google-Smtp-Source: AGHT+IHB8pCcpWtB6kzf09daTQJmxelxWnvDlrbX6GBdHs36G95vay+kyrOQyB7OCcuwI53u4E3i+g==
X-Received: by 2002:a05:6a20:8413:b0:151:b96f:88b4 with SMTP id c19-20020a056a20841300b00151b96f88b4mr3238539pzd.23.1695485461045;
        Sat, 23 Sep 2023 09:11:01 -0700 (PDT)
Received: from [172.16.116.58] ([103.15.228.93])
        by smtp.gmail.com with ESMTPSA id j8-20020a62b608000000b0068c6889e146sm5233145pff.98.2023.09.23.09.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 09:11:00 -0700 (PDT)
Message-ID: <b3031ca6-83f2-80e0-2741-7b736c0f0efa@gmail.com>
Date: Sat, 23 Sep 2023 21:40:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [Question] dt bindings for BeagleConnect
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 devicetree@vger.kernel.org
Cc: kernelnewbies@kernelnewbies.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
References: <ae896c35-58ba-6ba2-31dc-390a1d0d8faf@gmail.com>
 <3a1917fc-75d6-358e-0e77-0f3c3cca316d@linaro.org>
From: Ayush Singh <ayushdevel1325@gmail.com>
In-Reply-To: <3a1917fc-75d6-358e-0e77-0f3c3cca316d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


> On 23/09/2023 18:08, Ayush Singh wrote:
>> Hello everyone, I am working on writing a BeagleConnect driver for
>> Beagleplay board. Let me first go over some terminology:
>>
> Sending things twice will only make discussion even more confusing for
> us, e.g. spread over multiple threads. Don't do it.
>
Sorry, I sent the first using wrong email and then canceled the message 
from the link I got back from the mailing list.

