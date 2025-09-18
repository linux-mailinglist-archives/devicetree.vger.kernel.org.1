Return-Path: <devicetree+bounces-218834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ACBB84829
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:09:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 499D96207EE
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2986C302770;
	Thu, 18 Sep 2025 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ktNmaoJk"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BDA2FFF85;
	Thu, 18 Sep 2025 12:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758197313; cv=none; b=ayCABQM7hHR1tU3WOFUist3arY57DhqfZB5hLJQ0VffjYVK8zVYHpUTGfFUUEfCKuiHkscTeeFSV/VLoujvDlLkmlX53ZZ9cLLeVbi5WkoTxVo4nhg2otvIVnGbl2Zy/GTdk0BPFRYmNj9qSB+Qr6I22uuBiKx68Y+wJnK8xZpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758197313; c=relaxed/simple;
	bh=P0vvBsCMPE9HUr2EnkPlQHcU36fhBR6Uw7Rhq/WgBSE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WWHnbhVTVdnvmBZ8a1v9bHEIcfc+sgPwVbdO7trxp1J3wUtwYJTHmb/VPazxcopdJ9Tk+1KJIin2/kHlwrR/yBbzVlfSH2X6zZtrfcmllO85dWpNLkolAEtKS6EX4g3giVIQAGBBqLuI4fFk2CxrMpTfA7ZL8tA0FrICnVed+Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ktNmaoJk; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1758197308;
	bh=P0vvBsCMPE9HUr2EnkPlQHcU36fhBR6Uw7Rhq/WgBSE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ktNmaoJkLqqALEoAaj1Cs2rF5wWQvvuG7tuopmXTSk1u61yapIkUYhFC3Hb5HlQYx
	 m3f7fQjD1NnjfNbDEaBn2bf1Qgkpbf18m5114gmAW+04pih+QDfVGbuNkpZotnPyRy
	 OIlT27AHjzEEIepJwi2ZH4duRoBaYi1TMo/+jRBK2igslBbzDmjhTMGr46rcdFPvfV
	 TGO67YNI5YcwjVRMF1MzWv9VOmbn1pP442Emvsr3fWJ1GYirtcuta9R4ipSgkAdyHz
	 mm8+Dfb7MiHPKyR2Q9q7cc/S63TAwa0/fiqRyPdXpW8R24wqmntAUrgvXL0qoiB0bB
	 qZIZJtyz0WIYw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9945A17E0DC2;
	Thu, 18 Sep 2025 14:08:27 +0200 (CEST)
Message-ID: <f2eded27-54cb-43a9-ab48-54cb9ecb45be@collabora.com>
Date: Thu, 18 Sep 2025 14:08:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: timer: mediatek,timer: Add compatible for
 MT8189
To: Zhanzhan Ge <zhanzhan.ge@mediatek.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com, sirius.wang@mediatek.com,
 vince-wl.liu@mediatek.com, jh.hsu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20250825033136.7705-1-zhanzhan.ge@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20250825033136.7705-1-zhanzhan.ge@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 25/08/25 05:31, Zhanzhan Ge ha scritto:
> Add the compatible for mt8189 timer to the binding.
> 
> Signed-off-by: Zhanzhan Ge <zhanzhan.ge@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
>   Documentation/devicetree/bindings/timer/mediatek,timer.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/timer/mediatek,timer.yaml b/Documentation/devicetree/bindings/timer/mediatek,timer.yaml
> index e3e38066c2cb..5ceedc3a4f91 100644
> --- a/Documentation/devicetree/bindings/timer/mediatek,timer.yaml
> +++ b/Documentation/devicetree/bindings/timer/mediatek,timer.yaml
> @@ -43,6 +43,7 @@ properties:
>                 - mediatek,mt8183-timer
>                 - mediatek,mt8186-timer
>                 - mediatek,mt8188-timer
> +              - mediatek,mt8189-timer
>                 - mediatek,mt8192-timer
>                 - mediatek,mt8195-timer
>                 - mediatek,mt8196-timer
> --
> 2.45.2
> 



