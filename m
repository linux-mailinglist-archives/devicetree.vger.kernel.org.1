Return-Path: <devicetree+bounces-179838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5E1AC1D77
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 09:12:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88F374E6B3B
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 07:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FA9A1D5178;
	Fri, 23 May 2025 07:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yTyZ2We+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01BD1804A
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 07:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747984334; cv=none; b=ljv2WoswqZW/zYohKODw0GQtwHrA2OCzlww0kcUdsyqd/YaAZoIoPKeqvbmYI5+mNx8uAuCFF1l+rrgHhpQMf/OIHgAOjZRCTMBkLHZOJKafLTR+1r5OOKmptiv9XUc0U7R6TASKPi7yHdRozYU8FPcxwNe0pH91SooioAR6kMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747984334; c=relaxed/simple;
	bh=Ht+UV6Z7aQptFNwpD9iPRdTfJSkZpFJfOXbrFp82SPo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZPyVEEqL8MHxSAHACNYUw2V3ZMUFMPXdpTWjVpRMGd8GEu0FwbcZDf2ZGyY0EzKZvxdZ/WJchxZCvbo2Brbjeta/xXbRusYJ7Iv7F2AtiE/vL/kCPlFD7auMbDQqYUdicPhRs0CcuHePP1OqHzYiXq08kR8s1W26omXIyY2MPmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yTyZ2We+; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a367b6ad08so755892f8f.2
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 00:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747984331; x=1748589131; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=y9wcJktofqVWI3CDj0WY+uIWHsaWsvQJKV0vHBPO+mo=;
        b=yTyZ2We+/slR2m/cCBouCjdMEoH9cy2iklMzPapt9TWWBlqaX2j6Vud1IM1BFYxqpF
         PzPyrc0PcEb7l3RRwSdSWzUdCGnygdANUBh+7q4KQMv3TH8ZBLGatVkiEALidnHU5Gf3
         77bkv8WwgBzTMmE/7YAfxAaahr7iXGd/yIPwmhy4xJKuCMFXakdVRQ687+hOd3GGBEmb
         13d0l7GtpzmuOa+o+0MDPJ5bMK5mKv7GXEfRDOZYC3FlXGKOPDxJvjkRYioW5PiR2N1o
         sfJ9RUR//KQmg7D7vDpO538aDMY3y7nMJFOcIiALsRHDc0608FYN3lNZvIa+zgmzeNvT
         wXbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747984331; x=1748589131;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y9wcJktofqVWI3CDj0WY+uIWHsaWsvQJKV0vHBPO+mo=;
        b=XXNgEozdngnWTn486eleelaLeIw6tHTH5WOAU/RFi7IK7nVplFXzbEp4sErJ8jBw2y
         +Yu8fYOLKGO0QiaezpMT00eXJMQTv3KrIFfT1CbEOcrw9pPAzdnBHrbjouq6GLqR915L
         cjKIM/TDnSPV4HycOW86luW0osz6qJqp632qmxfYpnM5ee0+530BHfbNjpEv0ZMdIcqC
         MT3KMckbW8YQCfl0/RpzHeza+YWWPGeXBLTVcIFpQ703ieUxOnJ7G17LQEc4alFrSbew
         GD5qYlhf5HYLOIjQn+HJluyIAufY0ffDaB6cBgHU4ogX9ezy5+CHf9SkvfHMFcSSmcbN
         UH0Q==
X-Gm-Message-State: AOJu0YyN8tGDT0pSpi4QcvouGr0EeJ4zVaj3N9XOYD5jjyE/xMPofK7O
	E9iV9HuEoRuMg6cRq/iIyAqjm94QxuXN6wXR3yT5bNhZ8sIv4UgbAuLs/25iGXWZi+Skn3OeHtn
	5EpYW
X-Gm-Gg: ASbGnctIk4ikz5soPw9FBLLJr7hFKwj/LSAm41ZcmBzZ03BjXIOIfEu9UGDYTNYZBkp
	k3Li8XkttN+RSUBl+LOe7JP9c6EmdOsGFf6C71TlEGX7EDBulsJtPua2FH+aqFCx8b3jtpz4tH0
	wFY49yoKc6PKnyk4+Z5fGpjk2h9Kn0UmU0BykDyPDsFG7XlLqNU1kvs3v4juhN8fONjsPghZ26Y
	oBDO+LPVjBMIqrDQCQO/RvB7hAETLjWuEHBmOMHgRs5GsWRYvcU7duEQPFK4vcThp/pXJ3Btuex
	6ojpYpW8dk5URaJSD+kNeC6Qk5b/eDpf5rYe09y+ARMQJ1gwExddGfwLQJcU0DOZaAxwx4c=
X-Google-Smtp-Source: AGHT+IGTK8IKeBlrlL85CwrhvZIeTflby+PuZV9bWjkME8T/VeEXqBiD4WNMgdtjoxnbqZZ/5+yCsQ==
X-Received: by 2002:a05:600c:1c8f:b0:441:d244:1463 with SMTP id 5b1f17b1804b1-44b87a0eeefmr4609045e9.0.1747984330803;
        Fri, 23 May 2025 00:12:10 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f3ce483bsm129076335e9.33.2025.05.23.00.12.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 00:12:09 -0700 (PDT)
Message-ID: <65f95a57-64cb-4815-8ff2-9021ab7b7ae3@linaro.org>
Date: Fri, 23 May 2025 09:12:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: add DTs for Firefly
 ROC-RK3588S-PC
To: Chukun Pan <amadeus@jmu.edu.cn>, i@chainsx.cn
Cc: devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20250519075432.2239713-3-i@chainsx.cn>
 <20250523070026.50263-1-amadeus@jmu.edu.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250523070026.50263-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/05/2025 09:00, Chukun Pan wrote:
> 
>> +&gmac1 {
>> +	clock_in_out = "output";
>> +	phy-handle = <&rgmii_phy1>;
>> +	phy-mode = "rgmii-id";
>> +	pinctrl-0 = ...
>> +	pinctrl-names = "default";
> 
> pinctrl-names should be placed before pinctrl-0

That's unusual - not inline with common coding style and with most of
SoCs. Is this some kind of known rule valid in Rockchip?

Best regards,
Krzysztof

