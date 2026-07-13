Return-Path: <devicetree+bounces-325235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GSBzDfuWVGrUnwMAu9opvQ
	(envelope-from <devicetree+bounces-325235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:42:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FF37484B5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:42:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=OAftTB7U;
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325235-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-325235-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2538F300B53A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C8973909A3;
	Mon, 13 Jul 2026 07:39:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4D7381E86;
	Mon, 13 Jul 2026 07:39:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783928382; cv=none; b=QMyc2iFZqXS7Vs5d/oorOpbmDmH1s1kEkqMS1Irqy4NRsH5cb8569IXDIpTbl4ZUkHlj4X+84YgXWbsa78Vdp4UN2LZxr4HdOrQbwpaPM2kKvzhgfY9a79RpQy1WtD2ClUauCZqrnH47b1SG/Amoo2oR2qkJajfYDx1yIA9C8UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783928382; c=relaxed/simple;
	bh=ksSZ59nZ+tFjcpHFL9xMjgiyHyG/mjmmw4FBXWumJpw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=g5cL+sFmhdX392mpiVQ6CLeofL12Eg9wf5BdzO5baEUcOt2eFQNVc0oqSs6pYJ36oA5IDYiAp1WqgftUsB23hDVDwMVjLlCL05fsal3n+0hVtsHdOpQODXs93jI/CjXTvj8TbWcULZRaphOOEWXBs6gYwfMx7TmLpgi4cprQ7Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=OAftTB7U; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=lQE/wiW/jclgg495wpQG3v/oHjWmW6CVrfT4f354tFE=; b=OAftTB7UCaDl2mOYVvY5EzVa16
	k3ucxR6uZJp2FKYnsFqkvb/2f0jqWt+msIBCkx9ZBDuYKeY72RNe5UMGLC9dVXvDeO7Wp+QLvv9vL
	NL2DaKvFEB8hykhV7wRWmMLnpy/PiXeRMrJ76tMnq7mkAOxkhgvY2Pg+4N+pEEwlS8JLn9RZ9Ggku
	3aUMopvFodI4sfNgC+z/benIdjIW48PPZmu76cb4U7Ujk3A6NY7yZ5WlRRL68lQQKQjnIGbxSbw+W
	Fsd5JrCnQG9IizjZnC4Cv5D2g++BV3vuKzh6h3HQZA2cFLCVRI3DwhFXPjVqfistMtoLjb0ZTBGW4
	RfoBftfg==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wjBGD-000Ezk-2W;
	Mon, 13 Jul 2026 09:39:29 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1wjBGD-000BRr-0n;
	Mon, 13 Jul 2026 09:39:29 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Esben Haabendal <esben@geanix.com>, Esben Haabendal <esben@geanix.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mq: Add DCSS node
Date: Mon, 13 Jul 2026 09:39:27 +0200
Message-ID: <2849825.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To:
 <20260711-imx8mq-dcss-device-tree-node-v2-1-037026d45c21@geanix.com>
References:
 <20260711-imx8mq-dcss-device-tree-node-v2-1-037026d45c21@geanix.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Virus-Scanned: Clear (ClamAV 1.4.3/28058/Sun Jul 12 08:25:26 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-325235-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,oss.nxp.com,lists.infradead.org];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:laurentiu.palcu@oss.nxp.com,m:l.stach@pengutronix.de,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:esben@geanix.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28FF37484B5

Am Samstag, 11. Juli 2026, 12:18:42 CEST schrieb Esben Haabendal:
> Add node for iMX8MQ Display Controller Subsystem.
>=20
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Esben Haabendal <esben@geanix.com>
> ---
> This is basically a resend of a patch from 2020 [1], which seems to have
> fallen through the cracks.
>=20
> I did not notice that patch before sending my v1. As of v2, this patch is
> identical to the old patch, so I have added the Reviewed-by tag from that.
> If that is not proper, please remove it before merging it.
>=20
> [1] https://lore.kernel.org/all/20201125103909.16548-1-laurentiu.palcu@os=
s.nxp.com/

Looks okay so far, similar to the one I was using for tests.
Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Unfortunately the DP/HDMI output driver is still work in progress and last
time I tried (v17 IIRC), it didn't work on my platform.

Best regards,
Alexander

[1] https://lore.kernel.org/all/20260519-dcss-hdmi-upstreaming-v23-0-561552=
4a9c63@oss.nxp.com/

> ---
> Changes in v2:
> - Moved dcss node under aips4 bus.
> - Link to v1: https://patch.msgid.link/20260710-imx8mq-dcss-device-tree-n=
ode-v1-1-fc724dfd574e@geanix.com
>=20
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Frank Li <Frank.Li@nxp.com>
> To: Sascha Hauer <s.hauer@pengutronix.de>
> To: Pengutronix Kernel Team <kernel@pengutronix.de>
> To: Fabio Estevam <festevam@gmail.com>
> Cc: devicetree@vger.kernel.org
> Cc: imx@lists.linux.dev
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mq.dtsi
> index e60872aeeb49..d75710cdb5b4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -1598,6 +1598,29 @@ aips4: bus@32c00000 { /* AIPS4 */
>  			#size-cells =3D <1>;
>  			ranges =3D <0x32c00000 0x32c00000 0x400000>;
> =20
> +			dcss: display-controller@32e00000 {
> +				compatible =3D "nxp,imx8mq-dcss";
> +				reg =3D <0x32e00000 0x2d000>, <0x32e2f000 0x1000>;
> +				interrupts =3D <6>, <8>, <9>;
> +				interrupt-names =3D "ctxld", "ctxld_kick", "vblank";
> +				interrupt-parent =3D <&irqsteer>;
> +				clocks =3D <&clk IMX8MQ_CLK_DISP_APB_ROOT>,
> +					 <&clk IMX8MQ_CLK_DISP_AXI_ROOT>,
> +					 <&clk IMX8MQ_CLK_DISP_RTRM_ROOT>,
> +					 <&clk IMX8MQ_VIDEO2_PLL_OUT>,
> +					 <&clk IMX8MQ_CLK_DISP_DTRC>;
> +				clock-names =3D "apb", "axi", "rtrm", "pix", "dtrc";
> +				assigned-clocks =3D <&clk IMX8MQ_CLK_DISP_AXI>,
> +						  <&clk IMX8MQ_CLK_DISP_RTRM>,
> +						  <&clk IMX8MQ_VIDEO2_PLL1_REF_SEL>;
> +				assigned-clock-parents =3D <&clk IMX8MQ_SYS1_PLL_800M>,
> +							 <&clk IMX8MQ_SYS1_PLL_800M>,
> +							 <&clk IMX8MQ_CLK_27M>;
> +				assigned-clock-rates =3D <800000000>,
> +						       <400000000>;
> +				status =3D "disabled";
> +			};
> +
>  			irqsteer: interrupt-controller@32e2d000 {
>  				compatible =3D "fsl,imx8m-irqsteer", "fsl,imx-irqsteer";
>  				reg =3D <0x32e2d000 0x1000>;
>=20
> ---
> base-commit: 8cdeaa50eae8dad34885515f62559ee83e7e8dda
> change-id: 20260710-imx8mq-dcss-device-tree-node-9df58de085ea
>=20
> Best regards,
> -- =20
> Esben Haabendal <esben@geanix.com>
>=20
>=20
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



