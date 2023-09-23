Return-Path: <devicetree+bounces-2713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB6D7AC3BF
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:38:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 7C073B2097F
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39EBE1F163;
	Sat, 23 Sep 2023 16:38:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDDA1D547
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:38:26 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B78E92
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:38:25 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-533c92e65c9so982509a12.3
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695487104; x=1696091904; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H4Bu9499vxEYuYZsAqov7xWDeYEeKE1bzRJVu/6F6Q0=;
        b=LPhXbEEg+OsFheXvpHFHyUD/BQSlMb8s2nWzWnR5tRoGFr8nFk5cln7cT+BHFN2ngl
         vx5YmTGQ0zJJLa+ffnZnbqtEO22tmeUUzXj6uS8682ojcdCk/wtJ1AyHFpeOvHK4PyI3
         FfRsYLH80q5xhC+z+nSHKVN3deQk5/rR+P+dtJ8hgyIHlHMAP3qqXnxjBTfqiUn8ysxO
         c2chh9OW9JAM5eTSC9Yd4efVNkJNvADxwDGjG4KKxTi681C9BHaTxxOkJ3ZgzhdF5Ta+
         9nOhXstRd3nSSAQcT72zeeKnmUI8zTEm5cMCFur3+rX6m5yOo3cXg5pN/Juoyp+QrvT5
         gpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695487104; x=1696091904;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H4Bu9499vxEYuYZsAqov7xWDeYEeKE1bzRJVu/6F6Q0=;
        b=hXJ9itiEfWY0qxg1g4xR/YwR18gyl29BtxyNP1SgxaQPxDP0xpb8Iy11cBBnRx040N
         Wtz2YNxhdF4Vxj97I8CLIxA9xsmqSas8QotQ7Cyn/h8XVAcvsTyuAT2kqTrejgZZ8mT2
         YFk0ozWhvzBBDdmFpbbxY7nceofpjo5j8U5iYznh+hPq1Xkv/g6nlXuDKpRixkdCnH1Q
         nQbjcxlwXYXAwizuwlx9soHYdwD98e3MrtDqUxemWfT7+Kc5Nc6qBDsTd/+RVq7YtH2M
         CrQ4gVrmz/JlpeOz23ZsNw53aHyoUTApS3w2cXFOJ4Q8KVKcyQXeQZukHjd4yKQDcscY
         X4jw==
X-Gm-Message-State: AOJu0YzFH5o0NwsUvIqR0gRhjxiicZbJbkRIkkAAW/hIUO9R4QQ8bTLP
	5Eb9fWfkiFevwhHn9RgHZpeYBQ==
X-Google-Smtp-Source: AGHT+IGrSg145km+P/YsAbGX7ONziClIaOrStvt5CSUU1rbY1RMIFV5ompUydv/UO1qCnZUeavlOHg==
X-Received: by 2002:a05:6402:619:b0:533:49d2:dc8f with SMTP id n25-20020a056402061900b0053349d2dc8fmr1798513edv.17.1695487103638;
        Sat, 23 Sep 2023 09:38:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id n9-20020aa7d049000000b0051e0be09297sm3535843edo.53.2023.09.23.09.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 09:38:23 -0700 (PDT)
Message-ID: <acb090f7-262b-8696-fe28-e537f48be1e6@linaro.org>
Date: Sat, 23 Sep 2023 18:38:21 +0200
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
 <3a1917fc-75d6-358e-0e77-0f3c3cca316d@linaro.org>
 <b3031ca6-83f2-80e0-2741-7b736c0f0efa@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b3031ca6-83f2-80e0-2741-7b736c0f0efa@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 18:10, Ayush Singh wrote:
> 
>> On 23/09/2023 18:08, Ayush Singh wrote:
>>> Hello everyone, I am working on writing a BeagleConnect driver for
>>> Beagleplay board. Let me first go over some terminology:
>>>
>> Sending things twice will only make discussion even more confusing for
>> us, e.g. spread over multiple threads. Don't do it.
>>
> Sorry, I sent the first using wrong email and then canceled the message 
> from the link I got back from the mailing list.

Emails do not work like this. You cannot cancel (or recall) a message.
Your recipients already got your previous message.

Best regards,
Krzysztof


