Return-Path: <devicetree+bounces-81868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D0691DC2A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:16:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2A1E1F21D42
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 10:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88B74381D9;
	Mon,  1 Jul 2024 10:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u2v27683"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19EA4F1E2
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719828955; cv=none; b=Q75th3RtFBLxbvXzxE3EYSHziNKA1hJJgN4LYaRTxKXRSfqEVwH9PKSzkC7NKi8kyFxhKxzFtdk0qZonw2hLp7oJNIz+pmT6UycoKv/zz+iyADkTayd77w7ldNFMq6x261sQHz2+X0qTGEwwBpwNKprnp9QlK61e3JHPl1yPN20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719828955; c=relaxed/simple;
	bh=p9IZykpzzwL8zuxYVmTUY8tOOxsh+H4SkI/bv64/8wg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pO5UFphAMx0ED1aab7RDAOYVx2NPIKWxUIsi4UPnXY7/u/VolYWRCPY53g3Cpd9NDEZfpDScv+KQ7Cj/cLMxojSeqjvDVVruWxYyn3DxsjJxcTfWryAe2soyBeTBBYd5XL1+D77k8vGlLY66YBfdpVGByynU/EHX7KdQ4WfVP2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u2v27683; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42573d3f7e4so17874535e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 03:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719828952; x=1720433752; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P7ERjJOyUzEMj0FpXGqXf5xmcTSrmBtKih96OlIC8Hg=;
        b=u2v276833Pg6Ck1TDl0YKnxcJRsQH6ksy6RrBFU83uIBNaCpzAE7DN12Lwu5ATJJYb
         xlAoNtQBvZKcUKjA8H1q3RrnaoLR0G3qfuf4JY7yeANh1O28Dz7yHH/N4Dkv+eGe6HQT
         uHLA9u5g6ZB4FN2KMmSQhFLMzFOmHDl7zvs/azpHLXrdfwj+uH2T7tq3r2+OI9n/m8aa
         YDCkZ1kD3IbKANS2qZlK3068pg3c/aw5L9rQRmR7xcYYPr4dmnrwYxpUhwVy4KGPe/80
         lbNbcAndR9vwlLtKN+jBgp6KYzGvJB3J+cCV3+HDZnZLZjZZpO2onykDlDqTc9RSshvj
         ZopQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719828952; x=1720433752;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P7ERjJOyUzEMj0FpXGqXf5xmcTSrmBtKih96OlIC8Hg=;
        b=oAvOu5xgnINNc0cG0U54q/DoaDMbgvpEeqilvPkmHLbljEUEIxaMs5G17NEo/1fP65
         70mPQYOy3OfXtI6LiR+5mULHdkJBngqBf00pVLc01r9iGJxtfNxPs6upf3FO3kdn0hRr
         6s0xDRiTNCrpzz/F32z6GbL9/QXWLxsKEgklg8kb93QpqL/z/pjfuvJ+9ToWWlHT5epr
         sBnjl3HwUQNTLhKEmgbm54b3HVTHuxMBMviodRUFcKOoZPm/IUwL/I5JDfPFla4hHH4g
         ATmO0ghTgnxe8kp1vcwsVO+fu7406C8OcGx9vmBPc+mXs77c/IJAUGyX/4zwAB5460eX
         WsCg==
X-Forwarded-Encrypted: i=1; AJvYcCV1zjulUXvk+sPPxpDC8WoO8zQSWluFXUxSdnNlRIXCxKoSYSx2QwigWr1JRD8zSnZ289M/cvezOZ/UtMEsQ5iFLslQGHHcH0EywQ==
X-Gm-Message-State: AOJu0YwysolHwA4bLnJK7LH47+VTn2Vza5naF3ma8nVlNqVh7QnQwYTK
	tBWwdiCFwGLnL7/gpSam5lbg5536eSqejqfjyj6pTSM6a3oeJDmK+wPppma0kQJ4vc0MsbNGudJ
	/
X-Google-Smtp-Source: AGHT+IFs0W4UETdvUKHjNDT0jsOLwENUOC2FNNISouAi43UfaMazl23H6AZNzwRfQJHVRLXNsxZQzw==
X-Received: by 2002:a05:600c:6c8f:b0:424:9c01:a0d3 with SMTP id 5b1f17b1804b1-4257a02f7fbmr36087385e9.12.1719828952192;
        Mon, 01 Jul 2024 03:15:52 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.178])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af5b626sm144627895e9.15.2024.07.01.03.15.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jul 2024 03:15:51 -0700 (PDT)
Message-ID: <1d56c3b2-7adf-45b9-a509-956340f3f17b@linaro.org>
Date: Mon, 1 Jul 2024 11:15:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] dt-bindings: mtd: macronix,mx25l12833f: add
 SPI-NOR chip
To: Erez <erezgeva2@gmail.com>, Esben Haabendal <esben@geanix.com>
Cc: Erez Geva <erezgeva@nwtime.org>, linux-mtd@lists.infradead.org,
 Pratyush Yadav <pratyush@kernel.org>, Michael Walle <mwalle@kernel.org>,
 linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20240629103914.161530-1-erezgeva@nwtime.org>
 <20240629103914.161530-4-erezgeva@nwtime.org>
 <1c457520-07b7-4bde-b040-e8bca959a4f5@linaro.org>
 <CANeKEMOODBNZA6efh0E0Ga_KaVs5Y3WLcUftRhNwYHhnXO=GNw@mail.gmail.com>
 <CANeKEMO42rJt5Ob4_HDcZ3eEMvuMOPvRaFaLwL8SA65NtxSV7A@mail.gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CANeKEMO42rJt5Ob4_HDcZ3eEMvuMOPvRaFaLwL8SA65NtxSV7A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 7/1/24 10:46 AM, Erez wrote:
> When using mx25l12805d, we do not read SFDP.
> As it uses the no-SFDP flags.
> When using mx25l12833f hardware with mx25l12805d driver, it did not
> try to read the SFDP.
> Yet mx25l12833f does have SFDP, when I remove the no-SFDP flags, the
> driver fetch the SFDP.
> 
> Secondly SFDP does not contain OTP information.
> 
> mx25l12805d has two OTP regions of 128 KiB and 384 KiB (yes asymmetric).
> While mx25l12833f has two OTP regions of 512 KiB.
> 
> How do we handle it?

You would first try to parse SFDP and initialize the flash based on
SFDP. If there's no SFDP then you fallback to the flags declared at
flash declaration. Esben had a try recently, see [1]. I don't know if
there's any progress in that direction.

Also, you haven't mentioned anything about the testing. Do you have the
flash?

[1]
https://lore.kernel.org/linux-mtd/20240603-macronix-mx25l3205d-fixups-v2-0-ff98da26835c@geanix.com/

