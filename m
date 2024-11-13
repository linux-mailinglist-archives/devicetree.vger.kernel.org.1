Return-Path: <devicetree+bounces-121571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9569C76D8
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 16:25:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFF8A1F24916
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 15:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35CE15AAC1;
	Wed, 13 Nov 2024 15:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uwblCQ0f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252BF158522
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 15:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731511434; cv=none; b=pu9l+kOnMsv66rUCfMuSzhs8EyfYE3Wdi83AEUOyBnyiXrU3tchOhkpuEjhbTvECPlte/YIVS+YarobMUIbu3off3lCsdxEcr3eG8e1/dC7pnHd2pXVae0oAP68nc0XaCt7rxrttyJJQjuJlyVY0Z9MxA7/NrHdhtQxYFTywDaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731511434; c=relaxed/simple;
	bh=mkf92YvqqmYTWrtFZhtkksrDlENB5dZpTVzytU/uDC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EnppUqOKwFJ5OQr6XV/RjquRznv78qLRISLfiR4EpyBwCgmNK5seY/VXTQ5NwE6HnttoA4izWoiBD+u4FFaXI3dK3zsMfT8hNPMDR+Vsqv2PcLcls6JjIXzoxUtIRWkpzF4av5GY6OaffoiWLYVZnzbYWfuLIk1CVNJ6iRUkpg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uwblCQ0f; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37d4fd00574so592558f8f.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 07:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731511431; x=1732116231; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OOdKga0laMcAvUIFJVgngqKV8g3vjQo5W0ePdHvo9Xs=;
        b=uwblCQ0f5j51wt6e4u/1wmSa9cQsZkHN6pdZK/auH2Ctt1I5gY2wFj28ic6uKMHML1
         JwNEpWhqbt48in3sRFg69dOjs+BhMplk9nkxzmQUV7k70CuPZF0oUqVRwC1aOD8CT9h5
         zv7lxPwj1SKrs7255Q64/8uMG1OfE72sS6MxGoyDXnJWCxDKmyj6B2bk7BJT4+ej3NOF
         jTRGhZ9xYdth9VpAJ6xErOcJuNapqZ5Vwbep1GuaMqtkkIkckWOJ9XxkR/wpYXs7gGr/
         ClwkQJRbFFesMUPXGw2rlVJgSePgc37/FUFx79ICT4AlBTgx2jAG/hF2TrJT+j1DDlmi
         bohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731511431; x=1732116231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OOdKga0laMcAvUIFJVgngqKV8g3vjQo5W0ePdHvo9Xs=;
        b=Wc3XeotwPanCABX0f6tanjS8UEDr5rdnKCTXCMLeIhxk4fhj9pZO8ifbhMa03bW/8C
         M5zkt6o8fFc7DpaD8PgjwWqs8D1ySL7qIg+LIJjcPY7ibUtiB2FdVYBHJ6mp4+O1XumZ
         BxRKHYKR3xwLo3wjxz6bH82oQd/R+uR2MGTQMsbLM9wprE7RFpFypslDoLTwQgCEkHL1
         Ukwmw4WjNwsn0FtQ4nOQ5oTxE+KHmoKv7jLZ0XN6BzS7EMuqYkzsd3z+jWYlC5hcCRLT
         8bJDWxIZeu84nO1YPzidQOYOxJ3uClLmCF4qOMO9Hw06+Tzn9mqQ5R8EK/N19gKCfAOb
         lBBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfKR3BogqLcuaPN9X0o/uXq2i4LzvJIHLkyjqB1p9hxhKqgXsxX41YvXYYq3HG/jCxLujVu0TFH1lN@vger.kernel.org
X-Gm-Message-State: AOJu0YwqCrFMWlDy0TcaKhP6Atk21Ef2Pc6owda2WO38s2MPKfqKwIZG
	E+8BrRlmYpxWVE9lXWEkbkKWUrtTRt2PoD3nIw2Tc9B11rwuL2isjNc6goGzwc0=
X-Google-Smtp-Source: AGHT+IH/gfM9PGoYpJNGrFD5lZJnTGB4qUBvPUOWaiS4UbefcHZd3yGHfeCZ3TMkYSv3w6AbbLOVYA==
X-Received: by 2002:a5d:588a:0:b0:367:8e57:8 with SMTP id ffacd0b85a97d-381f0f7f1abmr19457022f8f.19.1731511431496;
        Wed, 13 Nov 2024 07:23:51 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432d54e2e19sm28014685e9.3.2024.11.13.07.23.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2024 07:23:51 -0800 (PST)
Message-ID: <eda3d0ae-50eb-43b2-a234-93b209fbcdeb@linaro.org>
Date: Wed, 13 Nov 2024 15:23:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] media: qcom: camss: Add MSM8953 resources
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 barnabas.czeman@mainlining.org
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Vladimir Lypak <vladimir.lypak@gmail.com>
References: <20241103-camss-msm8953-v4-0-48d0ec75958d@mainlining.org>
 <20241103-camss-msm8953-v4-3-48d0ec75958d@mainlining.org>
 <6833ebc6-9210-471a-8ca6-5f3605155f33@linaro.org>
 <412b3252f1ca795fbcfaf5e466e94642@mainlining.org>
 <67d014f1-9424-4b88-b031-096a5596c5c8@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <67d014f1-9424-4b88-b031-096a5596c5c8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/11/2024 13:28, Vladimir Zapolskiy wrote:
> So, we have to rely on the documentation here. Bryan, can you please
> check, if VDDA_MIPI_CSI pad on MSM8916 and/or MSM8953 is related to
> CSIPHY or CSID power supply? Thank you in advance.

No there's really no indication in the documents I have how the input 
gets routed internally, CSID, CSIPHY, both.. not clear.

I think Barnabás is right, the best source of information we have for 
this one is the downstream dtsi => CSID.

---
bod

