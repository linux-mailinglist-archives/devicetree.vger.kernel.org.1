Return-Path: <devicetree+bounces-269902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OPnKTprpWkaAQYAu9opvQ
	(envelope-from <devicetree+bounces-269902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:49:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5641D6CF0
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:49:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5B3E3029E57
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB8BD32ED2F;
	Mon,  2 Mar 2026 10:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="EszKVqlw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay91-hz1.antispameurope.com (mx-relay91-hz1.antispameurope.com [94.100.132.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE4133D6FA
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.91
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448248; cv=pass; b=jaAke0dwr+qUy9kzfhrcN0Poi5CyYSZL6cIFJPyJx13+SNRZzy2H532wleSE7GoxywJ/7pU815DCoQLqmDn8T9xQgktWS34iBacPF60RZJXwXvCKYIEXMo+1mo0iD+vmm4UjzGmxVPKqtVq7yOwm2uon7Ju4GIPKAhp1ZzLPDOg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448248; c=relaxed/simple;
	bh=Zhg3wd9xAGHuRd/US5knN/LK3wxevhznuToaUN92Usc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o0fWcpHkUbqs1SJGAY8R430aY5QSUt5FzXnzislL53T/MOYYQ1NIqzlMcRJModeTYQu9It1NqzXvTbTlrasprAEiHl/sml/NBA+bKUt5NGducLW+S/k3nKV61UNzUA9P/iSE7FOv8AqX2DKgYeVl5RgvxFhT3gZDG7OCTGBWAgU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=EszKVqlw; arc=pass smtp.client-ip=94.100.132.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate91-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=9o7xK2KLyVLPeKdnPq73iKRcvJgeK10gXor6T1iRFhg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772448176;
 b=rgiwkfC5MPzfCNEr6/Yi5xVH36DoirvgShBSUApqUf7W8yfpNn6SPShgGAErl5pfevZ/qVv+
 eJMM6MPy1yJI6oQktkLlLxO8uJpdQmkRTx+xwRM5+IpoROG9YDXs/y++rzn7lcqW4jy6dRt55Ql
 6YeczPEEVp6XhK3Jbpq736/GWJGLW4Df4P6Oyn2dTftjuFbe04s46B8xnwQa8FIXbnqJpmTt94S
 NyXWoLiphye45D6rjxBvqTuQnLuYMT4ksJJ3pk5OkUTc2vuI4CplaAeL2hQBefmineWo3Cx6CwN
 LR8DzWanN8ASWYCFNSHUa9aJsee2MXjx8PyzPcZXbSnRw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772448176;
 b=Z4n5xafZ0HxH8JBeFPg9p4oW5Tu3xBbEXK0TQOkCIjPZ2J6p/rS8nLurh384TXesjUZNlEe1
 dOqQ0NqdOgB0qVr0dn0W57YXg+F28dJn5edUYyyE91Q0bthPm08nO1BJIkqOb3rb6hq8M51IUxG
 CcfftO1wf2KBYt0rVOEIy76bCckxepw1Cr4hjggar7HTPcDISG0hD10s3YvfD3shI6L0hhKD+po
 Xe8YxJUaoHvx3eRaZLqoFQU/9RvNapJCyUKmILVDUkZ1FubEVc1j5DY7ooV99oxJPEoA77lXXlc
 wh+/Nterrn2xewPWWGUUi05lWv7V2qRgUkXOpxyZBpRHg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay91-hz1.antispameurope.com;
 Mon, 02 Mar 2026 11:42:56 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id D99EACC0CCA;
	Mon,  2 Mar 2026 11:42:49 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Nora Schiffer <nora.schiffer@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, linux@ew.tq-group.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject:
 Re: [PATCH v2] arm64: dts: freescale: imx8mp-tqma8mpql-mba8mp-ras314: fix
 UART1 RTS/CTS muxing
Date: Mon, 02 Mar 2026 11:42:49 +0100
Message-ID: <5083150.31r3eYUQgx@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260302084548.6471-1-nora.schiffer@ew.tq-group.com>
References: <20260302084548.6471-1-nora.schiffer@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay91-hz1.antispameurope.com with 4fPb9l44JYzMpHt
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security:scantime:1.592
DKIM-Signature: a=rsa-sha256;
 bh=9o7xK2KLyVLPeKdnPq73iKRcvJgeK10gXor6T1iRFhg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772448175; v=1;
 b=EszKVqlw2itb85aQRaFPwYtPsUDocmTYqJkPgO1VX76Qyh5vbDagpgbPflabnjTEIEvfaslC
 wZPs8Jfp4gNd/m04MJJpIPOEh96TmbkYfCnKYd2mWaiS9CJIGyWT7gPlFJow3Ktks9zM3LZAhMX
 MeG5LqCzU8EmS8jkAfWl0SXrrlmUJjnWyYAa2VW1ljZSpaxuryTy29IzEoReekpb2RDzicFmzHZ
 9HEDX4802CWMOXC4RGXega90F93h5c6KxmgrZ/z42oemxfI2ScwPpDlqCtoznCqZmmkQRJMIr+A
 d9t8YcU1nnT1dBIiTFfyx+Ysy1ZDXm6F2ABsP4xn82sZw==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269902-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,lists.infradead.org,lists.linux.dev,ew.tq-group.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ew.tq-group.com:dkim,tq-group.com:url,tq-group.com:email]
X-Rspamd-Queue-Id: 0B5641D6CF0
X-Rspamd-Action: no action

Am Montag, 2. M=E4rz 2026, 09:45:48 CET schrieb Nora Schiffer:
> UART1 operates in DCE mode, but the RTS/CTS pins were incorrectly
> configured using the DTE pinmux setting.
>=20
> Correct the pinmux to match DCE mode. Switching the RTS and CTS signals
> is fine for this board, as UART1 is routed to a pin header. Existing
> functionality is unaffected, as RTS/CTS could never have worked with
> the incorrect pinmux.
>=20
> Fixes: ddabb3ce3f90 ("arm64: dts: freescale: add TQMa8MPQL on MBa8MP-RAS3=
14")
> Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>=20
> v2: updated commit message based on suggestion by Frank Li
>=20
>=20
>  .../boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts     | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314=
=2Edts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
> index b7f69c92b7748..1665a5030b993 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
> @@ -848,8 +848,8 @@ pinctrl_tlv320aic3x04: tlv320aic3x04grp {
>  	pinctrl_uart1: uart1grp {
>  		fsl,pins =3D <MX8MP_IOMUXC_SAI2_RXFS__UART1_DCE_TX	0x14>,
>  			   <MX8MP_IOMUXC_SAI2_RXC__UART1_DCE_RX		0x14>,
> -			   <MX8MP_IOMUXC_SAI2_RXD0__UART1_DTE_CTS	0x14>,
> -			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DTE_RTS	0x14>;
> +			   <MX8MP_IOMUXC_SAI2_RXD0__UART1_DCE_RTS	0x14>,
> +			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DCE_CTS	0x14>;
>  	};
> =20
>  	pinctrl_uart1_gpio: uart1gpiogrp {
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



