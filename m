Return-Path: <devicetree+bounces-100319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C337796D2B9
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 11:05:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DE88281BFA
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6D0B195811;
	Thu,  5 Sep 2024 09:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DlsAb96K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1B41946A9
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 09:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725527133; cv=none; b=tBxhKS1pgn1xt9FYjTCwgxNaSmFJuBHWJI28SiPNKLQOlE+QJOuMvaOcNHjpYK2cR8gxXZNbWqmbSpjL6prnEYFZOC7uLN2neg+sdkjQLmmt4+GHkyI5fpZQYrvqolbyui/kqjz7kNcwwApTAWQe4EA1qrFWQLFmLRjNDuZVxKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725527133; c=relaxed/simple;
	bh=Rlfd/m5gMuPA6CKfPqi6x1MfWzWdzXLoDmrARY163Lw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VbguQe0t/ri1hl5AFX4E2D3sc9a2T/abfgVlOcp8vK8i4oVM8Aty9FmEidxdVmPKqheDM/blHRgkNVFzGeg5mek4NdzLcFiN4nnsFbhWISE2c4gmCMfvIJP4QV4I5kxXFyEpPpxV2/cLXyxxLblcq0IM3cFqo8DIgOkmUz+U1Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DlsAb96K; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-374bfc395a5so296543f8f.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 02:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725527130; x=1726131930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rXkGvmrzjaju+FFxdQOqUz86ayxWamYskoaBHAk4gpk=;
        b=DlsAb96KptiFiyXnhRJ7B/YZPsmgZQM4uJ5+TJgZMakXqRn+pwXOd5D0ioVnXHeJVF
         DDR43EN0g8H2w3iEaWbLH7PQ2gU9KxkpzlODoG9BKrimH66EBoz6ntTDRCV92a4Ihk3/
         AX6qNrJb5tJEc0c971XyyXGYLiYmiwUyhNAhUEkZ/yCM9nRsqFSGKwnZXR88sT3djbfV
         Xjn5UacDo1wwg4l1Gu3+lfQoV2z9Y1p7o/syxQmWZmJnd2NIEJvCbAlMPCa869ciByCZ
         AIGLDNj0yfwklcymUIU0fWSGph3txK6tKVvkbk08qyyzt1/OIXKqSUc04LSTvaSwKzpa
         ZEeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725527130; x=1726131930;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rXkGvmrzjaju+FFxdQOqUz86ayxWamYskoaBHAk4gpk=;
        b=ECDKfMHbz0IrpNS8tqwO7fHT3RzGFEaa9j1sRTAx68dgkl256ReFZtdzbOmcOjhnGq
         agunS4Wxwgyj1xK2+Rg4mAe5JZC1n1aX8Q4SDN7/hFM8Ce7BekKzqtpid/uNsgfjP0tP
         RvRyy1+ST0N0DfTyd6fFNJZJL96MMkklkC4DqeoXMZNaNOl3++9va0C/DvwVfPd77fxX
         nhfoCcE4VlsblozuwXXibCXlskIZ0uRcHbFHG9EjV/Q6gt9Y4ryr8vtPaOWQZj0XPaz7
         cf5OUfG6dKvcLv5riN24Ftm9Xy83oW/gMG7KPc1eBZfhaqbwZ+1QSw+IoxZM3z2eLb1N
         9DnA==
X-Forwarded-Encrypted: i=1; AJvYcCVl05Iiue1vNx52Yiku1TjMaevmnJZA+iz/PAKMKYesydcJTsuaziZrTS2iYtK83bN8h81r6325l5N7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6NTvtgQohNvHZc/zmfQQZQ+/ui9bUe+7wp0Rz7e4TDIp+INBG
	9X1oc8fSFIatVFH6nidJcbAMHO/vImr8zsYJJo4/iW+Z4uqWcv2dSIPi0wBW6dYeVNVWjVNeXy7
	bfQg=
X-Google-Smtp-Source: AGHT+IGs8OizwWXd/YtOsSddAZr8iCEdLMOuc1WNos7Odi5UIAAcNaDDCpxTzJfQ/Nko5h3HZKUMCg==
X-Received: by 2002:adf:e709:0:b0:374:c57e:1ea9 with SMTP id ffacd0b85a97d-3779b847aaamr3083162f8f.18.1725527129762;
        Thu, 05 Sep 2024 02:05:29 -0700 (PDT)
Received: from [192.168.0.172] (88-127-185-239.subs.proxad.net. [88.127.185.239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-375348df4e8sm7155523f8f.115.2024.09.05.02.05.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 02:05:29 -0700 (PDT)
Message-ID: <62bc8ee8-f23e-4cd3-a77a-74cb19e6530e@baylibre.com>
Date: Thu, 5 Sep 2024 11:05:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 12/16] ASoC: codecs: add MT6357 support
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
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Nicolas Belin <nbelin@baylibre.com>
References: <20240226-audio-i350-v7-0-6518d953a141@baylibre.com>
 <20240226-audio-i350-v7-12-6518d953a141@baylibre.com>
 <c386c74c-9008-48ea-ad79-524eb85c370b@sirena.org.uk>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <c386c74c-9008-48ea-ad79-524eb85c370b@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Sorry, I'm gonna send a V8 to fix this ASAP

On 03/09/2024 19:14, Mark Brown wrote:
> On Mon, Jul 22, 2024 at 08:53:41AM +0200, amergnat@baylibre.com wrote:
>> From: Nicolas Belin <nbelin@baylibre.com>
>>
>> Add the support of MT6357 PMIC audio codec.
> 
> This breaks the build:
> 
> /build/stage/linux/sound/soc/codecs/mt6357.c: In function ‘mt6357_platform_driver_probe’:
> /build/stage/linux/sound/soc/codecs/mt6357.c:1824:55: error: too many arguments for format [-Werror=format-extra-args]
>   1824 |                 return dev_err_probe(&pdev->dev, ret, "Failed to parse dts\n", __func__);
>        |                                                       ^~~~~~~~~~~~~~~~~~~~~~~
> cc1: all warnings being treated as errors

-- 
Regards,
Alexandre

