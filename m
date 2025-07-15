Return-Path: <devicetree+bounces-196361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D9EB051F6
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 08:40:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C0D41AA636F
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 06:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B85D26C398;
	Tue, 15 Jul 2025 06:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T1sm9XCl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B59522129E
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 06:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752561615; cv=none; b=NQMK0ltmwUVzY+WfjUJeKrVhe8/xDFUKYCW3Wh0s9Beohd0ZvmyUaYtb450oz31UHzqnG3c9kVnlPfDPx9svqgSVK+0P1oLrvgB/Uebpcog00CBpPTxNGerS7w4I/R0W9t3oVTPyEsBwHdZsv0yvLzqXoLqFfhg4IJm443z+In4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752561615; c=relaxed/simple;
	bh=XvhUwch1kWk+h7hXn8TTsbFUD7dvqo/TCnjlMoY8wd4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aI6RY/T+AmmY7y0qBgVVGqwDQmHU9FP5lS3BKmFMn5vFF+Hot93lYNKpFU6rR3DtbvqBOwnUmjmGNIrN72id7LKQuomqIZKxQ2l8UyMajWa8eNhbDJ8SvPU/WjwXHgQY0YGf4msXObNLplzQ09dHiU2dDdWp+lww2yIIuFVErus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T1sm9XCl; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-553affea534so698932e87.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 23:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752561612; x=1753166412; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tIQ0MAA7ilgsnxpjHpbsqjmKUfNKURLm5JM6QSNd4g8=;
        b=T1sm9XClcdjyQFwItMITvys5cQI8JEk6Umd1TG/Zj5ieX//afOIqm370efy1SEzhv5
         wc0dmvJFqHf6AeJGJLER2KGNlRMV7uqWlVDk/PyDLyuUMXg+2MzaIzmaaUg2IGKIjtYG
         q/3cGSnz41ghCUKsoIKJ0f7rbMRXd5EvbQoclrCtrA5GnXhaUuHh+434QtIjavZ9v6uU
         hbHKD+tCWgp5bt6m+9NY88SH+dWSKEUcXyU1HS3XR4Y+2ik7LDOu/hsmxZ9U0utzQ1G7
         5f9CCqWdScFflJjJmoZ8WWWiOafZrBTyPoa39tF8MygHaCBDKtNKve1vcgKreEi+vwcV
         7tYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752561612; x=1753166412;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tIQ0MAA7ilgsnxpjHpbsqjmKUfNKURLm5JM6QSNd4g8=;
        b=Zz1pU+FWFMDpl6F6fSy3hSFBLsGZwnKcQImjboilEUufDaAqYODrkTUB/qbb2lTH9c
         5xP7fgbDVkbVq4fM7M84Ox5SugqxvV9se9s/BOvlz3xaqg1mjZwiVHMWagoX2itD2LnW
         nCCP3cLcsMvZrVKxeA4t4eEXx8PEvA5TlHfw50mMbrlb/NTBfK1hHKLz2Y6haxdgYU2n
         s9XxyqKDD/Bbj2jEIVTb8BdsRSI95025b7dTX/by2rfI4OMIWVNQ9rlXR0UX6cBCdulN
         vzlQm82tweJYN1zsNThjpGGuZlOXnKnbjRdyhK79Kf57fTxOkDIpZ4bqIVtv09cBGwmG
         SPyg==
X-Forwarded-Encrypted: i=1; AJvYcCUDNeNJWW4XKABZl6WxWEjPTUnGPYatgqzcTIBV49DEKLdaLo5xEb5BmF7CzdIKo7jgvRy9WmNwsszb@vger.kernel.org
X-Gm-Message-State: AOJu0YwHPdpadahuQspeD7Ar7C3ZtIVNBU444TGAFIZxTnN0B0K06EA4
	+4hgLDo0E76DQW12WLBjzJqhMnPs6SSnLXVva21ZBAXcQeIamoXJ3AQqeARljs/wotE=
X-Gm-Gg: ASbGncsyc7rmaP9YFfAGFCjuvjClZACT+TTGHrA4Fbssy69DW+y765L2Y3Ds80R9eVy
	Qfn0YHOZtIOe+Czvegwlsl/q2F+Thb9nOmbtQ1DdGXv2H4/bQo2vipEyvm+zCt8acDWRfZ/W+Zs
	nrGVwaaPh8MuXba+BsNwGLv4Pc+3cGzuYGu7/M+7dkUbjUdqnKf/guWYEOkvR17uTZOVKImCSrv
	4neqYAeG/KjWFLcyiEzmM1aUiYmNIofHQQSX85Co5TMsxsBeacaYNwPWD/fvl58Q+TKMRsrG0pm
	gt+ng0WaYhnVqpC9i5W0ElsZrgONsBh5GkXWR7Pv5lz0lJE4uAPwaDy42xXacQ4PnFN4llf+XtA
	Q49BaSp9sAgboupc4n9S8lIp6h+XU7dpikB83ARgtZhl+lIzXX3QolAbfLeJxuwkkGjbfJkg5Nt
	Kv
X-Google-Smtp-Source: AGHT+IGaFJXLkox1nF/8pLLN1OAvLc85Z5RHAm50nAQslP1unGzqc1kserBe9j82STD5G66WKnTIuA==
X-Received: by 2002:a05:651c:1a0b:b0:32a:7d76:2660 with SMTP id 38308e7fff4ca-330872d2995mr581861fa.2.1752561612382;
        Mon, 14 Jul 2025 23:40:12 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8bf2e1sm16881731fa.55.2025.07.14.23.40.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 23:40:12 -0700 (PDT)
Message-ID: <dd3c2fea-2c85-4a4e-b048-68f95f4a7d5d@linaro.org>
Date: Tue, 15 Jul 2025 09:40:10 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom: Add MIPI CSI2 C-PHY/DPHY
 Combo schema
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-1-74acbb5b162b@linaro.org>
 <8ed5eeee-78a2-4b26-989f-03676a9e5da7@linaro.org>
 <01080f5f-f3e6-4989-ac84-766c030dda35@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <01080f5f-f3e6-4989-ac84-766c030dda35@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/14/25 17:42, Bryan O'Donoghue wrote:
> On 14/07/2025 15:13, Vladimir Zapolskiy wrote:
>>
>> There is no ports at all, which makes the device tree node unusable,
>> since you can not provide a way to connect any sensors to the phy.
> 
> data-ports should go from sensor to the consumer of the data camss/csid
> not to the PHY.

No, this is an invalid description of links between hardware IPs, and
this mistake shall not be copied to CSIPHY/CAMSS.

> Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
> Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
> 
> https://lore.kernel.org/linux-media/20240220-rk3568-vicap-v9-12-ace1e5cc4a82@collabora.com/
> 

-- 
Best wishes,
Vladimir

