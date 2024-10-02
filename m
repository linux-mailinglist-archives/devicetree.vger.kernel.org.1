Return-Path: <devicetree+bounces-107307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC5998E082
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 18:19:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A3911C234AA
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 16:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E84F61D130E;
	Wed,  2 Oct 2024 16:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e+wzZpNq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282751D1301
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 16:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727885852; cv=none; b=GrLPxbWhS9fKvad8B69t6Z+hvqcSEItMtomfhohgBdc3/oRKaHPK0GhoQsyibWf+UUNQ36vjbz3XkT9rK4UXP6uZwYyhsEIe/8nMR8lhvDoCt6tYg/MZJ0OgV+kt0CrNr6Q642RE5Id7KRtIRxCYwVTKu0Imeogs3fvnsoZvN1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727885852; c=relaxed/simple;
	bh=oNV+8lvzmtZthzrgq4THJJLIKy1cSDS5B+jp5aaaZ18=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rm6xMJ3GVD2MsrauH+PQesJIzzdQZWVgtoi8krsT1/cXESSHj+2ZlK+a8jZl3dQS1XP5O58UM31YriU3WxMuOZzlujcj77FzvzXAA1CTOgIAdy85exPUYZKxcTvQ1/RClf9gVwKLDEKdHGE34FoWU1vGls6Sxh9BDvTnQQ5FRoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e+wzZpNq; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42cb1866c8fso9727055e9.3
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 09:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727885849; x=1728490649; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JM5JMDhUH+dGGGAIl4KApkMZL66wBesDKJlCHNplFIo=;
        b=e+wzZpNqIJLrLZTbX2NjXyebtnx9Sb+M/60z2iiv7PJ4EroSzqeY4JroBKXEmFH4Th
         +iJ0IzibFS5Fil8TPMqfaala6B/Nfzf+7H5Yset2Fm8/yIbJedmC5YcvS3HHNHhMTf3s
         hsZwmQ5gMwUMD0T49L2xsMrpa+J1qBp8ro4wDjxMkjRWYkMQLgUPvpd0eeZrEJDawkPK
         DjGftvuwg6ZhMlnROcYB3+KG5XjGdfMMTN4UyNXl57EtwFEDZqSAUkI9ZP37YSrE9ArC
         qPYsBa8ThAPapkP6dmGPutWIOF0hf3yxhUplZ18tWjz1tXxD4SeQxpmn8J/cRHpQFr2s
         qgzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727885849; x=1728490649;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JM5JMDhUH+dGGGAIl4KApkMZL66wBesDKJlCHNplFIo=;
        b=P5i7PtUztPr8zIJrfz1aT38G4j6qIXQqcJB3sqD4im6jr/2a/gT2tYqN2mhiQNSx0O
         sk80E/FzOa3vB0hW74P9fEgpZEh5LXyLOPWxfwT1IhKAqRSd505vZN+C4eEOz+N3SvFn
         b3yEQh0SBRp8B1lCTeBYOGMu8Dp/VIsS/FHFN32+B2r7HNubYjpb8yLkhHaizDfDBtRO
         vsHIAw3/2iEJlZjIbtCh9GAYOS+FGlaqxS0e1BkD+BDtR7KO8MLbh/0K66qkd+sts+x4
         MKOOPtcBZC8Od+jwv8qLChgUPdb3SFsngG0JnTKkkuU7aw9Cs/TqibfdRqlGpPpTQQvk
         cLqw==
X-Forwarded-Encrypted: i=1; AJvYcCULgI07d3HEGADmLrsk//8Gdz8FlzvXSRbGMaX4lFdu4TIpMI0qrs1RcsTsDG7s/AWRWUZQh5FcD9lj@vger.kernel.org
X-Gm-Message-State: AOJu0YyVGW1gnN+SwjmWzvrtWpIp7gmJ/tr+lfdz5AmM7PIC9YI0V7by
	zxC5lKmtSj20dBewHYcEns77tFD5KgkiFVHhujfa541lT8dOjxZ/sAzBlPjUxL4=
X-Google-Smtp-Source: AGHT+IEo6rOiD6xQzE2HIayozTfQ49W5almu48SenNiqQMBNQDpOmbyvuXN7gJwi5F8QrleDyTxiCg==
X-Received: by 2002:a05:600c:3509:b0:42c:d084:ed69 with SMTP id 5b1f17b1804b1-42f777ed291mr13761075e9.4.1727885849371;
        Wed, 02 Oct 2024 09:17:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f7a02eb3csm22302235e9.43.2024.10.02.09.17.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2024 09:17:28 -0700 (PDT)
Message-ID: <b9ddef90-6f33-48ff-beaa-f1caa1a75ec2@linaro.org>
Date: Wed, 2 Oct 2024 18:17:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm: dts: qcom-ipq5018-linksys-jamaica: Include
 dts from arm64
To: Karl Chan <exxxxkc@getgoogleoff.me>, linux-arm-msm@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linus.walleij@linaro.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20241002152419.30364-1-exxxxkc@getgoogleoff.me>
 <20241002152419.30364-6-exxxxkc@getgoogleoff.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20241002152419.30364-6-exxxxkc@getgoogleoff.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/10/2024 17:24, Karl Chan wrote:
> Build the Linksys EA9350 V3 device trees from the arm64 tree together with the ARM32 include to allow booting this device on ARM32.
> 
> The approach to include device tree files from other architectures is
> inspired from e.g. the Raspberry Pi (bcm2711-rpi-4-b.dts) where this is
> used to build the device tree for both ARM32 and ARM64.
> 
> Signed-off-by: Karl Chan <exxxxkc@getgoogleoff.me>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

This did not happen. Drop all fake tags.

Please read again instructions in submitting patches.

Best regards,
Krzysztof


