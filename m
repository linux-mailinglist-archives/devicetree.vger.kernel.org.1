Return-Path: <devicetree+bounces-230052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C19CBFF439
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 07:41:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D96D3A1B2C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 05:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0C2265621;
	Thu, 23 Oct 2025 05:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="St0G8EnO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E14FDDC3
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761198107; cv=none; b=u47fgomjEsNsUaPrMSfREMG0burT2DUXxaDD6Q4ZnYqak23fbEtuLbEFixpATlp/2kKKwiBLHYnGjp8c7VxLtTDckaZPjoE8FTRjFthfDAbtbZckhWmDNxPmJQsBp7kBQPy/nCE+GytB0ZQRDgMuHEGrAXej7JUXFzAe9YCLt6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761198107; c=relaxed/simple;
	bh=fwXNHVV2OsfDgklhZiAQIp1sKiKkUwVMzcFG2SCy8y8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ettb45ZA/ldBSe4Hx9fYXPImA1/l5Nu1Y9P8GPK0hk0e8v4bow2pPP62+9iZEqDEsu4WECXNr4AOQF3likIxAAMOJXD5tWP0CeeVdQmwXVeLQFpQ+sfb8pbSA+7usP8/6FR2daUxa2tDzuf5SmC4j1CTxsviRPJsfujzItKiH8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=St0G8EnO; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59052926cf9so464694e87.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 22:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761198104; x=1761802904; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oVmnu0DcZ8PNVbYItIhiUlRCiDcnVxMhr+Gj1/Vdtvg=;
        b=St0G8EnO/7ctw7wWYLzFsPxXP3X47Mvrz4Bt6ld4C1OZxhq0oW8RJSXr0o4p3sh4AZ
         cBCyB1hFmqnPCAUT7McibacyiQ7uq6kOPzX61uNLiyWR1uEsC5AAEzQ/BWAkEPwoF1NP
         QQlT4AVxdljnwS6M9uo1/kaT8AN7rVWFKdhI6ueelYQzDJoALUUXHE6ux70AVfKT2jYu
         adOScAIdGDFuhPfiO9JVprOkOqyLJRAl3F/viyoVMW7pYHBDQVf6us5WVVGrPqUxkaRT
         5EV/QB0768DM+DriYoFQ6x3tnILCjGPw1cnOheJdk2OCmqT3pnYt1kF64GP71Vx6J1gn
         oW9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761198104; x=1761802904;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oVmnu0DcZ8PNVbYItIhiUlRCiDcnVxMhr+Gj1/Vdtvg=;
        b=GQfLywVC9RUgw2QhCZGKnnzF6VQoChzTMdnaqoS6PRfY9Ks1qVRBnOnso0KwOUXgSI
         OmWbp7bSxjb925P23AcuvD4eQ2GytgbFajmlR990Ft0DxvzponvsJo/oS4lH5xUCkDzz
         z2431GUXWa7mi2xs2283EWln0f1If4NK67y6X3zdEJnQQmhlX8g2j9LKyZF2sO3GZ9nT
         BaUjaBaK6M+kXllEzzC7bcss0jfD9bWNEWkhh9EVvX4eleeBLChFNb/SPEGOjpUsHvsI
         oyT6u+s9lrwOWAedreun19qOctLuWiuh1HBFU3dpBRPMQhT8pDeQ97myLnnXv//phxf1
         tdoA==
X-Forwarded-Encrypted: i=1; AJvYcCWRFLSdSyWgL7xzliNWmJ41oITjPHs3noZ5MaScLHZ+x5Y7NllBeCVrDh/qwN4d8aJ7gaIT5LNQOYlo@vger.kernel.org
X-Gm-Message-State: AOJu0YzKQP7QcCCYpJzFQxU3Y6Eu2BaBJPKkLmye2wR+ZhUjfNJaXCEG
	y5xSxJEZhkWqqfXy0KUWAojF1iqRUIcoYAHiqkb72iNN2EiPXNxvN8NbNMLLoxaq
X-Gm-Gg: ASbGnctdKxjeIst6SvdKa2FsA34d5qdg6zHIYHjJvEifUkV3xYd3drpzeTLZtYEjnmz
	Q8o6ONG9HuL7SHBflSgAchNWCNAFUrmJe6eLaUfC48pPnWMzZDGYmCZPF7WHd4/d9PVbMgbYVvE
	eMIYQdT1cJAulJ2wgQctlOa4/5NxU8HFftIkO/rx9GwkBdk02Adld7NVOpFiEGXc+mIRQf8PF2c
	D1QyNHl4g46m+32TFk6Rbpv0LGaF88EGPWoQ1YH87Y8z4ujSkrg6oF70UEaqxcfmiAP7iV++cXY
	ZrBJnBbq5FU1h2oWFl5d8stHJTU2XEaOjM6XUX1ur/rPWuM3bdhHW5BgvDAwxy+REiCdJI2HzPY
	5Pjjg72VubHXGTrwcPyQHuW9KgVO1OgCoUCZxNQB2HQqodWJUqkcW7dDElbqRgy1DotFbuzMsMS
	3Byn9i1SvGewphEycoc2pRLLEEp+ZZ2bzkYQhnxmNwNFR8TbvRm8Fm9zF6u6y4bW5SgpDM
X-Google-Smtp-Source: AGHT+IFvTCGfh+EzRAJlvDZiUcGcWmXgVO1C2EBm2Vftv1WhIVV0oVHchDQFJ2UcgQEiCnOaTQzqpA==
X-Received: by 2002:a05:6512:3d21:b0:592:f4e8:720c with SMTP id 2adb3069b0e04-592f5a712d8mr391894e87.56.1761198103848;
        Wed, 22 Oct 2025 22:41:43 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4adf080sm454893e87.18.2025.10.22.22.41.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 22:41:43 -0700 (PDT)
Message-ID: <e215a74f-4c66-4e8e-bb10-b90d782de2bf@gmail.com>
Date: Thu, 23 Oct 2025 08:41:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dt-bindings: mfd: rohm,bd96801-pmic: Correct
 timeout-sec length and reference watchdog schema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Timothy Pearson <tpearson@raptorengineering.com>
References: <20251020-dt-bindings-watchdog-timeout-v1-0-d0f3235eb327@linaro.org>
 <20251020-dt-bindings-watchdog-timeout-v1-3-d0f3235eb327@linaro.org>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20251020-dt-bindings-watchdog-timeout-v1-3-d0f3235eb327@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks Krzysztof!

On 20/10/2025 19:52, Krzysztof Kozlowski wrote:
> The parent node of ROHM BD96801 PMIC is also holding properties for the
> watchdog, thus it should reference watchdog.yaml schema.  OTOH, the
> timeout-sec property is used only as one number.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Matti Vaittinen <mazziesaccount@gmail.com>



