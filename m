Return-Path: <devicetree+bounces-108925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2FE9944FC
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:02:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5106C1F2269A
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9084818C35A;
	Tue,  8 Oct 2024 10:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uUgrDllf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497BC18B474
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 10:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728381742; cv=none; b=m8eQRUcnLDUzm1dj185R8VKSrgcwOID4srflWbncyI2RLTfImmdRUlXnc9CEMxxeAkDHZ0mfLsvlNi2CHpFMfaULgQvQCbg2w4b9xmwvk1xvzqkVwrAgd5qiA90MIGnPUvz9ASOqNX/f6h9HT7Hqkb4HtS+chrVRnPca54xGgQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728381742; c=relaxed/simple;
	bh=n8j8JNXdThPtkvPES1j61HnDlzBM8+UCGYT2Xypot7A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EhKD5j8IeHhlordreoc4dZdOwLo/ANC+T+/JhlCWV7aUO8t1xKyiXhV4V1w5nuaAiZfxDzsf/a4LxWYJ+uqU1PR5dOQe8iFf5BNIFGgGzs0r7bQ3DJhcneitCdNr81CZzTvrgPRvUol9IMstYrOSTwbz+jx3cOCj1kjoXBu+WtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uUgrDllf; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5389e190518so796458e87.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 03:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728381737; x=1728986537; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tpOfxtVlCj+ReW9oGgsP720DcMraaz2lPqesL3hVXXY=;
        b=uUgrDllf6hl/GtudNKK5p5mMqKShlKNQ29vQjsx5ar16r9CbW1nzqLtYeRk5p9H6BI
         dIpAcAqSqErGZaitsHxEbmCVASah34vsGwQ6B+ZCpYE1lQMgt6cL7jQ/4AoFT1DGg46d
         QTK83PxkawQI8/LU65XpKQv8NQU3xjXuTk9dfLmDf6Hg3POh7FOjFjiu84ElLrtyaDBR
         4ECBplpfW2pWE8zQ3xiVL9j7jsx4Nte6MPnpvIgyo5pV0rBsfV0MPZ1hGxvX12Tx/6LI
         Ak1XxpbRqgmb5UtygB7RStatCO5E+wQ8Wjk5CizKyxYVSlVLjUInViM8SHQQ5Fa2heE2
         PW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728381737; x=1728986537;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tpOfxtVlCj+ReW9oGgsP720DcMraaz2lPqesL3hVXXY=;
        b=bCja8XKIMACrWjTzosSFh9hFK8D2GafB3vi0rBqqdRtTSaPDxxkLE3lWe27OBtIhvP
         kodllsGH9MbGqC1A5ls27D87xPjw8TdC5wC2aUpYCuEisDJSyr5K8znCRe1feE/0pNBG
         mAgosj4k/pTBKA/PESvVaXvzsPdTGPz0eX8Xw62Ox6XtXiZf015fsy/WKl6HkaOY6/+Z
         v/YFlxDBwxVepSa5oZVt3hEki2iBr1IZ7yZXkFHckq4jeXZVUKPb6ib0pZ+rJhNdZqVI
         gWVU9bNTaLzmPG7jtub9ZwVNyMMKCJcnXr3OtYLhRXHapL63J1SXpmx6BLsvuuwi6jON
         eb8A==
X-Forwarded-Encrypted: i=1; AJvYcCUmE1u5CPKT8hlA2uzvMw7Pnrx7XrY8GoRnfthXOJN1QVoIa5mEWKuALedek7X01OJ86rCiAeqoyTxK@vger.kernel.org
X-Gm-Message-State: AOJu0YzRC+wXlxo+XUWxXjZt6gdJCgHdfceWLGiGew4X2lsLRfX6QrQy
	UIBdYyGuKc+LQKsYtssAkKPsG2D4yS/VeEafDOH8US+UuGieNorpZS4/Dwgriw0=
