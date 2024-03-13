Return-Path: <devicetree+bounces-50309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E5B87AFB4
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 19:32:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 751021C26267
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 18:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2638E7A704;
	Wed, 13 Mar 2024 17:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gSLH53Zu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CEB7A139
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 17:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710349918; cv=none; b=LiaXuSjYCU0qXeDixGdc+Z3UNyWcTmAP3n8U4KSBRA3ze6Nk1EnJeFHtlzgFTpAoAAbPH0W8J5dLkHCmpG2/KiLz1vdhQ9Mrxjq+6/A1PhT+7olhZrLDCj9CpNIA7RuJmCWYCcz7WUkQadvu2xnDpXDV7DnJPsjzSvxy2sUeObs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710349918; c=relaxed/simple;
	bh=yxoN1G+uMZp38YC1jCCVFNGNRYjvjcKz2fKoJoCswhk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OwpKrRzG1sNmbuOo3q3aO5CseYzG2WhSd4wOlB3eSZDSusOvvAsLx+4nDedjo17P6QwhDKoesA3kYmf2Kn8C2nFhvEw8U6X0PQk8Vm3tIZZSTHnPFOZ1FBgvGxr/xFjzis+qU0ECLmcAUvHWFQe4DeWhpS9D1rSEBCYluhFpH0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gSLH53Zu; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-413eee75912so598795e9.1
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 10:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710349913; x=1710954713; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DfCyEn4BBkDtIZTeeb4WXSUMa8UuweDcHmhz18/rnUY=;
        b=gSLH53Zuf44lWqdRb6iA7fAwPJb93ikqPpRNFOPpYfvooXiydYnU+odaOlRyO42z6u
         VXotUZw8YSGf6fcHH6+NQ7MX58v2AMxhatFk4F/eFXsYlS50Xk5RhDNN2rGQuaCnuMUa
         7YifQyaqQs6KJfmP8+OKSAHjcHg8uoq0QdKQnfhnIt4goBeNoKKf92fO4n5O7XnzDuSP
         4DpQisXF63e9RiSfAGbfJG98E2cGKIVJ4Ikw++1/+DL/U5RQ1Ht77cNgLT9OWfHUCxkt
         yvu7t2IdNmeLpZJVWzthSlAVsSTgSl+zUezXUkoUuX5KJhsGLxUU35m+CRGs1DRoFR2P
         U9LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710349913; x=1710954713;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DfCyEn4BBkDtIZTeeb4WXSUMa8UuweDcHmhz18/rnUY=;
        b=frZdd/YfPaoTgstWNDbwQyFWZ4GHnVo8RiTYfP/THnMhaUj6hER2xWRhSDdsPsWLH8
         f+D8bhtWYs3YN8jjx9dB3WqY3o5tdeOuqnpsPj81NKIThxu1ESzmFLSeIDZQyxFjGIBL
         WyD9arsir9+aX7shMDu/RwvwYk7Br7+n7ReeG2nngnR5eKBBCDkR1tWSUqQDQbuik+WC
         1sQmxAJBYwU+X53pxuqelhNi9XbTYKc8+W01yLk2jcsH3mZVwR7KytzDLeREz5O69H4g
         2YLJdoyyDV1syMqhbEi/Mc/5vxYPmt3b0dD3Py+sOP7kX39IU7r743K1hUnq7y6e9l1h
         PJ2w==
X-Forwarded-Encrypted: i=1; AJvYcCWhgvfp5vaxo4RGnKljpV1tcwhUH00zuyyqhlMehZjKO5E2tV/UA+WeaAiKeTZtnXmLpyhKdA0URWwYLTfom6gbVoCkWRdIVIY64A==
X-Gm-Message-State: AOJu0YxYNYPB4inh7cdJE772PNqOFu36kWFbrGc7BprMaRDeEikH3jIm
	3yT+slLl/Ed32WbSnb5npoSRq+qK6145bwiHkP1x3fo7XyxMbivom5zZjZ+lM5s=
X-Google-Smtp-Source: AGHT+IFz1KXw55V676KHOL/rzoBQjJ9Rihc/CWALu4Z7kIN17vZX/My8C/6xcsm62UiChBonG2y1pw==
X-Received: by 2002:a05:600c:450c:b0:413:1285:6e40 with SMTP id t12-20020a05600c450c00b0041312856e40mr442329wmo.20.1710349912671;
        Wed, 13 Mar 2024 10:11:52 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id ay23-20020a05600c1e1700b00412ff941abasm2920026wmb.21.2024.03.13.10.11.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Mar 2024 10:11:52 -0700 (PDT)
Message-ID: <ef4da1f6-d3c5-4484-8df5-1a04df4453a0@baylibre.com>
Date: Wed, 13 Mar 2024 18:11:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/18] ASoC: codecs: mt6357: add MT6357 codec
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
 Nicolas Belin <nbelin@baylibre.com>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-12-4fa1cea1667f@baylibre.com>
 <9891855d-2284-42e4-9d3a-35ba406540e8@sirena.org.uk>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <9891855d-2284-42e4-9d3a-35ba406540e8@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 26/02/2024 17:09, Mark Brown wrote:
>> index 000000000000..13e95c227114
>> --- /dev/null
>> +++ b/sound/soc/codecs/mt6357.c
>> @@ -0,0 +1,1805 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * MT6357 ALSA SoC audio codec driver
>> + *
> Please use a C++ comment for the whole comment to make it clearer that
> this is intentional.

If I do that, the checkpatch raise a warning:

WARNING: Improper SPDX comment style for 
'sound/soc/mediatek/mt8365/mt8365-afe-clk.c', please use '//' instead
#22: FILE: sound/soc/mediatek/mt8365/mt8365-afe-clk.c:1:
+/* SPDX-License-Identifier: GPL-2.0

WARNING: Missing or malformed SPDX-License-Identifier tag in line 1
#22: FILE: sound/soc/mediatek/mt8365/mt8365-afe-clk.c:1:
+/* SPDX-License-Identifier: GPL-2.0

even if I put:
/* SPDX-License-Identifier: GPL-2.0 */

IMO, the checkpatch tool should be fixed/update first.

-- 
Regards,
Alexandre

