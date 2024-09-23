Return-Path: <devicetree+bounces-104429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD09E97E5D5
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 08:04:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDE1C1C20A33
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 06:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624FB14A90;
	Mon, 23 Sep 2024 06:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hX9IKgGt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FC5E175A1
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 06:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727071469; cv=none; b=uhfJhxfSWgh6dA0UJfkAKYCZEIaDrxlae5mWdEhX/H5lG3oKAhk5wOKUZ/NeepINL071DF3c16zotYO52VLEqbwFf5dlcht1U8NW00vWX4XslE+wFGIR1kdTFOUEAP1B7sPC5cP803xluf2N/KNciN0f+yttXnncUA9QwIQirVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727071469; c=relaxed/simple;
	bh=qI9/SPhx3uEKmNkq9N9RFTaqrDhjhy+lHvk3IFtoLnc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FfQhWnhoVHf3qunaR3WCilZNAjdnYoMFx+mKQ4oJjzfNyX+N942rvmN245hKMUhEzhwvjPtZBH9XwR++ZZtGl7IlQqRLGyOoTdYoxbxVIrl7zJrntAmoKX4nzINgdj+O89wNJtR8JAiUnmJzN9HasEYjXdXqQqgDcnK++D0Qbyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hX9IKgGt; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-374ca65cafdso2071526f8f.2
        for <devicetree@vger.kernel.org>; Sun, 22 Sep 2024 23:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727071466; x=1727676266; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0RNmrHmblvHO2guL4VXF8jdLa/bnTwxzeoY4QaRaHx8=;
        b=hX9IKgGtuI/1pJzcfpxue6YuEOEiSOy4NLe61xaHUGmTYGMQhW6vZvsQcm1TVhFBd5
         w1cWjXDDKRfSDoJ5g4rPQ+oPptccvConBAmEFYpl5iFR5ZdG61KTOtBRUDD+R1vPuW3l
         VgTTseOF6jqQBB3uFQRH/yLYc+pjHphCHTuxDWFL1dCiJxcICpmlBEz0Wzi5ivR42+eR
         zMB6+2Biv8cxBRoJgxQCz4k+uSxsfklTEnKRMQhv/KFIckvDF+pNlhhg0pJaNq6WbjAT
         QJsvLhFoBNQKQcCfFJO8M3auSK/mtQHgc+pFyZwbwVpPf7zrsCfDkno4mGtPr4Qd6Ojh
         m8DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727071466; x=1727676266;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0RNmrHmblvHO2guL4VXF8jdLa/bnTwxzeoY4QaRaHx8=;
        b=e1Md2FjgoMr7JnrhlbgNgSc6rvHa3nHSlSp0y9MbXPX2MkHoiqyBWWO4+9pGG/gk7i
         pTyF54Dip0YdbyYapzYxihyCWLF4oDtZwTnA8fbjEkHAx5FJv8OwVGpO5JdjN5CmRc6Z
         i23yu957YzJ10Rn2fYYb9mUAvu8HqjWwIuguGgUFmSbkM/TbzIti/csUj5oZS355Dgk1
         sH9QowuUN4CWrzlk/iXxIdnYY+et838tHG2K3rJdW8dQmZsSdTuHa4e2ZAGPqEpYDxHe
         /o7joj1zPU7LLrZj4UPY7915rEUssOkHLAZ22/3ikEU5/wHotVAMtBlht0Me2MCFqRV+
         j+Rw==
X-Forwarded-Encrypted: i=1; AJvYcCWMPXBC/6fAV79RjI6mGfHzwRq2fegqb/slF57WVyMcKdaye+TdT9E7j4s84k+MLNHXbOMfPrOpy5TL@vger.kernel.org
X-Gm-Message-State: AOJu0YwI0z4aBY8vdwDPoLVJPeQkE9g4QMpdEAr4eEgrWMqmhipOjZDo
	QjBwkEnyJ5frqjbRdQeJJXieR9VS6gnuxnoOSH45FU0ToZBzeHk9LyiCCikjo8E=
X-Google-Smtp-Source: AGHT+IH1eCn5MZAMQDZuDWL0pLjlXPrn6Z677C5pwlLNhKPM9d7744cqjDFZzGFS65Nkq1OxkrDYuQ==
X-Received: by 2002:a5d:58d9:0:b0:374:bd48:fae9 with SMTP id ffacd0b85a97d-37a422658aamr4808393f8f.20.1727071465802;
        Sun, 22 Sep 2024 23:04:25 -0700 (PDT)
Received: from [10.11.12.107] ([79.115.63.20])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e71f060bsm23742088f8f.1.2024.09.22.23.04.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Sep 2024 23:04:25 -0700 (PDT)
Message-ID: <4e0cf43c-4843-451c-ac6f-86775dbccb2b@linaro.org>
Date: Mon, 23 Sep 2024 07:04:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] mtd: spi-nor: core: add manufacturer flags
To: Erez Geva <erezgeva@nwtime.org>, linux-mtd@lists.infradead.org,
 Pratyush Yadav <pratyush@kernel.org>, Michael Walle <mwalle@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Esben Haabendal <esben@geanix.com>,
 Erez Geva <ErezGeva2@gmail.com>
References: <20240920181231.20542-1-erezgeva@nwtime.org>
 <20240920181231.20542-2-erezgeva@nwtime.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240920181231.20542-2-erezgeva@nwtime.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 9/20/24 7:12 PM, Erez Geva wrote:
> From: Erez Geva <ErezGeva2@gmail.com>
> 
> Add flag for always trying reading SFDP:
> Some vendors reuse all JEDEC IDs on manufacture table
>  with new chips that support SFDP.
> 
> Add flag for reading OTP parameters from device tree.
> Some vendors reuse JEDEC IDs
>  with several chips with different OTP parameters.
> Alternatively we read parameters from SFDP.
> But the OTP parameters are absent from the SFDP.

Do you have some specific flashes that you try to identify? Why can't
they be differentiated at runtime?

> So there is not other way but to add the OTP parameters in the device tree.
> 

If there isn't any way to distinguish the flashes at runtime (which I
doubt/challenge btw), then as a last resort we introduce a dedicated
compatible for the flash in cause and specify all needed parameters in a
dedicated flash entry. This shall be more generic as further flash
parameters can be statically specified in the dedicated flash entry,
less invasive for dt, and less confusing for people when they decide
whether to use OTP or not. OTP params in device tree is a no-go.

But again, you have to prove why you can't distinguish the flash at
runtime before introducing a new flash compatible. So don't go this path
before sharing with us what you're trying to achieve.

Cheers,
ta

