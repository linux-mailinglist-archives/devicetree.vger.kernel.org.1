Return-Path: <devicetree+bounces-182508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C842ACC97C
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:46:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C56016E7DC
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AFF023A9A5;
	Tue,  3 Jun 2025 14:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cf0rRyWh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6464B5AE
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 14:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748961994; cv=none; b=aFd2ayE8E9g3sLC3Kt/C8b/8Z6LwnA80Rn7jTZSoDt9aNj6VLSWsaLAthLI9MeJjisiS+5sIVyg1Ho6kQ6hSOB5fkHO39/rCO3rSR37lHbgzVZBPuRo7D9JNH+ADS+2Z3Jx14nwcmJcEa6T4o0MsPXvGGv3OPseL0zkqQBN6ib4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748961994; c=relaxed/simple;
	bh=SRrmvMmAfQ84Yeq4WzNWtCU8EkhCciiw6kJXyYDeUl4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=TJqI8qA+nOa4ZvrMWrpLtJFPOq5Eohchdo2S0yRiYHzx9+jnkbXjRK7Vbnwg7hmSl71dvv3UiAd51LWviHPLCAGjS4RM6w9G2VpsZpEGGS52q3oEMLmkYo6xbwrfjSOZIBFEOTRR6i6NRFvXCt6PJYXzkfryCcBVSC1sWwfgEP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cf0rRyWh; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-442f9043f56so34979155e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 07:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748961991; x=1749566791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :reply-to:cc:to:from:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZrRmbG4/N2m6vRayn9TmhHXB4wgb2uEtyKQ9Mx3XTkw=;
        b=cf0rRyWh7K7Pl+yc5MBiK8yhGgdhzximhrDHXfLgWxEOVKaqS7b1+e38sNqLbj5j24
         8XI86AJ5k+lj4YU9ry1h4X8/+/YWQWt/mTka2sQnSrlbfiv5cxH4NiexRbPl44s3/Wjk
         eiVSWq08ZHVTIYs/nzFS5VYcX/ob+1vW172H4yrAlW0eTyDxosar8UEY+4xuBm99LeXO
         TBMc9+4iJAvJLoNHOe7UuzVmEPJI7KfFfMCx2TeZxaXtKv/oSJdMqCfbtfSdaYRJrLJZ
         klQdSIaNSK8vSJiGHhurwqC3jFiIhcSsM3BJSzVEsFZwNwfCP1VmrvdHf5nY39bk5oxh
         r5mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748961991; x=1749566791;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :reply-to:cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrRmbG4/N2m6vRayn9TmhHXB4wgb2uEtyKQ9Mx3XTkw=;
        b=LmbtZD+qzQZ8Rcm9a97wGp0rvFi3a104VEDLnsaqezUKvRSsFSA2e9RgjRzYK+e4dW
         e7AssCkYP1uEOuv15V7zeyEnz5XX9cfbbJgIPUG4ACyyBCv4UaYWNYNv4RmFm7/HR2+c
         DdXwfWEl/Yx/CdUAhBqPwXCsOjvQ3HYvunrrCfLgOHk0mhivz41rYmO+C8GrL0WCyfKp
         GPZhXFitqnUPUZ7u28m5IG20n1vaXWOG6JQHsGUfc8VAJvBoMEZnML2c7EeJ6paZWKap
         uLvTo1iOYD1Sk8x2zzodrNMaCj9g8zceOfYVxMCDx68+Cqwm2M84JVPl3ftZKSiYkp15
         kI2g==
X-Forwarded-Encrypted: i=1; AJvYcCXptRq4U50qsKkJ0yMmjADUOo7erq6nwb3z2xI/5IazIcPJy9FZ9fCDKU27GHXLiHPW1o7X/9NfxCse@vger.kernel.org
X-Gm-Message-State: AOJu0YwGdx302GOP4AbkGfE2ywQbk/CD624uocnxrTayfkPrXw2x0dyU
	VwIINGLQJSd5+JmZIWKKa3ei93rLoeVfEsu34LiIrqLLdP1hD/NFwz3kM26eeq93WfA=
