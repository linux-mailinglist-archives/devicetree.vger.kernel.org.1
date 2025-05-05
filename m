Return-Path: <devicetree+bounces-173663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99746AA9391
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:51:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D63AD3A9DA1
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF131F3FEC;
	Mon,  5 May 2025 12:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UlGAAT89"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69A641C63
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746449485; cv=none; b=AT6JBqcKRfD3AMFQPqfbYmmVsZwedZ+Id0DVcdW5u8Scmu11JS3C8gQHCArHpS+DB5sCp/CamfScoZz4E9Qnlo3YIlGWkqSoef2jIRXTGf8CRkhzQWjqOKNA+Mv8f4UBZGG/WBmmtKtDKEkfLHV5Uzu7rJ1foD+HICfUii76Z5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746449485; c=relaxed/simple;
	bh=bIcSozAc+xYMSh9sVPfx52QKRR51aePq1H3jYrBumaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DMIsCz3b6e3CTDTMLE3ps4T2I/rfXjo3N8nGikpkwdT9bDGS51tA8+ylg7rfkbxnpywYtvplUsveaKEm8knJEjlMYezFljvCkC1zsyjLeFxplpM1IrfDy7RuWqHV7EbhjDIStQNbPEgYPKnlgvPTFfCFzed44DMHRsW3d6h6Xhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UlGAAT89; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-391295490c8so255735f8f.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746449482; x=1747054282; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ndsmfORnkICQk8jSCedUOIfsQUGdzXAUTeHyArpuUsw=;
        b=UlGAAT89VCzGo6sDBKGbYBg6ro5Bk6wF3VdRXWJsMrGKzTSKu6VoObRmVUln/iDp+P
         Ff9NRkPm8mwrHDEmxAYRhO9B2WQqsIfGgxjjg9bpUok0Pmo30eeW1c7rEsWk/ZG4k4FZ
         XmYikuZQRXwhedUTZ7xRUNSLdz98aFvZ7vph0Wem7ylrtQGJaBeztPVdWVl3L4rYMzwB
         oF5mLe8ZvFUE9Lmej4iR8Kw0Czj7mQjXdOlm3gLYMYULn/X4bw8aZuMVUpkjllqIEAL1
         82GNPxupSxAgOnI1RKM5Rt6UGv9vXmyRlA8j43DkPMU187X41S8y9etp1mpYfQKooynn
         l32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746449482; x=1747054282;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ndsmfORnkICQk8jSCedUOIfsQUGdzXAUTeHyArpuUsw=;
        b=pD/BihyTza4oCN3fAqRw297v4IyIeLlWhn0vVHwcXkSPJk1uGkK4KJMzuzCCrtT9Gf
         UDZquCIGxwY+pyNSxWzoJI16td+5sqVCbz/ra/D7vXKdBMX2D9jcap8wqByd3VStwUhZ
         eJWsMb/ndCSG3PaVQEm0uHxAVJOX2qjtwWNd7BqHVTIheoyMp/tDCgA4F8XpMF7EZO8V
         Kld06u9VaAmyLwmYDxbYeVLdRAX4I9UQVVG5Vt+UI+YVI8Fsuzqw+wYzkq6mTXfwiArn
         k2TSklCp4Gd34vSX5A2DZe71vrYahX1NxF51/SbRGGPFpAVBm3PFlTv4HoFt4YXL7f7c
         LqaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFxCSbFtYe4N8HPWk72ujQGkj6l8V+JEnXChKcfO4iT2e0kuONrtiB9eLXPc6wCTzW2oHCbCBcppGr@vger.kernel.org
X-Gm-Message-State: AOJu0YxJQkX/HaHnSWlnXveQlNycRU5IKAWHEpRNRLIdl80IEpsSMOLj
	/Oml6k3lUmXMnDy9OzQwaMzF1hVXaul+dIqm+Sk6QmHeTmh7fgtTpCbZI1Osvk4=
