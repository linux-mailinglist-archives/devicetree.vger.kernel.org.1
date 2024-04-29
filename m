Return-Path: <devicetree+bounces-63462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4263B8B5082
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 07:09:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBD0E282792
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 05:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABD6EC8E2;
	Mon, 29 Apr 2024 05:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T7Z5CSlO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0FC0F9CD
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 05:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714367358; cv=none; b=cclMU+GV9Gyyx1K8pI1crjBIMKn8qT41ztn+3+awwYEZA7T6GCdm2A62ydPaSQGeKwW5kdM/R0bV4sTvaox/9a785wv6JqYc9qrJGgljItqwiXDXI/FYBEl8EIH2vLMyIsXPbuMinKeWIv5toj6P5sglVhjuLDHRUesluUxHYY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714367358; c=relaxed/simple;
	bh=6BId1/9yk0FN9LlXbXXNHWw6d7/KmXiYZGEjqXhw6CQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Oh3DLwp3Iqyp2chW60WOnvNNUJYFKrxfn2McHpjxMO80oP139ukoeOAJ6lVC4XC3s7ZAZHm2QM9UIHkFawdaC44I7bZ3WZf/ImUzlaFKhcAzCZBKoLnMABUSftWRUzQLYS9qnJ8P0KwOWtGET6DB/z7phnm3rtseSNOcGCJwvfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T7Z5CSlO; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2dd041acff1so45818371fa.1
        for <devicetree@vger.kernel.org>; Sun, 28 Apr 2024 22:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714367355; x=1714972155; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mvevOxmAGh1chYJjuicQA7LbSmLrcNUe+hY3gG+uXnk=;
        b=T7Z5CSlOMpdz1Y/Qqm6WQeiNaEDtHcp3LMjKWuw3lvArbRCs5JH/kgUN3J8R/9acov
         wMMchXr8EywpkhhzgHh7IeCUj/0fiv3y8Mh9W7bBUwVm0agmSDWHd9tVyMJ9QwE3uvro
         dpzoJyaXikzyTxaikeL7pqs7okpK3/7lss2mkhTGLN9egwDQvsncXeX6+VACdlq47kj4
         3rPQPsE04Cz1cb4ELFZMewsZsSFUTS1KtuVbmanQOP58+pHATeJN7h18KzfPbkB80uCb
         0UkxW8cVVsxOU6DoKx0jb6WJ7kYMnZ7OwCwZ71SoFxETOhA1nPsFXyAZIvFBtbqkHKN2
         I+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714367355; x=1714972155;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mvevOxmAGh1chYJjuicQA7LbSmLrcNUe+hY3gG+uXnk=;
        b=GwalvybLGSKmRXPhq/3MM5RjKDPcQ/zDAkV4pJsy/qOV0uOciWIr52Jogmn6N1nVEz
         NHs3bKUnYAPP+jQFEhgnN1sc/R07ARlUKcEaFzVmw39a99R+VACJNk4UH91l7fxWOmBK
         O5HhdEuSan6T5GhHyWT++OF4ydlHZa2e16VTP6TflTWUvOjKzrJE7GiIxKftiJVygdfu
         Zar1X8z3WysOoD0MXuWYfhqaEIOr1ihcfh5eJE7v7yYkBtxRM6G+eGlc3F7E9scIfhe7
         KX4g3UiuiQ5+BpT4mghnOf6hMYtKkFEHPq63O8btyJfvXdyXf+2MRUCatWFxTYa6owhf
         5vjA==
X-Forwarded-Encrypted: i=1; AJvYcCWxsMVCB0yAWfhL5EbrJoyxUxj3FUtCuvei78PRWednvyoaq4OrI20hM9B8yiw95ac5aIzKrU4rmCZAyVM3f5AEFZCsBqc6HZ4Ihw==
X-Gm-Message-State: AOJu0YzCOLAwFTsppyJFNAUTarXYAfaVdjveNCzWb4NOodKdw3IKy6pE
	sfzk9ujZYGfnV2rVseUJR//LrQd3JbhvSFRYzKJhWiS4L+vKZnVRVfOODYbfuNY=
X-Google-Smtp-Source: AGHT+IEu4Cf/LLA5PC20pdjBzv5flESkJ+Tak0xmWx4ixQiauMyBXhlmXN9isCVrr2ALPLvU+nAtGQ==
X-Received: by 2002:a2e:9d98:0:b0:2e0:774b:706c with SMTP id c24-20020a2e9d98000000b002e0774b706cmr731051ljj.3.1714367354805;
        Sun, 28 Apr 2024 22:09:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id n14-20020aa7c78e000000b00570164dd7f2sm12693896eds.43.2024.04.28.22.09.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Apr 2024 22:09:14 -0700 (PDT)
Message-ID: <084e5248-df67-45db-822b-713f6bd07655@linaro.org>
Date: Mon, 29 Apr 2024 07:09:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: stm32: Add compatible string for
 DH electronics STM32MP13xx DHCOR DHSBC board
To: Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andre Przywara <andre.przywara@arm.com>, Conor Dooley <conor+dt@kernel.org>,
 Dario Binacchi <dario.binacchi@amarulasolutions.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring <robh@kernel.org>,
 Sean Nyekjaer <sean@geanix.com>, Steffen Trumtrar
 <s.trumtrar@pengutronix.de>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
References: <20240427221048.65392-1-marex@denx.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240427221048.65392-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/04/2024 00:10, Marek Vasut wrote:
> Add DT compatible string for DH electronics STM32MP13xx DHCOR SoM and
> DHSBC carrier board. This stm32mp135f-dhcor-dhsbc board is a stack of
> DHCOR SoM based on STM32MP135F SoC (900MHz / crypto capabilities)
> populated on DHSBC carrier board.
> 
> The SoM contains the following peripherals:
> - STPMIC (power delivery)
> - 512MB DDR3L memory
> - eMMC and SDIO WiFi module
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


