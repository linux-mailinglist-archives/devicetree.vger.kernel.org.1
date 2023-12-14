Return-Path: <devicetree+bounces-25191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F04BD8129BA
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 08:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D9891C21163
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 07:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BB02134DD;
	Thu, 14 Dec 2023 07:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TtnR33N+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 617C2CF
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 23:49:58 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c580ba223so23152625e9.3
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 23:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702540197; x=1703144997; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YKNWcJEz17bkojAUnmWBfEyQIf28MiYRgC9zuaDdhTM=;
        b=TtnR33N+I84VjIClroTOYYaQtUPbslE7+RZt+/p1SLQs5fVz9h+n3fFz5hX1LWHlC6
         vYYWFFfpPzciBEDH16FqiNlz1kvZzZUGc2VstFGqAWgYDd51yxYIhmuVNWCSCRuVkzvH
         t9mfg7EB1zBiXgEcmqnST1omybzwiBd4iDkmP7GyA9p9DXmlKrVxt7m6EhDqY8rBwOnQ
         tMwf9H4Xz976BuTBbHQsUXdTz7UV9d84Kkj1t7fuhHGwS3+vK4QBEJBwEbQe0lgs/20l
         Ad5162lOImUpyd99FuupKV64OD79ZA1CnHwpdZDTJmdRr0aqmSBYDi7pPLJPDE+Qrs+i
         F43g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702540197; x=1703144997;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YKNWcJEz17bkojAUnmWBfEyQIf28MiYRgC9zuaDdhTM=;
        b=u/xSM5c1IeRBknsDqkSq3bpz5EQqPGAjUE5Nl9X5R6xgpvnXxYdhbY2YXa9ZL+epI9
         0qcuNqq0Y6aCYtF855R9wJyYjAGCBncbGPLtvZmvqXpmRFwOVrFX90QKLb0zSHTA0wvP
         CN7IqtOH6mVqoC1f3TkrnsXf/bkxONDH2IuxzYOd3PAU1kSlHYj4O7Ty2ancD8UBgIgP
         8X/2eT/rSbH3pQbVE5NDD8yHdiRFSJ7lO44zSCe7lJMdl2l8PRljp69k7ZFfludilbf8
         nKoHY72IANwwA4GlvqtRsP3geP8Wg6KNx+uJPkyspZuXpUlWfvKHxSqgKiWjSbuHcZZp
         zgeg==
X-Gm-Message-State: AOJu0Yyl0jxgBRbiiizDgu++x6E/CUb6LSYDMEiZCo5fQaSmIZYFFvW3
	u5CA4CXkzDB6gzPjbv697mSO+g==
X-Google-Smtp-Source: AGHT+IGgS4dq6V2+n0N3Cok+K3yf2gYNL25dIcgjY2U6IiTn5CUSGZpUwUcKRPdivR5m1Ppve3zeAQ==
X-Received: by 2002:a05:600c:4591:b0:40b:5e1d:83a6 with SMTP id r17-20020a05600c459100b0040b5e1d83a6mr5215944wmo.58.1702540196842;
        Wed, 13 Dec 2023 23:49:56 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id l15-20020a05600c1d0f00b003feae747ff2sm26059344wms.35.2023.12.13.23.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 23:49:56 -0800 (PST)
Message-ID: <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
Date: Thu, 14 Dec 2023 08:49:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Nikunj Kela <quic_nkela@quicinc.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 "Prasad Sodagudi (QUIC)" <quic_psodagud@quicinc.com>,
 srinivas.kandagatla@linaro.org, vincent.guittot@linaro.org,
 ulf.hansson@linaro.org
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231214061742.GG2938@thinkpad>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/12/2023 07:17, Manivannan Sadhasivam wrote:
> On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
>> + Linaro team
>>
>> On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
>>> On 12/12/2023 18:45, Nikunj Kela wrote:
>>>> We are abstracting some resources(ex. clocks) under new firmware on an
>>>> existing platform therefore need to make changes in certain drivers to
>>>> work with that firmware. We need to make a distinction between two
>>>> different variants of the FW. In one case, some resources will be
>>>> abstracted while in other case, they won't be abstracted. My query is -
>>>> "should we define a new compatible string for the variant with
>>>> abstracted resources(in FW) or we should add a new DT property keeping
>>>> the compatible same?"
>>> Hi,
>>>
>>> Usually change in the interface or behavior warrants new compatible.
>>> Property would be suitable if the same device, e.g. same SoC component
>>> with same FW, was configured differently on different boards.
>>>
> 
> Here, the hardware is going to be the same, but the resources (clocks,
> regulators, etc...) will be controlled by the firmware instead of OS.

Yeah, that's the problem with generic questions, instead of specific...
"Talk is cheap."

OK, so the hardware is exactly the same? Does FW bring any
incompatibilities in the interface or is it just about the clocks? I
guess I should not have included "with same FW" in my last statement.
It's true, but way too narrow. Therefore let me rephrase it:

"Property would be suitable if the same device, e.g. same SoC component
with same interface towards OS, was configured differently on different
boards."

> 
> Should we still use a different compatible? For the similar usecase, we already
> have properties like 'qcom,controlled-remotely' to let the OS know that it
> should not configure the hardware and just consume it.

Yeah, also similar qcom,gsi-loader.

Best regards,
Krzysztof


