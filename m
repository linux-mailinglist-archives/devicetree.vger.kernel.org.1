Return-Path: <devicetree+bounces-79166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FD1914372
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 09:18:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E9951C22D60
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 07:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A704E3B1BC;
	Mon, 24 Jun 2024 07:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CJWskfdB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E56C18AE4
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 07:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719213521; cv=none; b=EKRSkv9Ew60fegUaR9Wk9bmMV/KABzIybLdymFt44VQkDlBRd5Lo06h6qCyPtLGxIO0vmdr18XdkuKRgjCyOm2KiObH8fXo9Z05Q5CDZ1ZLgzFdU3vW1f/TO+0OQYEhGM0BU7hNUC41cgDmBKg/3fiX2ThC6R79QIkMr2kdcCUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719213521; c=relaxed/simple;
	bh=qV0oW4X9eVVmD+OylM95sSUjHs6EhAuZW6GY+ZdG40E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DKEZPbvBjQdG3NUrbOXpCwjuV6o6Sl/hg/rR+nI/dTSX/UEDynhtVeSH1nArDixCbHlaP/uzjxDfY4Tif1g8Xq3TQ0n5k9g1nYP3SAannqUOHtOxwnJlFJ+hQTOkUBCseItAkXxM67fqzpSf066hzlODcf9BnJV8SKKLNlGpH1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CJWskfdB; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-57cf8880f95so4470016a12.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 00:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719213516; x=1719818316; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VVMa9A6daZ/dRP8VM8IurvG+X0g0NVTgiHoFw7o3XMY=;
        b=CJWskfdBWuzlvsE+E0zrf4PNWgDMl7thQIqyFGaVhlpfv3qNTGG9lC9QEXIlQqCAU3
         uHfXW5ODnnOqc9OCzJ+U6GOk98TU8dEBHrKcGPpdtxNZ7l5q56Pdodf+aOVqrVvvpojA
         vm91HG8gQbJyXMUko3W8RSvg1oBTKlOyKUtbYZnbbn9U+eqAMno+1fSNnuYDBydUjJfm
         ogGNbMsPXE5+hnYHt4RyfZ1PGpbBMw2qgysEP7TwbSwQn0QP4josM1XG/X7AuSwB4Kbu
         fdGt/s82Y5odXcjF9PVHZsDHNaqq34YIoct0c6fo6aDRELtizUp1so/PDq5W3If1KvLo
         F7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719213516; x=1719818316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VVMa9A6daZ/dRP8VM8IurvG+X0g0NVTgiHoFw7o3XMY=;
        b=CEZbgm4dCr8jHOBHTg1+qCcCwHJ6QJ1gC1Mcb8G3B+9+uBUwWznzJP/My0z6TPUmM7
         fZJTRP6DExj+KBiJSAJYRV8iEkCcLP+AMDPI3iiZie4WckaOqwdEBUxkpbhZPzlfqYEf
         StS9CDrfTPfRuGN2Ug/PqXKt0fHHzAZOtnIiEenHz9YqzZAeIdsnFynfjjseAUnKFPsG
         hdnF/X9htn/y9E/aj5nMsNsfimJTf8iUDDZ0vjH242dkHGM9Mj8K9GA+zEbtfs1SSK2S
         Nm6qhIAg13g/Vtb6gE2VekOwL9PLX+cqwjiGD0OGuS4jrzS2j6v+JliJwPx38CEVJ8Wh
         okSA==
X-Forwarded-Encrypted: i=1; AJvYcCVJDmaHEn2oN8RXhbiSj/APkms+uybG9StOR2qlLghM6hxpViH92VrleqC2JLjZfeaqdefrkGaULAEgWZ8WrBrVqVyKeOJYDnrwSQ==
X-Gm-Message-State: AOJu0Yy12u3HODLB13/Uj2xM6TlhlkjDCrTBQklwWOQgxBKbO5ZvrxmC
	uvCM7AuFtAcpL84UUFH29a3JinRHG4bnSQK/tr/LcvB+km9q3mxLDw7Be21vJC0=
X-Google-Smtp-Source: AGHT+IFYuzkC5GcaR7ybJaQuKfvtiTIdzs6hbNIAng1NWd/STYMqVRnXwAQr3lPQRgqXQ/dOhA/qTg==
X-Received: by 2002:a50:d503:0:b0:57d:3ea:3862 with SMTP id 4fb4d7f45d1cf-57d4bdbe7d0mr3049784a12.27.1719213516347;
        Mon, 24 Jun 2024 00:18:36 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d303da378sm4280811a12.18.2024.06.24.00.18.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 00:18:36 -0700 (PDT)
Message-ID: <20fe8bd0-2760-4568-94eb-889b9cdd4339@baylibre.com>
Date: Mon, 24 Jun 2024 09:18:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/15] dt-bindings: display: mediatek: dpi: add
 power-domains property
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabien Parent <fparent@baylibre.com>
References: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
 <20231023-display-support-v4-6-ed82eb168fb1@baylibre.com>
 <CAAOTY_-sk1aoXdG=Wq_fMAtCxqA=VC+GVOMURhaDadXnBqm_kQ@mail.gmail.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <CAAOTY_-sk1aoXdG=Wq_fMAtCxqA=VC+GVOMURhaDadXnBqm_kQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 21/06/2024 17:10, Chun-Kuang Hu wrote:
> Hi, Alexandre:
> 
> <amergnat@baylibre.com>  於 2024年5月23日 週四 下午8:49寫道：
>> From: Fabien Parent<fparent@baylibre.com>
>>
>> DPI is part of the display / multimedia block in MediaTek SoCs, and
>> always have a power-domain (at least in the upstream device-trees).
>> Add the power-domains property to the binding documentation.
> I've tired to apply this patch but has conflict. Please rebase this
> patch onto latest mainline kernel.
> Other binding patches in this series is applied to mediatek-drm-next [1].
> 
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/chunkuang.hu/linux.git/log/?h=mediatek-drm-next

Hello Chun-Kuang,

First, thank you for the review and merge.
This serie has been rebased on top of Angelo's series [1] to
use the OF graphs support.
I have to rebase on the lastest Angelo's serie [2].

[1] https://lore.kernel.org/all/20240521075717.50330-1-angelogioacchino.delregno@collabora.com/
[2] https://lore.kernel.org/all/20240618101726.110416-1-angelogioacchino.delregno@collabora.com/

-- 
Regards,
Alexandre

