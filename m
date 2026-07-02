Return-Path: <devicetree+bounces-319237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MVGhNftFRmolNgsAu9opvQ
	(envelope-from <devicetree+bounces-319237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 13:05:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F646F6673
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 13:05:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fYp5wMzP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319237-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319237-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D167B31EA1D1
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CFF047D938;
	Thu,  2 Jul 2026 09:47:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0277B3368A2;
	Thu,  2 Jul 2026 09:47:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782985627; cv=none; b=R+oUsjdzRay2Cy79nMPF7UboAASiMIW9s352Bml+Dg6gmt5F/6luP6vx6PvW+2dYnYFmp6wKgrTdreNH6Vop0WmKE+dLJ6EL1VpPiRriU7BKPU5Cf6RPi9n6FRNuDoH0uI0uOu+6b5LyF7jFdpKcw/un5Svhbh7KDBaOkYTV94w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782985627; c=relaxed/simple;
	bh=6iXVgONTwhgqMxN2GVHdDi0p5yvbCUmSkOnHLUnT3aY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=vBCGFfmIOo7YyoB6/AULajghyH2bcVzM3EGtd+0cgInG0twdN1wUNcVnsc4OYkC5uiJgGRo/EgVo2ObhUme311NhrXJlZvuNceWbRTmP5o1KjKXtR0TSD/7q9HW+RxQ//6rgTEnDRogvWcMCMHuIHRgzQQvWub8s96U6ufJZjmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYp5wMzP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8035E1F000E9;
	Thu,  2 Jul 2026 09:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782985625;
	bh=J5pD3h5SfTHnJUVBHbQSpp/4MpRN45lwjHDR+azgb6U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fYp5wMzPUwhK5ZDh4JZKTsd9M9Z9IAqcuRHgj4lIhOcNuu5aVrPZr0iYOH0CfbZ3o
	 gQYwTM1M9xlzUQrGtsXsALfBvGudiTew0Kr+8jbNRl88LjqWKOISvKR8lbPn4OpRXg
	 5VCrTbkbU4K90HRPlYVeblTfweltNL7oqeLHSloFWtw1m/E/lHhQ9Gp04pKaFXX0Cj
	 V9TJ7TUBDTKUg+cfC7WWW8iZkNXgMNjSrwyFpxEPuyVcHgD0gzHbNIfNOeuDa+LP6p
	 E65L+sjoAqwEdYlH0fu9njheVBge8Dq2QSQ16SaCXeaFP7Qld5FAELJscTqzkmSsX/
	 zSHUvXO6kHNDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 07/18] arm64: dts: ti: k3-j721e: Add overlay for fusion
 application daughter board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yemike Abhilash Chandra" <y-abhilashchandra@ti.com>
Cc: Frank.Li@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260702093123.1048575-8-y-abhilashchandra@ti.com>
References: <20260702093123.1048575-1-y-abhilashchandra@ti.com>
 <20260702093123.1048575-8-y-abhilashchandra@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:47:05 +0000
Message-Id: <20260702094705.8035E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319237-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,ti.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,svtronics.com:url,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:y-abhilashchandra@ti.com,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D4F646F6673

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing `bus-type` property in `csi2_phy0` endpoint for `cdns_csi2r=
x0`.
--

commit c46b85eb404e26671d904b1552f797a50e25e19d
Author: Vaishnav Achath <vaishnav.a@ti.com>

arm64: dts: ti: k3-j721e: Add overlay for fusion application daughter board

This patch adds a device tree overlay for the Fusion application daughter
board, which connects multiple FPDLink-III based sensors to TI EVMs. It
configures two DS90UB960 deserializers that aggregate input from up to 8
sensors over the two CSI RX ports on the J721E.

[1]: https://svtronics.com/product/fusion-application-daughter-board-evm577=
pfusion-v1-0/?srsltid=3DAfmBOooMsRAd5ibFOGJaKbjsC3j9-loTPK2wWqsqPq2Adj55g1n=
PluxX

> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-evm-fusion.dtso b/arch/arm64=
/boot/dts/ti/k3-j721e-evm-fusion.dtso
> new file mode 100644
> index 0000000000000..0df2e48a4089c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-evm-fusion.dtso
[ ... ]
> +&cdns_csi2rx0 {
> +	ports {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		csi0_port0: port@0 {
> +			reg =3D <0>;
> +			status =3D "okay";
> +
> +			csi2_phy0: endpoint {
> +				remote-endpoint =3D <&ds90ub960_0_csi_out>;
> +				clock-lanes =3D <0>;
> +				data-lanes =3D <1 2 3 4>;
> +				link-frequencies =3D /bits/ 64 <800000000>;
> +
> +			};

[Severity: Low]
Does the csi2_phy0 endpoint need an explicit bus-type property?

While device tree parsing will likely fall back to V4L2_MBUS_CSI2_DPHY
automatically because clock-lanes and data-lanes are present, the
bus-type =3D <4>; property is missing here.

This creates a minor inconsistency with the identically structured
csi2_phy1 endpoint just below it, which explicitly defines the bus type.

> +		};
> +	};
> +};
> +
> +&cdns_csi2rx1 {
> +	ports {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		csi1_port0: port@0 {
> +			reg =3D <0>;
> +			status =3D "okay";
> +
> +			csi2_phy1: endpoint {
> +				remote-endpoint =3D <&ds90ub960_1_csi_out>;
> +				bus-type =3D <4>; /* CSI2 DPHY */
> +				clock-lanes =3D <0>;
> +				data-lanes =3D <1 2 3 4>;
> +				link-frequencies =3D /bits/ 64 <800000000>;
> +			};
> +		};
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702093123.1048=
575-1-y-abhilashchandra@ti.com?part=3D7

