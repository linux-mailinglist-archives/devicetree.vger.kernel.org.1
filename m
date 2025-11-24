Return-Path: <devicetree+bounces-241544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A21D6C7FA3F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:30:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5DD304E5259
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E0802F5321;
	Mon, 24 Nov 2025 09:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B2X8i11M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646A22F25E2
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763976518; cv=none; b=u47/x3H71BCwzOqu51KlvZE2j5knq0Be0FO+un19GFGNt4olCnLjwJ2G6sXZ2Zvjbap8CrhWTe5HYP26OUXtnp+DewRA824515GIcCCMqqa4PlBkUERiqFLk8Vqg4s6KPBf5ebhepqA5jkVsnetzjhk5aMy+9zcjiWaxvQkBnVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763976518; c=relaxed/simple;
	bh=Zq/6lrLjwUQVKmC89a4ZJKQFFN+bx+P+dHA1xIdfkLY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GoqPr2VEf7e35I8JZBUTrBziHRC+BN9lqdsJqS+1NprfmIbzXaUfUy0OdG01N7FM3kgJ7lGHZB4cj6Z88F709yBVvb7X8LetrwnnY3/pr5IBu/NJwu7aZyM2aiYD4NEBSojZDCILF1Msbx6OKXfS8vlAXHJ0DQVhqDj37SgFtS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B2X8i11M; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-640c1fda178so6641290a12.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 01:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763976515; x=1764581315; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zq/6lrLjwUQVKmC89a4ZJKQFFN+bx+P+dHA1xIdfkLY=;
        b=B2X8i11MsKgTOJuyToQ0oNTGldL4P+aIovTxG11Ao1STqUR7vj1CaZOmz7Ng5CTOXz
         L88VCvifGrHn5+XipGDCn8poWD4sWWCBgSOmDz1rGUnJ+MOUEmSzo5raAmAzIIG0EnlA
         MZ6OfYULJhS2ANiYzGy1mXn/xiDYod1QxxbLe2uHl8wBa8rLoHtaO1A0q67vIQ5akqcC
         5PP1ThVcOYHXu2XQhtvYKxICzcVRpH7k6Xy43MMhg0W4ekVMNXLv2som4J09n/TSyzTf
         r6ez5wjAb685BWTSa7DnBxwANFJuv/xMfBXF1Bf+NnMSYApgPjVQli1JnHzh5EBqo/g8
         vtNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976515; x=1764581315;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zq/6lrLjwUQVKmC89a4ZJKQFFN+bx+P+dHA1xIdfkLY=;
        b=D6bem+RhAnyov6R3wYpP9hR4T2VwyQQNV+GnRHDDt9GmJ9l4gmoLsiB/iS11HGJqjY
         5hJ65h1wzj4zyFg8MT3KRnndpJxMwxLwt/6tNagqt/TIHskQuM2oF+38CY9aM2nZDmZM
         52XHPvntHQIWs2DNHD0AeVU2/CCYsl5nQ3dqK6XnDjfCxF2WslowmvHYjnMbftyiPq42
         29NWC5LOS6y6G9fydBYjliQk+/ySuETk0s/hiE6EFeg9WjeWYWgHrR+kqLJDj/1/Badu
         B1Mw+6EfODne3OIwh2yAxDbkSH6cqLcMbbgqNRI735treQpzvXO7TQc2FGKJt7NkgQgq
         RxZg==
X-Forwarded-Encrypted: i=1; AJvYcCX47se2Wsg0bdWITN8aYpMl6WxpkWKoEqLEaZE8hcfyCc1+3bHMS/bRJinU0KGMOFGuBm8MNhZn9UfN@vger.kernel.org
X-Gm-Message-State: AOJu0YxVa8SKTCZcalpGupYr4k0FtJHH45lzle2N1fFM4KypCG0W6v7r
	x+mSs3zVMTBKsRVUS7uAcP1DDf4I+g+PMD12pjGaXUX/l8J2KQQlZCXP
X-Gm-Gg: ASbGncuNbx2vzTQ8tePa9QQ48Z9Qdkk1fjpG7dIv/H5YoJxW9Qm7PGYIkUe8bqQh+aN
	eianSvLVdV13Vuk7WQkYbYZPTFSHdYi+ELBSrivsgAuv+7B+wfb2YCgKSKr0b42hMpKfy3JtZVZ
	xw3qq6Dnvbg5HUJLrQnuoq+IzLMtg/63S8FcIH55vL3ybJ+hfv+ht9bPwj3PPzvHz1Eb7+nVJ26
	rdgGXfM1/brHp7pRf4Wy4Lx3LVYsaWLJpKtU1SOi5MBeODqiKHBNLO9NU26llmZDuNeTciV0Xon
	bQA1HQ/U37Q8jUzrTbQPuZ33JBFavNN62pQeewVkEl3PeuFJZ3hmh/FIk2Jmr0ZgBiLsWn+dlCD
	41eusa4UiB/UAbUAxoqtP1JX5g+Avje7rOolIu3+iq2RNIQpnaT2jRO/mm37FTNUPvgVj6RXMsq
	em3jZ6fwUgldyYj+A3Vem3rsbMVnDAJHaM/uU57Yp+IHI=
X-Google-Smtp-Source: AGHT+IE64Vdc/C7dTNfZKSE3Kij05EfXqApdigFOyeLPFVhuSXQ5Ul35Nks9lJUeS+6q64Q+0gMqzQ==
X-Received: by 2002:a17:907:968c:b0:b3c:8940:6239 with SMTP id a640c23a62f3a-b7671b12672mr1131781566b.52.1763976514338;
        Mon, 24 Nov 2025 01:28:34 -0800 (PST)
Received: from [10.25.210.163] ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654fd4fc4sm1250447466b.43.2025.11.24.01.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:28:34 -0800 (PST)
Message-ID: <6be8a682-6c72-45c8-be0e-880ab66045ff@gmail.com>
Date: Mon, 24 Nov 2025 01:28:32 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] reset: imx8mp-audiomix: Replace mask with bit
 index
To: Frank Li <Frank.li@nxp.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, Shengjiu Wang
 <shengjiu.wang@nxp.com>, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
 <20251114133738.1762-3-laurentiumihalcea111@gmail.com>
 <aSCHjNqj3CV3ahX0@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <aSCHjNqj3CV3ahX0@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 11/21/2025 7:38 AM, Frank Li wrote:
> On Fri, Nov 14, 2025 at 05:37:34AM -0800, Laurentiu Mihalcea wrote:
>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>
>> Replace the reset map mask with the bit index to make it clear that all
>> reset lines are managed by exactly 1 bit.
> I don't think there are benefit because I met some periphal need a magic
> number to reset.


Please provide more information. What SoC? Which peripherals? What block control?


