Return-Path: <devicetree+bounces-280288-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOeUEKumw2lssQQAu9opvQ
	(envelope-from <devicetree+bounces-280288-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:11:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95520321ED8
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B24783027940
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 09:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4530C3358C2;
	Wed, 25 Mar 2026 09:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpV+TO2d"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F71F3290DE;
	Wed, 25 Mar 2026 09:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774429624; cv=none; b=AhPFyVTNWCSRgu0zwNbc6R/rrL29Vjnn4uuTaFdVFr8ujaaOVbaK2vjq0BRZ97qUQYq4laDaQPtLDV+JleDdYY5rrwYYYeDzrJAxU8a2abuk99uJ6FxhlMqLBdhX7ksM9SRJFbqI+2hQGiUTIFSdkgS7mJZ8IgWsvm3SMrJHcGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774429624; c=relaxed/simple;
	bh=mEZNeTkS5coBoC+v6GfNNQfQ72VosjQVPAuPz8C/Glo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=axWlj7Cuptvi6zdxvNxhNrJFtBlspMQYdKqJXc0LVtsh7DakBw8jjZ7aLmDOwPPFK6E1iZR1zOBY6cYUgCgwVQaxBed9WZFuN6fs40uChG5KejKl694MtCndOSFZerIopjaIpy15kE7/tkMflfJaXaZnTcbWxkQQvuq9KeskyeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpV+TO2d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31EC6C4CEF7;
	Wed, 25 Mar 2026 09:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774429623;
	bh=mEZNeTkS5coBoC+v6GfNNQfQ72VosjQVPAuPz8C/Glo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OpV+TO2d25ZYM3k3+wNaEYuEeVM/lc1Bn4k+HfKZc5Y3m7h57s6vqeKMypO0MP/rm
	 8ktw3KfIhhVCCW1UciIpzPAAoQb/oVPrGpFSmjJ/ZZfCQsRHWajx7kpr93FEnjrfpp
	 9PLGiaaa6yXKLVm/wwY/iIEU3/5NKB1dB02iBcMpzDbL44IFqGNvpYfmSXj5McSFxc
	 VV8tOwvGXPGE3RWw44HtoyIuDv51FHGMT3IucJ3aeqixn4eY71ac5stlKJunTDFB63
	 GLVF5O1I6RP7oVkfHWcXRphGc+KBHf/vB07gMr3ORwIl+NbsbZ5cUkanMKvoddqbI7
	 GwqKwpkpKQD/g==
Date: Wed, 25 Mar 2026 10:07:01 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Khushal Chitturi <khushalchitturi@gmail.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, koro.chen@mediatek.com, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: sound: mediatek,mt8173-rt5650-rt5514:
 convert to DT schema
Message-ID: <20260325-fluorescent-rebel-moth-dedf07@quoll>
References: <20260324074618.145567-1-khushalchitturi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260324074618.145567-1-khushalchitturi@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280288-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,mediatek.com:email]
X-Rspamd-Queue-Id: 95520321ED8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 01:16:18PM +0530, Khushal Chitturi wrote:
> Convert the Mediatek MT8173 with RT5650 and RT5514 sound card
> bindings to YAML schema.

Please use subject prefixes matching the subsystem. You can get them for
example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

> 
> Signed-off-by: Khushal Chitturi <khushalchitturi@gmail.com>
> ---
>  .../sound/mediatek,mt8173-rt5650-rt5514.yaml  | 41 +++++++++++++++++++
>  .../bindings/sound/mt8173-rt5650-rt5514.txt   | 15 -------
>  2 files changed, 41 insertions(+), 15 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/mt8173-rt5650-rt5514.txt
> 
> diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml
> new file mode 100644
> index 000000000000..05bb18006e08
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/mediatek,mt8173-rt5650-rt5514.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/mediatek,mt8173-rt5650-rt5514.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek MT8173 with RT5650 and RT5514 audio codecs
> +
> +maintainers:
> +  - Koro Chen <koro.chen@mediatek.com>
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt8173-rt5650-rt5514
> +
> +  mediatek,audio-codec:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: Phandles of rt5650 and rt5514 codecs
> +    items:
> +      - description: phandle of rt5650 codec
> +      - description: phandle of rt5514 codec
> +
> +  mediatek,platform:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: The phandle of MT8173 ASoC platform.
> +
> +additionalProperties: false

This goes after "required:" block.

> +
> +required:
> +  - compatible
> +  - mediatek,audio-codec
> +  - mediatek,platform
> +
> +examples:
> +  - |
> +    sound {
> +        compatible = "mediatek,mt8173-rt5650-rt5514";
> +        mediatek,audio-codec = <&rt5650 &rt5514>;

Two phandles, so two <> (<>, <>).

Best regards,
Krzysztof


