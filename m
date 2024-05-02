Return-Path: <devicetree+bounces-64423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DB78B94DB
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 08:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C45C281691
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 06:50:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CF8F1804E;
	Thu,  2 May 2024 06:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iAowNa07"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCCF8F5C
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 06:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714632606; cv=none; b=IMibseQkxtBDqdcRHEDfar78sd8sWkChL/U0inRbuuPYHsV0lqQVe64M1TbWxkyObpv+PXNO2NmKyGk1PFT3C6OYv55kuiAvHneNPFfeL6xkU0rhl8BeIv1G50kXHzZ8UV/tNko4/qk13nNoMXJNjQwcxJGjopNtuzm193ia2+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714632606; c=relaxed/simple;
	bh=gczMRuZ2fsGRpoCXUBhl7NeVLE82+ehtyW2OQrB7AVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tMpSCyUpQ6KbZXgOfMrf76kk+yQsXy9NTrWmfyFg/wN0Rmz4zcO7aSaLdpKENua7/6/G404oJoWdsVv8fGBOX3lP+BU3fo7pDJWEfe6760Jjiv93L2COidwT4c3R8VSaFw5tSxdVNgfzc228EBDwQYFcSbFk8NhrXoejCrf60oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iAowNa07; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-572af0b12b8so1162940a12.2
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 23:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714632603; x=1715237403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gczMRuZ2fsGRpoCXUBhl7NeVLE82+ehtyW2OQrB7AVI=;
        b=iAowNa07+HpskSrVjTCyABhl1DXSvKvdwyPpjV8cpypXGoUmI5lR5Ymy4vEGWi65kw
         RNfq0SRGbVNJ/Da8rDbYf/OOLoQiPuUF1x6LW9Hi2isHw8bBj4FPz/dBeexPLk+cNjSt
         Z4bZRMIdjaOyRj9cxlqaz925i209Oi1ufRhYetxcX1xKMJN00rY4B/r4AGvnvSwe4TkQ
         AKIsMr4TeDLLfLbwX2rTIkSmxVjPlD5Uo8M5GQx7Ac9S62JCqg/lv9WoLGmvmq/JcfzX
         0oCKahJCegBTKCpBEcqZqvYxJ5lhtgKUMj26+vXiWWNEOUuzOLNr/9r4MkQAWpUoCYyP
         EWIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714632603; x=1715237403;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gczMRuZ2fsGRpoCXUBhl7NeVLE82+ehtyW2OQrB7AVI=;
        b=cqQ+XaaRX2okYt2oPrKpHLjj/ToHEM6Ze/fyskCyv+MnoP/x/PxRMdOglkxQE6VEL7
         PEc0+EVRsB5o0ZXbeyCAo9FLxfC5I1IGS0nxM9RpMw0OLYQYutHmthsLshOfK5DYcHyo
         yLh0/okiF1bsc0VdGCNpXJKXifZxMbqgIoTS3La5g3QZTTMDUIOQjpZcRu8f8ywb0vjw
         bLBaCwnaQcskpVXw16QX6h3P1dkxLRt+Em8yBZE3yPmwS+MONKj6mO2DfdvS7uJsePla
         DupmGclARXFVjbKYYUQnhEKWyeHZqwQ3L+ThizXbW59Y2ApQ/Y2bTGt5jVyEXvhptmuF
         OmHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOPJpojPFwfINIX7pgGE2CNonQqKjxJd03zKOHWKg2+AxiJfq29Vrl/3EKnHi7RmGbB5iV8Tdoo4/AJIkkTOpKZ0osClvyGkmFCQ==
X-Gm-Message-State: AOJu0Ywh2siLey6hBhBelnUeirZ05Z69A9RHzH/+3APOtoO+2hOVZfeB
	XQLVzlNZJmmJN3Y0fudVlXyiZoH0xwI7ymYZp0Zyq/w9pavRezGKdixFMib/zR4=
X-Google-Smtp-Source: AGHT+IHPu2YWe3SsjrNJRVR4woDt4+tlOEKYS2Ep/eEIN0qqFEN0Dr1+URLpzG6JuPmVW/4sCrEdmg==
X-Received: by 2002:a17:906:381a:b0:a58:7aab:96bf with SMTP id v26-20020a170906381a00b00a587aab96bfmr3143994ejc.18.1714632603154;
        Wed, 01 May 2024 23:50:03 -0700 (PDT)
Received: from [172.20.10.10] ([213.233.85.172])
        by smtp.gmail.com with ESMTPSA id l12-20020a17090612cc00b00a5534758ef7sm184709ejb.148.2024.05.01.23.50.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 23:50:02 -0700 (PDT)
Message-ID: <3327a63c-7b7c-4f44-ba48-89a833d211d4@linaro.org>
Date: Thu, 2 May 2024 07:49:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: exynos: gs101: specify bus clock for
 pinctrl_peric[01]
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>,
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
 <20240430-samsung-pinctrl-busclock-dts-v2-2-14fc988139dd@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240430-samsung-pinctrl-busclock-dts-v2-2-14fc988139dd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

