Return-Path: <devicetree+bounces-100616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2251296E47A
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 22:53:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E1AE1C23E9D
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 20:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B562D1A727D;
	Thu,  5 Sep 2024 20:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BjNVh2mr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1B2190486
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 20:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725569628; cv=none; b=keG02smDQ0NT/2+uAMSq9oxRmcujG5DmPA0c5RnA4Na5ZMBp0twZTDa5oUYaauDrC8VWeomtnYk8Iy8C+mQwz8ifxE7Wyf30bphy8ny92SWtdp711Q/IjhHxgv7hXlQRwySK7FMbntgJM8rQ4oVws/AtkcJLvGBZF6OCJxBZtjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725569628; c=relaxed/simple;
	bh=okpSZJ457TOGrWQFhXOsHpza1OncvzJlnkagzXGr9sc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=bK8qJ1nWxZm1BPtdM9Fs1JQA1w16zthg9sa7xVXhqJZRCzUTZcCTlj8cuu289XP8/YR/+v8cCwkv8NE4d0BQJYIhkNWGXdDfJNH54Q65nfEAB+4aMAflkoZLTNsyL7J9z2V/yac+kzHi9nEiguUUOyRB1jbnvpEJ4BapS4bC5EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BjNVh2mr; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5356a0a56f4so201206e87.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 13:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725569625; x=1726174425; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nsgr1R8IvjXIPpmmwD+8IYKOWPeLr0RTzjyAwlJwjxI=;
        b=BjNVh2mrTM4kWiFl9gRX6+hdIguxhEvLYiuJjo+e7nw+BtYtpF2dHdHAVHA8GoVqee
         MbJQz1brO6A/hzZ7+evFBKX7zReY6dcO0TzxKQRtOlezMe8xe+6dt+r2xZ3PgVO9ohwR
         Fi9wZvl2WksybE4E05cxoaa4zNNLqsb2CSHP2nD1sCBUH6zkqGVe0iUSONMmk45FxC0r
         PeeSQsjzNdozzU138fpckLWnXxYLDvP59wYWbwMzzf3Xw5WefwjlsWiwxKy0lbPOFqAY
         203YG/xkODmJuuqYxNV1V2Xg2/6l2oMis6oOB99rO9kU/3Gabe3q6bVVv6mIf19g6iTF
         voIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725569625; x=1726174425;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nsgr1R8IvjXIPpmmwD+8IYKOWPeLr0RTzjyAwlJwjxI=;
        b=olFzSKu6/v07Lycc8wlTLW8eyHVmxBcF3eF2up5+4/EN3UrLdxKKr/TKhHvgJquqjs
         m4GCZt9kW7QbNZl8W0bH+ld144uFTqXR95LF/dcRbIv9iAZQO6zsdbSOzigIC2pC1vWT
         tt7BPn/pnzBdPiTULVyYzkH4VMW2wdgTSFGNN7HIqG02bTSY1wo6yBOULl+pUbRIqdz8
         i0h4n30FHE/fTAxPJVwc1LY9UDvIG5jEuXIDQOnHAuiYRd2r/AB54UdrzRlghFflspIj
         D6m3W5EnNwHSynylmHNEri3EWdavni6ryeHZHbXSv5f6FtmsCfNX7AvrU9uoX3GrDlEJ
         8Fcw==
X-Forwarded-Encrypted: i=1; AJvYcCWUAIB6VL9tsMFBM6xZE3SzHkvL7aw9sMNC3RfsGJgob0me6sHihg0qC4HZcPG+yiL29lVzLbNfMoTa@vger.kernel.org
X-Gm-Message-State: AOJu0YzEj2/7D2IY+8FsEkJBSoFGpFYWJyIgi2yPj5rebnzc7Y/y3mzt
	iNpWWTiom4KteR2L2POyZGhIBZP/VKVshYwmwh0nRdNYoIrDb0zA3XAoFL9g0gM=
X-Google-Smtp-Source: AGHT+IEO4KLXvOMoYHGx7cz+dmpyOoozAeB+4C+XIlp9W2jhjsnqyJ3FcfgbBB1A5mVd/UC9qlSOvw==
X-Received: by 2002:a2e:b8c7:0:b0:2f0:198e:cf8b with SMTP id 38308e7fff4ca-2f751f3ca74mr1464501fa.4.1725569624887;
        Thu, 05 Sep 2024 13:53:44 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f7504801fcsm660731fa.121.2024.09.05.13.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 13:53:44 -0700 (PDT)
Message-ID: <1d04e38d-23fd-4646-acee-0d306efaa756@linaro.org>
Date: Thu, 5 Sep 2024 23:53:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/7] Add SDM670 camera subsystem
Content-Language: en-US
To: Richard Acayan <mailingradian@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-media@vger.kernel.org
References: <20240904020448.52035-9-mailingradian@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240904020448.52035-9-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/4/24 05:04, Richard Acayan wrote:
> This adds support for the camera subsystem on the Snapdragon 670.
> 
> As of next-20240902, camss seems to be a bit broken, but the same series
> works on stable (although it is much less reliable now that the CCI clock
> frequency is not being assigned).
> 

Second that, please elaborate on "a bit broken" camss.

Regarding the CCI clock frequency, it's a supply clock and it is kind of
unconnected to the CAMSS driver, here I would expect that some particular
clock frequency setting either works always or does not work at all without
anything in the middle.

--
Best wishes,
Vladimir

