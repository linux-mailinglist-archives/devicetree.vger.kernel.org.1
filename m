Return-Path: <devicetree+bounces-63903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC768B6E9F
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:39:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9FD91C22B07
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 09:39:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828FF129A7B;
	Tue, 30 Apr 2024 09:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FJwwKsbk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7F622618
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 09:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714469825; cv=none; b=igLPA3P5baKXbfnr6nMuvCUXy3lZGZ7+uaJXgUlrUinIkUshWtfTCgss1swH/f/MBoOMZW11OeIHx5u5j9sUrSCCbdyHtQo6dAS9ddBW9OIJBPf6s2luRAsuZ6jKnCND+SexEqoZKA1Zxi7Wy9RU1ByXl6T7NejjLSCaCzb/GaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714469825; c=relaxed/simple;
	bh=+F1pjBOfB6N/WiclAdRMn4R8XjTNlnuvqYwZKaWIz6Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EsmRe9FSRmZ7bG6jMhI+f2zfD9N6Ii8xwHaeh+CpKt4Ej3oUbE0Mf8b0wq1AvvgUvsY/4m4sCEGuxmWrvwFCnueReUTYshkd5KYj3zcip1j6QTOQ8fUYyx+KCFM7lfCCDpXxFEYsKzmCok14iCVaoHcFHQHfptqhx2b4obA6KRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FJwwKsbk; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a58e2740cd7so514850366b.1
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 02:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714469822; x=1715074622; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=L+f67iY7G3WItW2IqwGXVh78isNUyFr1kYaaBj8+h84=;
        b=FJwwKsbk2qhzHgVdrqCpGMPu9ZShEWMMoHnX+ReJ/tEcaLVaNRfvzLNM2RxDEG8d6T
         WuQq3Q+ikc/+pFfF5ezPJXJiNdbhdaYsiYRreqAKtp0WeB4qAD90EeZQgpSzDZWDmncF
         TaWWs0dlz/4nhcBFL8zsrjz8mXR+6McKcypzcjX8WxFKxOZOaEKLo/7wZ783ELzTWVl+
         fYTJtMO9Y6z3Iw5qCybAxxzehL22Rpg/nAWnzwu2WGWuvmms7shU+A3OE10TkAVzq70d
         /RQHNQLhgzwuzTm941UIhlPSfSeeDmJHuAoZZ9T07fXPoRoJyHdGbZnlzQzLkUf4bwZr
         1pow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714469822; x=1715074622;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L+f67iY7G3WItW2IqwGXVh78isNUyFr1kYaaBj8+h84=;
        b=lIRbJUSbH28T7ESfmKee9DCPXp49o4als10O1w8VSaV/n/dmJ6W71SpL3akssgE1Iz
         IfSHijZTjZKq/ZZya6jwrh8wVg24CAd/8VuOIvYeN2gNbAya05/CoxaeVphwoaOZWwSc
         wr1sO4hBT1nN8EGXSzf1AL3+5PCUDCpPXpdpyEjuK9I4xJa62iqGzzeA2DEJ5guLTMG0
         otobJFKEKTCpsdJlpoY0Yp0G22a43ixaGEv7q52q3lPrNCxDRE3By1xv7DrCM4qWi0et
         meFLzyNuRQbH/RPEjIyUPuub7QhkO73myVvWfRqKbDAxR25tpcU5DsWexcVGhl2j7t3o
         U1Qg==
X-Forwarded-Encrypted: i=1; AJvYcCWROr4wYkirxVrUzvVDJkmpoWdfiXCI1bgKZb/mVwUZyxxU302g1oD2bvC1oUsS4dJPA8c8wDvZwcsWzbdJsZXEIGPWTVfli0WbPA==
X-Gm-Message-State: AOJu0YzPf+70rV0VcIrdmgctg4LfAbamHGQUVZ+57BKUB1FLDLMYSNhL
	54vDQoH0Fhy8FDALtxCnUyG/6Ak+1NOMFNwFfeYPzHAM8UiunIljQ3tGqI52B1BcUyxUjXpnlSU
	8d5M=
X-Google-Smtp-Source: AGHT+IFSAe1MLT9G1rFsFVScpdoAgUGok8Kv41KHyCXBZde3Ee9rj1/i1fBG8YwvArjpi/9QEfm2Zw==
X-Received: by 2002:a17:907:1704:b0:a55:5698:3ea6 with SMTP id le4-20020a170907170400b00a5556983ea6mr2043160ejc.29.1714469822460;
        Tue, 30 Apr 2024 02:37:02 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id gl20-20020a170906e0d400b00a5889ee66d6sm7799055ejb.45.2024.04.30.02.36.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 02:36:58 -0700 (PDT)
Message-ID: <18ce4649-4faa-452b-a389-f4e97d2ec81a@linaro.org>
Date: Tue, 30 Apr 2024 11:36:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/12] arm64: dts: qcom: sm8650-mtp: connect USB-C SS port
 to QMP PHY
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
 <20240429-usb-link-dtsi-v1-10-87c341b55cdf@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240429-usb-link-dtsi-v1-10-87c341b55cdf@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29.04.2024 2:43 PM, Dmitry Baryshkov wrote:
> The lanes from the USB-C SS port are connected to the combo USB+DP QMP
> PHY rather than the SS port of the USB controller. Move the connection
> endpoint to the QMP PHY out port.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

