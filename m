Return-Path: <devicetree+bounces-144547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAFDA2E71C
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:59:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F3B21888240
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 08:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 942881C1F05;
	Mon, 10 Feb 2025 08:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QKQz9lJh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C049E1B87F1
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739177950; cv=none; b=YZjYCQvYFDYch79TyT7hqz4SvbHebHabZ6qvV0PB320nMDe0FVIaFy6PB2rq7s9bY5OSlFxJ+IXn1yx/tjTWXr4KTKzY5NGd/hwyl3UysN6ollW5ETPnLGF4w1LfUlAluwehttJ50vlNxMFns4LnFS+SHQFUzS48/8GBe1osfIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739177950; c=relaxed/simple;
	bh=r9kfscMu2nQ0HRBU8e9l53pIAaPhrUF5mA9gkyOUvGs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dpgH6ZmpLra9zuvvEYJwpF9wWB6tuYecGUlsfuyVetMgogBPUYgsUtzfCrjTqN52zkLhFxRTFEiPcq7lWwfVmIvO37DT4hiWhLm7f9c7dRNn5BsgCnj7sSSwrNTcH/I5J/0Ujim+FlAPUnVOJWDKMd1PTASzOmA7y0BheuClmMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QKQz9lJh; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38dd93a6f0aso898989f8f.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 00:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739177947; x=1739782747; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hgguTSFnjwWEUxBDa2C5Pf4WCfOFI/5UFo5VErVUJi0=;
        b=QKQz9lJh4MU4d7M+yyZEL3U+fQY/fZe7sKfb1tWuatdbn/tbxwx31c8q8S4Cvc/IdJ
         4H2RgNasN2geJh+pWXv3I6FXwTffx9T2SpweypnvLKQ7nQUarr2sZrNZ8FQLhv7jzfde
         hev4NIWOf1iprkZbItLcR0ynUBiCPMLPoNGUocwu3I+GEekr7420rdfP9y5saow3ekuc
         FHGvQ/hOo3fyDEzfpjhWvulSguero1dQiYg57qQ/DwvWKgXnDWUyeSnJIgIQ926mozve
         F9Ms0+kQCfn6KsWqfIndBEveIe1Ovb6Tc4dtR6HaLd5+SlGL9A3TdsKRcWMXvu22zND1
         vhOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739177947; x=1739782747;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hgguTSFnjwWEUxBDa2C5Pf4WCfOFI/5UFo5VErVUJi0=;
        b=OK6LMt7pKNTJnuN+dd36Y4NhW+ac9UXkJx/2oOkxomEbfNQ9ZaOhDJd/TSLA4YSOXm
         zKJpD4RopI9+c65mIJ1lxhTEf4L8SIddRPc97KgSKmwpXpO9iY0EQSAaZh77eG9tnvO0
         eg3g8pZrJ6DZmT5kqZTn+hjZQQBnHqFplqtAa49ErOAU7mO9ckKUs2Jj9flHo/YZQSP3
         aCg3C0tWSGNyj/FzC0/MVJ2u5fvH9dOVx2r5mcNf0mqL5vz3ebFrPWs4L9BHc9EOuXYE
         HrZ4aoHe4MRe00nyk71/ShZ2j/N3XpyOInIf3xPbZHCxn/YlQdVICMJrYo1aFaDMCMdt
         /Gzg==
X-Forwarded-Encrypted: i=1; AJvYcCV3iZhS1gehOnsl68yblocDQCySdmOFDtmw//3B5cnYGnQLUjDEKhKiHfN9bys5pfW6CbVq5ZiUacwN@vger.kernel.org
X-Gm-Message-State: AOJu0YznT8VncZJaN272Kh+6WMyF5D3+QbgBn09ck74lu0HoO5sCU6fr
	AnD+3HvntoS3WgFJ16Lt0fE0oUKypiXUiHIvoB2l/R12gR54ZzC+/Xdq1NUTbx8=
X-Gm-Gg: ASbGnctSPm5rhPzGAMvyj7PGI/RHBxsLeZCRzEgUN/Uh0ICdMbTmRisKw0DtS2Uiv2n
	uqK0qH6QAc9DjApPKieyL0Hsf0XC2/Bi8IrZWK9bv78Kq7aiVAvDnddXQTrKbjJxwIJ0l3oVh10
	AOu/OwMRnNFrzTmfAhs4iSL+kJ6pI5+1J1tCMLKokuqDQW+WVbNr9FtYvyI1KER7wzEUd4P3EJr
	q6NZWf0l5ih+uNJtFTONGW4MFp/vi71AToTzHtyMy6lZzoUrHX+gKRaQX2se3phzykfriEKnD2W
	pez2r/DpTCHy7vVc1hOSxVFq
X-Google-Smtp-Source: AGHT+IHW35O2w+OVAfjf6xNzfb+RSzDit7DIG4eCcKdu75kyP3tGrbONMFt1iHptvel8q6LbiT3P3Q==
X-Received: by 2002:a5d:6d8d:0:b0:38d:dac3:482f with SMTP id ffacd0b85a97d-38ddac34a13mr3776794f8f.20.1739177946954;
        Mon, 10 Feb 2025 00:59:06 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dd4d826c6sm6159674f8f.69.2025.02.10.00.59.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 00:59:06 -0800 (PST)
Message-ID: <503b7ec9-e0b1-4351-aa34-3089b2055eb9@linaro.org>
Date: Mon, 10 Feb 2025 08:59:04 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] firmware: add Exynos ACPM protocol driver
To: Markus Elfring <Markus.Elfring@web.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Alim Akhtar <alim.akhtar@samsung.com>, Conor Dooley <conor+dt@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, kernel-team@android.com,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Arnd Bergmann <arnd@arndb.de>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Will McVicker <willmcvicker@google.com>
References: <20250207-gs101-acpm-v7-2-ffd7b2fb15ae@linaro.org>
 <e1fffd3b-d3dd-4f46-b7b6-1f03f934dd30@web.de>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <e1fffd3b-d3dd-4f46-b7b6-1f03f934dd30@web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 2/8/25 3:31 PM, Markus Elfring wrote:
> …
>> +++ b/drivers/firmware/samsung/exynos-acpm.c
>> @@ -0,0 +1,771 @@
> …
>> +static int acpm_dequeue_by_polling(struct acpm_chan *achan,
>> +				   const struct acpm_xfer *xfer)
>> +{
> …
>> +	do {
>> +		mutex_lock(&achan->rx_lock);
>> +		ret = acpm_get_rx(achan, xfer);
>> +		mutex_unlock(&achan->rx_lock);
> …
> 
> Under which circumstances would you become interested to apply a statement
> like “guard(mutex)(&achan->rx_lock);”?
> https://elixir.bootlin.com/linux/v6.13.1/source/include/linux/mutex.h#L201

I'll replace the open-coded mutex handling with cleanup.h guard(mutex)
and scoped_guard(mutex, ...), thanks.

Cheers,
ta

