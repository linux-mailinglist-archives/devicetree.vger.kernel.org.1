Return-Path: <devicetree+bounces-67798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B8B8C9B7D
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 12:39:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4BB61F2254B
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 10:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0944537F1;
	Mon, 20 May 2024 10:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Q17js6Qw"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733B34F5ED;
	Mon, 20 May 2024 10:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716201556; cv=none; b=GQHZWWMwOgDI9wIRGt1ozZG44wSasBoVgczHmTGhVAy9QsTkh9Q/n2jBASDiu8bzww5dJjcJQbrazGYZjTLKOSn/qv822cLnZv0GMnRoVFpFGpRSjCVHvDOUxYFUEEfREhbtX0xVR/jsZF9orRaT3cICiiO9lEsUxaQHEmusQLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716201556; c=relaxed/simple;
	bh=SHW/8R1rZW6GQ0+dQmnBh5FqymykMd2pJcGiHNDCymE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ge2QNeFPMbxuWzDVwMs+h+WHUa5qPexhoLl/LTDP2QU4M92R6oXoINyjDx1d4BEpusHQrb17WckuNU4xYYQsJ5ObHkWMqgdIYqkheZbgF+DCxM7F1Y7uuRntC8EwsANBnAE3ZixO0lwH2glfUGK1tqr3/ii2PkKcsgaNEFU/PzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=Q17js6Qw; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716201553;
	bh=SHW/8R1rZW6GQ0+dQmnBh5FqymykMd2pJcGiHNDCymE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Q17js6Qw8ZLqCwlkxxxvBQmYWUCrDoBpm2WovUL1stZMFnleC358R46dJltv/pShw
	 eSDFiEPvoXDErP7D6+1vTLB6WMXDtSkLydJNLnwoxXC9xrqBUklx/FeGHteTiSHqQY
	 QZg2wpn6yoSQzxHlGa9kWkB0KRjJFVGN6Rr+Xl5OVeFhBSnitViD0i0AAWg6ubATLx
	 yvBeVHVONpXYwm1MLCmbIkyXMUNc3K//FKCPuVUzI2GHO8EzMQQxsfI4yA0zr3YhzY
	 wDWc++6o5z7CbKE4Btd8jnwWBCWK1yWNbmUojdiHwhvv1911vDqGnN5HzpH7LoSr3K
	 VunJhnpC3bRHA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 53DB3378219E;
	Mon, 20 May 2024 10:39:12 +0000 (UTC)
Message-ID: <c4e18dc7-5843-457b-9696-b14de21a1105@collabora.com>
Date: Mon, 20 May 2024 12:39:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 14/16] arm64: defconfig: enable mt8365 sound
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Lee Jones <lee@kernel.org>,
 Flora Fu <flora.fu@mediatek.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20240226-audio-i350-v4-0-082b22186d4c@baylibre.com>
 <20240226-audio-i350-v4-14-082b22186d4c@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240226-audio-i350-v4-14-082b22186d4c@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 26/04/24 19:22, Alexandre Mergnat ha scritto:
> Enable the MediaTek MT8365-EVK sound support.
> 
> The audio feature is handled by the MT8365 SoC and
> the MT6357 PMIC codec audio.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



