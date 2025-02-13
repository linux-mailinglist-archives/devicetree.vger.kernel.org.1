Return-Path: <devicetree+bounces-146131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DC8A338B5
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 08:20:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89F693A20D1
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 07:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF11A20898D;
	Thu, 13 Feb 2025 07:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nr6PcTii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14ABF207DE5
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 07:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739431227; cv=none; b=uA8YBCeXrqTBuDDUhPHw+F7BPrOGLPaPzoCp97thWSm+Jjd/A9P6m5xSVna8Fhk55S4Ut2IupLgUST2QI660rVfHK6BlHr7HQHOkctg57qiNxDmBUuWhRqMyeF6e8oA2hmowzJN8y6qEGljIx0/QdS5WzI9FPU5LFgSpQIiTYLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739431227; c=relaxed/simple;
	bh=kUlydEpuFrGUrydFPT1DYlM8hxRj3C3viQCBSEEaXH0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=buk5YW4un2MObQFB06NLpsqoBbzQwOmalR48/REu6ZNTFIiWwSjnycSCe5ovdZ/tOHAcTdpC8B+kougk5kD2YNaOrN4PwGjRumikzNUdU+ctCeAV4vnSbgKZvooGf8CPbak90RxUu6Gie/vBW9agxY0m1t41XjaKS14qKjM4YiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nr6PcTii; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5de6069ceb5so2890135a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739431224; x=1740036024; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kUlydEpuFrGUrydFPT1DYlM8hxRj3C3viQCBSEEaXH0=;
        b=Nr6PcTiiRkAnY7LZWY3BD7ITa0OAQ63nPuWz8zsBbFTLOPUNrsIkYqvF8X8k1HYn5B
         s69fmWAKB0t19xG6FosNmmz0VdH9/ZQodTieQOqpwyL3OVp0MA2V22E3Q+P92iT/t+HO
         gkvf3Xkun79sCueZhRPPUsKCCIfK8ly7iTKpBGiCiaqt1dDoo3SLLoAWh78N7SSUBgN5
         LYO7BaVph6XbiwvB9u5Mu/pImu8QHLCU9jSsjM3deK4yqEWC7g2tTVfmh9FpANWHwDbh
         ZHbrnF6TnHXgpd1wOSvH+j3QSxTmxIIfm3qCclLVh9IdxDTE4ilDlRucH0ZUBka1oAPh
         roYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739431224; x=1740036024;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kUlydEpuFrGUrydFPT1DYlM8hxRj3C3viQCBSEEaXH0=;
        b=LW8cpn1aOJruGTgBK7jFMubP8K7SW4+lSzDSMuUNoxVgdWBkPzsYVpfqW32VLneXuC
         FhzIfkDZ2h0I/Eiyi6or2NMqJUOFaZCWCMGeaRRSZ5xZTO15Z5IIACwzrCg0ceWziwFR
         FmkuAtmp8+H4Y929VgkY327UiK2OHcFGuv0Efk9c4wGFW5lFp0YOYhVhy1cITDkW7hli
         bB7vymnjbxjwBJsE2OjMMCE12J+wBAKg+OfEj77cpLRil2vVBDNIQ+VqSFDAZ+X2l9Dq
         I10Mgb9m3XNIhUYvApaTK4pUB+VQPQ/SHe73Ok20dUrzwgI273gnB04ZZjA4151gkHqq
         97vg==
X-Forwarded-Encrypted: i=1; AJvYcCUXCQj9EYbWJqaABa3r94INomXawflxfr731P3B8pXg8q/ALeH674vco18hTeb5zK8LmmHT4IVgfhMQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwyIs/i6uYZSq4DYJNjbnqz/J87hOkPqW+PQmbSqJgr8wOFw+pa
	MRc4VAlILuWaQ7PhIDzk4nll/wA+5pv2c1RniHHrcxNB/p+rYGFrlIxcE7nBcQU=
X-Gm-Gg: ASbGncshgqFS8C4XQPjvIJJdrMc1Ym5lxU8hqK4RyMO+3i7QYyrqUWK/FZud27MrkGk
	5x38Zgl8FbgC/6s/gOfZcB2CtShEhMMRcD7+DH12I+yi9gX2cP9C9v+f7HzyTZWloqO8oXdxwpM
	TehMnfVP2sEpCqvFtqaCBulI6E2Lxpg1GaXQ8rIzU28CHDkjFjJ3YB41AgLm/lF8mWP5/bvUxrH
	hVXuYNOw4EQ1QJdO9Fo93g58bN6kVAY/xBfhDODAra48anU1+pJYQRTsUkKwNOWCTdpz0cO4Wsw
	IXsdTbP4KetUTz/FUrodK/JH
X-Google-Smtp-Source: AGHT+IGhPxIg59b6w0WCU7iMGOfAb73XGY1LMG+4SX9yxgvaUCg2qqNEqVjigzMYlqAJgEcHDBCS0w==
X-Received: by 2002:a05:6402:458c:b0:5dc:abe4:9d8d with SMTP id 4fb4d7f45d1cf-5decba62fcdmr1363256a12.9.1739431224388;
        Wed, 12 Feb 2025 23:20:24 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1c4687sm674664a12.22.2025.02.12.23.20.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 23:20:23 -0800 (PST)
Message-ID: <fc341dbf-3add-4728-9ec5-7291ad3bcbe9@linaro.org>
Date: Thu, 13 Feb 2025 07:20:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] dt-bindings: serial: samsung: add Exynos990
 compatible
To: Denzeel Oliva <wachiturroxd150@gmail.com>, gregkh@linuxfoundation.org,
 jirislaby@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, alim.akhtar@samsung.com, semen.protsenko@linaro.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <20250212234034.284-1-wachiturroxd150@gmail.com>
 <20250212234034.284-3-wachiturroxd150@gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250212234034.284-3-wachiturroxd150@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 2/12/25 11:40 PM, Denzeel Oliva wrote:
> Add samsung,exynos990-uart compatible. It falls back to
> samsung,exynos8895-uart since FIFO size is defined in DT.

doesn't the 32 bit register restriction apply to uart as it applies to
SPI? If so, you shall probably fallback to gs101.

