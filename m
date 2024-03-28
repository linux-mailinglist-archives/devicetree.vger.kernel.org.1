Return-Path: <devicetree+bounces-54172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECB688FC7E
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 11:10:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C24521C2BF1B
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 863077CF18;
	Thu, 28 Mar 2024 10:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2FiZjsn4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204147C6CA
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 10:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711620578; cv=none; b=rCDIkrzi5ZJoIC1JXJspDO6LezwD5+VurKMur34K24TqW+kP8+3tS8y3t4hIcgNopNXsJ+6jvhlE0iIZeHxveRqQn0wGodWTAe+cVywA7z5RxS+xHSS8QUgUwG+txRxjO7w8hNZv2VM/2nvkBvJLTcmD3daqDtenuqw5gDxxM0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711620578; c=relaxed/simple;
	bh=FrsEbllgu5nSWbKKPqP082m+wmXkceS/8bSVAZaHeLY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ccNIgj5OV2eiyupAOWR3SlBs6RhaOaIVRWLZiSTP6LHK5K/TwGYDAqViOlYg4GFQ2bhF/sHeHmGTEbzax3MBdkqxIfMQ7zTPDRjG5zcAmuuq867F/PSYSfbgQLQ+7LU8xk7epXoPiY59V40cy98xDBLBAUYu+aux9npvrOlT1v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2FiZjsn4; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-34100f4f9a2so465648f8f.2
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 03:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1711620574; x=1712225374; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f5wMiw22c5vII85IvPgCG/zbOc7PIefhra+kZ3K8oIE=;
        b=2FiZjsn4MJ87jzjepIbZmu/mDB5NHlpk2J0DU7pHikoV+lccS1VkhpjkI7om9XLyNb
         ABJXpsAVquGp8pePCVL+OmGITO7+Pb67E8pbxLMronhgcKIW3e0SBiSDI36C8Je9twMI
         ZPPX/zuSakN1NlvEciPnMHdTqgLNJCzosn7ed1AJtyfloX8ITMOz46QgePwTbwxHBLfT
         7T2ccdCx9Ep0WUoIA3vLBoAhN326whA11b5MnqZkKh/saq/tSI8P93myCbqimgXb5BAj
         1UbBM3Ox4gjLZoOBG3ZJtIfwg8WcDRtg8HyYKjA6zh1kHdfbQAF4+eBL/PFHIe5Qtk0p
         e1Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711620574; x=1712225374;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f5wMiw22c5vII85IvPgCG/zbOc7PIefhra+kZ3K8oIE=;
        b=osoxMmsc+H7rpB9iozTJI5pnSyVFlAfHubDHFAfF4j4UWetlWen6Pne0IOJ2N3rTD6
         Cu6nGp/pSp7b8H3z4CbG9nQhnEaXw1Z7+CGCCHHUOzU4bWvmqIFKKCtHTNDQjbzrl8H4
         SIrd4EH1J0K43Grkwa/YJKK6X/4/p3ZwUjoN9V3VQXuV2qcneaIGySlATHGo8iCJHYAl
         ovVUzMX7HEblGJctXebk8E0ztpIHNfucF9MhLT4Db06Pr4OPgo6U5FeBhAlXAfKVVVLy
         cekJ0Gw1WN7AiNoQwLfQbeMit/xneLt1zV2RUJrEdicWvgXkqIsCjyjiFifrXYK84aeL
         f8WQ==
X-Forwarded-Encrypted: i=1; AJvYcCX53olA/CodWuPDyWG88fqULowp5zqNtWIt9CxMkp4ElyfLbF1vmU4JHTo3ZkNLV8xzq39Xc4u4xy3lH0PuzJ7I+pPstWlLcqLWvg==
X-Gm-Message-State: AOJu0YzODnmWAXdwcIhxHl4dlO0NzM9QWZ9VofuHmK6zK/tT21/1GC16
	iGyJBKSE5yVB/WnSTR/49xcgEw3V0ubsXf+RAJpj664QE7UTjBISyn93JKLfxw0=
X-Google-Smtp-Source: AGHT+IFGHWYadDJCgABhwjbgmr/G/9ahD5CWJZRFUjAkHe014xq2ZOOYv0q270M74EFrQt4il5g9rw==
X-Received: by 2002:a5d:6d82:0:b0:33e:9292:b194 with SMTP id l2-20020a5d6d82000000b0033e9292b194mr2493550wrs.14.1711620574475;
        Thu, 28 Mar 2024 03:09:34 -0700 (PDT)
Received: from [10.1.5.127] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id ea2-20020a0560000ec200b003432d79876esm1316197wrb.97.2024.03.28.03.09.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 03:09:34 -0700 (PDT)
Message-ID: <4dba5a65-d1dc-4a80-bcaa-fe9ba02c5082@baylibre.com>
Date: Thu, 28 Mar 2024 11:09:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/18] Add audio support for the MediaTek Genio 350-evk
 board
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley
 <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-arm-kernel@lists.infradead.org, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Flora Fu <flora.fu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Nicolas Belin <nbelin@baylibre.com>, Fabien Parent <fparent@baylibre.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Will Deacon <will@kernel.org>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <53671deb-9c11-43c1-8deb-93fe4708651a@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <53671deb-9c11-43c1-8deb-93fe4708651a@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Angelo

On 26/02/2024 15:54, AngeloGioacchino Del Regno wrote:
> Il 26/02/24 15:01, Alexandre Mergnat ha scritto:
>> This serie aim to add the following audio support for the Genio 350-evk:
>> - Playback
>>    - 2ch Headset Jack (Earphone)
>>    - 1ch Line-out Jack (Speaker)
>>    - 8ch HDMI Tx
>> - Capture
>>    - 1ch DMIC (On-board Digital Microphone)
>>    - 1ch AMIC (On-board Analogic Microphone)
>>    - 1ch Headset Jack (External Analogic Microphone)
>>
>> Of course, HDMI playback need the MT8365 display patches [1] and a DTS
>> change documented in "mediatek,mt8365-mt6357.yaml".
>>
>> [1]: 
>> https://lore.kernel.org/all/20231023-display-support-v1-0-5c860ed5c33b@baylibre.com/
>>
>> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> 
> Actually, I am cooking a series (I'm finishing the testing....) that 
> brings quite
> a bit of cleanups in MTK ASoC, including the commonization of the 
> machine driver
> probe, with the dai-link DT nodes, and which also modernizes most of the 
> existing
> drivers to use that instead.
> 
> If you wait for a day or two, your mt8365-mt6357.c driver's probe 
> function can be
> shrunk to ~3 lines or something like that.. very easily :-)

Just to inform you. I'm aware of your serie. Currently, I've fixed my 
patches according to the comments. The next step will be to rebase my 
serie over yours and do the changes to be aligned with your new 
implementation.

I've planned to review your serie during my last task, but it seems 
already approved and already (partially) merged into linux-next, sorry.


-- 
Regards,
Alexandre

