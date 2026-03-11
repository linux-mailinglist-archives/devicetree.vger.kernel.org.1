Return-Path: <devicetree+bounces-274188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DgkL62JsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:26:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C30E266771
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:26:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B77630B6C24
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4CE33DEACD;
	Wed, 11 Mar 2026 15:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="L8jzkFdr"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE0E3DF013;
	Wed, 11 Mar 2026 15:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773242555; cv=none; b=YmtWI8HhXvr11GWrHtm0u5h55CjPlI712CucOfb3VQumQn5mSAPPRqxC3t3fDrFA/5biM09weuqIvigma6kUO8QIA1IMCRVvEvGq5dr2s0B+/97+01cfpT7TeR4f3LPcJ68dJxGXy4E7E7KBZgI30IENImroYghAPREA4qPl+vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773242555; c=relaxed/simple;
	bh=IdxTmoN8eV9XdykyGPCgHBaOAlPELS+eBRDUCEUQl7E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bfoWb4Y3PQ+lRQ4wnV2nufSLZi7R+zCCXVtctM2N1FsGor8ocRqqJbpGzNFi3Z1BueNmYBs16GBFBXlEQMZMveZLGXRPewXCgLUU59EMbbljAhKow6blcRlKgg/xTjvdkB7iluykca+nO7wva8MRBdfL5p6qJHP5P35A9p6H+4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=L8jzkFdr; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=dknpLbwPC6M9r55ZzYVfKb09gY6bN4LTaa3m33L/TiY=; b=L8jzkFdrQk/c7X8SpYZS95Pc42
	xgsy/wKAVxGuLTLf8VwXoKSfRnjFcQ3NuB2svPosKPdvwrXMjVhkBembMnx3oMP6OdjZmCK163EKd
	2JmUjqlvYKXw3JAIOM5yOfAsM/3EYzf5rifM6Ss7M7fcYHY6pextIR264ATw9VhMZ/gTJG1BCXeGz
	3XwDpYGprzsgTIF4Wa2mXi3qG3H4eNwOds23xzVP7Y0wYubRQGRw7BRUcXGEJXbxDXyezeWmCA6jl
	pdrKpRMYh5qjd+oOZI6ezD5KuRoIiB9Qcs+xYTzo9LT0yu+2YKe5rHavDpQaw0taTF6iqlky0ALv8
	0A0cHf/A==;
Received: from sslproxy04.your-server.de ([78.46.152.42])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0KkM-0000PO-1D;
	Wed, 11 Mar 2026 15:41:14 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy04.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0KkL-0002q6-2d;
	Wed, 11 Mar 2026 15:41:13 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Cc: imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@ew.tq-group.com, linux-clk@vger.kernel.org
Subject:
 Re: [PATCH 6/6] arm64: dts: imx93-tqma9131-mba91xxca: Add LVDS display
 overlay
Date: Wed, 11 Mar 2026 15:41:12 +0100
Message-ID: <4338185.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260311143217.1700704-8-alexander.stein@ew.tq-group.com>
References:
 <20260311143217.1700704-1-alexander.stein@ew.tq-group.com>
 <20260311143217.1700704-8-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Virus-Scanned: Clear (ClamAV 1.4.3/27937/Wed Mar 11 07:24:53 2026)
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274188-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,gmail.com,kernel.org,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tq-group.com:email,tq-group.com:url,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 3C30E266771
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Am Mittwoch, 11. M=E4rz 2026, 15:32:10 CET schrieb Alexander Stein:
> This adds support for Tianma TM070JVHG33 LVDS display on interface X11/X12
> on MBa91xxCA.
>=20
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Please disregard this patch. I accidentally sent this obsolete one, which h=
as
a typo in the subject.

Thanks and best regards,
Alexander

> ---
>  arch/arm64/boot/dts/freescale/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts=
/freescale/Makefile
> index 64fe9487b1003..60aafadce0725 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -418,7 +418,9 @@ dtb-$(CONFIG_ARCH_MXC) +=3D imx91-11x11-frdm-s.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx91-phyboard-segin.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx91-tqma9131-mba91xxca.dtb
> =20
> +imx91-tqma9131-mba91xxca-lvds-tm070jvhg33-dtbs :=3D imx91-tqma9131-mba91=
xxca.dtb imx93-tqma9352-mba91xxca-lvds-tm070jvhg33.dtbo
>  imx91-tqma9131-mba91xxca-rgb-cdtech-dc44-dtbs :=3D imx91-tqma9131-mba91x=
xca.dtb imx93-tqma9352-mba91xxca-rgb-cdtech-dc44.dtbo
> +dtb-$(CONFIG_ARCH_MXC) +=3D imx91-tqma9131-mba91xxca-lvds-tm070jvhg33.dtb
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx91-tqma9131-mba91xxca-rgb-cdtech-dc44.dtb
> =20
>  dtb-$(CONFIG_ARCH_MXC) +=3D imx93-9x9-qsb.dtb
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



