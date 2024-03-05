Return-Path: <devicetree+bounces-48587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A73E872958
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 22:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2367E287E92
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 21:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E226B12AAD1;
	Tue,  5 Mar 2024 21:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WOB8SWF+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A71126F0F
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 21:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709673806; cv=none; b=A/47rDZMQb0rPxk0rOk9Oax3/nI31ClIufUBcP1ZdmqD/O4E63abU5cfdabGiF6NFlPo7EQT9svLdMPm/8YIOE7xlfXfZTZN8HU80xK+5+LhbsEF9NdXzag8DeHvxIMjFRjFOYNmtJoB6JUc3ln/7pOIyEWZg2GWM8OALchHuoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709673806; c=relaxed/simple;
	bh=+sYqzS7S/emEX62cjyaYV4mxk/5PcBUF1vVXL8oH5qs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tebA42N1g//O2XKqSAV4ShrQOB60DlR7OBQybHfJud2MI+4SKJRn9zS1WCvZT3cMNqtNTtqJ2wvTHdJ6X0MxyT1pk3s3ltgWUywcw4c/5sTT8VED/7kM5NhP5Mbs5tnEADedSaYUtgYiS8SLeqK8rG8AuiI49tz3R+LaLXlmgi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WOB8SWF+; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5135486cfccso1436393e87.0
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 13:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709673803; x=1710278603; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yAzL8mGHJidCO1zLUY5C0p3Ij1T1ldDFSZfozw6PSaI=;
        b=WOB8SWF+1cFzp6WqmgoClYw2Y8HsasUHUNVWzyL9YuoKkliO2UiphOuPzWLR/OLO5o
         5UtmysfrMT3C8C9FLfIybH5Fpoc7prwPqV6LEfK7xoL8K2lOBFIT5KFZTpZsC7uJh20A
         P5dYgzTJWJUvHEH0EydNLUi+HU9g2ZkhjzuF7piBSByNDUvvK4R2IoiN3y6u1SZENytG
         9yofIKXCPmYRycmYudlyEKOJMzK7B3fvgJjBrmRwZl8/uitK8IpMcm1ztjgLC4ZHSaaB
         0mNp4J8q6kxGMkwt9Llz9Ejae6Z1RQuG77dsAAMBQpKqfwA3I0vjy/hXqQEUUhuXG1x2
         bgNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709673803; x=1710278603;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yAzL8mGHJidCO1zLUY5C0p3Ij1T1ldDFSZfozw6PSaI=;
        b=SW82ARKKhYRzl3sdDkIzg/5ASFw42g6HHW3Go/UkZaXNuk5FEDtKtpgZxz80QpoCcJ
         KezRhngILn4oTY/W96KaoRTH3yJgZjHZOHacogo+2Bvfe6JeiaC6memY3rVTpS6d5LFH
         PzPn89U9nQ4R12AhgM7p87ZPS87g/E3CFL2E+wHaCZgbL1bt+r+wsiLAkVfQzFwbmHVp
         ek6+qGj8DLsfGiH0H/mLNazgi3jnzPBNrB2TxC2OpcZ88QeayOcjXIrTTS197LkHdeRQ
         W4B+2wblS6ApSozUgVyhUZ8AFzgk+/uZox6AjOhjxHKLrIVWZZjNHEffQC4iQOXJN/kU
         x50w==
X-Forwarded-Encrypted: i=1; AJvYcCXk4lgLGMctSLRAj29OHx8u4o0is1XxkLbmgo489Zdk1hnmjLLLkIWlGOH6W7+gs7Jt6ItQJBdATs3qsB0ujxnrDzYeJl8Psd9ErQ==
X-Gm-Message-State: AOJu0YxwKL6x0YQtUDA6yRkSsDV3X653t0lWVAtDpv0QlY5vvvx0xpJb
	0FvKadcEKJhdytO36P4KmY5ORMxh/ljr+u1o+Hd1pfSF5Q0Q2N/3FjkJsVwBkZA=
X-Google-Smtp-Source: AGHT+IEFyN9DKvKwqLB6pX1c6+uDTipw2rDoJN2LgnZsNQN4gdBtSi0xVYlhK/bRXcoWDQgIDlyffQ==
X-Received: by 2002:ac2:5f05:0:b0:513:4766:2713 with SMTP id 5-20020ac25f05000000b0051347662713mr1866058lfq.59.1709673803199;
        Tue, 05 Mar 2024 13:23:23 -0800 (PST)
Received: from [172.30.204.154] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id b5-20020ac24105000000b00512e594e235sm2331651lfi.242.2024.03.05.13.23.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 13:23:22 -0800 (PST)
Message-ID: <0a28b69d-e55a-4e54-8d2f-e92b06baf71c@linaro.org>
Date: Tue, 5 Mar 2024 22:23:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Name the regulators
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240227-rb3gen2-regulator-names-v1-1-63ceb845dcc8@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240227-rb3gen2-regulator-names-v1-1-63ceb845dcc8@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/27/24 18:39, Bjorn Andersson wrote:
> Without explicitly specifying names for the regualtors they are named

regulators

> based on the DeviceTree node name. This results in multiple regulators
> with the same name, making debug prints and regulator_summary inpossible

impossible

> to reason about.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

