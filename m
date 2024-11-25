Return-Path: <devicetree+bounces-124358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D09789D8817
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 15:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95F2A28A2C3
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 14:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDAE21B0F1D;
	Mon, 25 Nov 2024 14:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CR+cQKHE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4493B1922E9
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 14:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732545177; cv=none; b=W+nwspRKQkZ2rUatYWVRIm0FMW68g5Ozub1sX1fabOUQcr1rfXfHW+47ZVn75OWUMvYpy68bkOhvXwTsOevGknf/84V+/TFMktN3u9HSCPSmgY8yG5JHU6u3gfcUtYTpTDL51ggXrPAPWVewkMDYCHqpTY9j/NHtLUOpkkUE/qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732545177; c=relaxed/simple;
	bh=HgNXDurU1Y6/iVHhxRcPHbCNyKwUgMFho7p6ih9pzg0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PA9lx6Ovek7eVGY7RDXnaoxBtnCJeoTG/oSQXM0VUXZ6ewlJ1+kh3hgfIBIE6yCd5RGvJ9/s2S2XFEnTgZAIP8TNkukwj8LogK/DhK7UZv4PTr75TQeAf5mIR27K4HypVcTsuckqgGtWWs6D/gbgfTBdwQxYoIPN7mBVPEOufPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CR+cQKHE; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3824aef833bso3285020f8f.0
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 06:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732545175; x=1733149975; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J+Y0HXpyKgeDtrQhAYRPzCv1yrc8XspvZqRwVQTSQoQ=;
        b=CR+cQKHEDl89HnHZ3BI77rrrIKLQCINdHlBd0ZbnE+T2FD60yysJ6wd558KnT1+4aV
         qnVrHdvJQWfF3PjyQeb6ePZPy3iZhNIXPtrky4A2neJijJjT8kgz8H8D6ZW5GQsZ2t6a
         1YMEpA2pyOFzE1N/tb2fXtRSM2VP1gJQFw3xgEglI4vez2OKczj8RqmGtJXXcBbYEHxZ
         91vkhGCGmLREIa8Lim43LF4pZDCPaPVvPSx0dY8MXJBekG9zlWvsnEnoq6SVONEgZckp
         Rg3JNWcFQPZCWY2UMLbuIpXTXveinDrDbm6WiDobJKjNLNUd0deAzAa+2zRUPUjRgrHe
         LNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732545175; x=1733149975;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J+Y0HXpyKgeDtrQhAYRPzCv1yrc8XspvZqRwVQTSQoQ=;
        b=r6Skb5H3ZgErLV86iYMfIr+XakACXVfq6baZiz7UEUVE//+GMGIjscxsBbQLdYvylG
         wbw3U6Z5NzTe7ycwYv23IzBpi460WYQhcH3ZyVMFemFcpXkzsyx34DaMB6fc8aSk0kHC
         8vquimsJaYTYyevVDPIvIlOmFw6RMTdl8689UFCagX3o6whJDSlag5NiDe0LTKxxwEeT
         FNjCaJr4ULlM/blZNsI7TgOlSvexJyLFYFjlp7xwlvaUcfjUOTznaSjGjg0nriU/EDZV
         t15FTONzQdvSrPw5DPulU6FDk/3m+zHW4cyAJSteeFJF7U4mn1wbZ9fwkfFr/3WNKbwA
         cJww==
X-Forwarded-Encrypted: i=1; AJvYcCWlyUoecu8Bpg4J7GNWfxufFyCQQtdgS1ryA6zsSSEKRrv9uJQHmakjITCStRXVvz4BPpmlU9uXrWmC@vger.kernel.org
X-Gm-Message-State: AOJu0YyMWgX+S/EpvJ4GBxRtksFl8RbUZyOH6TdFPSKhkP1/eg3DK7hX
	qwvi2sOMk34FhM2kgCY9SrXvy1HoFaZLGrUMbDoXA6+2oUCaBRvFAd/eBUBuZPc=
X-Gm-Gg: ASbGncsJWX1AtVbIZgkPB01AqpIvohpths4V4P0ouNU7DlA3m+UyW6NL+k6x3Q4gL7Q
	P/1ST6pxrMIxIxX2LKaKx7FVUlisNJrZ9YZw3p16AWgIMdszsdrAL9qDFbI+7fqEiNCZ47bGWZC
	QYodfyj66dj9ZP3gc33hc3bB8C8TskJSMHWqIsFQ/LSOoOYlkloE5Wq3IGb4H02x1qY0KUserP5
	qbAjyx1gZNextQpJRSUxm34je1nLdAhVUhc7Emdf24vGBvDvmN3wJnZv/9YAf4=
X-Google-Smtp-Source: AGHT+IHLpdEqvHkFDrmf7iYo+O6NcGKzmFklgROp89/Mv/+qWdOXbu1wuq8DK5pShhF7HXcnisT0Zg==
X-Received: by 2002:a5d:588f:0:b0:382:4851:46d2 with SMTP id ffacd0b85a97d-38260b45c95mr12173123f8f.1.1732545174756;
        Mon, 25 Nov 2024 06:32:54 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fb36612sm10492934f8f.59.2024.11.25.06.32.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 06:32:54 -0800 (PST)
Message-ID: <7876986a-0164-4004-a8c7-43439e30fcbb@linaro.org>
Date: Mon, 25 Nov 2024 14:32:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] media: dt-bindings: Add qcom,sc7280-camss
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>
Cc: rfoss@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241112173032.2740119-1-quic_vikramsa@quicinc.com>
 <20241112173032.2740119-2-quic_vikramsa@quicinc.com>
 <20241115165031.GA3344225-robh@kernel.org>
 <0234971e-9029-4371-a0aa-7da835591351@linaro.org>
 <f1ff6df1-89f3-4e63-bea7-2404fefe81f8@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <f1ff6df1-89f3-4e63-bea7-2404fefe81f8@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/11/2024 14:30, Krzysztof Kozlowski wrote:
> On 25/11/2024 15:18, Bryan O'Donoghue wrote:
>> On 15/11/2024 16:50, Rob Herring wrote:
>>>> +  reg:
>>>> +    maxItems: 15
>>>> +
>>>> +  reg-names:
>>> reg and reg-names go after 'compatible'. See the documented ordering.
>>
>> Rob, the documented ordering pertains to the dtsi and examples not to
>> the yaml right ?
> 
> 
> The coding style indeed is explicit that it applies to DTS, however same
> rules apply to the bindings as well.  I just did not cover bindings when
> writing DTS coding style.
> 
> Best regards,
> Krzysztof

ACK, thanks for the clarification.

---
bod

