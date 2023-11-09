Return-Path: <devicetree+bounces-14815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E197E6B43
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 14:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 850BB281001
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 13:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54ADE1802A;
	Thu,  9 Nov 2023 13:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ok9jUSt/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B426B1DDDB
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:33:15 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D923530D3
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 05:33:14 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4084e49a5e5so6276705e9.3
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 05:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699536793; x=1700141593; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6xpZwQq3ClKTYPqwZFJ8l0YbmBZ7IrKMSjUDuetQBQo=;
        b=Ok9jUSt/nmkrMU4bFIoMFeK9Jn33xLxxj1nBuChRNqZycphGHdmQv+lo57Ey4aH4/Q
         z6ODgMlHQGDPMgz3Wn3oQtA5o+4ifY2bQEjg3WW29FBIdzUOSyQ3h8Jjn+yH30zTYYZw
         xDt6uHqgvJxZBDEhD/MAJAum40s6lGt+1IQqtkuMYZvdbWZYY3eb1CRN+QDL3rEzOTOm
         JIGeB729nklnjapJzUrdpcHEZYbVOB2jmeEKOk8ZgbrNB2+xpXba5Nyj6YsYJWSc8vjD
         hhlsBMen0IW6Z8UgUO12y+5o0cyqD58BYx+8uve8iz3RvGvCcvA4NbuLV8EobnoW1/rL
         Jzhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699536793; x=1700141593;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6xpZwQq3ClKTYPqwZFJ8l0YbmBZ7IrKMSjUDuetQBQo=;
        b=boBbrNg839RXFN/00srKGfsx57J7F3yiqm/SBvauy0kUgJzi67cJrYjNmAT+Wif1jF
         yAJPHSnUqq2rronizXY4e7/fpGsLMFh4YbR8+TALrwfOwekBH5IpRqi0tuT5CdM/uX1C
         /H5CeF+Ol8nFXNa9z7K9zWYedvFjxIDooKokchcXmoIZujH++HR3jGt/JNZHZYFcCVBb
         gNEhsYWMCNEk7o7p7uJuaV7Nkw2CxuRhWUYIIb6+pADHvzo4ZR0mRD6kXQ4Yrx/G25jQ
         p1OJwarcZ21gR511KrTRBykeK+0IQIZA9hDTci+Nsp1XqshSeM9Qr2ozKfiB0qPqh7V2
         oj3w==
X-Gm-Message-State: AOJu0Yxk/TuVgANp09AaEbvTZZSp3ogm7sL1LsnlrfS6uMMzHoINW+3b
	xzNJTsbD3xX2Q4s2+mbaJnZUGw==
X-Google-Smtp-Source: AGHT+IFuVblGjINXhI9JVRppNqdlOQCvBCHSqn2a5ilSOyiNxyCegKvGpFK7R34K1Lo55kGCcK49MQ==
X-Received: by 2002:a05:6000:2c4:b0:32f:8024:64f1 with SMTP id o4-20020a05600002c400b0032f802464f1mr3936261wry.2.1699536793142;
        Thu, 09 Nov 2023 05:33:13 -0800 (PST)
Received: from [10.66.66.2] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id z13-20020a5d640d000000b0032d96dd703bsm7425418wru.70.2023.11.09.05.33.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 05:33:12 -0800 (PST)
Message-ID: <9bcdbc2d-802e-4574-a801-9a234ddfd4f2@linaro.org>
Date: Thu, 9 Nov 2023 14:33:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/6] media: qcom: camss: Add sc8280xp support
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org,
 matti.lehtimaki@gmail.com, quic_grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20231109-b4-camss-sc8280xp-v4-0-58a58bc200f9@linaro.org>
 <ac253acc-ae03-460a-b982-0a9f780ddb5a@linaro.org>
In-Reply-To: <ac253acc-ae03-460a-b982-0a9f780ddb5a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 11/9/23 14:32, Konrad Dybcio wrote:
> 
> 
> On 11/9/23 12:30, Bryan O'Donoghue wrote:
>> V4:
>> - Drops all _src clocks and _SRC indexes in series.
>>    True enough the CAMCC driver has all of the appropriate SET_PARENT flags
>>    so there's no need to represent _src clocks. - Konrad
> Thanks, and if you have any manhours left, doing so for the
> already-supported SoCs would be great as well..
Of course outside this series

Konrad

