Return-Path: <devicetree+bounces-252452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EE7CFF474
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 19:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 844DF34AA3AA
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A2F39E18B;
	Wed,  7 Jan 2026 16:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gJVwcJUH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1003A7F68
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767803918; cv=none; b=ArV9nAef3TKdUIE3x5tCD3y9fwUpn87Tsl14kdLewf556g1IlO/H4zfAJoyfWnFBvQdnbTwT+2s3YQRR7Rmfg6rhqemp/G/MI1Dtyvd9yF+2Z4mSb6rZSwoUJRZy/lIeEYjbiq2Eaxi0JPPDtJEO5CQZRV/4W80NGpGmmTrHAd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767803918; c=relaxed/simple;
	bh=5h4K5oub7/AXA/c29GFK3TWej4Mta4tDG2m4A/NuNYQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BdV0LpWhWCK+qNdsvNy+/bUR3yYu7d/WFoAuYuJWEE+4z3JWljElgfT9F4qLJ07I/HMPjl+4aR1N3JwKrCrmdfsT4ehvipzJOpUR/8IJE/H6FNmhZMXgnNt+COX5nS3eCMjwFw6LwdshdL19NVRFNstOAKzZ1jNRtc2u0Jpor5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gJVwcJUH; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47774d3536dso9999895e9.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767803903; x=1768408703; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VE8Zj62WXZdLdYrr2YwiHtiAoQvZVh2N0dQUprLSifQ=;
        b=gJVwcJUHS51Sy1heqVaoDG3EeOCsP2Fa6j8+KqGrC0e+BMkHr3fYLobL+lYwacpgOU
         1zRyF7D6bmFk0yoLVrXo6SmPj5c/S3dljFz/Haq4VPwkenNO6YUewC08sbVhLLvfTHmy
         d62qluusIEGnCt1bx8O6FQO/SX7EtldvEOa4fS6HfYp8Oqe0JHTaE7HIpCXe3v24ppqg
         gJDqjnsCFIu8f6ZaeJBZtGxBVkvE6EYEdHHg/m/QJ68mK2YakMOyd0xUMVt6wSsYutA3
         /aYcYxc6xmoQ0AJ793ZH+A80bTHiwOM481iBU2fHRySx4+qM2bO0cUes//3SrFrzA4WL
         Trzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767803903; x=1768408703;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VE8Zj62WXZdLdYrr2YwiHtiAoQvZVh2N0dQUprLSifQ=;
        b=Mye3WZH/XlRawXW9KdrVd1t4Cjm0wkze1cvbpaSyPYU1oP8p8dWBTOIK4qofzOcMSn
         WmsB34NlaSqq3BdOfZVDuDvCzcOA05paz/ZnqI8/D4XIbG127yO1eEm8XS4y4jT7STwp
         8iRy+9D02VOx3rIcbVVGTuyvHv5Q0y5kvOMrbVOQwDqINdfaanlbylZKVh8ghxtHrlkv
         lya1ISeC/1liZuI5fYJ6Tk5O/ZveSWBHZddLUgbpxOZPup67tXsRFaBLUSzDhQfIdzEI
         3V53DSIfvuVqi6Xatrc5nZQHK0q0Y3X7FmwWzTgcKjB/R0vzOWLsTIQswUTNoEsROB/I
         J3Yw==
X-Forwarded-Encrypted: i=1; AJvYcCUdIdV49ybFZi6dz7LUWJVojQqlMhZxL4CetbIdKsN9hEZc+IYzEfi0jScF56WSDU3sbicl0zuG3cIw@vger.kernel.org
X-Gm-Message-State: AOJu0YyYYlzJejXucJWiogYFzdIVp7ybZ3Mu7FdJ7fbsvsXmWtJgReG4
	ngbNCak52jg5a07C85kvPRBct3jwXVTNmXi+HL7MYOjvYcN4le7ZarDZYwFcRrZQOdEXbiwQfV8
	iCSBm
X-Gm-Gg: AY/fxX5lZwCTXtrOs+lTJSTOPPhAN0XG1I9A6Rt7tTP4blJqSm9SmBKp0+sDLNhjYTL
	Z9bpi3eNROqN68EliDDV4bjOi2DdfqlHI5gsbvfTnispxBnvi5NbsC81iNAaLxS9DGd37ynNdZJ
	ksXS1T9TOeZRcfFrWHlIxNEhsQ0pyIdE+/XWyZm3DaPysZ2C4ghRRHCCFDzaagZtTcBtwPWoeGG
	mPqxlfmudy/BSkAptz5Cu92kZJ2xx52QERoO/rxUhp6LvMt3cZTNrw+WOR/jUlZGgJmLcDDTU+f
	s2HnI8mUKvdV3mb4CdwoCWA2ZaR/kdyXTFuWvn9Kt+gvtW7bb8frHqvjc0izOYpbDXMSnRYZW1v
	07O8KSOe1ua0l6tGwaZ9cV/u2suYAm3f5RGUzx+yZj3WkHLlmSQfsJdNXr1bDw5o+aqlEwGk+zJ
	w6vFPzxNEF0m/P20PrQSNcKGtCi3uBEiN798lJtygbFYjoITB4DpWEDxWE9Gr8yNmlUQ==
X-Google-Smtp-Source: AGHT+IFlEZxyM1oDC2UILSq7md9juHQsIhmsBcJE41UR70lvfgIq0kGCqYeoOjecl8psTYZcXOhJag==
X-Received: by 2002:a05:600d:41c9:b0:45d:5c71:769d with SMTP id 5b1f17b1804b1-47d8484a4e7mr37627045e9.8.1767803902697;
        Wed, 07 Jan 2026 08:38:22 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:edca:100f:ed11:66f2? ([2a05:6e02:1041:c10:edca:100f:ed11:66f2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47d8715b5f7sm17049305e9.4.2026.01.07.08.38.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 08:38:22 -0800 (PST)
Message-ID: <a6c04e69-b0fe-43b1-ab7b-3326f6980471@linaro.org>
Date: Wed, 7 Jan 2026 17:38:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/9] Add TSU support for RZ/T2H and RZ/N2H
To: Cosmin-Gabriel Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>,
 John Madieu <john.madieu.xa@bp.renesas.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 "magnus.damm" <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com>
 <TYRPR01MB15619FEEF47DF01E9FFD57BF68586A@TYRPR01MB15619.jpnprd01.prod.outlook.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <TYRPR01MB15619FEEF47DF01E9FFD57BF68586A@TYRPR01MB15619.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/5/26 10:09, Cosmin-Gabriel Tanislav wrote:
> Could I have some feedback from the thermal maintainers regarding
> this series? Is there anything I must change for it to be queued up?

At the first glance, the changes look ok for me.

John ? Geert ? Magnus ?


[ ... ]

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

