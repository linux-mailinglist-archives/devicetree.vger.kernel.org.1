Return-Path: <devicetree+bounces-137015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D993A07426
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5B063A2CE3
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D8C9215F55;
	Thu,  9 Jan 2025 11:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="bebKQrx4"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E151714D7;
	Thu,  9 Jan 2025 11:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736420771; cv=none; b=XNotQ1v7gdIKDPb75iKDR0L8SjHYI/+tswhHjbTO3kudAkA44c880DGQxLTVg9PvpY/KMTbdx0u76cdpLgUX7twtz4KO89Btb+wJLqPDt7RtpGKR3uwsOwLhBa0jVgEy6kkFjFVGYbHFzBX2B6SM7euw16bFPng0WO+ziFvFBM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736420771; c=relaxed/simple;
	bh=NSINwedzb+CJzoeaWNPp6t+VsGjFzCBylsKLc9BhvNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ljgwkdT77z/H2TP/2EivncNoWWTsqBBXTiud1br8ZjzsfCkN6lx63+tVov98LW/lJ47Pc4QaIwxnt+Fv/RXNSqd+3UG75usbKacynNrRo0wd7ThCztIH/ZRdlPQLapaCYnQugFEqj4HNbx134uxxIFpylEJh6tL8D+KBQ1YeLis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=bebKQrx4; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736420767;
	bh=NSINwedzb+CJzoeaWNPp6t+VsGjFzCBylsKLc9BhvNY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bebKQrx4PJq5NB9s3v4vJRKv4kTMaJryl50QSDFYTGLHA+OG48MLHXlhPjUwSsBpo
	 kRXCJ3x/FTRThqPmtdZjN5pwbdwFCK3gXYB9fxJAMT+VmVD2AFKQHBjeWLud5CoXtK
	 1m/XZ0JNYT02b3MUnORnZ6cj90JIoOBCY+Lpq1xmd1kTVDC3OdlMgHn2/9Dcm8AB+Q
	 QeHbu5uv8P/4t5gusqp6qyZ0SA3aJQ0u3dsYT7ZYoGqGVdrTlICojrRMPpoLuZeysF
	 E0tD3EXkJA8Ltgc6KePrZyTIp6Xvy/qV9p1YNplHhjlcwS545sagXH35dDHQtUHci5
	 vTqqC9nQkqgLA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A00FD17E1562;
	Thu,  9 Jan 2025 12:06:05 +0100 (CET)
Message-ID: <21be2199-cf26-4669-afb7-98ab296e2d75@collabora.com>
Date: Thu, 9 Jan 2025 12:06:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/6] arm64: dts: mediatek: add display support for
 mt8365-evk
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
 <20231023-display-support-v6-6-c6af4f34f4d8@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20231023-display-support-v6-6-c6af4f34f4d8@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 09/01/25 11:37, Alexandre Mergnat ha scritto:
> MIPI DSI:
> - Add "vsys_lcm_reg" regulator support and setup the "mt6357_vsim1_reg",
> to power the pannel plugged to the DSI connector.
> - Setup the Display Parallel Interface.
>    - Add the startek kd070fhfid015 pannel support.
> 
> HDMI:
> - Add HDMI connector support.
> - Add the "ite,it66121" HDMI bridge support, driven by I2C1.
> - Setup the Display Parallel Interface.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>


Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


