Return-Path: <devicetree+bounces-249234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA833CDA1CB
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:33:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DBE8301A704
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AB1931E11C;
	Tue, 23 Dec 2025 17:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PHkNZT//"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f66.google.com (mail-oa1-f66.google.com [209.85.160.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB071DF258
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766511187; cv=none; b=M1oVyPVCGcMIeppeVeyN/vgfXt99TdKDvRNSFEOIqR2W4HmVgVhtHEEi5K+zZweNp8GNBTzELtyRAnL6PSpwsrpfBwI4xl3+q0cEMZIyjRvmsWhuo24sHVxH1R0nvtBSZNwhvPtNSMF3Ij4M6xW0UmaNGgDR4/VK60ynTs1BS8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766511187; c=relaxed/simple;
	bh=3eDEZMaS+8DcWuMKuK585qT9nXKWNYurcInLVh5oDQ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fh8rT137Mo9Cd2svqLhEf74lDlwMLE+MgcF5j3/uu3yBNga7geUrdOYTl/a4VENnSrTWJjc1CB8jx1opuaUYHB8BtqPz3vim7SSF2Iq2F8Gw984g96hyZ9b+TvzgpCzrZOExSbVNUaR3/HT+/1JlDHGoNRdtwqy9hMXNRVADCZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PHkNZT//; arc=none smtp.client-ip=209.85.160.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f66.google.com with SMTP id 586e51a60fabf-3e89d226c3aso3567670fac.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1766511183; x=1767115983; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UEWdqOagK1IMdQa9F3rPv/DjldvH3JIrOlYqo01koPI=;
        b=PHkNZT//ETIB7MEIpOmaBfy3e/4iwROHH81umAVNgu0T3nvgotKBj3bX8y94MIxLaJ
         b7OgKXC1ZwvkG0yL7tPt5Nj/HLDPkJwG8U2p9A0Og+fDw3pecz08QRK97OF64aCQyf6C
         XB4fRuFYsyU1Dci/KOPPjUbVCXxba2iLCBgaYSUw/1vVZjvTjI5aSjVLCLMMsPZ3GBcJ
         KaoWO4qWVf4NW+c4koCocdgCnRT2B1nQJaP+MyrhSPSpm/kzYo2lCl3lbXPrUpizUvei
         Ltq074/gzb8l0Xv4SmEau8ZdLryZfLrISQWqmjt+l6i6tmO4av8A281+VtYCKHU+PnSB
         gg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766511183; x=1767115983;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UEWdqOagK1IMdQa9F3rPv/DjldvH3JIrOlYqo01koPI=;
        b=is99Gp3F/OpuJNsAsDgikJ8H3RJSgGMUCMAlfcFf5iieN4AqBtOvkVpUj2QGj8xifT
         y1DNuNb62nteTkYh77NdV6io9vZvehUvchnDVPs6TYwt7VIJqLoSvh3GISAcktNPOyZV
         tnCEidg91YNQ2NKWKP5roRSPnzPks/qQaHLs0uGhIAtC0WEvgs/gDshfSNLzo8/M4/i8
         +H5V4c1xjrqn0VnMpziyLg6tRN8X6I4G5uMSlwr8cGL5qNU1sDB44gg6NGWpuIEwwxcf
         lLeT9thg9r4TN4HdDInjhAzd3ydnHi+Ubtk/rGgvA36qUP5CLGWxk+xhNvqZ2C4Os7/r
         qKgA==
X-Forwarded-Encrypted: i=1; AJvYcCVjRQQ5yNZKA2AlwTENQpnGVc/xxVRMuwWNsWqCtM3M3MEcuAQDch4WkdWVEOVChNN9GgB722Y6sd2k@vger.kernel.org
X-Gm-Message-State: AOJu0YykWQW6w1O9cZZS7YUu+voQBGutH+pn3u13SY9Pe7QWE6Oo2S9J
	hW5RHajEaIREhCsjX8ux37NXs5ZY4QFN45Pw5XGJjSf7CmLhpIAeaFFJ5F1NOitGU8Q=
