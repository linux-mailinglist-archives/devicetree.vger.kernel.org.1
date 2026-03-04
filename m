Return-Path: <devicetree+bounces-270811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGI+Bxd3p2nyhgAAu9opvQ
	(envelope-from <devicetree+bounces-270811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:04:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 532531F8A71
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 01:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4DB883036AB1
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 00:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD3817C203;
	Wed,  4 Mar 2026 00:04:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A297F8460;
	Wed,  4 Mar 2026 00:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.142.180.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772582674; cv=none; b=mlgzz48cSt75Nw8bNpaAKEw+ILSHieNigI3ZD70v1/9pYXdSqVsladOZTq9obGQTcxPrnjci2kUBDlnHjcbk6+1jLYBVJXRIqoek03dpjqeNAUFHpBiew/13MmP9BQLNzhXtHDLK3m7ucgNHRx/omeeDi/L08FnQNTI1w3be/p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772582674; c=relaxed/simple;
	bh=NoO9VN9h9ycImmL7Q40p0gzUHrE+bbaWI1ek1N7e39k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NLFNKONxMI9qnN2Z13CZsKKv2vtHcJGiFpls3jXxFXTCa+7Z4ZgLQVP46lVoxd/iajKMbyaXDORhSEzmyHY1i5CuPZb/KsmP5Y1Imo9qpqn6r3JuCBf5IWOc+3gXy3iXu2fcLYL/iPPrhHAfZKm/TbheW/6LO2HxnvQoXkxnLsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org; spf=pass smtp.mailfrom=makrotopia.org; arc=none smtp.client-ip=185.142.180.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=makrotopia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=makrotopia.org
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.99)
	(envelope-from <daniel@makrotopia.org>)
	id 1vxZiz-000000008Ax-1oPl;
	Wed, 04 Mar 2026 00:04:25 +0000
Date: Wed, 4 Mar 2026 00:04:17 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Andrew LaMarche <andrewjlamarche@gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt7988a-bpi-r4pro: rename mgmt
 port to lan5
Message-ID: <aad3Acno6QWPbw7T@makrotopia.org>
References: <20260303202006.37515-1-linux@fw-web.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303202006.37515-1-linux@fw-web.de>
X-Rspamd-Queue-Id: 532531F8A71
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270811-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,public-files.de,vger.kernel.org,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[makrotopia.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	NEURAL_HAM(-0.00)[-0.957];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@makrotopia.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 09:20:06PM +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> It turns out that the label mgmt confuses users and now official case is
> released where the port is labeled with number 5. So just rename it to
> lan5 to follow naming convension (lan1-4 from mxl switch and lan6 for lan-
> combo).
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---

Confirming that the port is labeled as "5" on the official case sold
by SinoVoip/BananaPi.

    5
[=     =]
[ RJ-45 ]
[       ]
  1G LAN

Reviewed-by: Daniel Golle <daniel@makrotopia.org>

>  arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
> index a48132f09411..1175ee156cb3 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
> @@ -207,7 +207,7 @@ &gsw_phy0_led0 {
>  };
>  
>  &gsw_port0 {
> -	label = "mgmt";
> +	label = "lan5";
>  };
>  
>  /* R4Pro has only port 0 connected, so disable the others */
> -- 
> 2.43.0
> 

