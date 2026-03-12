Return-Path: <devicetree+bounces-274565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBAbIiivsmlGOwAAu9opvQ
	(envelope-from <devicetree+bounces-274565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:18:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 297B427191E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:18:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 650853159B55
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46353BC688;
	Thu, 12 Mar 2026 12:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="f9h1sl3k"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E58386557;
	Thu, 12 Mar 2026 12:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773317677; cv=none; b=hck5xbB5/1C1C2vDMdpIYtVwRyT/KhawI29ZWzbW6oy61fNL4FJJjrZfukRVTfhaFHot1xE6q2s6WjBWwCQ/YRQDc5F6e8k7sm16b928knbAQIuk4pJSX8l6usoOQThdhRycI1w9O1uK4r/kCq64KaU7P2OE6ypwmi9Pma9LNl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773317677; c=relaxed/simple;
	bh=IqUhNPeesS3FAo2ovEXZH3ckLe8oJOWNxsnsoolQ7yM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DtZQbqBa00YzkStG8Uj0z/vgjb+iWXGzrJ4BaxOkcwGvmYIf/yTfEFprTHLEz1oZqdiYsZXBolMJEc/uiYfJ4vdIzB2bD3ggsxb20CKi5sFOsguKVMfTYfSf4QPBwT2tLuZAWqfcgQN9nZmCS9xlhUaqu88Srrbxw11e5/pvqok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=f9h1sl3k; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=GTi1xP4aomP8BeXovObceeMwKoKp0YKGcoGhby5AhPQ=; b=f9h1sl3kHcsVDvq9FQhT51lRtO
	IIPQZZiZhjTj0BUtgtXQq7N/hDJKrXCVmfcFdgT0Q/Tq/R1Ra0cddzun2EXyF/vz6iMMMVe70kgjd
	NmxeJ6ilMR5SWefMfObzEZyXmI9aIQff26/vAXPWo1aBtwiCeAQzuaFXZV5t6TQ/MJEng+SsX5Tdt
	Nxpyg7FiLiNGYEoQc04PQah/BXyFgAdnDZOIlc6+h5UEfbCB/S5LaNAOSwzrcPX8vOyC7rfIbs4jF
	jR79LEZjehVCCJZNNpygIPqWwsl/h9p7pL63/b8kbwWHw6TBf0EmJLnKCfWSEPFkdHQoRs36Dnh5/
	1ke+vYLQ==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0evu-0009e5-2h;
	Thu, 12 Mar 2026 13:14:30 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w0evu-000DFd-0p;
	Thu, 12 Mar 2026 13:14:30 +0100
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 Marek Vasut <marex@denx.de>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@dh-electronics.com, linux@ew.tq-group.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH 06/12] ARM: dts: imx7d: Use undeprecated reset-gpios
Date: Thu, 12 Mar 2026 13:14:29 +0100
Message-ID: <15482175.uLZWGnKmhe@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To:
 <20260311-dts-snps-reset-gpios-v1-6-ea1cc09fba84@oss.qualcomm.com>
References:
 <20260311-dts-snps-reset-gpios-v1-0-ea1cc09fba84@oss.qualcomm.com>
 <20260311-dts-snps-reset-gpios-v1-6-ea1cc09fba84@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Virus-Scanned: Clear (ClamAV 1.4.3/27938/Thu Mar 12 07:24:01 2026)
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274565-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,dh-electronics.com,denx.de,armlinux.org.uk,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[18];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,ew.tq-group.com:dkim,tq-group.com:email,tq-group.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 297B427191E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Am Mittwoch, 11. M=E4rz 2026, 17:08:02 CET schrieb Krzysztof Kozlowski:
> Freescale i.MX6 PCIe host controller bindings through referenced
> snps,dw-pcie-common.yaml schema already document "reset-gpios", just
> like Linux kernel did for a long time.  Use the preferred form over
> "reset-gpio" deprecated since commit 42694f9f6407 ("dt-bindings: PCI:
> add snps,dw-pcie.yaml") in 2021.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts | 2 +-
>  arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts  | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts b/arch/arm/boot/dts=
/nxp/imx/imx7d-mba7.dts
> index e3ee16f1aaa9..a5fc7f80f651 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
> @@ -122,7 +122,7 @@ &pcie {
>  	/* 1.5V logically from 3.3V */
>  	/* probe deferral not supported */
>  	/* pcie-bus-supply =3D <&reg_mpcie_1v5>; */
> -	reset-gpio =3D <&gpio5 12 GPIO_ACTIVE_LOW>;
> +	reset-gpios =3D <&gpio5 12 GPIO_ACTIVE_LOW>;
>  	status =3D "disabled";
>  };
> =20
> diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts b/arch/arm/boot/dts/=
nxp/imx/imx7d-sdb.dts
> index a370e868cafe..ab7cabe5552d 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx7d-sdb.dts
> @@ -456,7 +456,7 @@ display_out: endpoint {
>  };
> =20
>  &pcie {
> -	reset-gpio =3D <&extended_io 1 GPIO_ACTIVE_LOW>;
> +	reset-gpios =3D <&extended_io 1 GPIO_ACTIVE_LOW>;
>  	status =3D "okay";
>  };
> =20
>=20
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



