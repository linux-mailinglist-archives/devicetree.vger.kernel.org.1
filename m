Return-Path: <devicetree+bounces-321959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v/IoG6/cTGpcrAEAu9opvQ
	(envelope-from <devicetree+bounces-321959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 13:02:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCE871AB84
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 13:02:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UNYyDyjn;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321959-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321959-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8577303D2C2
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 10:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80C893AEF27;
	Tue,  7 Jul 2026 10:56:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6670A3B6C0A;
	Tue,  7 Jul 2026 10:56:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783421800; cv=none; b=fvGzOyPsMUrv/pfX4wYdOX9Fqyc/Ji/Tiu4DOxj3GXoNVH2vzmmedjpT5W/LfyoXfTNLqTA4sPHSW/mKEV2gjxsM0oVHWxiSaWKzmaiox4sCV9Os0OMRVfJJrPtEWNqEOqejlaPT51bgbCKMvj+PjtnqCM73sEUVFS1L2mArtqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783421800; c=relaxed/simple;
	bh=WwHQN6VM47AmJxyALgzvhcdaNYITjm41qFy4TxKV4Pg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gqbtqca2sAmdZgtLky+ERj1Ui/Tt6rAnNX3TOD+bpvgdip4ga2bQ17PzV9cv04QHKHAaJvDlml5pMcBdrXT5jtOz7otOfL6kRJpqbAEfcBUH+zu/fGPAuPcvdUuEenpjdvEc4UDmWb31wEINQAN/bM9nSUr9rbMpRok6RzqQYsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNYyDyjn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BC531F000E9;
	Tue,  7 Jul 2026 10:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783421799;
	bh=HlQHk4Tx7tHsYHXnfZWzQb7mDrScjAeO0+K90dIpLek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UNYyDyjnm3qVRvq7KqL6v/ExtKS8+AXsBomw2Xit4eO97aY+OJq/g1zNuGj3I/nku
	 Hy2krPzWLY7lcaI/xGZqslPu8jg9mjXtY3I3/WQJ/bX/ibf6jYfdGoaYt9mhO9jH72
	 8BYFvapowIXApXj1Agw/v+GmSdu8kFV6i16waZJppsDXFw0KQ0OnY0a2NKirgRwYhn
	 uzhkDm1jq7sqi+SvSI2ie5z0obarh9WxUxoYT78nLU8ZqRw/7nB/WvKhWL2vxXJZpX
	 rwAkQrpoGN1FIo8vBKM5Qcc9yDOjnDeHWPiLuY8eKHIGeNGQTSZSZZyXcyEG1XpPzu
	 +h23g4UlHd/Sw==
Date: Tue, 7 Jul 2026 10:56:36 +0000
From: Yixun Lan <dlan@kernel.org>
To: Zhengyu He <hezhy472013@gmail.com>
Cc: Han Xu <han.xu@nxp.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-spi@vger.kernel.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	Wei Fu <wefu@redhat.com>, Cody Kang <cody.kang.hk@outlook.com>
Subject: Re: [PATCH v2 2/2] riscv: dts: spacemit: add QSPI support for K3
 Pico-ITX
Message-ID: <20260707105636-GKH35811@kernel.org>
References: <20260521-k3-pico-itx-qspi-v2-for-next-20260521-v2-0-52bce26e5fd8@gmail.com>
 <20260521-k3-pico-itx-qspi-v2-for-next-20260521-v2-2-52bce26e5fd8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260521-k3-pico-itx-qspi-v2-for-next-20260521-v2-2-52bce26e5fd8@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-321959-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hezhy472013@gmail.com,m:han.xu@nxp.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:linux-spi@vger.kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:wefu@redhat.com,m:cody.kang.hk@outlook.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.linux.dev,lists.infradead.org,redhat.com,outlook.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,outlook.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CBCE871AB84

Hi Zhengyu,

since I'm requesting some changes, so along with the title, suggest
riscv: dts: spacemit: k3: Add QSPI support for Pico-ITX board

On 22:44 Thu 21 May     , Zhengyu He wrote:
> Add K3 QSPI controller node into k3.dtsi, and add related pinmux
> configuration.
It's obvious..
> 
> Enable QSPI on Pico-ITX board, and describe the NOR flash which wires
> to it.
> 
How about combine above and simplify
Enable QSPI with proper pinmux on Pico-ITX board, and describe the NOR flash
 which wires to it.

> Signed-off-by: Cody Kang <cody.kang.hk@outlook.com>
> Signed-off-by: Zhengyu He <hezhy472013@gmail.com>
> ---
> Changes in v2:
> - Add "spacemit,k1-qspi" fallback to the K3 QSPI compatible.
> - Reordered Signed-off-by trailers.
> ---
>  arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 58 ++++++++++++++++++++++++++++
>  arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi | 21 ++++++++++
>  arch/riscv/boot/dts/spacemit/k3.dtsi         | 17 ++++++++
>  3 files changed, 96 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> index b89c1521e664..e90e17895bb2 100644
> --- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> @@ -200,6 +200,64 @@ phy0: phy@1 {
>  	};
>  };
>  
> +&pinctrl {
> +	qspi-cfg {
as you've already defined te label, which make it possible to reduce one indention

&qspi_cfg {
 ..
}

> +		qspi-pins {
> +			power-source = <1800>;
> +		};
> +
> +		qspi-cs0-pins {
> +			power-source = <1800>;
> +		};
> +	};
> +};
> +

-- 
Yixun Lan (dlan)

