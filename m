Return-Path: <devicetree+bounces-101004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 748A496FD85
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 23:43:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16B001F24BF3
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 21:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06D0E15958D;
	Fri,  6 Sep 2024 21:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bUSSF14Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD9214883B
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 21:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725658984; cv=none; b=M7AzuhU09RXsn2KoZV/yOKj7DunKJ6eJaonUAcc2+q2yPd5YBOXuFCOy3NVBWuHFkDXZuG0UTKAaW1A6te7NrS/xub3wyHGtsVQ0EjF45f+mG3aF1oMdDwrPYrO3roQeoeyuBAWV9Q3hbuo40m8xsaYE3YFFDUWhQR5NSmXggrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725658984; c=relaxed/simple;
	bh=VuX4Jn656SyN3lFhlYF+3sJWBSxZXV1d8YF9Qq7gn+A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OkOZ1sn6LWVXJHOBIY4cg6dKyXsMB9dzb8wWm2PvNwXeu9ceVE8GRekrOa+RrD+1c9e3JThi7CH16xHjBjWMH9FEf/C99DsDuWxHo049nIcRSeL8J4dkGgFRGq494wcpOiiIsOBro7cQa6+sBYi+t5AftaX5E7xlPwU7Ogml4pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bUSSF14Q; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53652c3bffdso334060e87.1
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 14:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725658981; x=1726263781; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QMJVvz0JpBRvUB5FSNKq4yW1CoRz1HX38oGPUb4Dv+4=;
        b=bUSSF14QtEcolpbcFn7m+kNaM7cbgdqChLWVJL2WpLCebj0d0nJQH/vxgIcKpotPgZ
         qIYbcnPec1PWBOreNnLPZAtEOu4yPTFzHg3Y1FdwF0Xo5lKM8t4EcDsuJJXd6/xO8W+I
         phujWRFzzdud0ZPFsZoZATsqCFLzoV4LhbLVh6/YlZOkuFGcfP0Y0KDEgM4DlI+Gdtm8
         LoehIp0Ty8gg5+jw5Cx3U9mWe55LEJYLGaBnZapYWKXHMEbUGm/fT/YTEaJ0lWzTvLEI
         xfwhidB1oCJg71lfb3YxBg1oqQsoxcLHORtz1jX6N/gC+PYqfICCRUKwRiI4B67cd9Uz
         YjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725658981; x=1726263781;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QMJVvz0JpBRvUB5FSNKq4yW1CoRz1HX38oGPUb4Dv+4=;
        b=ZkHo1Qp5exTi8pdaQX480XVT+pN6AcGHUw+jimX0KCCCd2ZQTtclYE73Z8ezVzpMf4
         sFJvY/lwjYawaQz44PmNBnM7PFqMtmmTvG/QkQ1npEFLTGaVaZtGgYbze9mD9twXKAg7
         SgUOPGySuMbjXbwEDMFKt7skgbz9kAsZWdVB9TqfKq/HJoZTi/4am2+c/5ClSPB7z8mQ
         VYFaXC+3Vnw3nc4bTKU0rbHOx4AZ94HommqQ8g/esd9LcIo9917b7w1ZHvX0CxTTJ+oN
         tXtC/p/JfHYh7G413mKAgLsy4QjReMDqcfLTxK48oXIqHdJHhHE8BKl3hVyXP9xALWwc
         OmGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh5M8Rs7Zv7mMj4sTw077oE90j/3WlF2/3R/RRtBW/N8+Uy7DOYMa2m/D95zCSPPqgjPqDIRLMH/To@vger.kernel.org
X-Gm-Message-State: AOJu0Yymr/WL2zBcHgi1c0qy9OX8LsOFVG8shrIs3Wc/N0rv7BuKeh5b
	a3tX7Xnt39matuHfpzH/wrA1rNrdIdw80xbZR1DwT+fuhObJgQ9/DXKLejhrQrujYwwdGTAZavu
	w
X-Google-Smtp-Source: AGHT+IE/D+5ba+1hDZr0V2IYH3UjMXEOuRVLlJRqu+mfaEn6EiITN40Eds9AruP0dsVxsMAjPuEB/w==
X-Received: by 2002:a05:6512:3b24:b0:535:3dfb:a51a with SMTP id 2adb3069b0e04-536587b818emr1498588e87.5.1725658981064;
        Fri, 06 Sep 2024 14:43:01 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53655aa72adsm384248e87.304.2024.09.06.14.43.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2024 14:43:00 -0700 (PDT)
Message-ID: <8d3e4ad1-82e3-42ad-80c2-dacd863e8e3e@linaro.org>
Date: Sat, 7 Sep 2024 00:42:59 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sc8280xp: Fix interrupt type of
 camss interrupts
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240905164142.3475873-1-vladimir.zapolskiy@linaro.org>
 <20240905164142.3475873-5-vladimir.zapolskiy@linaro.org>
 <ZtsSTsSsOas0hVNg@hovoldconsulting.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <ZtsSTsSsOas0hVNg@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Johan,

On 9/6/24 17:31, Johan Hovold wrote:
> On Thu, Sep 05, 2024 at 07:41:40PM +0300, Vladimir Zapolskiy wrote:
>> The expected type of all CAMSS interrupts is edge rising, fix it in
>> the CAMSS device tree node for sc8280xp platform.
>>
>> Fixes: 5994dd60753e ("arm64: dts: qcom: sc8280xp: camss: Add CAMSS block definition")
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> 
> Camera still works on the X13s. Didn't try to reproduce the probe
> deferral issue.
> 
> Tested-by: Johan Hovold <johan+linaro@kernel.org>

thank you for testing!

One of the simplest ways to reproduce the fixed problem would be to
unbind/bind the camss device:

% echo -n ac5a000.camss > /sys/bus/platform/drivers/qcom-camss/unbind
% echo -n ac5a000.camss > /sys/bus/platform/drivers/qcom-camss/bind

I don't have access to the X13s, but I believe that it should display the issue.

--
Best wishes,
Vladimir

