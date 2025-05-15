Return-Path: <devicetree+bounces-177647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AE8AB864E
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 14:26:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0F181881F57
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 12:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D7029994F;
	Thu, 15 May 2025 12:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vkwlCqZ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB412989B8
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 12:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747311649; cv=none; b=Uf3URq2NZnuQZX+5pce1kYMCMFP4bCC8HBC+4wlO078qJ8K96TQZjxF0lEe60kPSXKHOHtORS76f6F/Zp4EIaP22M9aVrhhEbLuhZvItVAZu1GDppTPKjGep81/jSt1+11CPv5leR19h06UpgxSNjXETX873oZoI6k6BgUzAkpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747311649; c=relaxed/simple;
	bh=ySi+0M+CVuWfwFeLu3PPC0j4nsW75CVo4AF4TCbTxnI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CuZNQc/9QOCh1NjwBTxDSdWgnxtY4TTqJbJ4toELzr7wRxVPiB30/c8554xMZ5nPaFagvzTm9/WtO1SFjIjLQQyKJIuebPm2o0Auo+6NKorSj5KwF/Nj+TbdeUqfhm+wm1qoeXDJx+SD8RyGbJkB5En/1aEIEJXYkQpr+e5XqzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vkwlCqZ0; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so9142285e9.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 05:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747311645; x=1747916445; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UYYmwpP0MAwsA931NniE7DuDU5H48aT0XrSHju++1ic=;
        b=vkwlCqZ0SwyVN+cPtAK9kv43zZeGM4qFKReGHN7DGwZd7emjYjPH1vUi8xhrbRCcAw
         kJ6Q4FsCxiwN/HMxHllvoG4N532uzrQQnYf3ubwNePu6lqcMxgjxrA3KEcq3TSudUtW9
         E5Hpvls5kJA3DfCmjyES1anB5cVdKL7JbvZzdn4iqVUuWibMPnqFcBtMoGzqOsfscvAT
         an0nxyeZ4ogjVTZKCbU7T7J6xyu1WwqKLjcI8UXRTruBHPslrHRNILhZZqMiQEW+HLvY
         EoqE8Mg32OKjtoEWCzdmDazHkkWymizXLq7/Y/U6L69aTTthnV/gDj3QDFY8z7r09lzK
         QLLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747311645; x=1747916445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UYYmwpP0MAwsA931NniE7DuDU5H48aT0XrSHju++1ic=;
        b=n+99bKL7j4Dnivr7haGv2zXauo7kS9FLPcwJARR8eGoDXA/aMJbxJ0zje2dAfzdFdo
         i3k7+Zkq1LmR0pWTnQ73VKYN78QltB4MXDfxzNvYTLTsJjPuGwsvYIwkZnrv+7rydjcQ
         yqIl3bXKy7R/ZZ/Ngr2+Ywn+PS5c5mgGaK+xPSyp8UiMkYAgTwDzFzNpC+R7SR+2VaiH
         Qr6bonHzTvhM2beF+srQBa5LNK7H53DARG8AAPuy3OCYavMjIKQD77p897wDeOAODsDi
         rNn8yReBhtH3m7xqvxdwljYG63avliCDsnGVFGEqWHRnIkvi6J5S894v9rwT+utJPF/e
         5Isw==
X-Forwarded-Encrypted: i=1; AJvYcCWYCMdB15rjBFjKbFdjoIjfXHz3fIGvwoWFqYyw+nwCyzDj/kqKXORkWA7tOqfV+etR+UFcxiaPN7R7@vger.kernel.org
X-Gm-Message-State: AOJu0YxO6c4xzmMCyZgaaWL47aDRM67KI67PPLPrSteucu3KuL3PnkmO
	IpWEVdPD/Uk+nI7AoDathGENYE47UGrz7LGfJTIb/NX6ul2cI5ECkIqSxnUri10=
X-Gm-Gg: ASbGncv6kZzxNWV0a4KLn5eJL5ewVyIWzUWVVBK6BkuqOPchl5rIkW+Y6jfZWyXl1Bg
	DKaP0i9OTgL9pEZI+Srii1avvT+QC9f6F+56QFcnIxxALJc/tBnWNwzDUNSFAk9fWFuDiv4wRwC
	nhlCMFHQredWJ4QiuGQ9T8OCTNtTcEjKgvhF/xZ8NDYq0SFM+je1ZmO9cIcteJPM7LQzRjXZYWI
	oZUmVpsIdpv56hIsYasvnuxffmIEpS1ZQESyBJInQht44C3V84/8BBlWnC5wHeQja1mXofiEW3d
	iWIqFogeYTtjKkckJXRkwgrittoeYj9eKSfwUyA777mPO3PUvh59y7lFAEj22bQFL6h23dswuEz
	lZO5zvSPr
X-Google-Smtp-Source: AGHT+IFf5pIVLw9OgzawdBaBFW6KZvXprzzPf2JHeKzZZEBmezUo1iUF8T/ujeptaHHKPw8LeA0tyA==
X-Received: by 2002:a05:600c:3e88:b0:43c:fb95:c76f with SMTP id 5b1f17b1804b1-442f20e33b0mr74335285e9.9.1747311644763;
        Thu, 15 May 2025 05:20:44 -0700 (PDT)
Received: from [10.61.2.175] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57dde01sm22985463f8f.15.2025.05.15.05.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 05:20:44 -0700 (PDT)
Message-ID: <586c877d-0d0a-48bf-9c55-97bd24e86638@linaro.org>
Date: Thu, 15 May 2025 13:20:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/14] spi: spi-fsl-dspi: Enable modified transfer
 protocol
To: Mark Brown <broonie@kernel.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>,
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, larisa.grigore@nxp.com, arnd@linaro.org,
 andrei.stefanescu@nxp.com, dan.carpenter@linaro.org,
 linux-spi@vger.kernel.org, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andra-Teodora Ilie
 <andra.ilie@nxp.com>, Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>
References: <20250509-james-nxp-spi-v1-0-32bfcd2fea11@linaro.org>
 <20250509-james-nxp-spi-v1-10-32bfcd2fea11@linaro.org>
 <aB6pa9m0emX2vMH8@finisterre.sirena.org.uk>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <aB6pa9m0emX2vMH8@finisterre.sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/05/2025 02:18, Mark Brown wrote:
> On Fri, May 09, 2025 at 12:05:57PM +0100, James Clark wrote:
>> From: Andra-Teodora Ilie <andra.ilie@nxp.com>
>>
>> Set MTFE bit in MCR register for frequencies higher than 25MHz.
> 
> Is this a bug fix?

Not this one as it's only supported for s32g which isn't enabled until 
later. The commit message is lacking though so I will elaborate.

For the other bug fixes it looks like they are, so I'll put them at the 
beginning and add fixes tags.

Thanks
James

