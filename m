Return-Path: <devicetree+bounces-287649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPEcIXyf32kEWwAAu9opvQ
	(envelope-from <devicetree+bounces-287649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 16:23:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 419C94053CA
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 16:23:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 08A0730046B0
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 14:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682B433A702;
	Wed, 15 Apr 2026 14:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="PPHL3foh"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A956E2DA768
	for <devicetree@vger.kernel.org>; Wed, 15 Apr 2026 14:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776263030; cv=none; b=hcpUWdqs1FBweDRAMQ4rWe8YId6m0IO0yG0asLyeiQJSx+sbKUYAkJjRpLQNy1ELqWFTYzGol1BYUK+qzNoxdpXOC7uIzqyhopWZkAI/pFT8+tKKmr2+39G8N2MzALCdCY0jYa0mkfNQ8VM7pMk+SJoV1aJfk3hCq8tfmdPrrEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776263030; c=relaxed/simple;
	bh=IOz37JhPeaiFmNYlDLjjsQP3C6aaiAOpfJogLvnHxEU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=bs2gPblKxcqNqBAqPpRzCkRT2GbbuLAYnuM93yyPV+05NtSYCNFP37lKRGbDiWsmm6kpMJtjGDsJJJO1iW0UwZob3TLZzGp6gyHAHudRkAN8yOgwqwtWLzge2oba9vgF3ILK9KPGyDO5R0gmVyhKX8naae9w/mu1QWMAymGURyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=PPHL3foh; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1776263024;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lL7mCvK+q0xGQs3fJVfkD8uIV04NWks6Q4iAT/RCikU=;
	b=PPHL3fohQaJmiY4FQ3bGdoLlnkxD3DisK+130lYMNRBUr9ElwIamQCUE8La68uEnzBM9ll
	Ez9FAtf7bXKW1YLoUZj3crkEVO5b9gunKXpt4z3HN23XsFJ/repsr5s0Qc78hxFvogqE1R
	cF1nPBz/cCsp9zaBAu2oba32v+2j4yHKzLuiAL77aqjiDdZcIJuesxvIyKjN+Nn6kFnCpZ
	vwqUzBhXnf+Bv/tWItCWac1wUOFmqa6ih3jzxcbL2qke2xl374U4NftWpEBUn/8oDX+8LC
	KmBqOC4QwmROWCuofnsiizJBZBK1pvMI5aWI+6vsn0/hSXw2Q2+MZbIPL1YJ0g==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 15 Apr 2026 16:23:41 +0200
Message-Id: <DHTSOV43O2EX.38TGASN7SQEZL@cknow-tech.com>
Cc: "Arnd Bergmann" <arnd@arndb.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Quentin Schulz" <quentin.schulz@cherry.de>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Tianling Shen" <cnsztl@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Replace deprecated snps,*
 props for NanoPi R5S
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Diederik de Haas" <diederik@cknow-tech.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20260401131551.734456-1-diederik@cknow-tech.com>
 <20260401131551.734456-3-diederik@cknow-tech.com>
In-Reply-To: <20260401131551.734456-3-diederik@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287649-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[arndb.de,vger.kernel.org,lists.infradead.org,cherry.de,kwiboo.se,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	NEURAL_HAM(-0.00)[-0.987];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,0.0.0.1:email,cknow-tech.com:email,cknow-tech.com:dkim,cknow-tech.com:mid]
X-Rspamd-Queue-Id: 419C94053CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed Apr 1, 2026 at 3:11 PM CEST, Diederik de Haas wrote:
> The various snps,reset-* properties are deprecated, so convert them into
> their replacements.
>
> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/ar=
m64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
> index 90ce6f0e1dcf..92d044ec696b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
> @@ -85,10 +85,6 @@ &gmac0_tx_bus2
>  		     &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
> -	snps,reset-gpio =3D <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
> -	snps,reset-active-low;
> -	/* Reset time is 15ms, 50ms for rtl8211f */
> -	snps,reset-delays-us =3D <0 15000 50000>;
>  	tx_delay =3D <0x3c>;
>  	rx_delay =3D <0x2f>;
>  	status =3D "okay";
> @@ -100,6 +96,9 @@ rgmii_phy0: ethernet-phy@1 {
>  		reg =3D <1>;
>  		pinctrl-0 =3D <&gmac0_rstn_gpio0_c5_pin>;
>  		pinctrl-names =3D "default";
> +		reset-assert-us =3D <15000>;
> +		reset-deassert-us =3D <50000>;
> +		reset-gpios =3D <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
>  	};
>  };
> =20

Please disregard/drop this patch.

I was recently made aware of 'sashiko.dev' and checked whether it had
also checked my patch, which it did:
https://sashiko.dev/#/patchset/20260401131551.734456-1-diederik%40cknow-tec=
h.com

And it turns out that the concern raised is valid (thanks Quentin!), so
this patch could introduce a regression.
So it looks like staying with the deprecated properties is actually
better (in this case?).

Cheers,
  Diederik