X-Gm-Gg: AY/fxX57VkaRuQrHQqoJvti7g/QMgkALxdpCnuREoqCE9h5e59r4XF9Prb6WaLjj9eb
	8Rtan7cGPCnUvHeC97MDcfMsxYEEXrSi3/d0KfeJJzQ7QHXdHwdTOiCbzgS8I4FtjKvYGk3jWDK
	XNUDNhDFuGPIG/Aqa0OpVND21+5JoPbTurwOlM8DdShNmWBXzt0BLlchgUlLyox8ZS1gkM+EO7R
	JBHWFW14ByUbGGCZCb7GBmeQzPkfrslxUJ94w7eVnM6xQiwGanBzuP2FZFGM1qwdMiB/mU0LBAq
	cpVxEwJzZ1pP89YERXcxy21xtFlqR0LUny6tDwjp4zHYO0A2KXhv8EPpMxJyeEd65zTxF+MfRev
	OtpYsOfA9Syql791RLdPNCrmzP8ab/HUCFORWJpJAcYKQI9bpckJQVJBYpkhGFsBzmVwEwTqtPy
	XgrZN1eP1iiJmH21M9/Xy/9UtWSqTwICdFq/sR6VxbKlr8lOkFtlFO1H0h+4bz
X-Google-Smtp-Source: AGHT+IGTT0Kqcp0Fv96quSyK8w2Kn84GuPDDhDZJFMMivHiXqrzf5rPDldykdeoIWxcKPUtUQ41veg==
X-Received: by 2002:a05:6870:2428:b0:3e8:970e:d4f7 with SMTP id 586e51a60fabf-3fda51e5abbmr8231088fac.11.1766511183588;
        Tue, 23 Dec 2025 09:33:03 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:fe29:88f1:f763:378b? ([2600:8803:e7e4:500:fe29:88f1:f763:378b])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3fdaac0273bsm8895229fac.20.2025.12.23.09.33.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 09:33:03 -0800 (PST)
Message-ID: <b2ecbe6f-aed3-44de-b094-022e52d3e5a4@baylibre.com>
Date: Tue, 23 Dec 2025 11:33:02 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: adc: add driver for Texas Instruments TLA2528
 adc
To: Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Jonathan Cameron <jic23@kernel.org>, nuno.sa@analog.com,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Angelo Dureghello <adureghello@baylibre.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Eason Yang <j2anfernee@gmail.com>,
 Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
 Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>,
 duje@dujemihanovic.xyz, herve.codina@bootlin.com,
 Rodolfo Giometti <giometti@enneenne.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com
References: <20251223155534.220504-1-maxime.chevallier@bootlin.com>
 <20251223155534.220504-3-maxime.chevallier@bootlin.com>
 <3e9a5df0-c650-46dc-8b64-b8708099262e@bootlin.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <3e9a5df0-c650-46dc-8b64-b8708099262e@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/23/25 11:12 AM, Maxime Chevallier wrote:
> Hi again,
> 
> On 23/12/2025 16:55, Maxime Chevallier wrote:
>> This adds a new driver for the TI TLA2528 ADC chip. It ha 8 12-bit
>> channels, that can also be configured as 16-bit averaging channels.
>>
>> Add a very simple driver for it, allowing reading raw values for each
>> channel.
>>
>> Signed-off-by: Rodolfo Giometti <giometti@enneenne.com>
> 
> Looking closer at this, Rodolfo hasn't seen this patch prior to me
> sending it, so it should rather be :
> 
> Orginally-by: Rodolfo Giometti <giometti@enneenne.com>

I think the usual way would be to keep the Signed-off-by: and add
Co-developed-by:.

See https://docs.kernel.org/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by

> 
>> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> 
> I can resend if need be :)

Wait a week for other reviews. :-)

> 
> Maxime
> 


