Return-Path: <devicetree+bounces-77065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B924D90D560
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:36:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1EEB5B25621
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42F2D158D70;
	Tue, 18 Jun 2024 14:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mTDie1rZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A05B158A3F
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 14:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718719624; cv=none; b=a1+UVpjB65EbWfB6tSDYrUKnhjEIyxDSWFxryhupDXcAUer2B0SxfPouvrDlVdx2AVbn/xLrfgGIrCgKMoxnj+6+spPFYGp9sOird1kAvQgN/IYrMrWSeC+2DhGG9mUXIjuiLkrG37PA8bbDazAX2XABnG+5IMto9hfbbzcjxsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718719624; c=relaxed/simple;
	bh=Hbmv3XFMpSTJICmgDgzCN1gkqr2Z8G4rUOXR0h+8tB0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E+dOHY4jEC/Pd6MFBvKyn4cdL5UG/EWW8sHAdHRFvXujDLXcIkMM5IckdqWj4Fw2krcXl2n+98IDJfOGwwHxpPLpDuUIM9tUWQM9US3HAzf6CcmuSDurbFGUdHWEBYrez8mBF4rQsbYykHdI544+w8k1MkctLosEUVsHNpr3RC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mTDie1rZ; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ec17eb4493so64913521fa.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 07:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718719620; x=1719324420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3si6hS7kdezOYwXxr/YuIhrD0I+xKbIgHBoEok6r9As=;
        b=mTDie1rZDbPcRXKv2x+uaYRkLxIb1KXZXxguJF89CGrEoo5kduNje4eMTEqOrODAEF
         zgdR5eJaWRtBWo4yKF2cLvZbO6xHDY+HagLXPYtLSM1874pKcYRXdodqsInp2Q5zzScg
         xvlq0kBwM98kIDlTDbnSFlQDVkYXdrnIQr2L/MtuZRT8qMXc+d4tNsfxOXPNtC/DzInS
         WrxoCmaKPhJfZ6R8LDyhlCXP/GUuM/tU/huFgDUzUJSXB/082T9CBQN9Ns/4cL6O8zka
         ZOTvqnfR9+mFE9b5MmPksS/VqZEIiKhjDiWFO6nz3blInChKtGv/oj+2Dem24qYwA5dl
         jQvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718719620; x=1719324420;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3si6hS7kdezOYwXxr/YuIhrD0I+xKbIgHBoEok6r9As=;
        b=i39mBd4oE6i1cSD1uomAlmtT0TiUIODm9SzGN6Rfr3u47FR9N4p8BAEn0WY3ZIjVif
         vReQsnalKaCn4tOWisVQRJTNj+vJ79NOFns4HOFetxm9+GEI/NHztmBt0wn9aKZWeT4X
         4E+tyijUml8cUARw+FQm/MV/9s9NUHTaKuyw2r9aFiUWBCkktQoLYlO/KEdcXtqoy+PV
         wbxsr79Zw3ZwOeefQNemibTKLoTyYFkt2E0i3EJEIdXU9V/fs+Gzqy9lOHZARc2jHYQ0
         N98zpdbdSG4de05YQHr404UD6IS7dTz1Y5A0t7b8Ct3NgFBU6vkos/YgX+YYRHVXA/Y3
         IzxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfJ38HuD2bsH0YocvrWM5g9mXEguLvYklz+gqnya5Zj7f4d1TUyKMB6BfHspR3LzpgNaV0LXxwyUswUVnx0+S8gDmXF2hGsIS2qQ==
X-Gm-Message-State: AOJu0YwRf8vonZFKDD/XwM48IMvpAVKZItRF35e3lnmRkhPx9UYkm3SD
	9KlN1/toft8Lq0QW+goNDejPTwRKsGCIxNV8qPYhTrzbRveJ8wQvd0Ysj1tmXmg=
X-Google-Smtp-Source: AGHT+IFJLofjUC4t74eowxJ2/hsKLGcRlwVabKgkrjURD4QDMFbmjNw63Vi/v4qqaIE7wwB4ATA/8w==
X-Received: by 2002:ac2:5de8:0:b0:52c:8289:e891 with SMTP id 2adb3069b0e04-52ca6e56efamr9347270e87.6.1718719620233;
        Tue, 18 Jun 2024 07:07:00 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca28723dcsm1517734e87.151.2024.06.18.07.06.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 07:06:59 -0700 (PDT)
Message-ID: <51ee3d59-cca9-45d0-8a0b-31bc707b22cd@linaro.org>
Date: Tue, 18 Jun 2024 16:06:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 21/23] arm64: dts: qcom: starqltechn: remove
 framebuffer
To: Dzmitry Sankouski <dsankouski@gmail.com>,
 Sebastian Reichel <sre@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 phone-devel@vger.kernel.org
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-samsung-soc@vger.kernel.org
References: <20240618-starqltechn_integration_upstream-v3-0-e3f6662017ac@gmail.com>
 <20240618-starqltechn_integration_upstream-v3-21-e3f6662017ac@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240618-starqltechn_integration_upstream-v3-21-e3f6662017ac@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/18/24 15:59, Dzmitry Sankouski wrote:
> Remove framebuffer because a panel driver introduced.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---

Not sure if you want it gone, this still provides framebuffer output
for the first 1 second or so

Konrad

