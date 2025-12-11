Return-Path: <devicetree+bounces-245813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFB3CB58F0
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFD733031354
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDDA33064B1;
	Thu, 11 Dec 2025 10:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sYm21SbQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15ED30649F
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765450170; cv=none; b=Z5fF0lEhikORHh/pckYTz/6I9PuJ5d6/ag1mwZFvckoadJZT8/CDOYFBj35JIgVkFd+Ev3Ry0RN9he+1pKnsOhhDUoaiKMJ/1M1fObxCNCQ8QoMeGpBI+vLwnbA4G5eGP5akVSCV6JPFH8iaq2KJK5njHOIeTbr6GgkoVpdhVlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765450170; c=relaxed/simple;
	bh=Jc6+Ys+XHen8v80U0lVjY12DVN2DFWCFxOekVIhcmJA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qblJHTZfhXNYs+uzW1USZaqGv2aoDWnKTS9jvBJhGAt4hzvpDL3843ktJv2e+PAaoq8pCwfZ+iFrTqJ4P3wPKYTcyqM1/9SYgmWf3KySkjRfsV8kLDSV0Hd4rgWnvAT9KKr6OYBrJQQQ2x4HGdJft7Vv3s6EIF6lEKrU3q9zDfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sYm21SbQ; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-37f8cc9a9feso499541fa.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 02:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765450167; x=1766054967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3kd4yW1gc1Gruxageeys0GxddFeeTYgSHK0aHKOuEo=;
        b=sYm21SbQbAN5LV3ce1hSwNUoL8mqlhBYICP9v2goIi7tRgqGd9Hi79PO7cx0K/1wam
         +QmvNY1T5fsUyJciThnsLTVZFIRg994f5NKLjCtpYfXnlPguBvmBJmH3Xhcg9x4cc+dJ
         WOIsupzaKPzoi+QlJTdvzyNBLzHJqba7jmFFnD7QQQkgFl0sLK20aitBV/41XirzpQ4d
         Eugp7SRpFOFwo90DOSqL3WR9IvwrtXLU89AFv8rjw2lu6oxTHRs236ubE3HS4P9+GEzk
         L6Ipr2KyTi95jb3DimP7NlUY4b+oBWKaRIOVam11qFUzvwmYHwDt0UGgOKVhv+Qt8zDc
         iYdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765450167; x=1766054967;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a3kd4yW1gc1Gruxageeys0GxddFeeTYgSHK0aHKOuEo=;
        b=uCJZ4DmdtsJWtXN4DzK36iAzpm/4hMxJSJuWxR7K381k2Zc8hC+MYAT6QvtpiuT+cP
         D0kxZEE59BNMhXnR9Limua85O2Nna2Qv8Rbx6JIRGyBMKcu/Tb+PRgX7XHGvSxul8AQa
         n2Z+zpSn5f3tRB/UTepn0Lc7CRNjiHGhuKUte9Ue/wTiTdJjgLZ74OhL7QUcSIq7okqF
         cmyD75UDYKCu/EA9EZ+7kXEPyQwsCzu43mE2iCc4OG6tGBFh20mPNYS35UgiXfVhM446
         0mlPWXjazTiItYBZOR3XBroTs7XCm6hHE09ijMmujF+TF7jTpjuwPWDJiHkjCulU+Gz6
         uXFg==
X-Forwarded-Encrypted: i=1; AJvYcCWIaaH4aCW1zSvK2/EcRO7YkfKSgg7k6dOk0cz+BrbuEi35DPYlBjoviZfg7FqvEW3QpXh3tpmuDgRK@vger.kernel.org
X-Gm-Message-State: AOJu0YxYPB4S5tByUn8jhAOTnsPXIxwJmdJT6BerM4Lm1p0hBfrl/PHD
	VM2eK6+J13IU7JqzJE4O9R+yGWuvxKr9lDfh6Gx9s1JxEfhMU/IDBYzpLACZ5edw/Vg=
X-Gm-Gg: AY/fxX4TCqp/YxsykAO6thznh6IkIajNsB//YV0dGRw9tUX4EWGffpmSG7PUCh9icJi
	cDSPX6JxLL57Sdr4Y+16m8dp61Xt7/N21j+FGDbgjsTecdAzclDBDYISjv8JEsxo6o+cnSE/EuA
	/7QliL1c7erxgFYBK8bIaPPj2xBRuCg9L2erYwXpOvBFTpODnUJcntG29pR4lBMzFSBImKoXYvx
	2SrQ2QhQbBhnzGKCbRPfSU2bZTMjwwga5E8Nw+xbEPNw+5aD741IB1omQ2PTy1dlbnaA7Abm2Yt
	JlgONgMp7bPAerloCQPHmWBbwoFQcqalfCBQ5Xa0U4sld7cEGKAwZ/pWoQGnYI4cuFplO8th5NZ
	paYBCFC5VTU06wNbSkXg/7ZK63akFx5+xEd8qPtMQMl1VHklcIi4bw7QAV/qdKdWFt9GZ36N2yF
	C09FbcEY5qL4PDiaPMODjeZ8rhufl9ULTp2JIZskI52OKVQ/1FAleMCG6W/0h6wljwFQ==
X-Google-Smtp-Source: AGHT+IFt6XeeZKHv7sJfFbXi7ZwTZ/XAVBJkSAg3r7xDq8QS7bdQubNXrv3Qvi50WCHnpPFPH5YD9g==
X-Received: by 2002:a05:6512:2399:b0:597:d7a1:aa9c with SMTP id 2adb3069b0e04-598ee52a41bmr1124042e87.3.1765450166708;
        Thu, 11 Dec 2025 02:49:26 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f44d6bsm764789e87.37.2025.12.11.02.49.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 02:49:26 -0800 (PST)
Message-ID: <809c23e7-954a-4d7e-92e1-0d2da820bdd9@linaro.org>
Date: Thu, 11 Dec 2025 12:49:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-6-mailingradian@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251211014846.16602-6-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/25 03:48, Richard Acayan wrote:
> The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
> mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
> support for it.
> 
> Co-developed-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

