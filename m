Return-Path: <devicetree+bounces-49991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C398B87902A
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 09:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79A0B1F21B47
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 08:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ABCE77F32;
	Tue, 12 Mar 2024 08:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BCHJIMkT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6005D77F13
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 08:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710233893; cv=none; b=O1vGLsM8g62ByGdOe+KpiuFpNvMgZcNKtIoMXHZKy4PpIzMrmW0b35ECInCo5dr4UNXv2Wpjw1f3E8VF6/k8D8HEvcdLvkq0Xx3XDeQeXxPEb4erOHySgHmS0hFAQtwidRB2SCj4Ddx6nngzmyBVKy+Un1H2a+yoH3ndHnl3gFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710233893; c=relaxed/simple;
	bh=AU1Zl+tSRS2NV45KDCYOlwTwF/5xzBM2xGuo+H38t9s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FOFyePg2bUNuAfoK273eKvbo3OvjgqOlnWW3IZKWX5Hn//hHsiZ2xm6bQi29PTjDW8P+tRfTqeUmCLxymTT4QG6694QV4vtXV9D2xY3NTnio4A4YGet39+YtIMQy8H6WQbi4DakP5HgtQxlvuVA4RyLrxXmkDXN7SfjVuEeA9Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BCHJIMkT; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-33e9dfd343fso752901f8f.0
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 01:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710233888; x=1710838688; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VjT8Br7RwB5Cf9wT37+1E/wNuS7CDeDlSSoF+6MfTlU=;
        b=BCHJIMkTyMqepjdVgkNxd/ed4PdVWRkXFYOMqMAsnMHKT0EOoiXQyaLQTZxaZ8oPHv
         TnHttj9RZeRMWoVvh70+xoDgKSvwMMDAf9EdRopGrSmNU4/KY4YR7zEzLkmwG3scs+Ba
         7P35Sm+cM2Zi0cttKHBWhLcOzVxsB8y36CI7It14nYZuCtpo2sDfOR0HSFhJiraDfind
         KuEqqKGKBiPHtq9GKsDeRnLfcBFW0ufaZF9MWDGp8ml7tO7jGMffKiBHs9zVGm0Sr8UJ
         YdnizJ00pfffCXyA1c7VKMBiW4eqsA50xbNuFB5AHlVn/KkjgkHcGgnb+8E5rn7s2mRo
         GG8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710233888; x=1710838688;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VjT8Br7RwB5Cf9wT37+1E/wNuS7CDeDlSSoF+6MfTlU=;
        b=Nh5enrqJkmawVW0SA6PegoKLHGWm1BzwhzrJu1pviOqfcQxXmg9qMOUqsPz3TS+jnb
         IOcKj4Nm/M+xRStbVR6sfu8JlEf0ASTeesbgHNoaHa+1AscsWS8746A+bnOecnDZ4+7I
         /kcWpft/sk9soaAw4JkGVuIFFg+T6VpqoPMSE4+l5Uh+6V+SbBrQtkneyBufCOU1wgVE
         MVmxLzjTUtdrejizgreAU2Ju0h0cd7XnqnKJU5v3ewcKWMeRusBBNglEXQVWEr0DQCoI
         yNdDtsHp2A4Wu6Se9o6Lem/h+bXJQ3AZ6QQa/A2u5V+yJCj1h67FG4HzqijRwnnN7QaO
         g1uw==
X-Forwarded-Encrypted: i=1; AJvYcCUFFPeT50Mss09YHONcHMLbsBzF7ON5Aa2SK+yKNMmKXXbW19jxkVUot0wxpXp5beJGs6+HhB68Yrxt5+DIWCTV2RXf0M+9sf+UAg==
X-Gm-Message-State: AOJu0YyQ5JZCmKbhyJWy1cAsH4+EkJ8Ls6w0JkzRp5NFLbQzQMacz+t4
	8FJG0kVcXbvkvG33hwGCCjFs3yyMi3KE1olVpJo6wBSvkP9O3kYkuLL5yenkf7o=
X-Google-Smtp-Source: AGHT+IGEY43ahXXjF+ZtPgyw++kTwzbaMmqAYW0DyROyoKxXhlKv6tTyjqHeIgkml0d0nNzd+tbCLg==
X-Received: by 2002:a05:6000:1c3:b0:33e:8b95:b351 with SMTP id t3-20020a05600001c300b0033e8b95b351mr5064003wrx.9.1710233888438;
        Tue, 12 Mar 2024 01:58:08 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id i5-20020adfb645000000b0033e87c6bcb2sm7367141wre.8.2024.03.12.01.58.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 01:58:08 -0700 (PDT)
Message-ID: <7ddad394-e880-4ef8-8591-cb803a2086ae@baylibre.com>
Date: Tue, 12 Mar 2024 09:58:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/18] Add audio support for the MediaTek Genio 350-evk
 board
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Nicolas Belin <nbelin@baylibre.com>, Fabien Parent <fparent@baylibre.com>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <4ffde184-cf68-4b71-b81d-9b5894529926@sirena.org.uk>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <4ffde184-cf68-4b71-b81d-9b5894529926@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 27/02/2024 16:06, Mark Brown wrote:
> On Mon, Feb 26, 2024 at 03:01:38PM +0100, Alexandre Mergnat wrote:
>> This serie aim to add the following audio support for the Genio 350-evk:
>> - Playback
>>    - 2ch Headset Jack (Earphone)
>>    - 1ch Line-out Jack (Speaker)
>>    - 8ch HDMI Tx
>> - Capture
>>    - 1ch DMIC (On-board Digital Microphone)
>>    - 1ch AMIC (On-board Analogic Microphone)
>>    - 1ch Headset Jack (External Analogic Microphone)
>>
>> Of course, HDMI playback need the MT8365 display patches [1] and a DTS
>> change documented in "mediatek,mt8365-mt6357.yaml".
> 
> Given the number of custom controls here could you please post the
> output of mixer-test and pcm-test from a system with this driver running
> next time you post, this will help with review since it checks a bunch
> of things around the new controls.

Hi Mark,

I'm a bit lost for mixer-test and pcm-test.
Currently, I cross-compile the alsa lib project to be able to build the 
tests and put it on my board.

I can execute it, but I still have 2 issues:

1) I've a lot of missing module in my environment (Encode.so, Encode.pm, 
Symbol.pm, IO/Handle.pm, ...). AFAII, I've to cross compile the missing 
perl modules and install them in the rootfs

2) I don't know how to configure pcm-test.conf & 
Lenovo_ThinkPad_P1_Gen2.conf (or new file to match with my board).

My test cmd:
./run_kselftest.sh -c alsa

I'm wondering if I'm going to the wrong way because I don't find 
guide/readme whereas it's not trivial at all.

-- 
Regards,
Alexandre

