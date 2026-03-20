Return-Path: <devicetree+bounces-278113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHVHDb8FvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:30:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE5E2D73E1
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:30:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8C873084603
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2737837188B;
	Fri, 20 Mar 2026 08:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="nDhEa0G6"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB1D318EF6;
	Fri, 20 Mar 2026 08:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773995268; cv=none; b=B/MsHENnxGsx/jD8A4pUeNRFLCxCcztvMnEG5mZRiCi04OniNiZh8ko7EUqCXrliipCllarTF9mjW4dDTrGAl/LFCWFm75JUgHOok5eYTPFPUZnwo1innrymeONZXS/we7uO5T14ziagsBL0uacNc9AZRlO4brhszx7B7Nw37A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773995268; c=relaxed/simple;
	bh=jzXGL4RFxsipEaOfoGH4eaQWYGkAqlUCFQ+ktI+lCQY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ax1sMINo9EZ0HnsBZ2GZjTrzeZNT2l6taB/KbVqn5r+d7gWB0ggMFDZZW0k0Yil4FGcXtEOUtSxL3Zq57mFao4Nt8aKWMuJ3fdR7EG4EXXlT1BzSA8uWKjmpjcRpLF9v4kv8Xr51AKixcgIUArXAlTMXtpExCW1L//H703carI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=nDhEa0G6; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773995264;
	bh=jzXGL4RFxsipEaOfoGH4eaQWYGkAqlUCFQ+ktI+lCQY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nDhEa0G6i1GHYmuNE+Pr+aYMGbgbyL/5Oo8oC7K80jjluZX+jQvf/6snlTggWU2Ib
	 SlXeSDrxv7BvfwW5HB/iV4DnEYWrTz9xGh6ELhN7f57+oz2/FlL2m+hSOGkm5Bv9Fj
	 AzgyRkVgVm0oN3PdaFIWZvMY3Dg7EtAJdHBugx6OlrGUgslqtvete5/NMmwwNHW+vp
	 NIIDGxlAXbG8cxiaRoqVoW0Z1jGTuO0pRPlwLIWQ3Z1KrfQM10As/H0SnCGP+hYrA6
	 UrH5khIMTFnYxt+mJUoLUD6JqV3fROp07rUVtaPszPBX7X4/vP+xojJ3U17qT7Zq7Q
	 hx24mj1aOhmZg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5818117E0EF1;
	Fri, 20 Mar 2026 09:27:44 +0100 (CET)
Message-ID: <fa4d8347-e662-485b-b2b7-278a469176e8@collabora.com>
Date: Fri, 20 Mar 2026 09:27:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mmc: mtk-sd: add mediatek,mt8183-mmc
 fallback to mediatek,mt8189-mmc
To: David Lechner <dlechner@baylibre.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Wenbin Mei <wenbin.mei@mediatek.com>
Cc: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20260319-mtk-mmc-mt8189-compatible-v1-1-fb7ef2186c92@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260319-mtk-mmc-mt8189-compatible-v1-1-fb7ef2186c92@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278113-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,mediatek.com,linaro.org,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8DE5E2D73E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Il 19/03/26 21:36, David Lechner ha scritto:
> Change mediatek,mt8189-mmc to include mediatek,mt8183-mmc as a fallback
> compatible.
> 
> This has been tested using U-Boot and the MMC is still working using the
> mediatek,mt8183-mmc fallback compatible, so they seem to be compatible
> enough. And there are no upstream users of mediatek,mt8189-mmc yet, so
> this should not be a breaking change.

Devicetree describes hardware. This hardware IP is *not* compatible with the one
found in MT8183, as it is a different revision.

Luck wants that there weren't too many breaking changes, and that whatever does
change may need some more bits to activate before breaking, but describing this
as compatible with MT8183 is wrong, because ... it's not.

Sorry, but... NACK.

Regards,
Angelo

> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
>   Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index eb3755bdfdf7..9160e449aeb9 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -25,7 +25,6 @@ properties:
>             - mediatek,mt8135-mmc
>             - mediatek,mt8173-mmc
>             - mediatek,mt8183-mmc
> -          - mediatek,mt8189-mmc
>             - mediatek,mt8196-mmc
>             - mediatek,mt8516-mmc
>         - items:
> @@ -36,6 +35,7 @@ properties:
>                 - mediatek,mt6893-mmc
>                 - mediatek,mt8186-mmc
>                 - mediatek,mt8188-mmc
> +              - mediatek,mt8189-mmc
>                 - mediatek,mt8192-mmc
>                 - mediatek,mt8195-mmc
>                 - mediatek,mt8365-mmc
> 
> ---
> base-commit: b84a0ebe421ca56995ff78b66307667b62b3a900
> change-id: 20260319-mtk-mmc-mt8189-compatible-a62da7c5dd7e
> 
> Best regards,
> --
> David Lechner <dlechner@baylibre.com>
> 



