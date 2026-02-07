Return-Path: <devicetree+bounces-263579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KQuL3MYh2mqTgQAu9opvQ
	(envelope-from <devicetree+bounces-263579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:48:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 347EF105A29
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA9F330156CA
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E90E42DE701;
	Sat,  7 Feb 2026 10:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksVO1Ftu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C641222301;
	Sat,  7 Feb 2026 10:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461293; cv=none; b=J8/vtgDHuJoZlm/4bh6pAv6Cp3tQb71jkBVB4Fpaxb6+LQHYiIFf6+42kc6EtVlBQIL2bcSYmvBa5wuYWj6DyS75Hkh/u0VYkjX/sU8h9AmXBK+Rpsn5Mc1ZSmYwmbNAxbd+9SOR1uM1AVrXawx/zxexPec5XRm90fHzY91ZW+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461293; c=relaxed/simple;
	bh=xeIkHvV7X3pvMez0kiFePRC11Tm26GnXlWP39PuhWhU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wcsw2msolz1RkBAz7EnYFC2sUBckb323cS9J3WeqasQ1CF3GY53VQgL+tRuCb8At/irUjaucAxzpK+2LYtAPiWhVLJ+1AUtPDkt5v0G5ZJD9GEp3pcyzSndu6z69MBeepLNfFrWwz77dHe5w+ae5VZavwUgWxAQAq7i9NttM4do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksVO1Ftu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC80BC116D0;
	Sat,  7 Feb 2026 10:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461293;
	bh=xeIkHvV7X3pvMez0kiFePRC11Tm26GnXlWP39PuhWhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ksVO1FtuUTzaYWMGPzjhuSXulWE/KIuHT5l//UyeYCcEqsbaOcoXazouqbnND68zk
	 j9U+sFfkbvvZN+eZlB6DNu0JrC5vKVK37hlGPW14EZEKjmwdpkk2seElekYswT6ZbI
	 JGbmoxU1vNU0xscvmrIDGby7LIN7yQjwUz0LwMxV6YdLUlCReQU9nmAWuSSxmXDXOH
	 3Iq7dQBz+FlWE9yBO6WsUT4PyE4OzBFXLBOMpKJMFbIhJmjHg1ypYpvmdjfU7AuKU/
	 lt5CFqR+ho3L1sZ4yzABCumZkEGbbjS2bYbEPyG7DCwfv7870p16qBfL30HtMS00qe
	 w9udnIWkQDllA==
Date: Sat, 7 Feb 2026 11:48:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Ze Huang <huang.ze@linux.dev>, Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-riscv@lists.infradead.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, spacemit@lists.linux.dev
Subject: Re: [PATCH 1/2] dt-bindings: phy: spacemit: add regulator support to
 K1 USB2 PHY
Message-ID: <20260207-dancing-finch-of-chemistry-f98cf2@quoll>
References: <20260206100009.873182-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206100009.873182-1-amadeus@jmu.edu.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263579-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linux.dev,gmail.com,linaro.org,lists.infradead.org,vger.kernel.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 347EF105A29
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 06:00:08PM +0800, Chukun Pan wrote:
> Add an optional phy-supply property to describe the regulator
> supplying for USB VBUS.

Why wasn't it there before? USB did not have VBUS?

Explanation is so incomplete I suspect you are patching broken things,
so as well this could be completely different hardware (e.g. there is no
regulator for this block but e.g. connector).


> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
> index 43eaca90d88c..74a1cd5bcdbe 100644
> --- a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
> @@ -19,6 +19,10 @@ properties:
>    clocks:
>      maxItems: 1
>  
> +  phy-supply:
> +    description:
> +      Phandle to a regulator that provides power to VBUS.

Drop redundant part. This cannot be anything else than phandle and
regulator.

"VBUS power supply" for example. But anyway, I don't have certainty that
this is correct hardware representation. It's your task to provide that.

Best regards,
Krzysztof


