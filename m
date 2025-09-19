Return-Path: <devicetree+bounces-219351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE83B8A45E
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:25:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52F8B17FECB
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF48B3195FA;
	Fri, 19 Sep 2025 15:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="za6bNbAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F353191B7
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 15:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758295530; cv=none; b=IpzqKeAOmTad8KI3sFhhIvLOHYXfgi8MGPySSi//jw5rCq1C7McItRIgXyU0SGPu6NvDPv529FpSlk1EDo1aDztkhAdErPL2tGM/6tCo8IAdPQz3uH1HkOlB6wnq3LvbXDFfaMlPhigcJGh+EBjP73FRVeylGW5flRn6q15Kh90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758295530; c=relaxed/simple;
	bh=BwF+XCw+2VY3IKbrShmTxOU5RWN0jZOIGyiJpln3Txs=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=afU6URmIKCN1Cxp2LjYOnQs+URslpBB3Hu9u5ISCsdOytVpnIEKQKWe4CnFcNUFkl6ZXhxb6ekPM8mlJlP7Zry/UWEWF1p2CgokCywnumV3+QbaPerRouONjvJ9/3DL4P8t3lqG8wZS5luCS2TSflfvAJhwYHTFRjXRyqaPabJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=za6bNbAb; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-42480cb42e9so6812135ab.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758295528; x=1758900328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+umzzpBSRQEc1V/CcodsQfdMrH/eWztzCvjBjz+cu5I=;
        b=za6bNbAbsVJOofxSgoRoIn4IVhbzS9q1blafSX9A7IGEDL4POUAmkxXTY5EzujIGXo
         tWiE2yISHXoX1UWT8GUohluLXciflK3hujgkgmDIdhDeliOqRXMcy9tPdNOiy+2eFqOO
         8OKIVLofhZV/Egc2REMG39kvbX88oV69rb65l1DBmbPjikRNHv4Ggtw92Emz6fYX3gyV
         7oRB0raDTH7cTK7CCHrAo/VtHtC/nARIVv+hvz/WXYTEz+OrBOFmvH/dFfFdJdczmpIG
         KvcrdBNXBdqzNz2ti2J5htKPJbUn8g5ErewePiM99snETnpQTwvfHRrVDQEO5Xf4itDD
         kojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758295528; x=1758900328;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+umzzpBSRQEc1V/CcodsQfdMrH/eWztzCvjBjz+cu5I=;
        b=E20FN3srBIiCm81KpwlTjMfUUSmO3izmuGe8l++F8cWGkUJqBcy/dmmkI0l54rVI6K
         i3cT7bmEN9bz9z+ngPsmmlhEUaC0hhxqvpeI/yHpyu0ssQnsvWoMhxqCA6TCejdvo+gZ
         jKLERNOMoWqjktjNEQ0CQqZHn1QMAuPEfqxrKvGVfjFGn+6iFMa2zoT35cVbz36lThrl
         FkxYBehT3c6VhehcR1oUSpUHnTSJP0QPRmk3t4KsYOVCPQqxv94YGnNvHyS0Cjed+bhI
         zsoA8cc21aVHP4YpG1lqGxGxm054K56KGuUD6GX5gFg7EtyrkTZfo8+pXzlIwVWApq2Y
         /ZIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAcQj73GjsNcoM3rxwpNJtogB1BHkXotjh0moRvt0LCiakHr+cVs2N3ezfLVFVs48+d8bYNWwak/+u@vger.kernel.org
X-Gm-Message-State: AOJu0YzUBcWVcZbOL2pTF0Sg6Drez9y9vx/HBDEubd25g8qgPlNoQ36D
	TmRNlY+XW0LiOBWujnsYVtKwIyxvvnLURRxOXxiVWGopzvOCphAaiZH+VNPZXoTP33A=
X-Gm-Gg: ASbGncte08QD7cn8VgO9frITXfBXR1XcOCgnZrR83neW0+PKhWHMDGVvqNDbix3J5bP
	FlzNMxPxcE3+UKQYPoB2TFsMPAhNDKKy0arrWwSepdyANY0Ir5vrlEKVz2TKVVCi8UL5EjoiKvg
	/edDLzKxBAe+1c9oAykUCWKYNlG2JeIpZ3V+EJs5/4baGnUqw0Ur1D0hzE+R1tT1mOR4VA4UBaI
	qMsYlmciZo60Jt10kkJZ4BrySkA4x1j/PROmRo2gsxYkR+ODWiC3FywICwtoocZv5BpkSkYKTbd
	xxRWdemMuTe64XYhNF55FUf4On6EZeJnk12ZKqQxY/7ywXajPsPvDe+dkTVNN9V7UGAQTJrdvzn
	qUW2Gh5ua+sXmNV3SFeehVFLHKR36baiV5L2ekDp+aVU3u7VnCds6Ux7ruU8AwQ==
X-Google-Smtp-Source: AGHT+IEQ0mHzthbytAS8eyolftKz1JqkUaR4qV6jomifOWCNp485ZfecaLw2j1twDeq58dbQEdVFTw==
X-Received: by 2002:a05:6e02:1a08:b0:424:7e36:f863 with SMTP id e9e14a558f8ab-424819ab873mr53155285ab.30.1758295527989;
        Fri, 19 Sep 2025 08:25:27 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-42482ad64d1sm10124555ab.41.2025.09.19.08.25.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 08:25:27 -0700 (PDT)
Message-ID: <ca775631-4e45-4a58-8f30-133cfbba854e@riscstar.com>
Date: Fri, 19 Sep 2025 10:25:25 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] riscv: dts: spacemit: define a SPI controller node
From: Alex Elder <elder@riscstar.com>
To: Yao Zi <ziyao@disroot.org>, Yixun Lan <dlan@gentoo.org>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, p.zabel@pengutronix.de, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250917220724.288127-1-elder@riscstar.com>
 <20250917220724.288127-4-elder@riscstar.com>
 <20250918133209-GYB1273705@gentoo.org> <aMwYRGjTdbQCJf3S@pie>
 <c32cc8da-6703-496f-b30f-4961aa811869@riscstar.com>
Content-Language: en-US
In-Reply-To: <c32cc8da-6703-496f-b30f-4961aa811869@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/18/25 11:22 AM, Alex Elder wrote:
> On 9/18/25 9:33 AM, Yao Zi wrote:
>>> .. em, so the SPI will use pdma, then probably you should also adjust 
>>> Kconfig to
>>> select PDMA driver?
>> The driver seems to depend on the generic DMA engine API only, IOW,
>> theoretically it should work with other DMA controller as well. And it's
>> even capable to operate without DMA (see k1_spi_dma_setup()).
>>
>> Dependency to PDMA really doesn't seem something should be enforced in
>> Kconfig: it doesn't exist in code level, and the driver is actually more
>> flexible.
> 
> You're right on both points.  The code doesn't *require* PDMA to
> operate correctly (to my knowledge).
> 
> Yixun, what do you think?
> 
>                      -Alex

I did some experiments.  Currently, if I build a kernel with
SPI_SPACEMIT_K1 enabled (module or built-in) but MMP_PDMA
not set, the K1 SPI driver probe doesn't complete.  The reason
is that dma_request_chan() returns -EPROBE_DEFER, not "knowing"
that the needed driver will never show up.

For now I have added a call to IS_ENABLED(CONFIG_MMP_PDMA) in
devm_k1_spi_dma_setup(), and if it's not enabled it will
return 0 (to indicate "all is well, but we won't use DMA").

That doesn't allow for a different DMA option, but it does
allow the driver to work without an explicit dependency
on the MMP_PDMA (via Kconfig).

					-Alex

