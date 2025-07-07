Return-Path: <devicetree+bounces-193492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B6402AFAB0C
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 07:32:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06445176231
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 05:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B34273D89;
	Mon,  7 Jul 2025 05:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PcKQnzVm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD99B16EB42
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 05:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751866309; cv=none; b=g2kMB0ZfL7IJpfB1piTxGry3Wf+c93CTuX/gImFAL0iJNAw9zw5iSUfe4Ew7rBZeWb4f8aclD5YX4BEjEyXoj224mOQmrAyiT3crjC97SxZKv3JqBwCHwcZ1a6cEY0Rk9xTYuzA6MRHxeXwy3OA7pGnuZct6zwq+uD/wBbF5peQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751866309; c=relaxed/simple;
	bh=94uboujV9lJcpwu37AI5j7V9fcuuVtTEgSR9kXK7Qr8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fI/u8Uoo3xXoMNBZI15JigsRrxKq2bk6sebTnuqEzZR/fsRQwZoTGzGJB2lyzT6fP4Nc57mDoDN9QtL+spd5XCVS9UF5RwQnQrLciLnrw103oSV0Hk45grXt2l1RO41Bs6Wqf1D01HF3BUn4c71IRAa3OrlFG/CUz4IKt5PS6ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PcKQnzVm; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45362642f3bso2955025e9.2
        for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 22:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751866306; x=1752471106; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YHkwFuq4eT24IZKsGZMTukEgMJ+/mZ79J1QjtwQxKwE=;
        b=PcKQnzVm2fJjcrLnTFjF1B6A/dhiVIKbdb0if+2nQhlzsdjwwTdLyhNrtAQHm8Ua7a
         LsVwyc5e2TprF4jfKNmIJtvWzzLF8fl/PgKseGgbBgbpLtkIExC/CR0C/izXY7GY46T7
         +FY/nHFYNxBlixpDt9c2GM7TTfbBpJXauGvXq/0tbGffC5Aje9ELS1OcfzX14wCr2jhE
         nrwSWKRrjBWvYcFqu0hLD5UNC8Dcb4SDuyR5YX9B7YBy5hug/UCTNEudFgnUtNybRbFx
         cBbHpzfEc63e17ux2DS1y00U9CeihOAKiUsdY7NX/wLEDaxpXO1TgqncZNatbc5rHds/
         POUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751866306; x=1752471106;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHkwFuq4eT24IZKsGZMTukEgMJ+/mZ79J1QjtwQxKwE=;
        b=d9mB6a5F8NR1rQe5WA0kQdet5eLMy+UCcX4zF6uzfnfuqPvR9BdDc1aCdMzQDnYqOE
         WjqAFbfKcJq4mHeJIwMnqXCcBSB4hOfk9ogngzJ5ahAQmmuNo3qmOfLdLtLmXZaMAP13
         gmSoGqT/rqvVZpwclOrlTsF9PwKsop9Hb8BxGrV5MR8bxFsJpZoi8A/ffn3GQHwWUh65
         MSR/AV3lkTKsndOxEINiK2le4rytdgoq0f/0TpgLu9HJbOnDQNwuMBEfWPE9GRwMkQXq
         +10p1r1xxZ+ymZKDNpJmt7JoNqT+jffUYyw7cJAaC1Iwt3FiqoXi70as2L8dHYgSn8sO
         490A==
X-Forwarded-Encrypted: i=1; AJvYcCXAz4CNNtIz2khBnvzZnsc0VK4J1Rfy2lgARPAVpTKOTzSUcSJLSIKVC03dRXZmik7eaOOOfoYH3jaC@vger.kernel.org
X-Gm-Message-State: AOJu0YzRw+Abc1YqUE6Fl2BZ+f3W+/iLpkJjheGlPbQ6TofRx44mAkvP
	FcJRRz47ExIBiEm1oOtvwjVM44d/sr4su+M5aA/gijkDV9FtIqU+PTzsXeoM5hOoFzM=
X-Gm-Gg: ASbGncseoQcS47s4hI06TsvLKFitfHmp/1+RWxuhzl9sCJdWzr1DerTeMuKUHoixPlD
	qveHpv9oshD8lQ0xZSF94xWZ4WzK6khC53iI4uzxtG5YOUW46g1xVqDKZnvsi/56aWcCof3fzd3
	/SP5FiL8K5xB/A9ksVLYkiizdIpu1dflrcgHvhL8OSOMESD3yFQXfEX21ROwaDb2/OU8+dShUaa
	pmQD5m2qErpeyxbITtOlSIr+uN1LARvpBD+28+T3/yd1b15VOMf+NfkY0vGL9PBwUl2aEPjSI9z
	Pk5HLtQ+AvRqfubQb38w7Z6+TV6ZnA5ItlKThHwv1MLR1+S9+LpW5p6+6O1OAfjAo+rq3wv+HmY
	xra3/xfSiOUWW9eei
X-Google-Smtp-Source: AGHT+IHWz4nTVgOZn/wog9WT6y1vGam4GDDDJ+oOq6abzjfnj6Sf5pBAfZzakmR3QWvc0RfE54Czwg==
X-Received: by 2002:a05:6000:3111:b0:3a5:2d42:aa1e with SMTP id ffacd0b85a97d-3b49661d4bemr3409666f8f.15.1751866306036;
        Sun, 06 Jul 2025 22:31:46 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b4708d0ae0sm9259121f8f.33.2025.07.06.22.31.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Jul 2025 22:31:45 -0700 (PDT)
Message-ID: <56f73f55-092e-44f0-84b3-b7e0f1590453@linaro.org>
Date: Mon, 7 Jul 2025 07:31:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: sunxi: Combine board variants into
 enums
To: wens@csie.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, lukas.schmid@netcube.li
References: <20250706095804.50475-2-krzysztof.kozlowski@linaro.org>
 <CAGb2v65XF=A5Qrm8FrLQaZXLLs5T-0osBLP3Fz3UabrTi5xUXQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <CAGb2v65XF=A5Qrm8FrLQaZXLLs5T-0osBLP3Fz3UabrTi5xUXQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 06/07/2025 15:17, Chen-Yu Tsai wrote:
> On Sun, Jul 6, 2025 at 5:58 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> The common style in all bindings for enumerating similar variants is to
>> use 'enum', not 'oneOf', so all boards of same variant or using same SoM
>> should be grouped under enum.  It is more readable, more compact and
>> makes easier to find actual devices from the same family/type.  Also
>> there is completely no point to repeat the compatible in the description
>> (incircuit,icnova-a20-adb4006 implies this is "ICnova A20 ADB4006" and
>> pine64,pinephone-1.2 implies "Pine64 PinePhone (1.2)").
>>
>> Combine two easily visible cases: ICnova A20 and Pine64 PinePhone.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> 
> I can take it through the sunxi tree if you prefer. We do have new
> boards coming in this cycle, but I don't think there is any overlap
> in the board binding file.


Please take it via sunxi tree. This belongs to sunxi SoC.

Best regards,
Krzysztof

