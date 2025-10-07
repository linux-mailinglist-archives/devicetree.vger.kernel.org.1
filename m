Return-Path: <devicetree+bounces-224326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1702FBC2D86
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 00:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C3DA19A2D6C
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 22:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37261258CFA;
	Tue,  7 Oct 2025 22:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kAj2GqOl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC71922FB
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 22:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759875394; cv=none; b=UnHrPaQsXvfPHJMYFdyfEJ5WN6yZorjzWWFv0dpAA1YvfWAiw0nm0h7aguKyPJWRuDs+RDeICxuQYVktfk0DjEhHLhoPU/8i07AjVbGYYJjlu+0GoF6ipJJFialeKkMhrgPd1iijdxIwcLCUNoLGKFtN1h7P1+yf/HijXTBl9x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759875394; c=relaxed/simple;
	bh=pMHeIuQx2q4EHNUQvUoEFemD+88dJQKlLGcjt4nVQGk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=chnvj/yCW2CLBS1l0TrNNTA3djmRpP9H7K3gd3cX46/iJWdgGJp+9WQGaPiWF8O9Fd4ip6Mm55ogc54OtdVzNZ9dbboYGEkrYiwXiEdytFdPF1tlg8DWR4aZ4G+WtENOp+grVZo19Cl/6DLgZ8rmRp7Z6C1iX88ZkBG2TaMRfFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kAj2GqOl; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b4aed12cea3so721187866b.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 15:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759875390; x=1760480190; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bjhcAIDF8/EQN2DtNJznmQGOwXEZTQMeZUXrCuISBG4=;
        b=kAj2GqOl6HhgV5mNBcoTW4pypt842MkO02/gULfWx/Kr4vpxUhL5oxbndpxCS5B7Xq
         3nfxJgz6PJF8AAqveUym2jFM28rAAnfY0IsQDZBe1OD4jG3U16IheEvyIcu8TlYJmSnW
         dFRRaO80CQwx8ViXQeF3Z6sSFdJHZeEu86oEQhCxwDbgSpklQsUGM85rhi+oypbItX6W
         ZW4nfuq+P1KddlbJbgGvxN4Wy8UuHwk5JhhiA9a7jRK+3+xpdDrJFK+JNoQQ5tjlCWM6
         aSsdlqBL3ulipU04pkfh0axr5HCg69ZqVxnftNG/FcfiCcvFCWp+uFhhAQ/q7AaBdHcY
         67zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759875390; x=1760480190;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bjhcAIDF8/EQN2DtNJznmQGOwXEZTQMeZUXrCuISBG4=;
        b=YCFO6S/0gX/JgfiNSzRL7YsLveEaz3Yd1RavIZuftS1Unrg6WVus8LnaGzE/VJjDHl
         wB0Wshe038UAxjsXZukuxhYqgbK/fO0bEejlb60iwfu9YWzrSZ+bQ/CxXl17rZ3G2TeA
         LzUiQeGFVSXsajBsmglSIPTmvRD0ABFoUAoH8UP12zJ/cQMpT2IYWbvATNWeIuiuxpS8
         DcDmykWMBuEqz6/dmklWR64k3stUB2dpfD2vqJWzHMMHv+3yJlShVpDTDq2vpax9tq+2
         cIsSQtMvGiGawetglppUnHB6xQYWYFvzXCR+0Eu4iprUgYsQn9MlMTC/44HyL2gEENoF
         gFlw==
X-Forwarded-Encrypted: i=1; AJvYcCXNpB34xNOqF6/TpwRZnENmU8mOOpNMl2UTB+N4qkU+3+xd8JccfJvSRlCXl6ZqCgsHjo7j3j1+9/Jp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywym5aEb2dCS8+KyCi4ViTosDTbvC6jPt+VlgwuL20C2qhtcKQa
	n34peFsKXuKgm+pMKukfUYDyBYKOiNZoe2qzW8i99PJ9dWEdDeNLN5sqmHk4HtKNZ6y/4GoRMBj
	j4F7QosI=
X-Gm-Gg: ASbGncsivmWioFG62tH3Wo7azskbW6dgtI2RA6bSbDsLuTDrlR93xxbrNiDVCimSzBp
	wiz2Xkmxk8P7XTz2Ry8szq8bpGjTb6V89Lnt8bBmNO9PCZRiSiEndgAp0RMSi8vKqO195zZ6oc2
	/fIjBCmxDmTUG5cSTmeC0r04mfU0GAmXQpCywHW/WZtAP0lxReruximbcBHUsqSJhQ9Ozfvnd0Q
	tIFl2FhiQHjgOOUTwP5cZzMvbf3jo55LxoQ3zp88gDNVpU9g9Z/cSkaLlt/qvFidvwlu937Wi/z
	gAjmlCCkrW2/D2RpTWWdMte8S1k4Yf1reOVpnPM9xH2NIXkhvHwH+jwwFHHdogLTcVFIINogUnN
	Qq5vqvYlaWZCWhH1olefd0362t6R89g3A7cE0XCftO7Hxrw6lYRQkbFclpP6/PE2DvRmTda1uWJ
	YFd6Pd/Po5CtlS2mB3
X-Google-Smtp-Source: AGHT+IGYcPbzACIE/5EMswc0+sjA3tFOGQiH/oXWXnWgAeZoMqEYeVqq1umjaIwNpexDiKcPAtxL+w==
X-Received: by 2002:a17:907:c02:b0:b2e:6b3b:fbe7 with SMTP id a640c23a62f3a-b50a73c4cd7mr128513066b.0.1759875390421;
        Tue, 07 Oct 2025 15:16:30 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b32bsm1530188666b.50.2025.10.07.15.16.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 15:16:29 -0700 (PDT)
Message-ID: <45eb9c5b-bc8e-4866-bbaf-5afaed9fda21@linaro.org>
Date: Tue, 7 Oct 2025 23:16:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/12] firmware: qcom_scm: Introduce PAS context
 initialization and destroy helper
To: Manivannan Sadhasivam <mani@kernel.org>,
 Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
 <20251007-kvm_rprocv4_next-20251007-v4-3-de841623af3c@oss.qualcomm.com>
 <qqjynnzjhpe6elglh3xb4ghbtesfkr4ssxyq5flhcy7a5jp6ym@3viy7jyesamq>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <qqjynnzjhpe6elglh3xb4ghbtesfkr4ssxyq5flhcy7a5jp6ym@3viy7jyesamq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/10/2025 22:23, Manivannan Sadhasivam wrote:
>> +void qcom_scm_pas_context_destroy(struct qcom_scm_pas_context *ctx)
>> +{
>> +	kfree(ctx->metadata);
>> +	ctx->metadata = NULL;
>> +	ctx->dev = NULL;
>> +	ctx->pas_id = 0;
>> +	ctx->mem_phys = 0;
>> +	ctx->mem_size = 0;
> Why do you need to zero initialize these fields before freeing? Are they
> carrying any sensitive data that warrants zero initialization?

Mukesh, have to say I don't think adding my RB to this patch is really 
warranted.

I gave review feedback that the above looked odd.

https://lore.kernel.org/linux-arm-msm/9139706a-708c-4be6-a994-120cce0cd0e6@linaro.org

Could you please drop my RB here, and fix the above in your next version.

Also please add me to the cc list for the whole series.

---
bod

