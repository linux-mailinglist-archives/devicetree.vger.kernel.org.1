Return-Path: <devicetree+bounces-218087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0EBB5A953
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 00:03:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A420E3B0DF2
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 22:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2604274FDE;
	Tue, 16 Sep 2025 22:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZEuvnzma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331CD4A04
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 22:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758060229; cv=none; b=VSkMvWCv3AvpfsmhDGrtJtzRCJQuQEBG+lTqbCfi3ociVPVSzr+SQ00yXHGMrE9VlFWxv3+2zGONVXRPWIHBOK6u6TSt/3RsEuFfzKVx2YJsN7PbRAMcxw+Z7LODOf36MoahN/sthWwp460RNewybhxyunAC78jB2TYjDNnYHZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758060229; c=relaxed/simple;
	bh=rngYmVobiGFs88K9afobninraV2yxLvnoogWo8W+5NM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=DrFb3ycA55wLRguH923TI9ttq2NhPhuzCIcOKMlSVbHQj/Mjzt0xNVbDuFS5svjn1aAIeEBfu7Hc5BWuRizpBwaJinhoXUJg/nrgmSIwfuMd4RVrWtfX8JjbgqEH1/TxlYc82XJHgi0SbyzznLYJId07p1EXooHGZmHl4rNLrzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZEuvnzma; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b0787fdb137so901063966b.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758060225; x=1758665025; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o0Ob/UE4RTVxiwS8RzGBBRyiZqvn0MV4NxGM4WOAL0E=;
        b=ZEuvnzmaJG8e6mGdrfvaoP/Ij6kqyosv9K+1qvc8fjwX0nzYieBGdF4JxZPRaVklHN
         67BDL/7QwUT0Xa9fgRqPsOwvONMbVsThIxrWeVpJI6B2hJvYA5TWnQRnYqWe6Dcxv7df
         WDBVtwnfegrOWXNnKNXi+fuI8qAM3grgkYVHfRMCbNvF5ZRJGm5hyaNhh+X4X5q9a3Qk
         arNpUbt5nJCxDl5s0UgduJqE41PHaVyk1QuhH8NalC4FDRT9M8bKuRAxDP3Uob0ypigz
         DZPSPzW5dZ0fdG/GYGAC4GGGGg9m+eVV4lOQy9ETOJDjYIscerF3L+3WHOx5570VTM3Y
         Xo4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758060225; x=1758665025;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o0Ob/UE4RTVxiwS8RzGBBRyiZqvn0MV4NxGM4WOAL0E=;
        b=vyehGrZkt2bjWn4fnV6gwZJr3+mmE3Q+y1DyTqv2ufJBKlFEak8rkJ+vuTxkpBIv+H
         XUXtMhQh54EZgbY8bX2dt/6rAle69m4mV55KtdRkCl7GcmvtN9ya2l3GtZkRPZlMWr8q
         6BTsZrGwrX8jAORGMerNjNFFxOTzUTBuz/X3MPMXpb3w6ofFNUYdNC7DtJoD7gyZWibt
         A1BBZJCIXjdOP4FtvkW8NTQHGTkOFtpPMcUC68hO3UbRsI1icGXf1UaSMc6Oa6C3DRu+
         EJRvgaDSE9X6kOOWT80csmp7rixCF5czLKYAg28YK+ajypcwqwFmfaRgtysix0ZBg8k8
         Egqw==
X-Forwarded-Encrypted: i=1; AJvYcCWvU6jYPW3kazyyvGRnFwWu+zMM5lCrgfPcGdnEJdu2yEUUuVPomSdk98pMEcZTRO8tzVGfHcfbIi/3@vger.kernel.org
X-Gm-Message-State: AOJu0YxuGY78fdOuPI0WbLqD4J4Ozwy3ODpGWonmXjCMV3J2vvCXi0tD
	ho8N/u3i4nUl5NhrEAMb6CnWch3Zd8o5AQ+HQ9CHonattt67n/dAGgqJ
