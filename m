Return-Path: <devicetree+bounces-261895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEJMNOfbgGnMBwMAu9opvQ
	(envelope-from <devicetree+bounces-261895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 18:16:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A27CF72F
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 18:16:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 41CD03007AF9
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 17:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A723816E0;
	Mon,  2 Feb 2026 17:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Pd8zf8gx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com [209.85.161.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848AA239086
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 17:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770052192; cv=none; b=KH2zARUbivntqud5GDvnlUU1DJ684cwvypldstXedn3c0Ek81o4CO9gZGRM5Tvs5UBnp1ofD59wmNExJYnkfH1ZgFADOroroKVkGH3esytFE9sI+IQ6+S2w9EG/0a7nSG+3JSpufo1gL5Ezz6L88VFnk+27wVEjMCgQCwq7aF+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770052192; c=relaxed/simple;
	bh=62cDRnOEmrtPUpKLW3SXBaOhGzKfxgXAWnqT/sNh0MM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EjYIvbbhx+/+Iz4rKDRemEDD2/X4PXuh9iuj8OKbvBBjUmEVdziueklAmSeVJI/iDg1Y8EugWJzTi4c/hUiUFrbpP7i1EeWtGAwRSYg/11EAgSTX72TQHWSr7GY0jeBVg8jKyaAfPCapLChHARYrw9tyXt2AFRQAPo+PMuPlA6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Pd8zf8gx; arc=none smtp.client-ip=209.85.161.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f66.google.com with SMTP id 006d021491bc7-662feac8228so2602746eaf.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 09:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770052189; x=1770656989; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nMW/oMHowzkhOZv+qy1zpKgPYKu08+oUM+G5DAE6Clw=;
        b=Pd8zf8gxFNC61PCYiIvhl+f2c+cIHIPb7kCZUfp8o2ieS2CyfgKixrHs2ayjxNSHjC
         YxrLRo6s3cd55ENTS1kSvbbZ0+KXfX2F3Juk0/3rx5lu+G9LpQVdRj71B5xzYNp8dA24
         W1UqKtI29pOEnGEpi2tt8T0RDNpr0alGIrmTvI/uIYY16NI0rUnPp7kxVoGgynbXee2H
         OmAATcVVzRgwDTT6Q0KBaeCVslq428YNu3q9gCGHR2I5Twh88ISl9BX1OMER/NfpdNvE
         rpUuBt1ut2C7ST0tLeOdHUsabGej1XraQqGlV0o1htFxZL4FPsymYixPNlDwLzlyXq6H
         GfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770052189; x=1770656989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMW/oMHowzkhOZv+qy1zpKgPYKu08+oUM+G5DAE6Clw=;
        b=aWGxfjV5a32LfbtvwpdDJ3pDp0/C2aU7ptHRFhrYzmIOqtYg3k/0JIO2OtuxUmtlL6
         C45v8LvOCu46e8MAoweop6ZW267pQGPcQmymTsRZ2lbUuR4eEwagyJRoVcfDN4xl5+jM
         kon6UqsfSfC2V51JeiyBlH1lkTlHxY/0DUPphx9Kj5tRXyFZMwiuP0TDpQIxjvNdZR2B
         gnUirOQJAiwyvbaAwGgfTMFPyudsClUZGcpVu+69MQ+uiP+cplEFP0/7+rtLTEgr5g4o
         Bjy6ZVo9PS2zdH6aNUArp7WunshVjVHih4JTAFApbHK2fJBk71zekOyZUnpvauW4bIYq
         kRhA==
X-Forwarded-Encrypted: i=1; AJvYcCVk+kBYaRVYLQNMRcpCwsZab2WPWFzWQ5bANhU9SBmv9zE8dqXhG+oTHWA0E/DrqCO2OJlq0b0opIRZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxkgVLrorNA/3+ctL05Ala63R9bV8gTDISUuFMvS73emVfipYf9
	pfbrArmOT8o29shKvyCXVQnxrwbbmjcNCAQP7Z4Lmb5+Jh7CTR54lOsNNUX81dprS7E=
X-Gm-Gg: AZuq6aKyuzwOBUxLCQ5sSXzYLDKdd/0uOVio1Qz9kJJO6Eys0FFwZqq+4pQLTBwKq0+
	nnktEwJrAstOyIWtrxjeaOgHeYVsu9AcYs4aXS3KRGMqZ3XTYF49ZsJAommmXMYTgceNx6sI69c
	rY2Ni/kXvj5SkdIRt6ixSbpzy7P8hmaWkKgCN3Oy9lU80F3g9Pmc6lfwbPNxeVpuUo85Sgh5t/i
	y8a0MTDxqSykyiOYy5Mp3djiwCQFCkKOrL4iK0+ei7jICVEoVNSc4g6J60W5pwe+Y0jbvxdYBft
	NG7z2DXQutUHVhjiH7hrlM++6jTVVvSKmcNukGweXTsdd7IqZLewRfenNL13h3+av40IBLGjpmo
	uPTBqFdHTfV1rqYpvHH13iFNFuwOSAwad5S+ZiIt9Memvw12C9mHBxP/UwzJkhaEHecSMNO0hfZ
	xcGpeHhFJ/V/RP8gUv39NWAXQ9o1gKicjaUUvIwImc/trylKKK3eD73AV5X2rXvW+qiInXEtM=
X-Received: by 2002:a05:6820:220d:b0:662:fabc:b108 with SMTP id 006d021491bc7-6630f008ef9mr5758808eaf.5.1770052189360;
        Mon, 02 Feb 2026 09:09:49 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:3695:6954:27c2:42ef? ([2600:8803:e7e4:500:3695:6954:27c2:42ef])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4095756cb0bsm11668068fac.18.2026.02.02.09.09.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 09:09:48 -0800 (PST)
Message-ID: <c616cc63-35fb-49a5-bd1a-ac559574c32d@baylibre.com>
Date: Mon, 2 Feb 2026 11:09:47 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8365: fix infracfg_nao node
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Amjad Ouled-Ameur <aouledameur@baylibre.com>,
 Alexandre Mergnat <amergnat@baylibre.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Cc: Fabien Parent <fparent@baylibre.com>,
 Julien Stephan <jstephan@baylibre.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20251216-mtk-fix-infracfg_nao-compatibile-v1-1-d339b151ac81@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251216-mtk-fix-infracfg_nao-compatibile-v1-1-d339b151ac81@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261895-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,1020f000:email,0.155.183.72:email]
X-Rspamd-Queue-Id: E2A27CF72F
X-Rspamd-Action: no action

On 12/16/25 4:57 PM, David Lechner wrote:
> Use correct compatible string for the infracfg_nao: node and remove
> the #clock-cells property.
> 
> Likely this was copied from the similar infracfg: node. However,
> infracfg_nao: is just a syscon node with it's own register definitions
> and is not a clock provider.
> 
> Fixes: 6ff945376556 ("arm64: dts: mediatek: Initial mt8365-evk support")
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8365.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
> index a5ca3cda6ef3..4116f96c81a9 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
> @@ -537,9 +537,8 @@ iommu: iommu@10205000 {
>  		};
>  
>  		infracfg_nao: infracfg@1020e000 {
> -			compatible = "mediatek,mt8365-infracfg", "syscon";
> +			compatible = "mediatek,mt8365-infracfg-nao", "syscon";
>  			reg = <0 0x1020e000 0 0x1000>;
> -			#clock-cells = <1>;
>  		};
>  
>  		rng: rng@1020f000 {
> 
> ---
> base-commit: 6987d58a9cbc5bd57c983baa514474a86c945d56
> change-id: 20251216-mtk-fix-infracfg_nao-compatibile-ba543769f5b9
> 
> Best regards,

Hmm... it looks like someone sent the same patch (actually better
because they fixed the node name too) quite a while ago [1], but that
patch didn't get picked up either. So I suggest to drop this patch
in favor of that one.

[1]: https://lore.kernel.org/linux-mediatek/20250502-mt8365-infracfg-nao-compatible-v1-2-e40394573f98@collabora.com/



