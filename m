Return-Path: <devicetree+bounces-180159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3535AC2DF6
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 08:27:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE8661C03634
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 06:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BDD61D90DF;
	Sat, 24 May 2025 06:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n00KdUe3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642C71BEF9B
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 06:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748068050; cv=none; b=ddMk1nrbKcraDDl3q9MDtSmxb5fJxw1/KnfKPN0OQCpvuxWyRCsewIycWfNrwo+LiG11tEFc5YxqWNxfiFWg/5eI0rVScgb/uhibkmHGlNZNTVhLEPH4kZC+mWMP+shwH4hBChO1C5rz9/Ywad+/AhR+kPExr+3eWjtB8GMvfqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748068050; c=relaxed/simple;
	bh=I6HEzLGnLMV/1y8If1T3+TyLatSI7Db52eFHOCDQc6E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ACIUZuiTDnIIydyda1yvvsuBd3QiaGI9ZsSnKSXY3EMYggXtSdwjF2qW6DT8HeCZz2wnMX4+DaykydTlQxjvznXktNKGzFRPY0FOvQH4w/BYyMaeHjk9hZw2wqvB/H3tn2B821vM+G8XLDkE39tgkuHFq3MlsEU7sORSnoWgsxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n00KdUe3; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ab7098af6fdso9312266b.2
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 23:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748068046; x=1748672846; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=SrCnX7ZGW71AQWL3Tr85Pt+nNECZZ216v6JjnroPo+c=;
        b=n00KdUe38jMT7uHSqtSacA7F8jAyxrr48zZjnQ4eAg3aFEamf5PamFg5Wu5ab8p3PO
         xoYE17njQCesAWUJyaz+tBdcypmaBnZWSRo1TC84nyLQ+gcrT0fcw5Rql57T/hUR/Scm
         G7mVjJ+fTaDqe+7pF7MDcRYtecjkIFZn8VEmaqBgAqntUulV/cofCveqIklAmJim7N65
         HYeJiSiHkb25kufVgXY7ygGD8GiJF+nkB1jvEsffuuiVLSpT+JYEJSCGIdaHHNHkpkaJ
         6XJuDeIB12SWOsELqK5KC/y8Cdcs5f3brVbee3UHtZ8ul2hEvts7bUdXR+e8NhD64m7N
         y5/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748068046; x=1748672846;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SrCnX7ZGW71AQWL3Tr85Pt+nNECZZ216v6JjnroPo+c=;
        b=djF/FIqH8FwS/kBSytXx2xydVZtDc01Jd8zSWnz7JfB3i6Fnj90tR+XAa54lK5bEMi
         6phtO4sfbZ2KW1OTSMRHHQ+EMrF6UzWjq57L+tNcW3paly9wwTd0SkutSEELHRphUzEb
         +M+/v7QSkokzI7GRbcFhgMnZ5PSjlIe9Iq4uhswqhR6x28NRp+lsqD3bmh3FAu1xuFJt
         nSXJiKorW2bKktJFrRerh/NFoFyD3i9GiHrAgAX2QqL/KShqjc/sj6xRupyn4jQ2JaFW
         ThV3Q/vNo74oBpeRfl5+uaMUvaVrU8ICeOzdslYfVrF0Jo2VRdPeq9BTJ4lKSIgvgyH+
         aO+A==
X-Forwarded-Encrypted: i=1; AJvYcCWSF72t6NkHHLywNLccqT7g/tZJWEmmXKhH8t/cTX1+8/ojWe28eD93c8t/zTWVzuJa1v5t9S/syqZB@vger.kernel.org
X-Gm-Message-State: AOJu0YxadoXxDtgXPKoTBgHa4O2YEDexJeWnNQS0mWaHbmKCT76PScyF
	Uwa5R24ufg8TLlj4Atga44TrRWdDlgClUHRsWiF8wWo6uOhXPa9Dtv7OPuB+i24LD+o=
X-Gm-Gg: ASbGncs68dDmKDvKwfhEkzqEsoZa2f9zz/KtZHpCFjg3Tku2wfd8XnAP4LFg0xirHar
	NcKiBGZTDsb/deh0cO2gJ5J9td3KOYQXZRSR3hS6wl5qZdpsLNAYr0qsxM9UY1u2ESpljcQgevg
	krlf2/O7v7d4iHXirVhq6UqjDODYv0zhTYal5EtrhSgGBa7s9h2bF6DKwGYxBHTdbVjSJ7j+O40
	maepztFRB+t7qVXYv1g8anAr1SZWChC0gn2ex2Y13y3lYxnVcpfOBob0T7jwb7Az3HTrct73QKp
	w86DtYPZmorHcGbbY0QT/tlHz/oIAMO4PkwdMUH4h/bqgiqFnNKhWCjzM8A83OZGvaYMvDg=
X-Google-Smtp-Source: AGHT+IFrGOHRDPV2gmNCJFm1ILCmmRF9v/HBorbGU1yfb5w8KGXInfeDVlK0y6rEslMoaySXGbfAkw==
X-Received: by 2002:a17:907:2e01:b0:ace:ef48:c7c1 with SMTP id a640c23a62f3a-ad85ae6d64fmr40696166b.0.1748068045678;
        Fri, 23 May 2025 23:27:25 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04af2asm1357676766b.4.2025.05.23.23.27.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 23:27:24 -0700 (PDT)
Message-ID: <fdd10564-2041-4ee4-9546-fbcce12e1d52@linaro.org>
Date: Sat, 24 May 2025 08:27:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 1/2] media: dt-bindings: nxp,imx8-jpeg: Add
 compatible strings for IMX95 JPEG
To: Nicolas Dufresne <nicolas@ndufresne.ca>, Frank Li <Frank.Li@nxp.com>,
 mirela.rabulea@nxp.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Cc: imx@lists.linux.dev, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, ming.qian@nxp.com
References: <20250521-95_jpeg-v1-0-392de5d29672@nxp.com>
 <20250521173444.310641-1-Frank.Li@nxp.com>
 <eef5ccd99d82dd33e3a4ecdb5d4a5b75ccb0b972.camel@ndufresne.ca>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <eef5ccd99d82dd33e3a4ecdb5d4a5b75ccb0b972.camel@ndufresne.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 24/05/2025 01:22, Nicolas Dufresne wrote:
> Hi,
> 
> Le mercredi 21 mai 2025 à 13:34 -0400, Frank Li a écrit :
>> Add compatible strings "nxp,imx95-jpgdec" and "nxp,imx95-jpgenc", which
>> are backward compatible with "nxp,imx8qxp-jpgdec" and
>> "nxp,imx8qxp-jpegenc". i.MX95 just need one power domain which combine
>> wrap and all slots together. Reduce minItems of power-domains to 1 for
>> i.MX95 and keep the same restriction for others.
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> 
> Acked-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> 
> Krzysztof, will you take this one once the DTS part is ready ?
> 
No, that's a media patch, not a Samsung or any other subsystem I
maintain. I do not have write access to media tree.

Best regards,
Krzysztof

