Return-Path: <devicetree+bounces-210699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAF1B3C9A9
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:13:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6673179FA3
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 09:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C7F3248F72;
	Sat, 30 Aug 2025 09:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kzhMMj4a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A4636124
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 09:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756545182; cv=none; b=VFTi90Tz8yGpyYeC152y7+i9qngKLG1rBrtg0NAc7e46xRGtCi3qB3W4LqIugPHBoM+98RZXtj+Q1RR59IjfKNday1CvYwvYujBAERvR9FpVt3kZXFpYY9w6lEc1LnGj3mXCJL6MGJJSqLHxHubvCYf7svWHmC2FSNtYXmGjUCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756545182; c=relaxed/simple;
	bh=6Wil6y6TBpiRHdNBfK4USN7Qdh3fXy0IYCZxMeY/lfU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dyu5LQGoshG7VtiSO08rQTZ9t677S6GDF5SGNGgyid9yX4vCEEHJ9i7G1+5G2iC1ixPFk+OmNxl7jlb2pNVusGkM/S5O9U7wv14v8S5LDRpFjIoEHmKk556SdoYuu5aznL2U9npRenRIe0sQJgyI2t+Zo5YVtyBvWETqHRKxv8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kzhMMj4a; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ce208c7505so409837f8f.2
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 02:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756545179; x=1757149979; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1iO0low9A/rUTb/P7NWY7lSGziDCGb/49/rJIYgf1Ts=;
        b=kzhMMj4afWpOHpB8s9mj6DlPw3VF+fVsLW/Kpq+jRVz2FKzFK8tsjBgaBup5H0ChxO
         eyuvvCCIWULP03r1z6+P2nulHq0wi+3IyYNSf5ToApe6a70CzboH5ykYEIXkkefaLYp8
         /xSuNjehXfDYLHnjAxDHh/TuRbpXzbyzPNt4vfZ/jDdpJ4c1S0ECq0OcmZWsr9lLc8Mr
         h2YuorkepPwjMlSuPPvQ+8wZBKDHmdvdbpmFTFgUmC36Yg/7tvyvCrO4Ipi8mEz6kg+z
         uuva06FkWGfQtRs39gXrWr3M0RMVlSug13NQj58mZOQA87cdo24UFuvZCq/BsEQoeJq3
         qczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756545179; x=1757149979;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1iO0low9A/rUTb/P7NWY7lSGziDCGb/49/rJIYgf1Ts=;
        b=CROiCZs9HLr0JwTgH19k3g2+dQwesBx+8/S8dfjCjj9/Ndtfj/Pi+MCY4uEop8kymD
         YIVh9R7pYRIENrTEN4oqEBkiTCzzKn69SrIYkoTWldmzpKRQeKSDB8SYhjlncs+Zz58X
         SHT37F+xErpomwjg98Q3ZFIoQ2NyuFerq1mqMWKVgNeL8okbE+E8S5BRLdakeGcUGCvL
         wTKvXuzJR+YEo5tk40428Qrvlk8LV/HwNpAMJZ8KOXGm1NIiCPuedcOZTxOXvYD6cx8s
         t29iE8fzHV3PeAjLYmEP1Zcsa+Ti51ja9gAy3JHT5yC231TPlA78ODMwlvXOhc258rxA
         nEgA==
X-Gm-Message-State: AOJu0Yyp/ueCdtq0kq0HfjJ2c0fBgihFx+SdsaiSyhF3F3jP6RE+Kqew
	7sCJ3q1FXR8Hz+4YUTWfi6i64wWFkD5rBJ1HVrt0zvsb2j0UsriMpwsA8FzsryWXQOE=
X-Gm-Gg: ASbGncsHBZyE+v39NrbOD4Zqd0Ih/Dwgwrgx8VcRyFK3k1M7TX2QioXxI9N89bY7TtS
	SKyunwQ1PXjVxRTZTvWFNzgNlin4B8Z9RHsPsrv4rmTHe6V5GjhaEh3+E+YNXWUyC7ZPmNFmz3y
	dQp9hvCMOWaJ2791UIZNtmPfuGY0DjZZBUhc4l7D8Aaj2BLgaAHOsn3rT8++x2P31qOmA8F3ONf
	czPKyaKaLkgUFmq/6r5CUo3kxADhx6w7/ocs16VJMQpJGfaoPcNx5492HNmgck0N/Nh7YgaCO92
	C+QlkBI36nl/0h2lk4LtL0POdDqlw3I2dR0p9zGZ32eUgxLpL38WcVxJ6ITM0tGwedGr+ic9bJm
	5Odblx2xo8G3wzrEoKjlgCcA5AlTszLq7G4N09NKHw1s=
X-Google-Smtp-Source: AGHT+IEpRzOCkC3TylDEJ7aPKDl7V/G2dwA78G2p+DY1DyKCm+s8MomBjoJ4FbBihtm4uUxbL1qZag==
X-Received: by 2002:a05:600c:190c:b0:459:4441:1c13 with SMTP id 5b1f17b1804b1-45b802e8458mr23471415e9.6.1756545178601;
        Sat, 30 Aug 2025 02:12:58 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e887fdcsm71516745e9.13.2025.08.30.02.12.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 02:12:57 -0700 (PDT)
Message-ID: <82e1cebd-2101-4d9c-9de2-c3b54fc3a3fa@linaro.org>
Date: Sat, 30 Aug 2025 11:12:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: axiado: Add missing UART aliases
To: Harshit Shah <hshah@axiado.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "soc@lists.linux.dev" <soc@lists.linux.dev>, "soc@kernel.org"
 <soc@kernel.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20250828-axiado-ax3000-missing-serial-alias-v3-1-393111f4bd9e@axiado.com>
 <4e51bbdc-744b-4a23-a695-a6c49d82e779@linaro.org>
 <cb78b679-e349-43dc-a6ed-5b63b10d0d7f@axiado.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <cb78b679-e349-43dc-a6ed-5b63b10d0d7f@axiado.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 29/08/2025 20:17, Harshit Shah wrote:
> On 8/28/2025 10:58 PM, Krzysztof Kozlowski wrote:
>> Please don't do this. It just generates unnecessary traffic. See my
>> instructions you receive on your first submissions.... unless you want
>> to send patches to soc@ (which looks added here) but then this is also
> 
> Hi Krzysztof,
> 
> Yes, the reason I have resent this patch with adding (soc@) as this is 
> the fix from the previous series.
> 
> Fixes: 1f7055779001 ("arm64: dts: axiado: Add initial support for AX3000 SoC and eval board")
> 
> I missed to add those aliases and it is giving probe failures without 
> these changes. So I was hoping if this could be merged as the fix
> 
> in the upcoming -rcX before the next merge window.
The goal is correct, but you need to follow standard soc-subsystem
maintainer process. You need to have your tree in the next, then collect
the patches and fixes to respective branches, and then send multiple of
them in pull request or as patches ONLY to soc@.

My Beginners maintainer talk from LPC 23 might help you.

Best regards,
Krzysztof