X-Gm-Gg: ASbGncuMrFc54N6rgmndjPbKyBlDQdJad8+VhM4hqn1xw5zUxQcJPqgyf+Ej4oq7nbE
	FT3scnN8hO/juyaw2I5xyLBvSj6BtMGQulMKJG8GBxtkoFtcFJtaPOT+92I5Nx9+hhyoI40ftdQ
	63eLHCComznjGkfWcOwrIdm+SEg1/4zJ9X51GhInJL8ALJino9ULm6APf4eh3w/ctkawyxlazqR
	7sB2daF8siWcKX9QEoYK0xmZJZZvZq+HpTB/trk3wwe+xgMqD/ri2NnrY78yP0njAiayYIcaKaa
	iBgVgKvG2t3hNE0ClWyf9Za62SN8jADOTQN5PvZsURrdq01f+/WkKjhS44+NRPrbHhctDLoeDVd
	9+eZXEW323h8MJM3ynV/n4oFCfw9I9z55ewIoFO7hvd/24q1UK7jKlQy9zxZmTzg0JIGS
X-Google-Smtp-Source: AGHT+IEQodNvL7Edth6QjxYHTIysPZRAz+uUM7UuZtp4kejKP8E79m/qDu+L/TqlV6RUd269kcVcYg==
X-Received: by 2002:a17:907:9713:b0:b04:8358:26fa with SMTP id a640c23a62f3a-b1bc02f66ecmr1410466b.33.1758060225245;
        Tue, 16 Sep 2025 15:03:45 -0700 (PDT)
Received: from ?IPV6:2001:861:3385:e20:6384:4cf:52c5:3194? ([2001:861:3385:e20:6384:4cf:52c5:3194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b30da43esm1237094866b.14.2025.09.16.15.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 15:03:44 -0700 (PDT)
Message-ID: <235312e0-b912-4e10-874a-e6364131aaee@gmail.com>
Date: Wed, 17 Sep 2025 00:03:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] STi device-tree display subsystem rework
From: =?UTF-8?Q?Rapha=C3=ABl_Gallais-Pou?= <rgallaispou@gmail.com>
To: Alain Volmat <alain.volmat@foss.st.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Patrice Chotard <patrice.chotard@foss.st.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20250717-sti-rework-v1-0-46d516fb1ebb@gmail.com>
Content-Language: en-US, fr
In-Reply-To: <20250717-sti-rework-v1-0-46d516fb1ebb@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



Le 17/07/2025 à 21:15, Raphael Gallais-Pou a écrit :
> This serie aims to rework the display-subsystem node, which was
> previously included directly within the SoC node.  This was wrong
> because it is an abstraction and describes how IPs behave together, not
> what the hardware is.  Instead, extract display-subsystem outside of the
> SoC node, and let IPs describe their connections.  Doing so helps the
> readability, and eases the understanding of the hardware.
> 
> Several nodes have been renamed to stick to the generic names defined in
> the device-tree specification.
> 
> This series depends on another sent a few days ago.  It is not critical
> though, since not having it only triggers warnings when building
> deprecated device-trees.  Please see link below.
> 
> Link: https://lore.kernel.org/lkml/20250714-sti-rework-v2-0-f4274920858b@gmail.com
> 
> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
> ---
> Raphael Gallais-Pou (4):
>        drm/sti: check dma_set_coherent_mask return value
>        drm/sti: make use of drm_of_component_probe
>        ARM: dts: sti: extract display subsystem out of soc
>        ARM: dts: sti: remove useless cells fields
> 
Hi,

@Patrice
Would you agree to make the device-tree patches go through drm-misc 
instead of your tree ? So that the breaking change lands in -next in the 
same time as the driver changes.

I will send another series to convert display subsystem bindings to DT 
schema as soon as the series is merged.

@Alain
Do you prefer to merge it yourself or you rather let me do it ?

Best regards,
Raphaël>   arch/arm/boot/dts/st/stih410.dtsi | 316 
++++++++++++++++++++++----------------
>   drivers/gpu/drm/sti/sti_drv.c     |  18 +--
>   2 files changed, 192 insertions(+), 142 deletions(-)
> ---
> base-commit: b9a572f471993d3e8bf874fcb57f331d66650440
> change-id: 20250401-sti-rework-b009551a362c
> 
> Best regards,


