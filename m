Return-Path: <devicetree+bounces-44229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EC785D275
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 09:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9C091F251AA
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 08:23:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C10C3BB21;
	Wed, 21 Feb 2024 08:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ux7iLFBB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D6B3A8F5
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 08:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708503815; cv=none; b=OKsEfgR16vaizlq8CCXCRUpGY4frylVHt4UDDqXLRL0qcf7U8ekmRbSYKuqpx/typgztRfbyOygBvGDt5p5LRzKobbBSR1rRmQ130wOOecEGVZOFIw3o1NTjk9dg1PWAFOBWBTgj3ImOPogUYbDknk9zTPl4s4OzRdeDn7WSiUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708503815; c=relaxed/simple;
	bh=N2ymqBOzQvtUin+X9/ISTosPoBKAGowkK/Se57Wv3rg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=eDIEAD4LXY1ahgRd33Xwugow/pwmdbfAq6Y6gSrOcOVWEhQTy496OCVJqTij8j1fGZEDkxKMlaxo8DBqxyCb+04g9r0b/Bm5X8kQebMz3XviY6IcEQMAE0QsWyAxeDcWKDpcBVLe6fjgyXYK6yRPU7LuLsrPFrYwPjVr2imQrvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ux7iLFBB; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a28a6cef709so755556566b.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708503812; x=1709108612; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=oBcowBd/6XrApSR06rx4f2K7ELRDmm9vc4YApL4IGTw=;
        b=ux7iLFBBXoKM7zZ9gHDz1AfPwpK+PLc4YVswrdZh9OHS5YiRnxa+DTLU1gebmxT1vq
         VeRZCoTBpRunOt1v6VIdMqdGX4qp/E7N0Ftb7Nulgqc3gos+FiXqNqttDPfMAewNFNXO
         SZshj+9gpKI2p54VHEExhtcsR+QnwmE7HsHFMqhdl8I4annAeeXKqJcoZkMWzQ7p6sgo
         RUnRClF08xwD/JarKIohR4ffp0hQFspv1H3qH/EyrdmdK0BOZceav1R2fJl6K3pWBN4M
         uYCZ385Ln9vZTZnG+kpZchEM8D7lJG9LvKu9BO4QMVrnqv5oQWEfyRVqFw26tutiw8ay
         QPtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708503812; x=1709108612;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oBcowBd/6XrApSR06rx4f2K7ELRDmm9vc4YApL4IGTw=;
        b=RGV6uYTDsM0hlCtg4DY+z+T6+Q4jJHr6XrHZRuAKDwiW4nHEN6ghR4QA5MLY5mx1H7
         2XYZSJ0OxnuT+Qc+kNcueQnipqnixsR9ByYW1Uq4U8U9Hb4M0JJLxssILgYFST4JF0vs
         WjT/OxKu0vbHAOtv7nqFfZTFOnDXwyuy1sz1U+7B8sIbtbjyoIYhmpwfWkLrK6IEduMA
         3oLZ4+CQOmtMc2QiCUOHQ0mtfAh9Hu/MSe60arDbiOP+5U/UAg/cQWILdEu6ii+I3dlS
         7U9k5TZK7u8a9ZvGI3Sd9M/j5Cg5zdZKki1BKWtg5MqaINKC99y5FHgQiIaIwwSTgO1X
         BlKw==
X-Forwarded-Encrypted: i=1; AJvYcCWtCt6RvHO7z7MOZOZbRPEetg2wMSsiz4xzfWfRrKs2ZvfCgwWhwXnK0rMG37BZD6EPl8OYQbVf1ztLSVsd7/7A236FKGfnABKZHw==
X-Gm-Message-State: AOJu0Yx6M7oL8Kg3/bixXih40IXoZx00p/Xbfe2lU4COohamMZsETg6d
	bHwkvj2puwwfUbn2ucfSO0mUZnkMY/46BtHUXzSZblw3zMLc2MmSKtuKFQ/UDY0=
X-Google-Smtp-Source: AGHT+IGz+kpUHD1v2JHYWZz1mDIkfIk5QUEiisF+4LbTF7vTARk8nI5vlLmPWuFC2BZa857qXS+nXg==
X-Received: by 2002:a17:906:ad8f:b0:a3f:2125:c466 with SMTP id la15-20020a170906ad8f00b00a3f2125c466mr1545020ejb.74.1708503812026;
        Wed, 21 Feb 2024 00:23:32 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id tj2-20020a170907c24200b00a3f480154a3sm221446ejc.65.2024.02.21.00.23.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 00:23:31 -0800 (PST)
Message-ID: <f600daf1-a0db-4ff9-9bbb-77364e7fa22b@linaro.org>
Date: Wed, 21 Feb 2024 09:23:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 1/5] dt-bindings: phy: hisi-inno-usb2: convert to
 YAML
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Yang Xiwen <forbidden405@outlook.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn Guo
 <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
 <20240220-inno-phy-v3-1-893cdf8633b4@outlook.com>
 <62221084-247c-4a0b-a030-e12cb2931411@linaro.org>
 <SEZPR06MB6959AAB6B43F3E1F5E1C526596512@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <6f3f22f6-f659-494d-963c-544cf5f44adc@linaro.org>
 <SEZPR06MB69592FACB1EF1B9FEDA89E5996512@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <9a5e9363-79eb-416c-89ae-c826062350b5@linaro.org>
 <SEZPR06MB69594A5036F122CE6C14043C96502@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <bf4ce87a-51ab-49e1-ac70-c463d8008a62@linaro.org>
 <b4fe5565-9378-4786-8c55-113f9088f34a@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <b4fe5565-9378-4786-8c55-113f9088f34a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/02/2024 12:43, Krzysztof Kozlowski wrote:
>>>
>>> hisi_inno_phy_write_reg() should be moved to a separate bus driver. It's 
>>> bus-related, not phy. PHY driver should not care how to access the bus, 
>>
>> So drivers are compatible or hardware? We talk about hardware, not
>> drivers...
>>
>>> but the bus driver should. The PHY driver only needs to use regmap_* 
>>> APIs to "write BIT(2) to addr 6".
>>
>> Different programming interface, so not compatible.
> 
> Although maybe I jumped to conclusions too fast. Do you claim that all
> registers are the same? All the values, offsets, fields and masks?

I still wait for the answer: yes or not, for above.

Best regards,
Krzysztof


