Return-Path: <devicetree+bounces-129914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E81EB9ED0BA
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 17:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D1E728FFE7
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 16:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF5D1DBB37;
	Wed, 11 Dec 2024 16:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kon1QaTR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28001D9334
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733933013; cv=none; b=RDR6xpVlxcBU7mA0alJFb1qwJFrBfdaCZMcbtZOG/USX/z+7RFyOhp+Q16Ji2fIRg6ZqmkXEgTU3sWS4Jwk5iLc7Vme9suSHJC6OvI+MsM729q6ODfQn0ppq1UEa7aJ4vR69QQMOSFHwuX55z+bJs1M1dF8KCbbF/zCvBtAbqls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733933013; c=relaxed/simple;
	bh=o9NBCAJibBE7Cg/Mwi3++Bxz6puXmkfI8Fuw1rijxM0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=myv5iZJL2lHf4a6kvISVavpAjDth/bqX1PmQbsQ4Ucirv99g9vXOa+n5T1Y052dHB6OAI/4c7hcYayo7eG8M+iRGImoSwg6aPvlVGUV9NMA2d08Omx7IrIo+DLKLFxtC89Y/DjOJYr3ZkOlrMvuDpnhYbQ78y69bTiQqn1v/TDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kon1QaTR; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa67f31a858so654133066b.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733933009; x=1734537809; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i5RH8KE9lwCw2dJZrNysrG24xTalE49KqC5ZdyyDDKk=;
        b=Kon1QaTR8FkOLe3+OHyisYBVCt0EH4Pz7D1+l321yNMl3xNtYW7+x5CwJr0b+ODpTo
         h4F8dxub+IUHhjV6hA2AUsCbPRthA/+E+TgTrgBidw771bMWc3/qCfsHIorPsL+iZed/
         1hCsX8HP6xPk92XC69mdd99mNN1LUqxE5IRb9RT9/8kbZqZq970SYs3lV4Q3DsOXWiu3
         pysiGBEHjXoBwy9/rz4bLW1wN6ROhrUUGE2kGZXgn6IgVzU+ed0LKC74zij05gGz4q8w
         7wNqUPc/bfbgeR7NXSrAOR6CS/qa3+XPRyPC6LFG5vz6OfGAlvbnRq6gcki1umR1aOcP
         7wTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733933009; x=1734537809;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i5RH8KE9lwCw2dJZrNysrG24xTalE49KqC5ZdyyDDKk=;
        b=uSJgNDjzQ8tBwpPi4cIKFqjGsxgrxdzHV15K0urxyq4VcUGfXMoCE5iNUdXzQHynzO
         UmvnPBusb72l9MmdrQVruCtqfW/YG9HkR9QGzmG0J4q4AuBNy8ptHXsKJkqR6Kc4p8h7
         h/m3Epld/eDNBffg0kVnqpolgb3FZrWaivCrE6q9/Ysbguemsk98BvLMvXoeqqdRAIOS
         RVP3ofN9xtYB6Cnf5sdkbl5v17vcSZVhVyvrVHw+xJtJOskKupusHGV5vgPltI2EUUep
         XIyX7pFbUnXQaV3mE6ysJm/KNmNdrYPEH5arlUHTB4iHkgBr88Curb+lTX6V18Gz05x2
         zdPg==
X-Forwarded-Encrypted: i=1; AJvYcCVakw7cDHPvC5KIlseF+jRPVhA7sHfen8YJvl8V8HT+N8vBpd8n04dMnaQwcBPiusF7oqPS1JEHoZ03@vger.kernel.org
X-Gm-Message-State: AOJu0YzmPLXx11MPYXPBySYZ/muKUUzbjsUPysch7rEwUJf9Kax1z4It
	ripZdk0DwK+6FeRBVkoXfjG93Yy1DLgpIL5zPjeqBhPEKTcGT1AmUSv/KzgW/Vk=
X-Gm-Gg: ASbGnct0eWz8j8jr02yOA0WjA+toBfQmTU8LPicsywkFoMXZqXEJD4qHNWzSKpKvxvd
	AupXor8L91sFeuYKS0oRR8yNXsKOWTQDRvKeNpSW7p2DR1fr+Q3BxKK9fbOG/PVd2//sd+WzywE
	At9Y6OutQVc8MnMfByobNhQe5sCroUMoXGxxaTA/5JJIJ66asq2GNC6+AolXEz+kwfqvYhWHKtw
	QLYC2/wpNtnOPD62uMEMPTqd1AIR2k+AyhdxQwvm3qmlrZtPVPUoeU+UKdxZcIYbcg=
X-Google-Smtp-Source: AGHT+IG2FdkJPT94HQEtRGwYWaBTAxIlJjHQeKSD0iBM++VhPK90sU5ykr6gyv375oO439qmFde18Q==
X-Received: by 2002:a17:907:7712:b0:aa6:87e8:1cff with SMTP id a640c23a62f3a-aa6b11b33d2mr276373966b.24.1733933007333;
        Wed, 11 Dec 2024 08:03:27 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6b473e496sm107680366b.99.2024.12.11.08.03.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 08:03:26 -0800 (PST)
Message-ID: <63828150-ef52-49c4-bc60-72c1f6bff202@linaro.org>
Date: Wed, 11 Dec 2024 16:03:25 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 00/16] media: qcom: camss: Add sm8550 support
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vladimir.zapolskiy@linaro.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
 <12704563-f2d5-4e2b-a6ad-53b8ab5c5df8@linaro.org>
Content-Language: en-US
In-Reply-To: <12704563-f2d5-4e2b-a6ad-53b8ab5c5df8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2024 15:36, Bryan O'Donoghue wrote:
> @Depeng.
> 
> Some of the patches at the top of the stack here - won't apply once 
> Vikram's 7280 patches are applied.
> 
> Could you please rebase your series with Vikram's patches applied and in 
> v7 send a link in your cover-letter to highlight the dependency.
> 
> You can get fixed up shared patches from my x1e tree here:
> 
> https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/arm-laptop/wip/ 
> x1e80100-6.13-rc1+camss?ref_type=heads
> 
> ---
> bod
> 

https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/arm-laptop/wip/x1e80100-6.13-rc2+camss?ref_type=heads

Same patches on rc2.

---
bod