X-Gm-Gg: ASbGncsOO3wYFXbM4z3FHqDGfqC5mq794MpCZeMe5qEYOwx/JFPbboebB2xac6+YYxu
	FW+qEF+snXoapH+yjs0Wxp4mKj5NwdXr9dzwaN9yNuk1tb/PGHe3wurLCryFD1fy098Wa5PPfqr
	xtBSsC/Qjr88f5o8N1/FhXS75lzTH2ISojx1zBgbMnNLIsh5slnuBJQlWcoL07rC2nQCQyt72Ce
	qG/4TXQUYsm0VUet4jo8jFTPFsdvkzaV5GiKfoiwOfxgETk0vL5ZTF2e59ZV+ZrkEROB5Xq/a6W
	fxKsdMHYbL+R7atQWwBrnlzd9paMjWkER1MPsdiR93/+ukwd53sJ3GB2ctc=
X-Google-Smtp-Source: AGHT+IFh9MqrVoggZusz4VHj0uAdGrHI1bTqOdCSn/SPHpGaUlPhaICa/6fcOPCGmTg/zC8S7KfQeQ==
X-Received: by 2002:a05:6000:1a88:b0:3a0:6c12:237e with SMTP id ffacd0b85a97d-3a099af3ac6mr3160293f8f.16.1746449481965;
        Mon, 05 May 2025 05:51:21 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b0ffbfsm10134616f8f.80.2025.05.05.05.51.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 05:51:21 -0700 (PDT)
Message-ID: <a53149e6-2273-458f-9fa3-89fec112f4d4@linaro.org>
Date: Mon, 5 May 2025 14:51:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/3] Add STM32MP25 SPI NOR support
To: Patrice CHOTARD <patrice.chotard@foss.st.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: christophe.kerello@foss.st.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
References: <20250428-upstream_ospi_v6-v11-0-1548736fd9d2@foss.st.com>
 <174636664232.45285.4829080141383638928.b4-ty@linaro.org>
 <ec294e4f-274a-45ae-ac10-464ae4ae6f66@kernel.org>
 <6d697e1e-84da-4988-8564-91430e820fef@foss.st.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <6d697e1e-84da-4988-8564-91430e820fef@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 05/05/2025 14:15, Patrice CHOTARD wrote:
> 
> 
> On 5/4/25 18:16, Krzysztof Kozlowski wrote:
>> On 04/05/2025 15:50, Krzysztof Kozlowski wrote:
>>>
>>> On Mon, 28 Apr 2025 10:58:29 +0200, Patrice Chotard wrote:
>>>> This series adds SPI NOR support for STM32MP25 SoCs from STMicroelectronics.
>>>>
>>>> On STM32MP25 SoCs family, an Octo Memory Manager block manages the muxing,
>>>> the memory area split, the chip select override and the time constraint
>>>> between its 2 Octo SPI children.
>>>>
>>>> Due to these depedencies, this series adds support for:
>>>>   - Octo Memory Manager driver.
>>>>   - Octo SPI driver.
>>>>   - yaml schema for Octo Memory Manager and Octo SPI drivers.
>>>>
>>>> [...]
>>>
>>> Applied, thanks!
>>>
>>> [1/3] dt-bindings: memory-controllers: Add STM32 Octo Memory Manager controller
>>>       https://git.kernel.org/krzk/linux-mem-ctrl/c/43eb1b288072641b7de8f5d5c15bde69e6e8589a
>>
>> And dropped everything - it is full of warnings.
> 
> Hi Krzysztof,
> 
> What are the warnings you encountered ?
> 
> On my side, i double check and found nothing wrong neither on bindings side nor on source code side:
> 
> I previously checked that everything was up to date : 

stm32_firewall_device.h:117:5: error: no previous prototype for
‘stm32_firewall_get_firewall’ [-Werror=missing-prototypes]
  117 | int stm32_firewall_get_firewall(struct device_node *np, struct
stm32_firewall *firewall,

and several other like that.

See:
https://krzk.eu/#/builders/38/builds/915
https://krzk.eu/#/builders/40/builds/900


Best regards,
Krzysztof

