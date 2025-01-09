Return-Path: <devicetree+bounces-137016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA48A07429
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:06:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B23AC3A5F0D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7D8A2165F1;
	Thu,  9 Jan 2025 11:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="HoikOfyy"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E8921638D;
	Thu,  9 Jan 2025 11:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736420773; cv=none; b=XJ1J5ZPbjR7XktUeYi/9AAzyI1YeIhLIFmRm6YnWbRFV8AichgLt9UbdCmm8iSpehoaQ475a3wSbvamY+lVY7FXSFljSmSkvIypT5DrkqKK59vnDKKa+0oPmss5xJjN2ZpheQtsmRJlSCIPA81mAIqUBtRpHsMMT568HrsVJPlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736420773; c=relaxed/simple;
	bh=3EohmzamWFZhxCTdtmF76ejzTHNzw1Zt3xIVwB2wX44=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c3rzHrpNioeRm6g4DtCOVp4vYziHUohi30xS5rvQfIvkA296rPHJHyC7fqR+otPjB308/WRPK+AO1GL4r3frL1CoYPqW5/em0pNZ57RhZ7kQ+ZgKBomrtUG0Z6jTIXBfTzWqQ0V+R5CuGfhyD5ZQj4otM9M0egR2oHVnMzJf560=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=HoikOfyy; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736420769;
	bh=3EohmzamWFZhxCTdtmF76ejzTHNzw1Zt3xIVwB2wX44=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HoikOfyysXvuN18HEXmzKd+ZzscVgzfMumm2NOPMUpwMfgid7uKPJOd8E4mN2C7zu
	 Ls3vKpF4Rq1OGdoJBoXL1hlE6HCq4JTRNolv+CUCyiQejm7QkA1tZAL6eRv9qHpjaz
	 MCi59+fpss28gnwnMD/Npz/rLdJliEvMiLa/UFIKFyj7I98tYYoHcl7Bz/LA1QP2ZY
	 uLfpDUMNO43HY6UuUqSxv7VySk+rbSiy3BNlGtw2tqhyN1gElXswzvoBniO0WNoxcc
	 5I2xSVaoxBKl0K1G8/D8UbTMh+JByimAh+f0eMnwp/viI8XBbRpjmiRBSgnfJfeGm7
	 UxDAEep48PCOw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5CA3717E1567;
	Thu,  9 Jan 2025 12:06:07 +0100 (CET)
Message-ID: <4d5f2ea2-bc3d-4228-927f-28cc8785644c@collabora.com>
Date: Thu, 9 Jan 2025 12:06:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/6] arm64: dts: mediatek: add display blocks support
 for the MT8365 SoC
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
 <20231023-display-support-v6-5-c6af4f34f4d8@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20231023-display-support-v6-5-c6af4f34f4d8@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 09/01/25 11:37, Alexandre Mergnat ha scritto:
> - Add aliases for each display components to help display drivers.
> - Add the Display Pulse Width Modulation (DISP_PWM) to provide PWM signals
>    for the LED driver of mobile LCM.
> - Add the MIPI Display Serial Interface (DSI) PHY support. (up to 4-lane
>    output)
> - Add the display mutex support.
> - Add the following display component support:
>    - OVL0 (Overlay)
>    - RDMA0 (Data Path Read DMA)
>    - Color0
>    - CCorr0 (Color Correction)
>    - AAL0 (Adaptive Ambient Light)
>    - GAMMA0
>    - Dither0
>    - DSI0 (Display Serial Interface)
>    - RDMA1 (Data Path Read DMA)
>    - DPI0 (Display Parallel Interface)
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


