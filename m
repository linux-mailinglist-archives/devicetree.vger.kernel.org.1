Return-Path: <devicetree+bounces-131368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4695A9F2F28
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6FB21881B4D
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A0A204579;
	Mon, 16 Dec 2024 11:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YFpz9QtH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DDA204563
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 11:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734348503; cv=none; b=iJGaw62L0vQkdgrDZs+13bZiAUmLy1twPmwXhCIJmcKW7bJbmJYiBxUZlLgyXNiC/q2CPh9LMXlnga1riKzpaeQiLBVk9FNuvCxhIlZrx+DH7EtnhnQ4kBeHE4J7SlgnmieDWEptoShejVSbGOHJoWg/MqH4vGSUVMzMtbrPSm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734348503; c=relaxed/simple;
	bh=nXUDKm1xa9BISvUfDdmposybSRYZG//aVztUGmzTPWI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FvGm1YRRw+qOn/oUUu0MJq7ZgccIWTR1Y7M7X8XI89RdgQBEg+B+0AWXfG2yYVkGcxKd0vch3HDc47NBTR0K6KyiwaS33F/gbrxitiaUqGLV9oj4KMJKG+LXzq48ZlJ2BBTOZfwB54fyUSDxouPp9KvjRcHo7aXpBhmVJ19KQhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YFpz9QtH; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53e399e3310so4795477e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 03:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734348500; x=1734953300; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sSbdGX91gG90sHx6RuV31TaU8DxtCwQolrhH6++8Lks=;
        b=YFpz9QtH/rLFZ2gOMMutjAulB5NuMRNPPen9LDRJzwy6Z553B0BRrWw7PSoPfckb8f
         bL9DVkVRVdyMTwZ6DjGv4IDV2rYA6YJ0of+UUt53dE7LXjKARp9xogc/ko64wklBBdgk
         l4yhuLTd3D/hQG3x//ZfqT0PfeCbOcGB6XtNwoGvRgnaJEZS3iaem7a76TKDeqSxv05E
         I8iHXboqrHOjyJg1DeKPUNew33XbmFaGIxHpV/wAzbAVKMpt8clzPDbxSFHVxeRu8+7k
         Ov63lOT+rp9iG4iBFxq1FwvyUztmk9ZyctMf79jlwZ8Kw5N9xIuaJ7L81j+FfJoG+/si
         lRAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734348500; x=1734953300;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sSbdGX91gG90sHx6RuV31TaU8DxtCwQolrhH6++8Lks=;
        b=sMcmhVNVS4C1LA8inGVuBJMG8Amx1YOcCoLtWnptM2jaVMlokOrVQkN8mxUbMoINZY
         a0Kp64wZEG39MELotpIa2QJkytqcZU1g2ou/pBAl6gzRadhISqC+E08MzYRwQxt4AqOB
         TIyn3cQOFks+wUIBfX2M4++Lk3HS9aRJcVdYWAs4M7CWXUwDxgFHClZeEbo+NmfYgVcU
         EGEiG2spqbJkVuYffC4JZRJJnfKYT3oIh89/cZyvDojnFEqhrAN8OiXM6zfpnLO1p+LG
         sF3tisNA5mzf33wT3S7MDFDPCg5bT33gJkzqU3+NpIGHe5YjuvcbBWR/SPS2RXn8TXXa
         xNtg==
X-Forwarded-Encrypted: i=1; AJvYcCUhGeAhRbYE00U7VpkXeE8WFxOWcS8OCSBdO3PVe1VjCEHoExzwAaRARnNDfem2/jzoHKETggINckiK@vger.kernel.org
X-Gm-Message-State: AOJu0Yzapf4KGXPjioemrgv4QyPpPbDZxlntvCn3wyoMNSpv9RtrXY/o
	Vmd2HD3xcqZexZRuA8nJdzYCVxNQNRH9sQ0dSCrlZW3QjYuVN3XCShJaul5VkiY=
X-Gm-Gg: ASbGncvq8qO+NNpfuvBv1yTQyGXCY69RIIuVVvWeEWMGas3TgIp9WIBygt0QXmYY+Q4
	tcOO5Oa/LDZ0Jsh4ZlJWghAOOcjfYETT/4IKA6GPSb/appVbMOJAKpEpUfM89Co+8zUnNue6bv/
	S+P+JM4jW+ko7o6pBrk/7nThQUGmlTHA4YW5u4/Ys3KSf9sSyJwmD4C0HnG2+QZLU1E1wK266sY
	OSzyE9+9XeJY3sGEHGcTuGme7L/j097ne+wUNSPbwBYGuoS4erG15PsxTiYPTZlKIGf8AbCPmYw
	Ppbi0+qwn+ygTL976kRUUbfHmFyjHsH5mJj3
X-Google-Smtp-Source: AGHT+IEbEsjwcnz1TK8W1eXH/0K0D9rb1zgZUMvmHY65rVYyO7hxDT25NbhReV0v+nMszyiwBrmq0Q==
X-Received: by 2002:a05:6512:e89:b0:540:5253:9666 with SMTP id 2adb3069b0e04-540905a7063mr3620892e87.46.1734348499739;
        Mon, 16 Dec 2024 03:28:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120ba9e02sm812506e87.100.2024.12.16.03.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 03:28:18 -0800 (PST)
Date: Mon, 16 Dec 2024 13:28:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Amit Kucheria <amitk@kernel.org>, 
	Thara Gopinath <thara.gopinath@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org, iommu@lists.linux.dev, 
	Dang Huynh <danct12@riseup.net>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Otto =?utf-8?Q?Pfl=C3=BCger?= <otto.pflueger@abscue.de>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v9 0/8] Add MSM8917/PM8937/Redmi 5A
Message-ID: <vfwisdkjg3czwesi6yqaznvxcz2z5ksqezhsh6ytrc2g2ypszy@wqkr5cgr26vq>
References: <20241215-msm8917-v9-0-bacaa26f3eef@mainlining.org>
 <CACRpkdZ-ZEiGMUPObHU=kw=OUADrRGtxgMc-QC3EaBevp-Shng@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdZ-ZEiGMUPObHU=kw=OUADrRGtxgMc-QC3EaBevp-Shng@mail.gmail.com>

On Mon, Dec 16, 2024 at 11:33:30AM +0100, Linus Walleij wrote:
> On Sun, Dec 15, 2024 at 12:15 PM Barnabás Czémán
> <barnabas.czeman@mainlining.org> wrote:
> 
> > This patch series add support for MSM8917 soc with PM8937 and
> > Xiaomi Redmi 5A (riva).
> >
> > Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> (...)
> >       dt-bindings: pinctrl: qcom: Add MSM8917 pinctrl
> (...)
> >       pinctrl: qcom: Add MSM8917 tlmm pinctrl driver
> 
> Is it possible for me to apply these two patches in isolation?

I think so. They have no external dependencies.

> 
> I want to make sure the patches get moving.
> 
> Yours,
> Linus Walleij

-- 
With best wishes
Dmitry

