Return-Path: <devicetree+bounces-138914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ECFA12EBC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 23:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C77C33A7BDB
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 22:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 647BE1DD871;
	Wed, 15 Jan 2025 22:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YHGp0IwV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8935915D5C5
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 22:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736981510; cv=none; b=HsWpZrC9asU+YgmsnpB2QfqSj/JlOCRS2muRoWUF/Qque2HxxR79pHVOw95umAIbo1YBrcG7Da0xxWkR9qWFmvm2qY7cDTKO6yax+Tk3d6zSKWUjnDDPg6nCpM12xlCEAe7b25ABuNCPatTJVvrXgM3ofK8p79YtrrTZEalV3Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736981510; c=relaxed/simple;
	bh=QxFEBGcR1CdG6irlGiHovcxB3ftN1n6CSXPIZNE7Bd8=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Lu7WU+DAH/S0vjTuWz4ZUdVWMsWBSig2NjMzkCmKUUuDKc12nJuw+bggzCny9t1FLFC9YdaWS0gBJdX6cAWbJOMCf64N6TD2o58BoMjvjPRnaBCTLjO8BtjGPqoE5bVhX/lLsafj/FC/WpPCeLv2AsjzQgcJ8iUkORSZHzRJoVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YHGp0IwV; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4361dc6322fso1328095e9.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 14:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736981507; x=1737586307; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vZEM/yr/sJJ+vK/Kh+SEVlD5R3K0fT0VdR1mPmEBOBc=;
        b=YHGp0IwVyeTxYBzgdt0B/mCs4WpZ+3UZBLf9oCPsq1VzPZ3c6y0plGk76WjLAB/iaE
         GEgV5g56MtpR6OMmQhoZNnxagvuc3Zv9PnL3Z3ACasVcKNyMwGGfbH5aSv6VzvRTOGgg
         OpOxkJoxXKg5GXhurgxqRlViEDgQOoRkHgbamqQuCZD8NUjtSr03i3AnfAmd4EKcP2bb
         wTBAbYT5i8P6lvOzZitk4jbb6mWJs7LhRYmQahEPSenHw7zZl2MS1xhW38MbKHZCx3hu
         oH5kpL57hhctoMbGj46a/49A8JAhj6ZADMFwEBUodR07wp9lmXP7WnZe/0n9MIkt/XaP
         OePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736981507; x=1737586307;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vZEM/yr/sJJ+vK/Kh+SEVlD5R3K0fT0VdR1mPmEBOBc=;
        b=ldezcrm1ch2j3hle7SYjzC6V71hqB6VrswpesfwtZ/LK/0DT3SVLYrjqM7SACOjf3j
         IyUW2EcyZoI0PC05yjeL2GK0ny3XPEhE6rvh3d7GVFv+5K5PBVXFe1qy7rw+IoDSiS3T
         KHkz9Ync8vgux7ymoQbUww8+OEId5nBGG8YDYXJREHarh4n+LtIlCCT4vPxR+n62hGI7
         SERaL00woEeSNlNFU3V7Bo1VMN7VFMOHj12ve55FNQghx74Nysf/2FAB2IWptaGO8FmJ
         Qa8+hT71N8cRkFrqTbfeDYICVZtgV3q+L5+HIC9uvMeXMOB78fIlTK8yWqQ8rdq2LWsV
         H3cQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQ+EU2YxtGhERUyC95LCxcGV8lZmIa7F38FQ9FU473rnNcsvWpLmjn/4bHusfVQBr4Nhs9IUavd1hZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyXLJUlk8DVKZ8g/O/KXvZNofY8dlWh3gsuSlZX63KsO6rN0YUi
	qC6AAr2QnJMLtWSOd/UTSEHo5Jrc1VBzb+LkP4qxruHqHC3onHAGYIfH4moDIpY=
X-Gm-Gg: ASbGncutUT1JjjOMQxXSPYz2vjyWGEWweoKDyCdSjfAU0bNXEpaNeKSOVWoN2Q3Y7iA
	8YPFeFOK346WkkXSVnk5I475YzSLqs+SwVmaKlggm8CzTdoBfEX9Q/oj6z6b969X5NEjrXEcr5R
	kDSwLmWzW9JFp8mXCvebNjBLAgcixOh6JUQtLPQOaBdtJ6yiM426ZinRwqP4okWBYV+sVd6tYLR
	ELppzKgpOegyBh6gHHvxGOZO4+poaXcNi3IqZmhTYD4LKFLMp+Uy/6fmgtRdWmFdFnktw==
X-Google-Smtp-Source: AGHT+IGUheXR4YGw0Ar+spKtPL7X4S4R5Etrl4Vv5SUbRLCIhXQKPJyNUv/uMmmcRx8Nwt1FXOXiag==
X-Received: by 2002:a05:600c:4744:b0:434:a7e7:a1ca with SMTP id 5b1f17b1804b1-436e26f043dmr260503665e9.20.1736981506906;
        Wed, 15 Jan 2025 14:51:46 -0800 (PST)
Received: from [192.168.0.35] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74ac707sm37448145e9.15.2025.01.15.14.51.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2025 14:51:46 -0800 (PST)
Message-ID: <42b0bf4c-d39b-4a97-a746-0a1f4c1748a8@linaro.org>
Date: Wed, 15 Jan 2025 22:51:45 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 27/28] media: iris: enable video driver probe of SM8250
 SoC
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Hovold <johan@kernel.org>
Cc: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Jianhua Lu <lujianhua000@gmail.com>,
 Stefan Schmidt <stefan.schmidt@linaro.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>
References: <20241212-qcom-video-iris-v9-0-e8c2c6bd4041@quicinc.com>
 <20241212-qcom-video-iris-v9-27-e8c2c6bd4041@quicinc.com>
 <Z3_nCPk_g8znto4A@hovoldconsulting.com>
 <te2nhzkl2mx3y7vknokzwtr7szfge7dum7sy37ndy6laot5yqn@urv7svjqgmk7>
 <1bcf0995-cb77-4e01-b3e0-14f88dc91140@linaro.org>
Content-Language: en-US
In-Reply-To: <1bcf0995-cb77-4e01-b3e0-14f88dc91140@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/01/2025 22:49, Bryan O'Donoghue wrote:
> Shouldn't there be a parallel venus patch which either has its own 
> module parameter to quiesce binding in favour of iris ?

I almost typed "either has its own variable _or_ reads the iris 
variable" but then didn't.

Shouldn't venus have its own quiescence variable caveated to the 
transition list too ?

Caveated to sm8250.

---
bod

