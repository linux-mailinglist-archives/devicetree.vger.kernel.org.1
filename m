Return-Path: <devicetree+bounces-10774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7580F7D2A97
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:40:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF17DB20CBE
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D06E63C0;
	Mon, 23 Oct 2023 06:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vze9LOaB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B2C6FAA
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:40:37 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7431F10E7
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 23:40:35 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso428531666b.1
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 23:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698043234; x=1698648034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pEVOQI8t2jpIstILDxgVRQNq6M8ZE8UFb3N0bo6YIpg=;
        b=vze9LOaBm14naryKVPSMQI874jEdDZFgsonLSYtn2xUciH910jUr2Iu4YKHF+8vjNt
         u0YKd3TjMer4KHk8f9KPLALYvIy+aShcFpxKuENjXJrypZQHXGPJ60GEsAtukUaqFz04
         YtunAbI39+aBF+yb+w+oD+kfQg3xyjTs3fUlh3vQqYGagy0MZO/rLBHRoBdJdXzhuh2K
         t2SximbKk9gE9HWC6cS9Mg3fwyCAAbyfKvOPhY7YFSxYUKm1BoNEuSC8r447EN3hCgLN
         5z3/bAXPPuqJ40JJ501CG3+T/hmJ5Uswo5Z1IMnJuHhTuKxnnDsVSvc40Z8yf/Pru/zP
         U2tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698043234; x=1698648034;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pEVOQI8t2jpIstILDxgVRQNq6M8ZE8UFb3N0bo6YIpg=;
        b=pFqh2Yr5e7oI0S7MyIv3IouRy3p6+JtJ9v1TOzqz6uI+EcLfamPGDmmqjsxNk1I0g5
         C2Z5vjY6zF5+1xs05+9pYlCaY8cr6Gkbhhw0/1RmtYsPvD5BFiCygSnPgn/lYLoT3PIu
         P0uvQNIk/8Y3QiVNDlk9Nh8c4NMY9vvxkWuabovWU1QWM3kxAlPJtbXdsdrHOJ2vDqnP
         S+unk+5fKRovHY00D0lclKfUEaHGOcfTI0bl4u/fMJUEK1VRHU9IRLVbtkuIYVBh6s7o
         7K/zSXFBh35H9HSwwMQXkdo6uwaNWcxgg1Rx6LOtYKtFr9h8Ujpld/4DnoI80ldByoth
         KhYA==
X-Gm-Message-State: AOJu0YyDVmOqHbIXpVLsBedbXqHx9npF5qpyvpHUEot/0iX2myTfVKuB
	3OyVl93MHZ2u1r+z6Le0rd0XdQ==
X-Google-Smtp-Source: AGHT+IEmbI2YY4b5sttRLNqwWJAoRXEGkX1rtVRv1Le68LtjiAgUKBWME6t4zNXqskdG8eWWaRXPXQ==
X-Received: by 2002:a17:906:538d:b0:9a2:28dc:4166 with SMTP id g13-20020a170906538d00b009a228dc4166mr5499805ejo.75.1698043233908;
        Sun, 22 Oct 2023 23:40:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id j12-20020a170906050c00b009c764341f74sm6111980eja.71.2023.10.22.23.40.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Oct 2023 23:40:33 -0700 (PDT)
Message-ID: <91ebed22-76fc-4d9d-ae3d-64808ccc532a@linaro.org>
Date: Mon, 23 Oct 2023 08:40:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/11] dt-bindings: iio: remove QCOM ADC files from iio
 folder
Content-Language: en-US
To: Jishnu Prakash <quic_jprakash@quicinc.com>, agross@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, Jonathan.Cameron@huawei.com, sboyd@kernel.org,
 dmitry.baryshkov@linaro.org, quic_subbaram@quicinc.com,
 quic_collinsd@quicinc.com, quic_kamalw@quicinc.com, quic_jestar@quicinc.com,
 marijn.suijten@somainline.org, andriy.shevchenko@linux.intel.com,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Jonathan Cameron
 <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org
Cc: linux-arm-msm-owner@vger.kernel.org
References: <20230708072835.3035398-1-quic_jprakash@quicinc.com>
 <20230708072835.3035398-12-quic_jprakash@quicinc.com>
 <8b2dd686-382a-f490-7b6e-9603d939bad7@linaro.org>
 <e6c27567-070e-1765-3d5a-30a6e6fa119b@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <e6c27567-070e-1765-3d5a-30a6e6fa119b@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/10/2023 08:19, Jishnu Prakash wrote:
> Hi Krzysztof,
> 
> On 7/9/2023 10:58 PM, Krzysztof Kozlowski wrote:
>> On 08/07/2023 09:28, Jishnu Prakash wrote:
>>> Now that the ADC dt-binding paths have been updated everywhere
>>> to use the files copied to the 'iio/adc' folder, remove them
>>> from the 'iio' folder.
>>>
>>> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
>>> ---
>> Nothing this was explained in previous patches... We should not have to
>> read patchset from the end to understand what is happening here. Anyway,
>> your commits lack rationale why this is done. Without it, this is pure
>> churn which breaks users. ABI breaks need to be explained in the commit
>> msg and come with some reason.
> 
> 
> I'll try to do the changes in one or two patchsets, based on my replies 
> for the previous few patchsets (8, 9, 10), hope this can work.

You are not responding to actual comment. Splitting this to one (??? it
is already one patchset) or two patchsets will not fix anything. You
still break users and break ABI without justification. Your marketing is
not a justification for that.

Best regards,
Krzysztof


