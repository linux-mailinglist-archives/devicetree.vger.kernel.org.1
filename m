Return-Path: <devicetree+bounces-270096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMVXFkOrpWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:22:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D320D1DBBCC
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:22:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A34A30882C2
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93951379EFC;
	Mon,  2 Mar 2026 15:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="VUg75ZUR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0FB3FFAB1
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464680; cv=none; b=M5UvtIqU3BX4jjlsv1KUms60HZy5rA2wPYRQiGyWZv31qk+qSl03KOQ/VRuirFDmp/4Yqw3E+QAkGBqtJqCXpPdVF61YhOh7D24/RuO3PNUAur49WtKc4gw/Og99MGB8hr3Lru1jeo1nqwbjday/WqPNa3xCVjWQLFSCbNOic+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464680; c=relaxed/simple;
	bh=L1vH4T6dWBK+NqT4G0zJgugKxi3Ewjq/F5KaiB4JFGE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=F2wCKViWDkeIfnXUZhmmqsyXxZ6rHV5iMYwFoVjspfg/g+y3i9dlyVVpzuUi2ekBFIyHQDOwYNp7dFvasrNhPv7xG5PiDvW3kuMKju4Ajq/CBpQimXTiMb2J6uHb2OpUQwqmEOUI8Fdz8+ouggxZ7s6FZYAHwn+AXxyXcqJgZa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=VUg75ZUR; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 666281A1D5A;
	Mon,  2 Mar 2026 15:17:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3A1965FE89;
	Mon,  2 Mar 2026 15:17:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8CB1F10369561;
	Mon,  2 Mar 2026 16:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772464675; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=CScwP8j93rksIyuNDJIvOZRuSEzape/ji14TrGStkRU=;
	b=VUg75ZURvjstC7NYpKglyHEoSrItp6LFXtWbOCcQbM1w/hK9VSh85lNIqqBbbLXkdUsXc9
	a3UrTxw9ipgOKQAgTj+v6RvCR8YM3tM/DRvqaIYwNjqklYKOmjIp6H5d0ZFdJJ/xhRTAhu
	ajSpm863+EYSkgeCbO2b1HdK5+eP045RvuyzjFelOOCCqvxbrirJs/TSVQxPGh1t1fFYc9
	HUERsf94hEQ47RRI9WbThPZl3e60Et/KZKDY0TU+QfhT+ouibIThOfKAr5C8l039GJ42sl
	HRwdiZH+itK2WB95DZt5CzlloPudKMHcF8jqLDLqdRyEdnMxas8IoiMxW/t4Aw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Elad Nachman <enachman@marvell.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, andrew@lunn.ch,
 sebastian.hesselbarth@gmail.com, pali@kernel.org, mrkiko.rs@gmail.com,
 chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: enachman@marvell.com
Subject: Re: [PATCH] arm64: dts: a7k: use phy handle
In-Reply-To: <20260126113627.2769695-1-enachman@marvell.com>
References: <20260126113627.2769695-1-enachman@marvell.com>
Date: Mon, 02 Mar 2026 16:17:45 +0100
Message-ID: <87342igt0m.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: D320D1DBBCC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270096-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[marvell.com,kernel.org,linaro.org,lunn.ch,gmail.com,alliedtelesis.co.nz,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Elad Nachman <enachman@marvell.com> writes:

> From: Elad Nachman <enachman@marvell.com>
>
> Documentation/devicetree/bindings/net/ethernet-controller.yaml
>
>   phy:
>     : #/properties/phy-handle
>     deprecated: true
>
> New dts files should not be using deprecated properties.
>
> What should be used is:
>
>   phy-handle:
>     : /schemas/types.yaml#/definitions/phandle
>     description:
>       Specifies a reference to a node representing a PHY device.
>
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Elad Nachman <enachman@marvell.com>

Applied on mvebu/dt64

Thanks,

Gregory
> ---
>  arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi b/ar=
ch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
> index 2b5ec4a451e3..0cfcf5f6bde1 100644
> --- a/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-7020-comexpress.dtsi
> @@ -70,7 +70,7 @@ &cp0_eth0 {
>=20=20
>  &cp0_eth1 {
>  	status =3D "okay";
> -	phy =3D <&phy0>;
> +	phy-handle =3D <&phy0>;
>  	phy-mode =3D "rgmii-id";
>  };
>=20=20
> --=20
> 2.25.1
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

