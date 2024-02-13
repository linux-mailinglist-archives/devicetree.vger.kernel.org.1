Return-Path: <devicetree+bounces-41149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 746428529FE
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:34:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 998121C2279B
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 07:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DFCB17589;
	Tue, 13 Feb 2024 07:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WdsvVB4C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB1817994
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 07:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707809688; cv=none; b=Vmjuzz8xPTIeyt0D+tO1yJ4ctw0xNa0GXbfy7L52RktzCpmIkHY1/OvcGTHOssjmK+SMGMgML8I+UZtqHZIyj3D3Zg5zrUVppKKmD3aCy7LPVaEVsTrAhkntVW/gdMnUgv8lF1b+RzyteqGnsxqvoKloyuX0ooDU4aK4s/Av4Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707809688; c=relaxed/simple;
	bh=BuGDmwlbVNgYwixT/LWgVw3rwFFp1hMj6PkR6/vjFGE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=akePF9zm/3KyEanikXYR7wOvcdahEbLYGJruuyglNMqqPfa2YM75EAG6Jy1GaFfSxa/NSqAZnVe7I/5JVPQl46cyXP3+Xn6fNity37cvkxqME1gqw7MWYnR31Sw1dUrOkVKAEYRV9qaraLzY0wWh3RLB4GP4KcoUc6xj4lr++Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WdsvVB4C; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40fd2f7ef55so28265705e9.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 23:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707809685; x=1708414485; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EAS30wnL6Rv1IC3CSnwsh+lVNpsYoIWrZeit9s0/DyM=;
        b=WdsvVB4C/WCHdAKn3AunMF74Zm7FzfGNn2CCXKgcxv5BNS7kvANZ+1t43pDoEWyczB
         w7GGmeeAAY7G4ktsTVS7TRCLkei81Xnw2ImREqqo6Qeg5+GvI+XBr+hhHwoYtV5EOZXg
         KedUJw6pAStZW6JD4icawGGCamcakuWs/vwp0AVgMz+GKF1L8KIf6XmGcl3lKIKBN6PT
         dOVoAfooMYt25dE98fhTZg0tDvSigd2z54ojEbML/vxg8+/WluVbA+K445ln80wLfN3X
         nWP43rQU1wFWzyLfCVDNeZf/21bCemiG/E3O49O58KZ0wnjLC4x0jcIssCNh/gpknLYn
         2nXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707809685; x=1708414485;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EAS30wnL6Rv1IC3CSnwsh+lVNpsYoIWrZeit9s0/DyM=;
        b=cn39EjZ7+DxFFBJphh9KM94KE/eagcRfuL2PeymuGnH+83/cjEAZr7Lqp5JvSL527w
         j5eyBSaKwBOKCjCUKNDtu74s5QwUaDeaN2QB3MmYgtyFl8AXsIXKyF6BLLywKHyELDqH
         xP4SJgvmXaHaGEd+oBt9wzMAWgMV2OefcWRL+jvSgzPBouA0IfG5xNgLSxuODqczY328
         KDuxmrPMRdJAyPidhp8s0piYjbTKK7LfNvJnZ3+m3EcwD/V/C+bA1yVv4ropP5OyLBFD
         GKeYIXe0Q7jKB5JZJA7rvbr2v2fHNa+dhGe6IfiS+3PXYB+2jmltSejg3FHIWPNgdto+
         m65g==
X-Forwarded-Encrypted: i=1; AJvYcCWDc9+0NOnThdKYk0Ns0scYQUZELayw1uIWzfX3CHvKc6ZojCuvqrHakdLLBajTjWIRc38a3lO1nZauO9AXhV4o8+V9mAU4Zg8HNQ==
X-Gm-Message-State: AOJu0YzyW6RRqbqmQswlj1WV7ijQKt+QyHf+MiPeB++AdWNe3Cm1PkgS
	SAT84tu9O9RS+EGZ6rOcsTfyCnIjGITI8QkTgEBbBsaz7y5NJz+SsLsMf8hdusI=
X-Google-Smtp-Source: AGHT+IF7fxLrfe3YfzY4xqOtOPSFO23TmQZr7/A1GlgGB9VdskAAsmNPequsQTPsRrn5g06Jjq95VA==
X-Received: by 2002:a05:600c:35d2:b0:410:cb93:8a13 with SMTP id r18-20020a05600c35d200b00410cb938a13mr1347784wmq.5.1707809685173;
        Mon, 12 Feb 2024 23:34:45 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVZF7x/xO4caM3IQLN6ET8cEzWFuO3OlkNz2Isv7Z2uGhUGKYYDcCWuloenWhF/tMNU2ZZ6GX59xBFemfsCf1QFa0o1856vzlqqYNU7CjVLE9ICBCo7kHYXQUNgUJfwRHrTk9zdZfkongpsDGD9xbAPhmNltgz6K0BLXE+A3ODzwZk7BwYXAA2TQQUqULZ9gB3O+MzSjMNcf4vexx/6EzzDTMuKcpFRRhR9RxADCvPEBjqNrkKuBdLdcytW1eEZw/60lXkvdLHNMC7keb8wFWHWuqKPy12Om+6cmjRdjqrJrhw9CtNcfelUOKjz45nNxh5exVT5zhpAUiEdpRh9xYsR9pjcP+JAvGRx75HdV1t8daIR31tvLZrC9AY=
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id jg8-20020a05600ca00800b00410820995dcsm10256721wmb.23.2024.02.12.23.34.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 23:34:44 -0800 (PST)
Message-ID: <fbaad3c7-13b7-41a2-a8f6-7036ec1ca2fe@linaro.org>
Date: Tue, 13 Feb 2024 08:34:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/12] Add MP25 FMC2 support
Content-Language: en-US
To: Christophe Kerello <christophe.kerello@foss.st.com>,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, devicetree@vger.kernel.org
References: <20240212174822.77734-1-christophe.kerello@foss.st.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240212174822.77734-1-christophe.kerello@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 18:48, Christophe Kerello wrote:
> Add MP25 SOC support in stm32_fmc2 drivers:
>  - Update stm32-fmc2-ebi driver to support FMC2 revision 2 and MP25 SOC.
>  - Update stm32_fmc2_nand driver to support FMC2 revision 2 and MP25 SOC

Why do you combine memory controller driver and NAND in one patchset if
there is no dependency? On any further submissions, please split
independent works.

Best regards,
Krzysztof


