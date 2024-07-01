Return-Path: <devicetree+bounces-81794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 771D591D770
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 07:28:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 079861F223CF
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 05:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2107436AF5;
	Mon,  1 Jul 2024 05:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DyVrE9jK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737672BB0D
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 05:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719811703; cv=none; b=W9vEURx6NY649NyETrPolXawdF+PvwQsfPoyZbm+0S66Mt4vbu8/zOAzBti33Jn/w7yy8HA93ucxRmyNhWmDwy0WvwAeYjADpmMtIaLcZebdk8ePSaVbvMjlzxN+Zv4ACYCYv+vfaFJilExazqkVcvpTQc4m32uFI0NCR9Z+AU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719811703; c=relaxed/simple;
	bh=YZWSzpNEaDa+eXDQ28HrPkHrPJlHNHw3DS1+bUPdeA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AHHIHL72Z+J0ulESeuDSr4GPpRgQvXlzlMw2MQjKSjE+yi19cUY0AHmDYzFfvQ8LQNU/OCWuVoJ39v2mW9lWFCq2Cug14XgLHESauIfxoienzcUhkMSsD1SiHq3ffAAEmAaKtjgYrBnl8EHjBCbPp6VW+2C5Ua5tieOwY5/3PFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DyVrE9jK; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42564316479so16264465e9.2
        for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 22:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719811700; x=1720416500; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fkdA8KN8A8I2bA11uvZt9695FtnthrYQMH+V0MW6YEE=;
        b=DyVrE9jKDwWXYYBx1F7ArOxreZprCXIr81b6YSddmouJbhDbjMFizewJ8nuINfsSqP
         8Ur10ajNxQsz2m587YvmtBlT10uoV80L0IfiDUoeYvJwQMC54i6yVcsl89DvZbMu23t4
         GQFWo1htajrGRtXUJlSwgfWpFRfRS6hsSQqh0Qvhu4r6m3s20Q69x+SCS7b31nrFNggL
         El7TIV8JWUwDg4IVApQWZ6EG7MvGShIVB43WAT/psN/Unezo9Iy3WVtGDNiIde7QElsO
         e2oRKoeIGGr9s/L5p7HiiAVonp+wWgUpb+iN/49I5V1nw3wlZsKctGgWoJhD1NN/4oHl
         3U0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719811700; x=1720416500;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fkdA8KN8A8I2bA11uvZt9695FtnthrYQMH+V0MW6YEE=;
        b=FEtYeBHpHwAjyegOYRP6V3gndmkjRwjGuuDWD4A/zF/7OpV6qrv9ZgIPKWjoA6Fkhq
         8u2sHFSlxRTIBUk+P2plgtdZxi0C/MJFAT1nL5X2wz4eSXs3Jjr4+XkVATJieCE7CcVn
         VwAps1dR1H4Yt0mYc1orAbd0HxQWxo5aH8g4PKOyMTHChhEjCX4/545EJ+En4gyKWlBM
         F99ZEQ6Hy7bQC3BEg2dCrG+GNzYBtRJhuPQwg4IcjnYksGg3eEuqhcdW8Fr8/ll3W+l6
         yxvl2B3UL0UtmBO7P8MSQb2OdHamUAvNmqbdEBQZmCdkzyna1EmF1CNaHA9PMo2xSPy4
         ynMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlk6ZbIVC+jDVsSYDXOasfoN78bJplo2xPQBqHn4+rn+xkC0DDCBMwBBelPvAgK/aw/fEdBh+DJikgrGZfw43lRc3E+Mh7q7zgbA==
X-Gm-Message-State: AOJu0YxfFDPdsSJpy0YdLKaGX9zg6AcLLDQw1i14gzWz3l89giYhOoBc
	TGIveu80nhrimSnUL6D4OhKs7ePnxaKYQlC8J7d+cPjrsVUDzO7QPrZxNLrdUM0=
X-Google-Smtp-Source: AGHT+IGz4rqWrl3DoLsQ45HTpFY0wCleTeXmKARmX6Tlg1QN5PVLZXxtG1F706x/BHg79dLe19Q0Zw==
X-Received: by 2002:a05:600c:4ed3:b0:424:7992:c21f with SMTP id 5b1f17b1804b1-4257a021800mr32315315e9.3.1719811699661;
        Sun, 30 Jun 2024 22:28:19 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.178])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0e16a8sm8962338f8f.64.2024.06.30.22.28.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jun 2024 22:28:19 -0700 (PDT)
Message-ID: <93a088d6-8092-43d7-953a-5374a22ac6eb@linaro.org>
Date: Mon, 1 Jul 2024 06:28:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] Add generic functions for accessing the SPI-NOR
 chip.
To: Erez Geva <erezgeva@nwtime.org>, linux-mtd@lists.infradead.org,
 Pratyush Yadav <pratyush@kernel.org>, Michael Walle <mwalle@kernel.org>
Cc: linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Erez Geva <ErezGeva2@gmail.com>
References: <20240629103914.161530-1-erezgeva@nwtime.org>
 <20240629103914.161530-2-erezgeva@nwtime.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240629103914.161530-2-erezgeva@nwtime.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 6/29/24 11:39 AM, Erez Geva wrote:
> From: Erez Geva <ErezGeva2@gmail.com>
> 
> Functions:
> 
>  - Send an opcode
> 
>  - Read a register
> 
>  - Write a register


Don't use the commit message as a continuation of the subject. Describe
your changes. Convince the reviewer why you need to change core methods
and that it makes sense for them to read past the first paragraph.

You ignored the feedback from v1, I'm marking this as changes requested
and ignore the rest.

