Return-Path: <devicetree+bounces-255532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3F8D23EC7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0EE43048EC5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ACCB36215E;
	Thu, 15 Jan 2026 10:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NJpFJjBU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B44132ABC3
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472660; cv=none; b=Z+0tJEs7KwAakm6hp9spqyA2UVhajwQ/mvoSQbFT30nBaw9Z8s39AniersNLJL5gFmkFEyedAQp2aSET1gx20SsXIrS5/M+cTDewxZ5zUPEADdfBpArLApr9vXom3yvg5pAwnpfVqV7NVHfV/M5Nr6Q6Yhu165GDFKdga07aX5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472660; c=relaxed/simple;
	bh=LnL8PEILXOHYUFOavVHmQg3bEM1znin2GHQAseAU4rg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Aip/aiQRGyZjomzTPZ+VQ+QAK8OuvR6fUvUA9TAh3TFWKAHupUJN9UpdCvxiv+vD4f6LklsV2OYqb62UU8JI2QBGS8nnZbPglbXQ6V5ZHG9G2kUmsS+X+Kkr5bJTQ2O/xH8MxcFdsfdvTddAKmsur0Xl448oAqI8Xw/jWrd6ics=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NJpFJjBU; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4801c1ad878so2062285e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768472657; x=1769077457; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LnL8PEILXOHYUFOavVHmQg3bEM1znin2GHQAseAU4rg=;
        b=NJpFJjBU3/XqtxVRr3RKFfQ16T9hVyIFJbV3/rWMI9sttdJgyh+GfoLix4B+3/7ijX
         VP/uknAJhXlX8sg354swG7hAhAEsBjlmWwCliL/rkvnWTnqMXHDrzz6YmEZjPX4Wd2ea
         AQBRKS8GpOQut4BCrfS+hyeNA88E/pmTqy1/yGU4jbzWDEn4r/BjVo2GDcbd/ug7Bttg
         pJK8OTEUV1RkRV56rUfkBmLvIto05mmj/qgE3n+FRHPsODOThQXGDsPEK6tn+vLbAE5R
         gjmLd6pimTEiU/ntiQig322ehmKuTDMBZpSOxsQgJTCW3XzvDGhKgv6GzkWHC9RoCjI9
         RqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768472657; x=1769077457;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LnL8PEILXOHYUFOavVHmQg3bEM1znin2GHQAseAU4rg=;
        b=qqjzaF94KRBnk4e89pM1NOaFe4QDN5B6ipMrlXY7eEb5sDuNjObYIHOFFnw7iMpTk1
         4RcBovVSoDZq6oU55lb04oVcvb03ETdQuhcyr/BcH9s2HlsVCGOa1kStTF6b079ZQZVR
         hgkglUbuiTUYqRb7d1peY9laJy8cWnHeO+9or1AA74udVmwemN9a2qY4VDnqI9xXF9lS
         rxvm+5+oJ06PzMJlrgeeklvYlux7OlMdJiKMQg8zq1PxXnJcc8GC9xdtcqr8rZfymuwQ
         ZMyp5YADftSYuVq/RaPa8mMfWm6wpMbKOIgsPChgKuDZMQtEbRlkSL1d3DUjh3dMOykg
         E1Zg==
X-Forwarded-Encrypted: i=1; AJvYcCV9w7YMyNeF7RylDDEBM8amtVcfYhjE0eUDbJ/dUX1Vmw3M0o66KfvIaXG6PDm+ckvEIRvyyGKL8vKf@vger.kernel.org
X-Gm-Message-State: AOJu0YzbQ4kvoIW+QjUw5jUpi2pzS+TCka0hFrJ91wrGmEC4hkZJdpti
	Gg02t6ksOS3omtYIdAPkSYfsPPEtm7qiI5u4/kOXaV8iMa7s5fxMqqOPjCm7kawPYlrzbA==
X-Gm-Gg: AY/fxX47VrBwMsR3QBbE+ltVCnUHxiAUp5RILSbfNltmUi9oTG73t1WWKFkFMTNV7wL
	3j7AknnuwSRC9mZRexAV0C5b3UL8pwWn98eJisBsk1ICN0zy6FPhlmqHvgF0xt6MC2nUtUJ/sS/
	jevP5nwU15r3Vg/CrrjXDgd16NWafiZRJRxJoLCXcoFbKkzsQyQfuK4Y2wlgVaFim6XUxmNSBPH
	R7vA8OOCnMSo2yOMkNILBYjgH7TEQ5y4M9cz3sVWpzC3tIK4IL7L9QTPLTr3ux8k74pHksv1Prc
	beLbEspE/yTAZl1DQXUQywLuUcviE2VI3Nul+MMKkJweWiuq3HpcCi2pZyTyoHxhNK0XePYW/3M
	uCpKEDqStB2SXHweT3DO7x7m00yHkRMaZ1d0Xx8Tu3udfZfyji5u9uacs4hTA4NoS6o8G4QiVeP
	mvqDCuu2GNJ8uXsoTX3VGpkkr/+g==
X-Received: by 2002:a5d:5f49:0:b0:42f:bab5:953b with SMTP id ffacd0b85a97d-4342c5010f2mr6772659f8f.16.1768472656687;
        Thu, 15 Jan 2026 02:24:16 -0800 (PST)
Received: from [172.24.138.145] ([137.71.226.102])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af6b29b7sm5062627f8f.23.2026.01.15.02.24.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 02:24:16 -0800 (PST)
Message-ID: <5b3cc813-9244-4ff2-b00a-cc8dbab7e144@gmail.com>
Date: Thu, 15 Jan 2026 11:24:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: dac: Add max22007
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Janani Sunil <janani.sunil@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, gastmaier@gmail.com
References: <20260114-max22007-patch-v3-0-769298f50b8a@analog.com>
 <20260114-max22007-patch-v3-1-769298f50b8a@analog.com>
 <20260115-elegant-hopping-kangaroo-6cd32b@quoll>
Content-Language: en-US
From: Janani Sunil <jan.sun97@gmail.com>
In-Reply-To: <20260115-elegant-hopping-kangaroo-6cd32b@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 1/15/26 10:24, Krzysztof Kozlowski wrote:
> On Wed, Jan 14, 2026 at 05:17:01PM +0100, Janani Sunil wrote:
>> Devicetree bindings for MAX22007 4-channel
>> 12-bit DAC that drives a voltage or current
>> output on each channel
> What is happening with this patchset - why are you making somehow
> unrelated, different, unexpected and incorrect changes like ones above?
>
> You are supposed to work with Git e.g. on dedicated branch, so you
> clearly see what you did. Why doing such changes?

Apologies for the confusion- this was my mistake.

I picked up V1 of the patch by accident. I'll rework it to address the incorrect changes and will resend the corrected version.

Regards,
Janani Sunil


