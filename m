Return-Path: <devicetree+bounces-188868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1658AE5D86
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 852ED4A1831
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A5623BCF5;
	Tue, 24 Jun 2025 07:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KqtDCytv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AC422A7EF
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750749534; cv=none; b=qOkFhwmE2GgozwfVR2COxtz13mOeH8CP6eJ1+lG9FEMJpvr4e8Wlt0okT8E7Xd9uer3tpbZyOtn2aqaZTwj8NDKaCRQ4A0j9Sxj88Os3tvT12EkAela25XAhKALKCJv2xRrCOv52t+ASW4Hjb5Y/APcPpISYpmaFDPtgRZUV3Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750749534; c=relaxed/simple;
	bh=lLTXEYlUZ4GhNVH36tePDrs71r0Tbb+UAAbvWJzpRwo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VHQ9oHp6PaZRaOivej5jmM08X3cFtu7tPcDUjVwDVs7WF8Vn0jST95g7Da+/wVKYlkKZqOGW8ar/rQDmxJ8L5aTFsk4eRFAqHIuWbycRbnnDIxE0w0NXqpDG4yMxRhuR46w/2SJWCR20PiDM72WiYQTjXCEmbdsITWdnP7EWY8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KqtDCytv; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-adb4e36904bso982390366b.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 00:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1750749532; x=1751354332; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2OVh4Jh0rNBjL9Id+4yEZcEDrJ76F7tEWKqVxELxixE=;
        b=KqtDCytv6sULEM/q6YZzp3fQFpTRasjQLiaQXGyA9CWdOrVxOqje62v7NQ0wRJ1xvX
         8fhSujsUQwUWpigKFHe+YLktEVtj0m5MDx/EOHmeuM7vBNCjHYv0HITGPXyVkKfKfloT
         YX68FDgDgC9i01H63/dFN0ExThSeD0S0NzBtih2SDbIX7TaoBLpBMh7UmaH2VHNRxDKu
         HClYjijxO3g/BvFsj1sOE++fFP8m5U879B1HAkH3/an8hkf8A03j8N8V5WwErzLNMKKZ
         HpaNXGKE50To9EnNShX/s90Ne7p5db3fU2uttith7ltm6ShIryFBEalzwt3Otsh7Hh+6
         TEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750749532; x=1751354332;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2OVh4Jh0rNBjL9Id+4yEZcEDrJ76F7tEWKqVxELxixE=;
        b=adHiO3gmn4M9yt4J/pHoZm8L7/hjV92JpavSHZrC2sLf68FJbbn4Q47IzdWnqi3VP0
         NXCyM7sbp3TitXbYWAdeNadvbbAjAiLoKLUR3jgfBwHSpSr3dV2vZs2QONd+UtnOsOEy
         l9TPA+iAv2o+AvrcIPMeQfnCvj21flNDc2HfJ/aqruegFbmbSNgv3qpRbmiVPyYVb0/v
         nciaGiw0V7mAT85t+98Lq7vqoAgNXL3nmupi+1aQrpvrg7OacSisnQYwQWdHwsw4OSgj
         VtpO7GT0kg8T1HAkpVo1wJ3rJ1c/G3o653tdAIv3ng7+NxnKABTbh2eW6Pty4c3DZi43
         5Xqw==
X-Forwarded-Encrypted: i=1; AJvYcCUB6jKjHAkygoltmmidozd84U+wWp6Xd5MYCaRyEq+C6EJyFqiIzXiKlkXG7TUqa45hm1+zEbK/6QiH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy6a/Ua8xvqne4uZQ9JG/k5gHR6KsRBuB6nUoLNndWrEySGc02
	P5IkzP44SBjpWikSp8lNqOx43EYMzzKb1r4Zut0z4m1T/jUsQgqjrYtZz1RimoTKHao=
X-Gm-Gg: ASbGncvh00fUo50UVXeYBeDKX1JTsgDMl5FLpk6Y4NnJ+zYKyiOOOQdSSn2j9XfIFPJ
	soslFW2XWdMTmo0bgbRtQbXU9EDcz6nEYIfw+56fteOScqx7PQZ6tEv71D+hx8ZAXTuOX66b7dF
	u8FrF8zBOdPsIDAZEdU1QQ7O95TQ71zzutaxkXdgW7IK85VQGEoY70mdkOo0r5FjlbOIFlWOxAN
	Bomg2TOQvXH0K5NrCMp5BkIyYYwo3MlaYPHeoDLw7ayKpWGbUbu3H0nL/E/Xk7/emlGWswQmwnX
	/k7WeTfTeH8y6RNw6HFrnJxbIYCgBNU6g9GH8/aF5NOsyz1TxLSEjhPGK+pg5SlFHF0iqbk=
X-Google-Smtp-Source: AGHT+IGI8iwrZ7v404228P/a1AWPFqYItuYifRpy4WeOeTkndey/Diu8iL6ffoSt7fIYpvcvq1pPSg==
X-Received: by 2002:a17:907:c16:b0:ae0:ac28:ec21 with SMTP id a640c23a62f3a-ae0ac28fbcdmr130864566b.13.1750749531544;
        Tue, 24 Jun 2025 00:18:51 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.110])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054082d0esm830333266b.79.2025.06.24.00.18.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 00:18:51 -0700 (PDT)
Message-ID: <1524eb69-e3d1-42f5-94fb-cc783b471807@tuxon.dev>
Date: Tue, 24 Jun 2025 10:18:49 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/10] SAMA7D65 Add support for Crypto, CAN and PWM
To: Ryan.Wanner@microchip.com, herbert@gondor.apana.org.au,
 davem@davemloft.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, olivia@selenic.com
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1749666053.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <cover.1749666053.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11.06.2025 22:47, Ryan.Wanner@microchip.com wrote:
>   ARM: dts: microchip: sama7d65: Add crypto support
>   ARM: dts: microchip: sama7d65: Add PWM support
>   ARM: dts: microchip: sama7d65: Add CAN bus support
>   ARM: dts: microchip: sama7d65: Clean up extra space
>   ARM: dts: microchip: sama7d65: Enable CAN bus

Applied to at91-dt, thanks!

