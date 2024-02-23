Return-Path: <devicetree+bounces-45418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C03861D8A
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 21:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09D2C1F230FB
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 20:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41CF3146E7E;
	Fri, 23 Feb 2024 20:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="K/9mnzg4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AD5148311
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 20:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708719827; cv=none; b=LzvJuy3i1K31U9VQrmpyt0IC4nrCdDrwmLdepVyw+b0qCR4uHEa75TLUyj1F20dHiNvCISRdqd+NRp5bCCbU3bnKqfRXr+rZ1Xa7ysT1Diw5UTB2mE8fXvSF8DlJIRcH+ZhLrDbfMZhYNSPi1HTXAsU87Y+RzfubwV4b+ski9Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708719827; c=relaxed/simple;
	bh=GAPRdDy0weW+cZabohnm2KVovLxRd2YD8tu+op2thxA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=boUQE//752j25YG+7kNaqMiNKaZX9w7IynjVC7bNEs+Dx3px8xWTbWl9mikhqoRM2ekOgWOpmg5csV7Cr+lkLN7TIqmbSMCsTt+iHgxLIYKNHm8vbAfeyj8qQRC2YGPojZp5vWDl2idjytWT/7brpdpZkKSQVjy3xd5vrxg7J/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=K/9mnzg4; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a3f5808b0dfso171034166b.1
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 12:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708719823; x=1709324623; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PufCuNIep49lutmoiIwdjVCU3ra1Yep6/fBx1imRwQ0=;
        b=K/9mnzg4bwTjCd51PyvQUycZ4nPc27ZlX8S8Xz4ncQWkR5x9fH9W7xRlBrEHcMjaCv
         6tDVcGzCh3U75JEROEjFy9IY4TwIyztQ7+7eGFc01jloYOtBrptj70JC1rfoIsEkdn/V
         v5+8+2KPvmAzIhHTI2I0eC2ranOd0uUt8jGY4g9HAjnZCC76fTq96iUVUstgDb9O2R8c
         viTzXwqfCldUncoE9jQEJKQjcumz/gXJmaLxqxtN1p7YO3iwBXOX75W3uJCY3iWgSQrg
         hT6ZaCo867s3YXM2rxFL8R0TNHwUP89lbEjlDmfIksiQQT5omtje2qua/kOMcTOinH/g
         HKkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708719823; x=1709324623;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PufCuNIep49lutmoiIwdjVCU3ra1Yep6/fBx1imRwQ0=;
        b=J3LqQ/DKhi1gF607GPFwB9rjzA84sg4U2bSDmQfpIiii4VYFIiHV8Y2wnpwm5CD46o
         oNwTyZ/eMQWwPBNs/rCqOCtZSFulJFKuocZE6U0lK1pQP4UEO/mVHtoG+BlVKn4bbRp/
         GlEKGY3bLi5DgVZSbHItoR0RyQ7jG1O0irqnHOtE/rT+Hgd3Bmc6HSkDgNVCzNbVU6T+
         1OgriDropMrg4+9toc2+Dt1mX8s50P3Kw3wwl+QTOQ2M48sWZISreCOOegZqtzU9pQNP
         FdIMtb19Cuz3B0fpqRvNKbMChHX6HwZJPTaAybB2BmucTp3coRpI8xJXpBwczKWDNbKs
         cO9A==
X-Forwarded-Encrypted: i=1; AJvYcCVPfbBHCqWOscOwRi5yg6qkq77cVx37dHELMnt+y0nfEP7XUH/Ky2PaG1Z8ZVBqBjhpcB4AyVqUl8LN9nwqzkCby+c4QE5hSC/VKQ==
X-Gm-Message-State: AOJu0YwFKVSoEKC2pWt59ff0EwrtSp/5PYvmDgesfaolPgh4Lxqjuo9H
	Ip5fR7HnDVQuT/sItiYGbvqO9rM71zYIBt06MPJPdA/OohWkzp3UFWML4/rcC54=
X-Google-Smtp-Source: AGHT+IECc8sKOWy0lbsXnY1v63WC5QWxaJU7ch/XxeG9NHaa36ucJ1wxAgJ4bphyr2IcF0fx99zhVg==
X-Received: by 2002:a17:906:3709:b0:a3e:8223:289a with SMTP id d9-20020a170906370900b00a3e8223289amr595311ejc.31.1708719823195;
        Fri, 23 Feb 2024 12:23:43 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.99])
        by smtp.gmail.com with ESMTPSA id h11-20020a17090634cb00b00a3d7bcfb9a1sm7195828ejb.128.2024.02.23.12.23.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 12:23:42 -0800 (PST)
Message-ID: <dcce833f-7bad-4db4-bbaa-60b5838aa910@tuxon.dev>
Date: Fri, 23 Feb 2024 22:23:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] ARM: dts: microchip: sama7g5: add sama7g5
 compatible
Content-Language: en-US
To: Balakrishnan Sambath <balakrishnan.s@microchip.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240223-b4-sama5d2-flexcom-yaml-v2-0-7e96c60c7701@microchip.com>
 <20240223-b4-sama5d2-flexcom-yaml-v2-1-7e96c60c7701@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240223-b4-sama5d2-flexcom-yaml-v2-1-7e96c60c7701@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 23.02.2024 11:16, Balakrishnan Sambath wrote:
> Add sama7g5 flexcom specific compatible in DT with fallbacks.
> 
> Signed-off-by: Balakrishnan Sambath <balakrishnan.s@microchip.com>

Applied to at91-dt, thanks!