X-Google-Smtp-Source: AGHT+IHgeqyXij4u+nD1ePGJkAgVf28uEoo4swmpnqI06xa99FGkCCQPWG4HGuN7zAGO55WXBD4cFg==
X-Received: by 2002:a05:6512:3a8c:b0:52f:287:a083 with SMTP id 2adb3069b0e04-539ab6d8d5amr2325191e87.0.1728381737052;
        Tue, 08 Oct 2024 03:02:17 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff23390sm1155019e87.212.2024.10.08.03.02.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 03:02:15 -0700 (PDT)
Message-ID: <3f87e855-8779-4df3-8f26-e3d2b611d3e9@linaro.org>
Date: Tue, 8 Oct 2024 13:02:07 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: media: qcom,sc8280xp-camss: Fix
 interrupt types
Content-Language: en-US
To: Bjorn Andersson <andersson@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
 <20240923072827.3772504-2-vladimir.zapolskiy@linaro.org>
 <datahu33nmsser2p4fb2hyncsujtkwaca377ivwmpc6yj2naut@2sjsbebfm3gf>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <datahu33nmsser2p4fb2hyncsujtkwaca377ivwmpc6yj2naut@2sjsbebfm3gf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bjorn,

On 10/6/24 05:36, Bjorn Andersson wrote:
> On Mon, Sep 23, 2024 at 10:28:22AM GMT, Vladimir Zapolskiy wrote:
>> The expected type of all CAMSS interrupts is edge rising, fix it in
>> the documented example from CAMSS device tree bindings for sc8280xp.
>>
> 
> Who/what expects them to be RISING?

I've checked CAMSS device tree bindings in a number of downstream kernels,
all of them describe interrupt types as edge rising.

$ grep -Hn IRQF_TRIGGER drivers/media/platform/qcom/camss/*
drivers/media/platform/qcom/camss/camss-csid.c:619:			       IRQF_TRIGGER_RISING | IRQF_NO_AUTOEN,
drivers/media/platform/qcom/camss/camss-csiphy.c:605:			       IRQF_TRIGGER_RISING | IRQF_NO_AUTOEN,
drivers/media/platform/qcom/camss/camss-ispif.c:1164:			       IRQF_TRIGGER_RISING, ispif->irq_name, ispif);
drivers/media/platform/qcom/camss/camss-ispif.c:1168:			       IRQF_TRIGGER_RISING, ispif->irq_name, ispif);
drivers/media/platform/qcom/camss/camss-vfe.c:1327:			       IRQF_TRIGGER_RISING, vfe->irq_name, vfe);

 From runtime point of view it's more important to get re-probed camss
driver, see an absolutely similar and previously discussed case (in the
cover letter):

https://lore.kernel.org/lkml/20220530080842.37024-4-manivannan.sadhasivam@linaro.org/

Now in runtime I get this error, it's easy to check by unbinding/binding any
camss device:

irq: type mismatch, failed to map hwirq-509 for interrupt-controller@17a00000!

Basically camss devices can not be bound on the second time on the
number of platforms touched by this changeset.

>> Fixes: bc5191e5799e ("media: dt-bindings: media: camss: Add qcom,sc8280xp-camss binding")
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   .../bindings/media/qcom,sc8280xp-camss.yaml   | 40 +++++++++----------
>>   1 file changed, 20 insertions(+), 20 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
>> index c0bc31709873..9936f0132417 100644
>> --- a/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
>> +++ b/Documentation/devicetree/bindings/media/qcom,sc8280xp-camss.yaml
>> @@ -328,26 +328,26 @@ examples:
>>               vdda-phy-supply = <&vreg_l6d>;
>>               vdda-pll-supply = <&vreg_l4d>;
>>   
>> -            interrupts = <GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 758 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 759 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 760 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 761 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 762 IRQ_TYPE_LEVEL_HIGH>,
>> -                         <GIC_SPI 764 IRQ_TYPE_LEVEL_HIGH>;
>> +            interrupts = <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 640 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 641 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 758 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 759 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 760 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 761 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 762 IRQ_TYPE_EDGE_RISING>,
>> +                         <GIC_SPI 764 IRQ_TYPE_EDGE_RISING>;
>>   
>>               interrupt-names = "csid1_lite",
>>                                 "vfe_lite1",
>> -- 
>> 2.45.2
>>

--
Best wishes,
Vladimir

