Return-Path: <devicetree+bounces-193217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD28AF9ECC
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 09:33:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 249051C82A6D
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 07:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AEFF2749E3;
	Sat,  5 Jul 2025 07:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jduw7J5p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C102222CC
	for <devicetree@vger.kernel.org>; Sat,  5 Jul 2025 07:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751700795; cv=none; b=GtV2HxiILAU6jmeh9hJzpZHvgNpDS/D/ZdYTaXjTsiNGXppeoinpKmGe4mGNzk9Ahs47dmeKqZHWFRJTyEFhy0mv6re4x3y+YHj0DDg9HB8aV4C382wedOtpRONVHXh/sxnRl9m1TzgF8S92RqQwCnrTvjvYn95Ug4yHiVjvvPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751700795; c=relaxed/simple;
	bh=dV8yKwn1s9RPq/fJzhyLBarLvoB7DcL37DKhMvTOZX8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BkQw+QlRn6KjzAAsd8xsgZAwHWzeWzP5Yfr/De4SGtDVZVHJssnEk2IOSGgk7tySSa7EF9sK79ZkSRfJKjFhZf8uJIc5Q5OROdMg2KKSVX/d8OqmNPM9Asj4gS0ZfRQFFJ54PYTpz4gvhTFnFcZ3Te61jn5VbTfZCOVlspOMAYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jduw7J5p; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ae0bc7aa21bso319393066b.2
        for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 00:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751700792; x=1752305592; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+BzfNtLpFJK/1rL9CXjpJI51Ye7+7b3LCibh0EaiIaI=;
        b=jduw7J5pKMeyNN3N9qvafDLNWiQp3YAG/NtuCZtpdU3WQDuBwMxQIdwIhIxODAGSzg
         QgOM+pFU2heUmZDclTfl2eFtP2AbRn75ry7qW0QzVbE9tn87MFk4nVCtawfAg4FomGcs
         T4FjMFTFEHJLVEkVYiDpsgyNg8KsT2xTv8Irb/ZFhH7pF4w7T+BGTCNR5coTV3vh6zxE
         qZJzOVA990LFGQI9FrpkVE62lYWSw1uQv5BWF920bF2Qx/YserYjd36gX8DoYMzF5OSu
         hqpE59xAtayPlDu/kv64MR7BAn5salkx6ueyjzlDz0dxXl9Lg02tViXiP1lMnY754qiv
         oqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751700792; x=1752305592;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+BzfNtLpFJK/1rL9CXjpJI51Ye7+7b3LCibh0EaiIaI=;
        b=fzIq2ZTHZBYvz3Hd1hf3IEV5DOkrOi8kjqXObDp2rfF3VCIVQ8KTFga9K1tgAh/1an
         NM5CMqo2F6WeHxd+g0uvPeqbFGWskz3iNXcDJcj+P8hR3ywdxKcreRZNjXhZfr4EXGzt
         y3L4gau1fM7rfbZEVChpgDosjM4c5w8QAeHr+cMw9vBPONJFVRU6X1U/TgIG1eHIbM25
         e++3l/cvE+Kc7kKI7tkBves9VFM3DjRmSBIXG9pMKuqogBkQV9Yj14BogA5RRuxj+9fr
         8MczVPwltkHqYP/j8KTrINyQydW/74zGOkt8a2tBXDxbFML7qJIs3u8wchzlO+VgJY50
         Y+DQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdU2KlysUn3yZAlaAjXNFjQP2uNlMxtBbG4GfT4Xed+bivwCiRuBSbvnkxcV8/yJZUT4nZQYf+ZEQp@vger.kernel.org
X-Gm-Message-State: AOJu0YwtEnSH06DUdsVHVy68m1d5dukxMoopyL9LZm6TGlJ6NKnptSQz
	RJ+QXftjG9Wbo6lQKwhxT6UZ3E0XE8FJzI3iQXKCJNWSu6xbdGJxS7W5sxM/t2f5fTE=
X-Gm-Gg: ASbGncu2cjrc7jX5fHvFgNo1qOHC+iuWcdo2mFmZ6IlY2c3KVxp7YadIPGvGYfrw/Og
	Q8lvqi7XGLhyhXzu9ymVxUNzUnuZQk8j8+J8kx0oVpegFV/HfwCpWVdpeoSF4bVbLKRAc8MXVnw
	NQgrQPkzksoouFgnEO58avR/tR6MQVzHmjwr4g/Z0NSZQsLzkQjrjkL4N6jxZzH+1h7pMdN52E3
	503kEdsOz343wah+xJvoYg370BRXnjAcu9ksUU+uqS6Efk4hUSUrCGr/u1t+muc3G1/YJum9Uk6
	TqRDMUX/z6F6Ow/9a4qUZrmnOeJYl7gSHRqCozIbRwqs7heYuj4RRqe+XAe5dqZL5W8oMg==
X-Google-Smtp-Source: AGHT+IEyjZg5XLjSr836IBwSt2gYJioyHjqnWyfO3B2HFhMs77WWIN1RLtUFlIyuT+MplatiWpCWmw==
X-Received: by 2002:a17:907:7ea4:b0:ade:44f8:569 with SMTP id a640c23a62f3a-ae3fe73f353mr500816666b.42.1751700791818;
        Sat, 05 Jul 2025 00:33:11 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e7d5sm301895766b.151.2025.07.05.00.33.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jul 2025 00:33:11 -0700 (PDT)
Message-ID: <0f6dac77-14d4-4bf9-a622-1f075568051c@tuxon.dev>
Date: Sat, 5 Jul 2025 10:33:10 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] ARM: dts: microchip: sama5d2_icp: rename
 spi-cs-setup-ns property to spi-cs-setup-delay-ns
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tudor.ambarus@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250521054309.361894-1-manikandan.m@microchip.com>
 <20250521054309.361894-4-manikandan.m@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250521054309.361894-4-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.05.2025 08:43, Manikandan Muralidharan wrote:
> The naming scheme for delay properties includes "delay" in the name,
> so renaming spi-cs-setup-ns property to spi-cs-setup-delay-ns.
> 
> Fixes: 46a8a137d8f6 ("ARM: dts: at91: sama5d2_icp: Set sst26vf064b SPI NOR flash at its maximum frequency")
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>


Applied to at91-dt, thanks!

