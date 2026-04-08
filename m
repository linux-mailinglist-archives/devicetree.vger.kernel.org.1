Return-Path: <devicetree+bounces-285903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEa0ENG21mlxHggAu9opvQ
	(envelope-from <devicetree+bounces-285903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 22:13:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D53E33C3A0C
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 22:13:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CACD33007532
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 20:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B5B5342519;
	Wed,  8 Apr 2026 20:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="bYOl87ge"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B247F3537D0;
	Wed,  8 Apr 2026 20:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775679182; cv=none; b=lfX1UWNmE0A/HLhoQZTWs582cL3sKUQgrdc+u9bHsAWZuRINPnCkE7fW5MpU1I8+m9IEnW0vl86c3cl3zwfqsCIHzgKzyiJLGYXNEEZsoGNx+i7IwN8UMTMuEmTtm1yJFz3bDRrcrnv88EdUAPppxqjTWo82ZAYObCJ1vWLmw94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775679182; c=relaxed/simple;
	bh=fAD/LBUxlxtCCHpfRJvXvj0GBYkw+eD5zgBNx+yvv9o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tzXRPevYF5qzqUUtgmjh7KIUkHUwdGeQc3ZmNxqpvVyPRZ1NjxGJqRF5vuH7QFsjwFeFyaxsZ8JFSJp6ao6Fj4WSzZCIARA8QJITuKWh/w/8GRK8SzBiF8Wmxr2CgV2+jfZj0iH+14r0xyYzDdBpTIBdxHGCXc0byrO6RpISe74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=bYOl87ge; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=PAZm2qiLjq3ox5SRNUov0iZclXfp4xGDo+iZ3cySymI=; b=bYOl87ges7J2CytCd1HJET3+o0
	QFXXoxbU7HXqkC304jLeO8cIIW/3s0Min3+36iif/4Ap4uM3pLXRJ+lxseW+JoQfLdrqlmIh+yex1
	1mY831qz88zH3LeL1l4/7+vL2q+3rtb0BD9H3s8Io1wn5jQBOf+IjxcaSOPD2fauD3F8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wAZGd-00FKxK-HF; Wed, 08 Apr 2026 22:12:51 +0200
Date: Wed, 8 Apr 2026 22:12:51 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	Alexander Dahl <ada@thorsis.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: imx8dxl: Add SolidRun SoM and
 HummingBoard
Message-ID: <3024c143-520e-49ea-af17-33344ebf7149@lunn.ch>
References: <20260408-imx8dxl-sr-som-v1-0-ce5a39acd713@solid-run.com>
 <20260408-imx8dxl-sr-som-v1-2-ce5a39acd713@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260408-imx8dxl-sr-som-v1-2-ce5a39acd713@solid-run.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,solid-run.com,thorsis.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-285903-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[lunn.ch:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D53E33C3A0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> +&eqos {
> +	phy-mode = "rgmii-id";
> +	pinctrl-0 = <&eqos_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	fixed-link {
> +		full-duplex;
> +		speed = <1000>;
> +	};
> +};

> +	ethernet-switch@0 {
> +		compatible = "nxp,sja1110a";

....

> +
> +			/* to CPU */
> +			port@2 {
> +				reg = <0x2>;
> +				ethernet = <&eqos>;
> +				label = "cpu";
> +				phy-mode = "rgmii-id";
> +				rx-internal-delay-ps = <2000>;
> +				tx-internal-delay-ps = <2000>;

The eqos is using rgmii-id, this port is using rmgii-id, and you set
the delays to 2000ns. How is this not resulting in 4000ns delays?

    Andrew

