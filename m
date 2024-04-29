Return-Path: <devicetree+bounces-63763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E578B6635
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 01:24:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC4F61C21521
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 23:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0610E17B503;
	Mon, 29 Apr 2024 23:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="By+awNSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA566CDD3
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 23:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714433086; cv=none; b=tF5ChiMsZFkKHY8/bdLOeEEFNTk7GzKC+2Hugw6+6Fd0Mmf+4OxkiE99TC0Eryt0Sh5TURMyPLrtCglnAILwJA4fQBvhrUJ0ig/3tlFb/15hmD3TyqigBJblylBt07ndKOLyVIqRui8AOjuWlwKXwFWjFsjD5EUlQuNY3O7cjrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714433086; c=relaxed/simple;
	bh=jpJg343tUvEgPaQ82/BOHJpfijqZQCt7NOG/nMRYgUg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b+wt5th72zQte5nCY1C5BEv3OiDxdV8K9EFwlztOksVa39E47fzUW5BO5e9YvIaRU2GYm+TUZL3wEtlopWSXfG+9/3+n92vtIAg6o8NpltrPUBbW1TsYd78sM3lj1sNExqPLeNdDUBGqWuZA0sccD1neyArbkqyXxIsxhs+h19o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=By+awNSK; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-34c8f392172so2009141f8f.3
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 16:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714433082; x=1715037882; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fd2LTJN7mExidgR4wG0glRVq7EWgwgs0gJNGj4m+AT4=;
        b=By+awNSKrtGmMSRj8m4dgRnK/FToHqG2QVUeukifKGPGIuaahBz+q2qT1k3tUmmwQF
         w3V8qCZeHqfEsJ0Z0iCJ6kZMsrYfWXMZ2vCUI8OadcSHl4AJbTGpZMhwAADFpmt2B6YC
         5l6YUZzFEzwcJLa3smm3s1LnFrAxoCjiQ7X+6vA666OVklgO7/Dnqm55WvM5fM7Y17Rw
         TszylIvC71DSCvn42Hkq5X5BG/pCxrYVaaekBzVaq4xcSe9DC9SdoKvB4jeQL+EpCb7q
         69KE5V4ypvIo15L9S6wPRNBdwJHe1Cvne0HhvTOyKpmCzAcrqdTU5cSUbRODpkGlLYvQ
         JeaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714433082; x=1715037882;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fd2LTJN7mExidgR4wG0glRVq7EWgwgs0gJNGj4m+AT4=;
        b=oKJue8AIwNkY3LvYvh3WAHdkzMBaJpHO8gphiSDDIFURbMDdPHQZLO2XuzkkhkbDTr
         6wWcr159aGYwlvFP4LlNPlo1WVCb83++CF1oeyFHJlfFJAkWtTNjP9tWvvne3N+Unelu
         Xo1FPnRYr5nSKXIhhniGQvp/qo1KMsYOAwvuWQynpxMf2NQ8sFcrb/iIKbDna3Y+GYWw
         7alV50zX8t99zAIR88GoRsACJ5ntNG6KDaMPhWnG+CWKUdk0wbPYtEdkFxixhQ4BkNaL
         8+v21r0lCQyYmztH4ygo8bJxcnOvHaIzfL4ATct4//CzJiYDFb/I0/EfbalaZ/foS4wT
         Vxvg==
X-Forwarded-Encrypted: i=1; AJvYcCWtLE7MY3LvjCYJujp1x7J12pMBzBkTpuG7qjeQsZpzYkoZhyXJaZj+CU6bSH65if/hmS9Mxna+y9XM4zOfY/YjMdCCTKFu0bazDg==
X-Gm-Message-State: AOJu0Yz02QRN6cmEYtB5IkvK3mu/LLS7ZqK1LtWQ9p0eSbG4hogtCvhc
	sZFe7vHqCxreCzfYpLVzwWr+O/ah+arHhqcyho3oUu3S9z4n7bBCVGYcxVoj84U=
X-Google-Smtp-Source: AGHT+IHE7q9J0s4PVV5qxrR1nnvsJd1w+fjAvErLazpWYnvpEwqc/iF7E4hKZWuHUnbgRl27LnK9TQ==
X-Received: by 2002:adf:f5c7:0:b0:34a:d1d4:cb3c with SMTP id k7-20020adff5c7000000b0034ad1d4cb3cmr9833037wrp.39.1714433082505;
        Mon, 29 Apr 2024 16:24:42 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id y18-20020adff152000000b0034d7a555047sm315284wro.96.2024.04.29.16.24.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Apr 2024 16:24:42 -0700 (PDT)
Message-ID: <463bcd2f-c741-4120-b7ae-2bb55d5211e3@linaro.org>
Date: Tue, 30 Apr 2024 00:24:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/3] Work around missing MSA_READY indicator for
 msm8998 devices
To: Marc Gonzalez <mgonzalez@freebox.fr>, Kalle Valo <kvalo@kernel.org>,
 Jeff Johnson <quic_jjohnson@quicinc.com>, ath10k <ath10k@lists.infradead.org>
Cc: wireless <linux-wireless@vger.kernel.org>, DT
 <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Alexey Minnekhanov <alexeymin@postmarketos.org>
References: <ebbda69c-63c1-4003-bf97-c3adf3ccb9e3@freebox.fr>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ebbda69c-63c1-4003-bf97-c3adf3ccb9e3@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/04/2024 15:01, Marc Gonzalez wrote:
> Work around missing MSA_READY indicator in ath10k driver
> (apply work-around for all msm8998 devices)
> 
> CHANGELOG v3
> - Add a paragraph in binding commit to explain why we use
>    a DT property instead of a firmware feature bit.
> - Warn if the "no_msa_ready_indicator" property is true,
>    but we actually receive the indicator.
> 
> Marc Gonzalez (3):
>    dt-bindings: net: wireless: ath10k: add qcom,no-msa-ready-indicator prop
>    wifi: ath10k: do not always wait for MSA_READY indicator
>    arm64: dts: qcom: msm8998: set qcom,no-msa-ready-indicator for wifi
> 
>   Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml |  5 +++++
>   arch/arm64/boot/dts/qcom/msm8998.dtsi                           |  1 +
>   drivers/net/wireless/ath/ath10k/qmi.c                           | 11 +++++++++++
>   drivers/net/wireless/ath/ath10k/qmi.h                           |  1 +
>   4 files changed, 18 insertions(+)
> 

I wonder if you could infer the workaround based on firmware version, 
instead of kernel passed flag ?

---
bod

