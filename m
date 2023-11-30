Return-Path: <devicetree+bounces-20346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F08CE7FEE94
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 13:06:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EB161C20BCC
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A80A45941;
	Thu, 30 Nov 2023 12:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jBv9JHaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E833D10E6
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 04:06:13 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-54bf9a54fe3so916474a12.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 04:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701345972; x=1701950772; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y0a9koo5Mpu9OpEPuxs46Ddr5On0UG6sS01DdZhSZmc=;
        b=jBv9JHaToxDAYNSMqaTJFuZjtGmY3X2QI8hOg05L6C21WTVWKYGtW4Lhr7LCFKj9Ch
         wcTen33ALXYkN0GY+3loNFSSLHHfBQxX+elIHcN5CXrzQftDcy2FvC9rK+zWfpxS3y5g
         t4YNUjtcQFNpSlndR8wDSbAi4x47vPQOpSAvWQGxipjpSLNtJw+yTToP0IHfU8EpMpV1
         /+5Y1cZFTGOPbxVy6MBimFWxGvUm0p0YgQ3GgASZd3U/2nfCk27TI5hvUiq05waAWi16
         F3b2HUEBM8czparG37+tjxx7ZHLbmNr/doWuTyRZVu4T8YiYbwMsJTYelN5vGx3Xqsn9
         VMQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701345972; x=1701950772;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y0a9koo5Mpu9OpEPuxs46Ddr5On0UG6sS01DdZhSZmc=;
        b=XcR0EungqkNOSxLL2YY7qy7+JzG4oeRkn872PqHOuxulDaQXi6V10rDTcJwXiy5ko6
         bG3uILRfBHoRK8dZWezuxNdpi6uNmCKydQUpGhDpVEN1Z5PMrckgOvjYZUe9HzSPPgYQ
         /HG8uN2+R27PVr7Xzn9GvVsekcItfEtCqfFWCTDoai41RnRqg8oua3bOLzYv+D3rUe4z
         ZUCnhnOtN9mrAcZglkNN3oScTBQK/L4F59KGQ44JBGaBfiuoHiFGSny1yxTJbp8wL0IC
         Jbf3Y4OaFgKzg/YZubv5Aa+VutBf6yNc+SXHYmJwVVUdGKZWKioQ0ii64ke4p/YITf+e
         6Zgg==
X-Gm-Message-State: AOJu0YyvkSyNb6JUvcw61pMqyk1kfYEOvrxJ0v4yXyA0OYOHVDxEJiv3
	EVsEnlhQl5eobHPmnkSXp3CJPw==
X-Google-Smtp-Source: AGHT+IEC5IU4t0PIlfrD9HFMVim8IFWolYCatR6JtK+xGfdKEGl0MDaXQaMf8+ndQJNQLySl/sl4LA==
X-Received: by 2002:a05:6402:558:b0:54b:3edc:196 with SMTP id i24-20020a056402055800b0054b3edc0196mr10222538edx.25.1701345972427;
        Thu, 30 Nov 2023 04:06:12 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id v9-20020aa7d9c9000000b0054b1fca00c7sm486173eds.74.2023.11.30.04.06.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Nov 2023 04:06:12 -0800 (PST)
Message-ID: <35916812-af55-4b2a-99e5-8566e945cb6e@linaro.org>
Date: Thu, 30 Nov 2023 13:06:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] arm64: dts: qcom: msm8996: Fix 'in-ports' is a
 required property
Content-Language: en-US
To: Jinlong Mao <quic_jinlmao@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Yuanfang Zhang <quic_yuanfang@quicinc.com>,
 Tao Zhang <quic_taozha@quicinc.com>
References: <20231129143815.7892-1-quic_jinlmao@quicinc.com>
 <20231129143815.7892-2-quic_jinlmao@quicinc.com>
 <3527d540-3e3f-4edb-b5f2-6ac481132c06@linaro.org>
 <591e1aca-20ca-4d42-809d-12cd12ddadb3@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <591e1aca-20ca-4d42-809d-12cd12ddadb3@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/11/2023 12:15, Jinlong Mao wrote:
> 
> 
> On 11/30/2023 4:55 PM, Krzysztof Kozlowski wrote:
>> On 29/11/2023 15:38, Mao Jinlong wrote:
>>> The inport of funnel@3023000 connects to a source which is not supported
>>> in current linux kernel. Remove the device tree node of funnel@3023000
>>> to fix the warning. It will be added once the driver support to the
>>> source is added to linux kernel.
>>
>> Thanks for the changes, but that's not correct reason to remove DTS
>> code. What kernel supports or not, should be irrelevant for the DTS. DTS
>> for example is used in other projects - did you check if they have the
>> same issues? Anyway, DTS describes the hardware, so how current kernel
>> support defines what is and what is not in the hardware?
>>
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzysztof,
> 
> The funnel dt node must have in-ports node. It is to describe the input
> connection of funnel HW. But there is no dt_binding doc to describe the
> DT node of the HW connected to funnel@3023000. So remove the funnel to 
> solve the warning as of now. The funnel will be added back once driver 
> and dt_binding are added for the HW.
> 
> Documentation/devicetree/bindings/arm/arm,coresight-dynamic-funnel.yaml

Why we cannot add now the binding for the connected hardware? It's not
really related to the driver.

Best regards,
Krzysztof


