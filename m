Return-Path: <devicetree+bounces-183712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F77AD1989
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:05:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98580165DB6
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 08:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DC112820C6;
	Mon,  9 Jun 2025 08:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lB6x3P+O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6315F281357
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 08:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749456289; cv=none; b=lv1SNj7izWzR7WCB045mmxwnfmGSxPaHgh7lc1EHMUJIaQWLIS6EZutMtySWznFXPMQsWiijLdgiKVQ3/eiHw4KzRl9m7+2dwTtYADd58B1pt4EN0aPHIYx53wMkggSX1F11PFLqmRSpuDc9ons1pab+6ntV+ACVLWvvVX2TC0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749456289; c=relaxed/simple;
	bh=uyh7Z0bWT6bah3v9PGYs3YIOjwRZipTdMcUmMhw1dTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=sy3slTsi4MICOquT+Z3LqE6Yde54nKzGpHh5KZ5O8zkD0V7UFowsUgTnJVh7pA2zhkcd/ieaOxu17aC0FW2SNVTSbn5pbKwJH5xmtgE+isxFt79tGdjWGMKZjfyculU2Y0aIR3lJxpbKjBQwJ5F49OoCH1KXP8YbSF5DT9g1OFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lB6x3P+O; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-60779962c00so3365075a12.0
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 01:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749456285; x=1750061085; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LYbikLlFrJpSsHAbsyNOgXkJM+1ZHGImF6OaJb/GrUo=;
        b=lB6x3P+Oa1VETqAw8cQZ8kD5NDBtPZefD51RJC9cfLT6b8jmLrVOb1ownqe3+vXGn7
         BZtgRwT3MH/9LukDRXm8Qd2y1CjxhvQpWQ5Kl+xfcBUx9JGSm8QpOKHHqhuR1s7TvG9u
         tX3hg3jXBg3sEUhp2/2JOP8VDSM6CO5M56u3PIx9BtbeaBz0Dvkx6yoedMHcUK4tXk9L
         FcBBJabEYrA6vM1NTGShnlepAwFW6LlZ3EtxVCLlLPW4R57gnHdbF7xO2mn7QjgkRDpx
         zHPS7rIf2daHTS55zmvn9tI/k0aZBFzz5GJq7hXFxYwxueak1sMb8iAqoFjKfn/rEfFp
         SB1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749456285; x=1750061085;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LYbikLlFrJpSsHAbsyNOgXkJM+1ZHGImF6OaJb/GrUo=;
        b=ojmAqIToEOjWGp9uCEqkz0cDVejyiG/+5Ypt0Z5jjhk0e9iF8B+d3YGGR4dEGsyaXu
         9EGqHV24imj8s9oVoFdtpZsSFWLii3CmsmqMG4fYXOxmhsYAPo5Ltse8q41aGJ4j/J9x
         KOSVtVXwDWaHv4Td6/eEPmv72gYfdYug4Xh+APq8kJu8dma6QZmdaX9PhArBfERmPDyt
         d5kkudhFDJG+32+4bWNZEaU0rdX3LL8ZJxHfnTcih2cI8TXJmpXp+qBFWw2bVa1gPYb9
         LUkufKpVI6pRmdSj2N/Sk2QimF3wtTR8k0ur1saG/moWQc34Vl9JyWh+uutF1EA6d58T
         +z5g==
X-Forwarded-Encrypted: i=1; AJvYcCW1NpwL0vI3YtB1atuKsJfzLlzC5UiUSf69PJHo/+LvDGIYyl9o+Emk3RPsDTowBLnw5e0r7HvNAhHo@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp+MNI3h/WyH0rjmc0aqRLSOHrw+XPY93U2wjfKSXM/7Fpt2p1
	IVKZ107Nxan7bMry2Nq5yhnAfhxJbeCbgSlb85iWsLNw70v6A5YUnDamSga1FOtdPKg=
X-Gm-Gg: ASbGnct/nkeqztuki9Ui3WytPu/pXQjm830cyDbshCqheYFxCcyn+kR6UrWhvSm2h2i
	EOdSol4y4HXvg5WowKaVEg8iZJTvgwSz81+uhl/bW8KJkM6HNFgWL3xxXIAlSDCGAo5cJq1HDGb
	IXVnuv8MWY+I+KU/NHrO+IvZoCG+EGqdLRerKXAzmpyuVM+V37m39h3DYTZYHi9vvcUvfd4HQ65
	0HsgSsp4IAnuFqjL7j6ZHcQBYJ8ET1hzf70K4ZMT0VdJfP8seBb+7VGSDyqB0N7max7CA592LI+
	V1OGGCyagaRaUVJZ7OUxLcgHs49J+P+qJTWGI4RgdL044IZyMfrR8xLSElumtoORb9u8ynqC
X-Google-Smtp-Source: AGHT+IE4MSpOgbuv33HwkCjYoe/XHyfRRWBSdHnwS6XSdQ5vijF74vaQ28Yz93NEa6jYLsO+24PJkQ==
X-Received: by 2002:a17:907:868d:b0:ad6:4e8e:1883 with SMTP id a640c23a62f3a-ade1a917048mr1066441066b.3.1749456284653;
        Mon, 09 Jun 2025 01:04:44 -0700 (PDT)
Received: from [192.168.0.251] ([79.115.63.158])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1d7552a6sm517919266b.28.2025.06.09.01.04.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jun 2025 01:04:44 -0700 (PDT)
Message-ID: <8caf71ab-8b3f-438a-8075-60dd01a7a448@linaro.org>
Date: Mon, 9 Jun 2025 09:04:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] mtd: spi-nor: sfdp: parse SFDP SST vendor map and
 register EUI addresses into NVMEM framework
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev,
 pratyush@kernel.org, mwalle@kernel.org, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
References: <20250521070336.402202-1-manikandan.m@microchip.com>
 <20250521070336.402202-2-manikandan.m@microchip.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250521070336.402202-2-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 5/21/25 8:03 AM, Manikandan Muralidharan wrote:
>  drivers/mtd/spi-nor/sfdp.c  | 161 ++++++++++++++++++++++++++++++++++++
>  include/linux/mtd/spi-nor.h |   7 ++
>  2 files changed, 168 insertions(+)

Please find a way to move the vendor specific handling to a vendor file,
don't pollute the core drivers. In what concerns the nvmem idea, I find
it fine. Michael may comment more on it as I think he dealt with a
similar use case in the past.

Cheers,
ta

