Return-Path: <devicetree+bounces-35475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A97383D86B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF1111F28117
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE4C4125D9;
	Fri, 26 Jan 2024 10:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PiZ6+Ys1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D366D1428B
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 10:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706266087; cv=none; b=XRVR2BOgfvT5qEivuxEY0ww2feG7jiyvZ9fxu70nxsVDL3KaZuFSQ4KTTYOeR7rRDfCgaboNvvjG7/LxOrpQpnqOaT8po63CAlacydoi1IjzZxy5kaTnx0ZENqUDLaOw6vDSA+1n1X+AfljBZZ9LyXB/1iSUPMn8NkoLoPXJiag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706266087; c=relaxed/simple;
	bh=F+pxElelT/F/ERGpZqfOivyCijtrVTdyJBdwUJrqVDw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u8UKMi9+e1izD6PSA6YSRZ0onSAlzRAJ+2EH8YjdE34OVzlnNLA+zvHzoyJ51VKwIa7QKwaT7h7oeCgC+/fEZFxScLSYrQ+9KTF+sWAfTni/ItOXJq1Z1+NmhB+HJoTJ1i8nXEBUvG5szbBnYk0M1ci3iA7hT15oFmMyKqVl7zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PiZ6+Ys1; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2cf0390eddbso2285031fa.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 02:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706266084; x=1706870884; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1X1nwXaAEWXsseubIX+TSRe3UaNLCziOc5RFQoQ9Pew=;
        b=PiZ6+Ys1nnwmzFn4f1WeiWtN01pcI0FqpU67SrjRUUu0kdfWt99s8Bns/2B4uBhalq
         PsWHISYS9RTEiLYbKxB6yt/4KYoExvqEZ7lonqZ8l7O1Rrz9M68uPJb0iIowGIIhBVML
         IlJ9mTah1LyUWFLvX4am3sWGYE8XvcOgBbkmdGUCa0Cdh+5GlTOXbRKKDuybpHPXRrQp
         QYOpYKXwWejtxRvCvEDspv/zZIZi5baD6xLJfu1GD+AaI40SW18CZAxjk1nxaFSqCajj
         NTD4gTbfZaMmOFDusBKo3XkCrIOgpfekLVz0xci5vpGmuLjtwnjPz2UXL2aBBMRD5ed2
         n+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706266084; x=1706870884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1X1nwXaAEWXsseubIX+TSRe3UaNLCziOc5RFQoQ9Pew=;
        b=w5Zhi/tcA6HK0y0N1jdeOzA8Q4mFwDTKabVLtxfiR6cpoC7AOb79bIw3Mf1aV8yEEq
         eAlxWB2OQdeGrZ1jBmF+m817u+nvsRxGzm/znL6+AzBQjHZiq3VvdjJBVDItDixG3JrT
         NvVQzZb6KTk2zQejPzchh8b+YfCX1yiyGByT8i/zBpCHBhMGAMDgMK/IilFeKoB/Kq1V
         VbA9WyvtJ24anjXt98FPC7EbctVGG2kQgWc7LyIYT2XlteOGtWeKfDh03AkYxmpJajds
         QfXtrwsVDdgngf4oDZfCsGBH8FkBqHRxtt1CKc0fT74NytMWo7SoAmMdw9zCGRnFtpSO
         IqBw==
X-Gm-Message-State: AOJu0YxhA3vDFIZ6Fk7dMNgNNP8luzqOm1xg9EwoJbxBTHeBLWjjndPb
	vyQ9J+SJW0hBVaWVmTAm80spDsmXOzSgqAXMs05vkbacQpv/w49xYigWNOQRtbQLVEtA70fdkhT
	zoHg=
X-Google-Smtp-Source: AGHT+IGlysUiHFJtYU0FFGl6v1uvnDBJw5LWlHx0oehAIWieTFn6PlUFiJP1fNMeUjrUI5E/5vGCig==
X-Received: by 2002:a2e:2c05:0:b0:2cf:1aa1:beaf with SMTP id s5-20020a2e2c05000000b002cf1aa1beafmr694882ljs.42.1706266083789;
        Fri, 26 Jan 2024 02:48:03 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k26-20020a2e889a000000b002cdfa5aeac9sm127023lji.15.2024.01.26.02.48.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jan 2024 02:48:03 -0800 (PST)
Message-ID: <e1322a9e-86b5-4444-a40f-85e46d8b542f@linaro.org>
Date: Fri, 26 Jan 2024 11:48:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Introduce additional tsens
 instances
To: Johan Hovold <johan@kernel.org>,
 Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240118-sc8280xp-tsens2_3-v1-1-e86bce14f6bf@quicinc.com>
 <ce77861a-b362-4ecc-8e92-7fb846c7e508@linaro.org>
 <ZbOCrET0YPujMpom@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZbOCrET0YPujMpom@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/26/24 11:00, Johan Hovold wrote:
> On Fri, Jan 19, 2024 at 12:31:06AM +0100, Konrad Dybcio wrote:
>> On 1/19/24 00:00, Bjorn Andersson wrote:
> 
>>> +		gpu-thermal {
>>> +			polling-delay-passive = <250>;
>>> +			polling-delay = <1000>;
>>
>> Hm, did tsens only gain support of non-polled reporting with 8450?
>>
>> If not, we should definitely update all the relevant SoCs.
> 
> Did you determine whether the interrupts work as expected?

Yes, they seem to!

> 
> We don't want to be polling here unless we have to (i.e. polling-delay
> should be 0 as per the binding).

Even better:

https://lore.kernel.org/lkml/20240125-topic-thermal-v1-0-3c9d4dced138@linaro.org/

Believe me, I'm not omitting you from Cc on purpose.. I usually
realize I forgot right after pressing enter on "do you really
wanna send"..

Konrad

