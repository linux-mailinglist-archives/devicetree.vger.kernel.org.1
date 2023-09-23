Return-Path: <devicetree+bounces-2707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 610A67AC37B
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:09:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0FF3E281CD2
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13FBE200AF;
	Sat, 23 Sep 2023 16:09:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10B91F5F8
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:09:20 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C3B792
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:09:19 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9adca291f99so467471066b.2
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695485357; x=1696090157; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kFxZ8jRtPX5ezxqb031ryy7Cck+mx1eJkLF5gVmViZU=;
        b=C2ixUnWOAnLYCi+c1eYdQwE9QirBS7FGTNBv75NaPBtZxgVi+DNpuNAhc0mlf9qLIH
         6Ti+qrW4lLTui/cGQongvr5ZoK3JX08czHBQiIfhDGjsTCi/u6L2eIQ/xuvPtrhF9wDV
         Oprh7rGa4rzGF+favHsgYxdFlDGV0jqOLowAKTjZDo6hKxL2e7qlx+aRF/iNVcIm6x2L
         f6flMidSlGtfKBsdTOLPlCpYyJbJoYVTvPoNniMBevT4x9jD7/O2Z6/ESjIWIqr/joL/
         y7Sld4sjOvnPG/Wb81EpUjwCJ3Obf6XLmTExy2RewtppOty4Itw1Ew4YzTQmiR/SALBb
         VUaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695485357; x=1696090157;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kFxZ8jRtPX5ezxqb031ryy7Cck+mx1eJkLF5gVmViZU=;
        b=n80AThRlYuAjtgNOvA2J6iZcDqv49UDODPmErhGIUu/3C1SZIUYbV9q2k/a6lvX/ag
         YEZY1PznTSARU7pw11qTEdg0lPR4iiXQpb6XD/SDc9CFgYEDkwXFP5knQU00qFRRx6yu
         2MSp5x+mIpIUUpRJKcmdPWSGD4meAmJ79oeTsn0q1WzjchPVEODOvnPAN4oCc1RkpoP0
         yG9dK2CyYRET3ra1K+TN+6FfTp+dVH+6yCLdi1GpgovXzPwoSPk8V8KJuaQQuEpU9M1P
         PUid3Q2mL4DWG45qOatMC304xr3TjRDggpKdBVMiIN9GfYjVAUmVEkYnFK5cypVO0XWX
         ucxQ==
X-Gm-Message-State: AOJu0Ywkr1SsOiS0JE90xHXJaCpoiTW1WV3sgSu1g3FHU1XE0vFEJxPy
	al0u4wNK9jVeNxtoD0u47s71tw==
X-Google-Smtp-Source: AGHT+IE6FtWDL3oMmyfKl4mnB4CidEQBHw4Y1i1LEB9XyBsEZG7A7NXiWCDHtXrmQ48mIXnE2pgO+A==
X-Received: by 2002:a17:907:728a:b0:9ae:5db5:13d with SMTP id dt10-20020a170907728a00b009ae5db5013dmr2605674ejc.72.1695485357602;
        Sat, 23 Sep 2023 09:09:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id s25-20020a170906061900b00997d76981e0sm4026887ejb.208.2023.09.23.09.09.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 09:09:16 -0700 (PDT)
Message-ID: <3a1917fc-75d6-358e-0e77-0f3c3cca316d@linaro.org>
Date: Sat, 23 Sep 2023 18:09:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [Question] dt bindings for BeagleConnect
Content-Language: en-US
To: Ayush Singh <ayushdevel1325@gmail.com>, devicetree@vger.kernel.org
Cc: kernelnewbies@kernelnewbies.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
References: <ae896c35-58ba-6ba2-31dc-390a1d0d8faf@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ae896c35-58ba-6ba2-31dc-390a1d0d8faf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 18:08, Ayush Singh wrote:
> 
> Hello everyone, I am working on writing a BeagleConnect driver for 
> Beagleplay board. Let me first go over some terminology:
> 

Sending things twice will only make discussion even more confusing for
us, e.g. spread over multiple threads. Don't do it.

Best regards,
Krzysztof


