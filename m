Return-Path: <devicetree+bounces-195789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5A0B03085
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 11:48:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29EBE7A1215
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 09:47:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E934023E324;
	Sun, 13 Jul 2025 09:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MoIAcGlF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FAE1367
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 09:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752400129; cv=none; b=nyYuDixHViXUZK6lMFlLzSX+PCw9gch35HAceXUc0SqSQqmTNWbjsbbeEqWmwrnMP0wz4vjTYtvShK5mUKHva3b3/Yvh9xxBergIN1vhoYQPmJOK7mUcZcaMAENaagyrIGcnwRJNExZXSAuygtDm2ny0Lu5jgyJKOKPkHX4zlx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752400129; c=relaxed/simple;
	bh=vVRR7H+Oh1jOVVrd3OXMxD7IsYuOKBL4mwsfy0UVeI8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ahxl0uZmspWkeANQGq7R103onyqNB2ClK0ILfnVy0CzO3V7iQ9fCwkNavZOGRqIrD+lQNb53XRznha/a+ZI98Oi813cm2CWMt07egoTIbang3lpN6iKWHXBUD9bCZQ9j0/gpj5bx8jNFaAURiwcekVB0CkSPyNScQSKjFEcROOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MoIAcGlF; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-456108bf94bso3193405e9.0
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 02:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752400126; x=1753004926; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=87Y6uvJuNXy1ilBMxkL0pceOrA+vw3WvrJEYq2nI520=;
        b=MoIAcGlFM7FSdDXz2MBMNuOsZ987/BNbYTs/WK8T0ZNaLq76kR9f73XaaaarFPranq
         j5eEDcl4tNPUfgOLl3ddkbzEXyzawkQTrZPl6sxMdrnWXAUKIt2pzKk2FNSrR6JfjYHM
         9CHGodVbbRaMLz/TmGc3m1hgdghlxDjpgp5c4AsCYuXfpRUtd/ofUa5OqVJ0sj2XMA/v
         o/0buI+50YShvQ/tlhUu7TtPHD4/6g3NHvK9jkwJ4C4w/LNjLaGQNUNLTIgupKK9LMQA
         TkQXiHrY1AUPQIXeOW5891qA3e+xVV6a/elxPru1dTfrR9ehYH5CnYgE7VORTDBQREM+
         7N4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752400126; x=1753004926;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=87Y6uvJuNXy1ilBMxkL0pceOrA+vw3WvrJEYq2nI520=;
        b=nUDsbK9CaKFLWgD87Eapdcls5c/nXRHIhXc4IsG2EIYwnRtCKiGEe6PdoCRME6ttnj
         UIBBlmwpjbqp0uB84rFhExjRV7EJFO5NG/l9fUyIK9u7fCCP5Rt9haOzQi3zbatFthT1
         ValRYpDGI/qAL6H2UXJE83pCJCIjLj0DjwVpirDnyK/42CcNdnBKUJUUN5Ew16sbywWd
         Ot/nkvu9oSTQ3RfPKheCy2u1FD8XRSY8chKMtXgFsEIX28yIA2mqlaL5vrRuFRmCxu3B
         z/GfF12RIWegeXFOjF3ov06Gio8m6C/EWE88s8cxQFypB9NdBBzzgNhDOSPcRzOF3wEh
         Iyfw==
X-Forwarded-Encrypted: i=1; AJvYcCUmGbdXW+m+5kUKyZYEAFz+bYHrjGQWCRaGnOxZJFoo1N1nacFtF+eJ0oZlPp86yDgjGw8n4gzIF0pA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmdgz/qgi056mzxPzcf6a66e4AP3W9+EitAaMwBg1/bHG/Xz5k
	UN0+SsUSRi5crOVZjn0RUSTj2u2XwvvVCNC1WELn4fXMlGj9Whdzn8OyIM1JRUhWYtQ=
X-Gm-Gg: ASbGncthpBUmEgsm+Y0fAWHYcpBC4F6y36CyEkLccZJLg1Ip9Hc5z+UxTiM0nJ7pEiw
	CAMYv0u/IVD41duDI+JYVDp/ZIxnM4qv4iU+H/yOfEiIZy2yBWe89FPXJPtjUw4T7yIEOpEBtbX
	RLMqNwdmuATiCwUF/kBs4duhp/CVKuYs441w31xCbTT7UFUbAd4OkD/pDXmkTPE57LP7UhnRKJM
	Wpl0Z4nDg16o1NQKRcziL3Ta6Kz7dCdgLI/UnW7h0MQLdWxA7XYEI/ylhJQQBg/OxfktrPOvMpl
	pbv4wed6ElUaHDb68wMqLujOZdoK/s5Keox73YJMcV9qgR4n6lC/93DdkkXAeVEC1QtyoSveuCQ
	dVbnPQW93Ft/OM4U3r6BHcUPdTsNTJ5jJhLHhfnWiJVDD2WLEtGlb99FKuwwomc0=
X-Google-Smtp-Source: AGHT+IFYhc3CtD4A4MOtCvaPnngWumd1dv65EYgG6Om/yx8+SjrSSPGMr9gXNjJ44lHxB3thNgEtIw==
X-Received: by 2002:a05:600c:1d09:b0:453:1058:f8aa with SMTP id 5b1f17b1804b1-454ec15a834mr85731655e9.15.1752400126413;
        Sun, 13 Jul 2025 02:48:46 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e1e2cfsm9234034f8f.75.2025.07.13.02.48.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Jul 2025 02:48:45 -0700 (PDT)
Message-ID: <63e538bf-16ac-4f57-9578-2ae855f5727f@linaro.org>
Date: Sun, 13 Jul 2025 10:48:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 02/15] dt-bindings: media: qcom,x1e80100-camss: Convert
 from inline PHY definitions to PHY handles
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
 <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-2-0bc5da82f526@linaro.org>
 <3376b0fb-f3c6-464a-9c35-30a3f589b856@linaro.org>
 <eac19ad2-78dc-44e9-bc02-517272ba737d@linaro.org>
 <3506d911-da9f-4639-9c83-aee0a637e9b4@linaro.org>
 <352421e6-f151-435b-8dce-6c02a6d0e747@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <352421e6-f151-435b-8dce-6c02a6d0e747@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/07/2025 10:39, Krzysztof Kozlowski wrote:
> Lack of in-kernel DTS is a good argument in your case, but you must
> mention ALL OTHER USERS:
> 1. All drivers in Linux
> 2. All other upstream projects, BSD, U-boot, everywhere upstream
> 3. ... all possible other users of the ABI, so out of tree DTS and out
> of tree kernel folks. This one is close to impossible to prove...
> Luckily we assume this point does not apply here at all. No one out of
> upstream trees uses these new bindings.

OK, if I get your meaning here.

More comprehensive commit logs and cover letter - including doing to the 
work to look into BSD and u-boot to make sure the change doesn't break 
things for them, which I'm nearly 100% sure is the case, is what you 
need here ?

I'm fairly sure the only real dependencies here are people following my 
development branch for the x1e laptops, who want to drop those patches 
and receive upstream stuff from -next/-stable.

---
bod

