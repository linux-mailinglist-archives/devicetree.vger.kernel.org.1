Return-Path: <devicetree+bounces-213948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C2394B47A06
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:14:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89F0F1B24498
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 09:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DB2E223324;
	Sun,  7 Sep 2025 09:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DDTv/Lne"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CC821E091
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 09:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757236451; cv=none; b=jswtKdIYIvtCarAbsKFDigr3+nZny2juiHAcDpPwNr4GsAmxRSIteTLTC9AwIV0FWI36MG6R0SxzieYO4PQ5a+h7VHVrtuCPCI89CiXn5YtNft3/GnDv7Vi5Lxm0cbVThUBP4pkTOhcqD/4wt/QLKIBXySghatswS/YT8cb9L74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757236451; c=relaxed/simple;
	bh=sU7+/OKR3H0AJm7QtOcIJdDLNqhe68RVRMMpjau/P+4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=OFQVGPwbAtQva7uIhWewaABpwbMVbK+HaGDwfgfllmyaN04WVqM923KXXdC9RQzEhHOnDsd3nYnudQ608CHvyTSBlxQk+cOlnMPVeCUNSWmREMC+3HJlZVxXSKU7MOziFdlTmDBeYZK/ve+jKxMxxofgwBH9Nhldm2vyl/fUwi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DDTv/Lne; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3e408e612adso36040f8f.0
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 02:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757236445; x=1757841245; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h09TDfJ0VCIYwMjqv+nUCRRx8qKcN59ZJYX5ff84mD8=;
        b=DDTv/LnerbbkADMhaf0ViJTmnp0va3tlnP3KfUkxQW08vIRYDEbbg90JTkoeWBxHx1
         aC8fVjv74oV00AMw+fg0q6La1qcsKlsJ/lnEkccvbJg/kzDDh+2jAlbmjDuQn/08jAnF
         q1TwFkT4VMiBU1zWeCcrcfoykhIytvS0tKB/1m441AwAp7N4NcGuril7uPmZAyODtmj7
         OdMYif0Bo6wEnjSRYnJtyQHkFR2u0PNEq4AAPrvdM0L8m7r8xhnCwKHzwCpwzOBAneq6
         Fo9rlW1LY3wiA67CVBR1ndTbdxlKcjzRdPw3lhUUW1+tHFJkcnQJ6AAkgswaspx1vv6X
         H0Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757236445; x=1757841245;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h09TDfJ0VCIYwMjqv+nUCRRx8qKcN59ZJYX5ff84mD8=;
        b=YVtfbHm0yLTZHU5uO593VvvyPAm60yGJVGUD79LhTShLWcJTO4x8pVNvIxmdhDoqxN
         ryD3gy2o0BhQIDu06HWMTyptlhnYOVL4nNHlFmoJwdEljtn18Ta6pocGnJ5WzLslPVmc
         zAe2XaxteMhgBAtPwPCmTb6dbKoQ2qVs8zQTsquO7BdFq/zKaRTB0Nei6Q2pONErx/RQ
         lN/a4jkCU6BLnvA2yKRv6Jtzu6LS35HquXryHUloFxo2MYujIBx3/asRmFB3uG9zZTJW
         5V2CcYcgGmlb2rljdNOSLUHSmP2NWnINnMcxSDRQ4U3umUfUlDP+c+D+OXfkmlDu8oJO
         X9Mg==
X-Forwarded-Encrypted: i=1; AJvYcCVFwYwN1QdZE4OI5bwiJ6LNkW8sqoJ5Vmai8eJ+ZtmRgJ/QZPC9D6fu0v6v4odrLCX7Nr4lxHHBAtUJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzI3m5gjQju0kaHFnKTezvcd94AqaMxjiH4A6jyYdlaD25TRuq7
	BpxvpLgNsja6jwO+Omiz0akWpkoeuF57ocVeQoT6HRVQ3mqELowY83dM+R0h4+GEqs4=
X-Gm-Gg: ASbGnctA+GGIJQtzjRxdlCF82Qtn0D8/fE8d5A6IKhGrO08ErwouniK9PrSXTekssCR
	4aTKKOfkgUWNgZ3fQE5sRhDVQgXh6og5TNsLGt9nf1ZnFSqzdQASWIEUOpFg9jC9fCK7TT47ekV
	rPaY5Znc/7+fhJNamHC543owO673zEKon8eLzumGCptijsnav6uf6Vlvi8rI0IieZv3LEXhsCLs
	8f3Rv247zFBt1mDnAKsC3oFTHj57ul7M77hR7Hu81Tf6NPa3+2Y7GnX210Ous9zlQ/jnj6juNyW
	KEoyypFaSk22dDXO/ijqBq+ydRQcNp6vRJwvYV00WkbvRko0B/i48U97VHZPbGTZmBcPUAMknFZ
	NzwYojXG+mxhR0ooFa1xoQ5klKgOUSnVBZu5VmOw=
X-Google-Smtp-Source: AGHT+IEs+zHj+nZWtDLKO7AMy5vUsh2MOF4u8kwkXxf2nwQ+E1nf9C+MVn+vLhdElVbV4Wh2U+33Gw==
X-Received: by 2002:a05:6000:4107:b0:3e6:e931:b428 with SMTP id ffacd0b85a97d-3e6e931f97dmr1115038f8f.10.1757236444776;
        Sun, 07 Sep 2025 02:14:04 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e21e4c0e6fsm10918962f8f.17.2025.09.07.02.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 02:14:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>, 
 Andi Shyti <andi.shyti@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
In-Reply-To: <20250904-perics-usi-v3-1-3ea109705cb6@gmail.com>
References: <20250904-perics-usi-v3-0-3ea109705cb6@gmail.com>
 <20250904-perics-usi-v3-1-3ea109705cb6@gmail.com>
Subject: Re: (subset) [PATCH v3 1/4] dt-bindings: clock: exynos990: Add
 PERIC0 and PERIC1 clock units
Message-Id: <175723644300.30719.16385900171586342437.b4-ty@linaro.org>
Date: Sun, 07 Sep 2025 11:14:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 04 Sep 2025 14:07:11 +0000, Denzeel Oliva wrote:
> Add clock management unit bindings for PERIC0 and PERIC1 blocks
> which provide clocks for USI, I2C and UART peripherals.
> 
> 

Applied, thanks!

[1/4] dt-bindings: clock: exynos990: Add PERIC0 and PERIC1 clock units
      https://git.kernel.org/krzk/linux/c/43bd82eb33b2ac33232724a8ddb9e07cde492328

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


