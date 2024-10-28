Return-Path: <devicetree+bounces-116618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F36C19B36C4
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:39:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 768AC1F22A6A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:39:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A053B1DF245;
	Mon, 28 Oct 2024 16:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AB7+9gJT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668D31DF252
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 16:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730133530; cv=none; b=ey5OL2RIbUDX1aED316H+gH4ppeI/pKU74SdPS3Fcq9zprPl/Jen8UpfUYugpmLTIQbdmU5WWctwP8dlYqht1p/7a1gJLrhhB+S9eD6cgeboDWFVlgi1K8a2sB3YB2mlG34a+MwIphTFWQpCUedRokdKBGFTcWNb0ntlPqJquRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730133530; c=relaxed/simple;
	bh=D/9/0QfGf2kL2YCg474JgIqFO07WdxvMzwREB4i0hpA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OiCRjejN5WMxIWz3yAgYgnuhGr4OkTVeSf0RTwRYYgQNWA46qVkMrbn6CXcxpRjxflmFFdkgu60naWS1DgcIGWruvrxDRVtlXzlxf2wHh8uwsRt2pFcNOpdVcE6scF++npY3K31o1Or3YGzA90YIpGcnPhNapu0BFzq31oJ0TsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AB7+9gJT; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-718123ec383so2584718a34.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730133527; x=1730738327; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eHBv3mloFblXsI8B0YdKTr1Rad853vdsR5SEAXSvUe0=;
        b=AB7+9gJTpSJdqfDAzAd6DSyBhJodd1O1PirUqaiZI6oQaCLlF9onj4+CiY/Da1J9+1
         0bGTojnDL6ucOZjCrbmgDSCzUCmQYs7CgkZua9XAv95rYStPhb683X0fuO6gaifKLWq0
         lWfguchVNgwfNH9sl5ufWSacJuGcSgIduz+heuP+oF7DlM0DyYZrCzBGyApHdDYIqPFJ
         iM3xUsUl6cnxPCJ+VC/EsD5+l6QxlhWBmwO8v2EroYaaKFS9Ot4Ah0VNM9krMcTtF42C
         DH0vaywNyXVDYv1z6NWGqeEOoYbFB/FUVPSYP7ulmcwAzW5VZXA0BoFeToh+5e8FZi3p
         ExFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730133527; x=1730738327;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eHBv3mloFblXsI8B0YdKTr1Rad853vdsR5SEAXSvUe0=;
        b=aQUot2bjX+St0Fy0hP/cWbYFWghL+PU6wKTEl97A5RP0Hfq4fOFTA7SAsJGCaR40VH
         Mj9OT5Og0C2SA8XpWXD9UWHprz214jGQFw0yK/bkvjQ8zwISMp9D50iITBqvbgLGxtk9
         OzSfruAdY7zuIifWzcpAUKzwq6DrYizIsxg5RRmxW7eZ5MD/HgT42CIHsbXNCd3v6SZv
         xvawFxABhSQKwIKkeR6ZlGHtrWsIqrNpRuH7Izi/lgLunKodUilPKWkzSlEELAWE7XmP
         faN2T7BIFvwM8fhnU1JNHlQjvMveOadQm03w5H9P4/9zaeV+5l5vlLxe6r0w+hw9JyED
         uobQ==
X-Gm-Message-State: AOJu0YwiqmpcNuFmBlVeGXIITD8BVI/f/iEO0qkD8ECHzlSz5SaDPWe5
	ez0G75TCptuLapjyOsJkakjTYIDyjreig15/Jj7BAy6+ajH9BhlHme0bO7eGgv0=
X-Google-Smtp-Source: AGHT+IG976pNgH6jj17M/FLgXdKLhdCM9MBn76qTibiVCeooF33NJgJuM4wLRJvZcoYm3qjr0KpXNg==
X-Received: by 2002:a05:6830:4129:b0:718:ab4:8b70 with SMTP id 46e09a7af769-7186828aa13mr8360988a34.22.1730133527513;
        Mon, 28 Oct 2024 09:38:47 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec1873887dsm1738568eaf.41.2024.10.28.09.38.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 09:38:46 -0700 (PDT)
Message-ID: <9cf40804-c85d-43c5-82a3-14f75b9922e9@baylibre.com>
Date: Mon, 28 Oct 2024 11:38:44 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] iio: adc: ad7124: Make it work on de10-nano
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Dumitru Ceclan <dumitru.ceclan@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org
References: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/28/24 11:07 AM, Uwe Kleine-König wrote:
> Hello,
> 
> this is iteration v2 to make ad7124 work on de10-nano. (Implicit) v1 is
> available at
> https://lore.kernel.org/linux-iio/20241024171703.201436-5-u.kleine-koenig@baylibre.com.
> 
> The changes since v1:
> 
> - Write 0 instead of 0x0001 to disable channels. While 0x0001 is the
>   reset default value for these registers (apart from the channel 0 one)
>   there is no sensible reason to use that value (i.e.
>   AD7124_CHANNEL_AINP(0) | AD7124_CHANNEL_AINM(1)) as the value is
>   reprogrammed before use anyhow. This addresses the feedback that the
>   magic value 0x0001 should better be constructed using register bit
>   field defintions.
> 
> - Add maxItems: 1 to the new property defined in the binding patch (Krzysztof)
> 
> - Rename property to rdy-gpios (Rob)
> 
> - Use rdy-gpios only for gpio reading and continue using the usual irq
>   defintion for the interrupt (Jonathan). I was surprised I can use both the
>   GPIO as input and the matching irq.
> 
> - patch #1 is new, and use GPIO_ACTIVE_LOW in the gpio descriptor
>   instead of 2.
> 
> Jonathan voiced concerns about the reliability of this solution and
> proposed to implement polling. I'm convinced the solution implemented
> here is robust, so I see no need to implement polling today.
> 
> Still open questions:
> 
>  - Is rdy-gpios the right name. The line is named ̅R̅D̅Y, so maybe nrdy-gpios? Or
>    nRDY-gpios?

The GPIO_ACTIVE_LOW indicates the "bar" for active low, so we don't
typically add the "n" prefix to the name. So rdy-gpios looks correct
to me.

>  - Jonathan wanted some input from ADI about this series and the
>    hardware details.
> 
> Best regards
> Uwe
> 
> Uwe Kleine-König (4):
>   dt-bindings: iio: adc: adi,ad7124: Use symbolic name for interrupt
>     flag
>   dt-bindings: iio: adc: adi,ad7124: Allow specifications of a gpio for
>     irq line
>   iio: adc: ad_sigma_delta: Add support for reading irq status using a
>     GPIO
>   iio: adc: ad7124: Disable all channels at probe time
> 
>  .../bindings/iio/adc/adi,ad7124.yaml          | 11 +++++-
>  drivers/iio/adc/ad7124.c                      |  3 ++
>  drivers/iio/adc/ad_sigma_delta.c              | 35 ++++++++++++++++---
>  include/linux/iio/adc/ad_sigma_delta.h        |  1 +
>  4 files changed, 44 insertions(+), 6 deletions(-)
> 
> base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc


