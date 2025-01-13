Return-Path: <devicetree+bounces-138021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 759D0A0B758
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 13:45:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 875B01885557
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 12:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B32222F175;
	Mon, 13 Jan 2025 12:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hBPLmk6G"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81421231CA4;
	Mon, 13 Jan 2025 12:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736772216; cv=none; b=t1rUsYkJhmvhdiWjrg9/l3hr+ZSeX3zx0f9qsgnMQmDv+ZgcRqfnex2aFerspAvGAlV8hWNaEDoA5rdUOwQ2zhvOqvrGqOkBj08w11LP/lV48S8Q0Y2Cly/FbZaUn21cQo2q8z9r3wbIL+ouCRNlBWjLwmQoV6K23Bi72fYUiHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736772216; c=relaxed/simple;
	bh=XqOdrAUyZQEqWO9kl3ygr7Rm5FHHWvXG6zMZ73zjWoI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iuoLjWHPTf0DucWGp/oUOe0vqed1LxK8vnnehK9Ft8r0lcPmeJLiAsfRtBpUVCuJwilDbDcu6xIvLCiDF320UpK+mLuD8S2JmbkCciTWiZWhXD9r0WCC+JXL2EeAT8Z/S7Rf2h6huigDfmZnzVXS/YGOQsbzPAuz8xgA+bsYHaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hBPLmk6G; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736772212;
	bh=XqOdrAUyZQEqWO9kl3ygr7Rm5FHHWvXG6zMZ73zjWoI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hBPLmk6GWQy1vyJIfBrutua3CRI70AufqxQbmPahw15Hj9nSyI1dQSQc6qPqnSAHk
	 qrNtxLP7c6rsf6ufv/DpLShIacZVQ1gdEz91frKosTaIvYfq/N8v9DqRiQrWhZ7/go
	 21Lw5BeLj+GOGAN3x12YRhWxeMmeavLRAqx8hk0o00/uJq5Hg0qa4R0tDsZQ9lrkQw
	 WHwchd+kNiH/8Kf2WDIjNqXvQSAit5h283+B/RSdGazOUKdgqQpc4MnQY7E928d7N9
	 lnnBETKvzKen4SCgbMJrafrG8oLQkfjxqPU68KjLJhAbISI/0dXl82bz0go3d14Qnt
	 /oFEr7Gt0iQUA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 22DED17E04AC;
	Mon, 13 Jan 2025 13:43:32 +0100 (CET)
Message-ID: <97ea80ef-abf4-445e-979a-4357dbae2c2b@collabora.com>
Date: Mon, 13 Jan 2025 13:43:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 1/2] dt-bindings: phy: mediatek,xsphy: add property
 to set disconnect threshold
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250111141542.5007-1-chunfeng.yun@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250111141542.5007-1-chunfeng.yun@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 11/01/25 15:15, Chunfeng Yun ha scritto:
> Add a property to tune usb2 phy's disconnect threshold.
> And add a compatible for mt8196.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
> based on kernel 6.13-rc1
> 
> this property is porting from t-phy driver, due to the u2 phy are similar.
> ---
>   Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 

