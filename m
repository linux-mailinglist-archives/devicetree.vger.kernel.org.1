Return-Path: <devicetree+bounces-12245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E52F7D88B9
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:05:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C38B7B20C43
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF233AC35;
	Thu, 26 Oct 2023 19:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pf18e7JK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54A43AC17
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:05:19 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EF3A1A7
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:05:17 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5079f9675c6so1960908e87.2
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698347115; x=1698951915; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nTntRETti1RoGYvSAtwTh58ii6/uwBd9FpU96CIE5p0=;
        b=pf18e7JK4/mpvuyYHCKzXPt/+NKwMJ81FfLcL9t/Rw/dBFLyC1to1BNnI82RAm+WIX
         KuhssyxkmJMQ/onbwNizIHivW796p//y+35nkeLpdgWWZlJBjbfkbvl+DRpS2XFIlSgB
         CMUWtlPNALS/xEXOduXXwDw8+bvR1LaMu8FYCDkkt/wbsgulXN891LQ8UaBiQlfjv0c/
         m3GEW4LMi/ij7acYrQgXLTqcw3583+utDt02e3ailv2LzzdXkoOtb7qXfZRZWMie4XHe
         HFPtBpVQf2cYhNJ8Fj/8UwL2NxBjpTqtJFUndsQw3/GhhrAexF3TK6nNf0M4DXfkvtOU
         sSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698347115; x=1698951915;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nTntRETti1RoGYvSAtwTh58ii6/uwBd9FpU96CIE5p0=;
        b=j91vbJxGj/xcnlTk96nuEh7y5T1umogOk4UDpArmF6d/JQ4Bk/Oj7dxSuNG7TPj8AD
         s8HUeq0ue74M1Yb4+WJqVy+Za0Y6R6oYrTW8AC7vOTo5hVphaKnzJmG5oumsnOzNTpth
         mM8IkzRLmhVEZApoWXAzfGWm+CUxCDTMeYOr1AhUo7UbWqkkC+8AxZK7nDdOo3Xs6Me8
         Qe6+xE97pkQjHG+2wztYWJVZrGWlNNyK/TonxStZRLsME62e7SBo20MUHFQp0Lf1FIdx
         YzucPpSqjOjroq0w1w6EioEj4mEudAvp75W2yS7yEeTKZ1wSE7TkEzUpgwHLhnWbTN6f
         77kg==
X-Gm-Message-State: AOJu0YzIedrDwbgfrgqPW6AQpuLFcXULfnQfCvagputo+swKmNHAnckQ
	/Z435dciijfwntmA+1R6oN//dw==
X-Google-Smtp-Source: AGHT+IE9qurnDLHIS+QygpgjC/ebr40WbZWUAO333XfZ5Wun+jrkSwJK+77+83sCm/A/fgKxLujF3Q==
X-Received: by 2002:ac2:4146:0:b0:503:364d:b93d with SMTP id c6-20020ac24146000000b00503364db93dmr171014lfi.20.1698347115460;
        Thu, 26 Oct 2023 12:05:15 -0700 (PDT)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id e9-20020a05651236c900b00502e0388846sm3111497lfs.244.2023.10.26.12.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:05:14 -0700 (PDT)
Message-ID: <ac0aea1f-5e4f-4611-951d-037a4370384c@linaro.org>
Date: Thu, 26 Oct 2023 21:05:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qrb2210-rb1: use USB host mode
To: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231025-b4-rb1-usb-host-v1-1-522616c575ef@linaro.org>
 <9439252a-4dbc-417f-99a8-fa7c5f11a3d8@linaro.org>
 <d7fcb16d-1fe8-4be4-8f20-18ddcd2c2913@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <d7fcb16d-1fe8-4be4-8f20-18ddcd2c2913@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/26/23 21:04, Caleb Connolly wrote:
> 
> 
> On 26/10/2023 19:56, Konrad Dybcio wrote:
>>
>>
>> On 10/25/23 13:58, Caleb Connolly wrote:
>>> The default for the QCM2290 platform that this board is based on is OTG
>>> mode, however the role detection logic is not hooked up for this board
>>> and the dwc3 driver is configured to not allow role switching from
>>> userspace.
>>>
>>> Force this board to host mode as this is the preferred usecase until we
>>> get role switching hooked up.
>> Does that not kill usb internet and similar?
> 
> like rndis gadget? yes, it does kill that. But in return you get real
> ethernet ;P
> 
> This is the preferred default configuration for these boards (I sent a
> similar patch for rb2 before). The usb_role framework does have support
> for letting userspace change the role via sysfs, but it's disabled for
> dwc3. The plan is to enable role switching properly by reading the DIP
> switch state in the future.
Ok all that sounds reasonable

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