X-Gm-Gg: ASbGncuTkL6KiRrROkRsXjPdGejA34bL8ZMe5bbrowupCWMDiJ/kNv6f6wVuNe1MAWk
	DasjlJIQpISCFwWhwluZ0VM6/UswBYfLQnPiuhgV0y7sBEHHCi0tOr1N/TD6cjpHIMtfdjxZlEg
	EFkTEzy5/jFOw98+O0UouilJ93wNFMAWfq4gRH5Qx7sbLUS8lgxlWy7rBXBxDsCCC6nROEn0Dm8
	d/h2LJfnZqJIkRsTHAPaTNirg0rZj6U7f/GL5jOWfJlBKeBCNZtxWOQH1b9ydLC8QXjyLuVNL80
	4Yqm2574zQaOQ41z4U3QbiAukk1GtqxodHERoT59RlS5+rljl7gJSMwiagZ7Q5qoImUKhe3NMwR
	h4UNV2++lg46quAfU
X-Google-Smtp-Source: AGHT+IEwDI4aK9ArKoZhrl7cMJOHsOARjxSQuD4nPo7SSj+7IEGKJEEdNhEZIdVtyzFuUtgXO7lmtg==
X-Received: by 2002:a5d:588d:0:b0:3a4:eecf:99af with SMTP id ffacd0b85a97d-3a4fe398ff8mr10830056f8f.44.1748961991228;
        Tue, 03 Jun 2025 07:46:31 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe5b8besm18722647f8f.16.2025.06.03.07.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 07:46:30 -0700 (PDT)
Message-ID: <6b7ca51a-241a-49fc-8aac-da5af96b5e10@linaro.org>
Date: Tue, 3 Jun 2025 15:46:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/8] serial: qcom-geni: move resource control logic to
 separate functions
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Praveen Talari <quic_ptalari@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
 quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
 quic_mnaresh@quicinc.com, quic_shazhuss@quicinc.com
Reply-To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250506180232.1299-1-quic_ptalari@quicinc.com>
 <vTOsjvsB7oSpu2Oe8i1ufoz5C2Hy3EtfDnfBsLag2p-s63J0BLdqbLn44Hds17WR12JGfo7sd52k7uHaXlTTeQ==@protonmail.internalid>
 <20250506180232.1299-6-quic_ptalari@quicinc.com>
 <f912588b-fb54-4257-a4d8-db58e93b8378@linaro.org>
 <y41ikVJ5uSSaGZHmqsvTm9akz3EUUT7X6dTPrfSuIYqGmMdlEfPRWqPA630jmsEzwC-6JSgYRPobg4e933PgxA==@protonmail.internalid>
 <afe41159-00e4-45d1-857f-0a68f6fc6c8e@linaro.org>
Content-Language: en-US
In-Reply-To: <afe41159-00e4-45d1-857f-0a68f6fc6c8e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/06/2025 15:29, Bryan O'Donoghue wrote:
> On 03/06/2025 15:28, Bryan O'Donoghue wrote:
>>> 2.17.1
>>>
>>>
>> Assuming you address my points.
> 
> [sic]
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 

Oh please fix this in the next version

checkpatch.pl --strict mypatch.patch

CHECK: Alignment should match open parenthesis
#92: FILE: drivers/tty/serial/qcom_geni_serial.c:1675:
+	else if (new_state == UART_PM_STATE_OFF &&
+			old_state == UART_PM_STATE_ON)

total: 0 errors, 0 warnings, 1 checks, 71 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
       mechanically convert to the typical style using --fix or 
--fix-inplace.

0005-serial-qcom-geni-move-resource-control-logic-to-sepa.patch has 
style problems, please review.

---
bod

