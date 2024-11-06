Return-Path: <devicetree+bounces-119523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E97709BEF93
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 14:56:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22BFE1C239B4
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D3C2201026;
	Wed,  6 Nov 2024 13:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QJtJ0QYC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0A3200CAB
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730901396; cv=none; b=ZZ34ms0Us9pcEsMbseKDmBKh+zuLL7pricQ6RCs+sxVFKA78sv0CyuyO7NbowBAxI9LdWml0/+RwdMT4z6T1J0bB8uqF2kmUNK3QgtbMPrgLEkwl4uuTBrTdIRQPd436mM9yMP39FJ4Z4yqIeo160/26kbCkNMg6vagtNJByx6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730901396; c=relaxed/simple;
	bh=LDBL0kkMZtib5PEfH1gjZQJCnJISQdKjevP7+A6MsOE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MKW+tSypJAHiYArc5R1lelKoxuyCKpc1bEw7wvEIvPapsWHIDESl5Xv4XBCBKBE6PaBennbdVJSO029jDE/aPDzhCi0sYZu1h/Y9lwnKq+rJ+t/ykGl2fFGkVOYddpZSBbJxI2mNs0E881HcII0dbLAAO4wgHnRlfJ0NrzEyrfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QJtJ0QYC; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a99eb8b607aso881169066b.2
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 05:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730901392; x=1731506192; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dnVWSw+KJhETAVasGJrIAvyKjF38C4m7Mqa7Ozg4wBM=;
        b=QJtJ0QYCTKpEhaHTwkjuDI+CjQJ8lSZcMOUmKbKX83mQpOvlYyItL/GaNQWi5D71Rs
         5e0IngXpcErtXMlER5/y5PLVHuAMrjOBJWW/dxE4+q4KeZTdAAWed2mE+rw5xERqwjHk
         n8r4/iyk2w6uuewRpZGAiNyL85vA7cr4TR3vvT5VWFdV+srw7bnC1RF7S8rnLcc2qy77
         2kKk0yP45enW2tNp3/AvJi0UrLi15dRGEz+RkH8F6iP1+U+l1xi/kz5WMTnKbqji8MLX
         YiBQGUTUm0JipJ2CSn84nTkPP7Cy5heoGotzHzeJsy1CM6rdGJDlS+TuWUpk+NJZtHRg
         6Crw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730901392; x=1731506192;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dnVWSw+KJhETAVasGJrIAvyKjF38C4m7Mqa7Ozg4wBM=;
        b=ehbLO+QfLIztKL3ipYpgV4VQUe6OCOs095syKl+96S3xcTrKhHNNucx9Z//raJhuM/
         bavwmdLgtNGsNUgdyW575FO7sIh+/JPj2xC8mQBter8O5xODJUsAm9GiMy3v58SEcidP
         sLMXE/iU25HhT9rvW+lpki1x5fplv8HfMlgI6MUuNHWeyk3KT8SkZ9qofvj2au44+Xra
         sqeD2o4sh+3k4Hoy1fKdhNS76xQruPVh5kU/4Z1KEjbLpcl/TLpov6VRjth1MSOXC9s2
         4EwfBU7B3SOh+s5/C//GmnQvLt1COV57BCGrv8M/guasxnMTJIkhpeNVAL2V9ijajvi2
         T+DA==
X-Forwarded-Encrypted: i=1; AJvYcCWyThLsKH2idCR/+HT1fW+ePrvjQVo/SMnoSf15RWxZEpjZQJ3D7AotqBrRJepj+BarxuLRXaMbuCfn@vger.kernel.org
X-Gm-Message-State: AOJu0YzSMpzBQ8rcpQVtVJKMeT3G1N48ukttisPqDOxhXbXfWZ2xmQ4E
	nt5LfeS+mElndHKeIhwfp/knlSoecSufNTOVKpa0H48BRfiUPaxYQy9xh1iRRTo=
X-Google-Smtp-Source: AGHT+IF9scKQ8e7/Ni57o63cOTx1M2FE154987xaiGVVDPZ0ZG5nyAs/OZYi2hcL/6qm28yhXA9oEA==
X-Received: by 2002:a17:907:948c:b0:a99:f8db:68b2 with SMTP id a640c23a62f3a-a9de5ecca55mr4251763866b.18.1730901392595;
        Wed, 06 Nov 2024 05:56:32 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a1012sm283324366b.38.2024.11.06.05.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 05:56:32 -0800 (PST)
Message-ID: <bfe67d69-66ad-4121-8c54-a874c7727002@tuxon.dev>
Date: Wed, 6 Nov 2024 15:56:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/31] ASoC: da7213: Populate max_register to
 regmap_config
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 biju.das.jz@bp.renesas.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 lgirdwood@gmail.com, magnus.damm@gmail.com, linus.walleij@linaro.org,
 support.opensource@diasemi.com, perex@perex.cz, tiwai@suse.com,
 p.zabel@pengutronix.de, Adam.Thomson.Opensource@diasemi.com,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-gpio@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org
References: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
 <20241106081826.1211088-23-claudiu.beznea.uj@bp.renesas.com>
 <d3c28a8b-878c-4894-aa23-5b360153b85d@sirena.org.uk>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <d3c28a8b-878c-4894-aa23-5b360153b85d@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Mark,

On 06.11.2024 15:43, Mark Brown wrote:
> On Wed, Nov 06, 2024 at 10:18:17AM +0200, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> On the Renesas RZ/G3S SMARC Carrier II board having a DA7212 codec (using
>> da7213 driver) connected to one SSIF-2 available on the Renesas RZ/G3S SoC
>> it has been discovered that using the runtime PM API for suspend/resume
>> (as will be proposed in the following commits) leads to the codec not
>> being propertly initialized after resume. This is because w/o
>> max_register populated to regmap_config the regcache_rbtree_sync()
>> breaks on base_reg > max condition and the regcache_sync_block() call is
>> skipped.
>>
>> Fixes: ef5c2eba2412 ("ASoC: codecs: Add da7213 codec")
>> Cc: stable@vger.kernel.org
> 
> Why is this a stable fix when it only enables further work?

I thought that not syncing the cached registers might impact other setups
as well.

Also, Renesas is contributing to CIP (Civil Infrastructure Project) which
is based on stable releases. The audio support in this series will be
backported to CIP kernels. Marking it for stable ease the work to backport
the RZ/G3S audio support to CIP.

With this, would you prefer to drop the "Cc: stable@vger.kernel.org"?

Thank you,
Claudiu Beznea

