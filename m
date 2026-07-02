Return-Path: <devicetree+bounces-319487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 84t3DpOSRmo4YwsAu9opvQ
	(envelope-from <devicetree+bounces-319487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 18:32:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF33A6FA398
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 18:32:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DTzzzVJN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319487-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319487-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6DDA3301B022
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 16:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78AB03A59B1;
	Thu,  2 Jul 2026 16:27:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F61E33859C;
	Thu,  2 Jul 2026 16:27:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783009641; cv=none; b=GZEqlZKzAw4tXYpkXE2gr4yXfoAOjaFlDYKexhy44dMpH0bXVOS5uq/jtDKek9WvRpkiLXuS/D64Cn4WoP4I8fATDW2lXNlbf6BrjA2uMMHod/Vo0fbKJaulCsqaEfBLzngUbwphryYBIxhIdVAXO5MsrMBZ036tOqeP1CNUmyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783009641; c=relaxed/simple;
	bh=csOgkJiX1ZLoiMdcNIG9gIC2SSERDjlJCL2ZBAotkaQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Wh3TpzdkBUV23C6YOvOIzF5XwAYPZv76aID1VKzF97B71kmv55BjRHjB/RnIObrZcLzFYUtIs8a9F2aTVBj6bV+xLkllQeVWElOdJt1d3NGu/oV/878usYX2lTYhjLJUZj/s9pnegG6bSG35Vw8u/A7J8woYPdrUePgo75YbFsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTzzzVJN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 573FE1F00A3D;
	Thu,  2 Jul 2026 16:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783009637;
	bh=3OnABRpYmVyOew1BB7l34CeJI8P52XjOQ/iUUyUh1jg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DTzzzVJN5a+57/sRdbaRFGYfBhNNNs8LpGn33VEwqD2T3Ze0p8W+GRDuTGv0KZaWL
	 PHwO7PJtjBAvrecbVN4zkpheS3vWOg2uKRhPgTluwCpiF/qCwvdiOIaVWGvFe2Gg1+
	 J3oqmgzi46an31k3Q2l6FloBMPiZ69YS053D1BbTDiFUXVi/Uv6LxCd7IWGfVArXoW
	 NdG0aZvBqP4sj95PelY9u7d3qM/eTn7O5UP2wq3Y6A78kWrgggxK/h0w09R9PmNW7Y
	 DK8+BkbhxKhDwRsb7hUXYSNWf3aRuI8pcXsoWkjwTCKjb/8mczs9SWXmaPP8kLa1Bd
	 aJb3QRO3+UYfA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 7/8] arm64: dts: imx8: add camera parallel interface
 (CPI) node
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260702-imx8qxp_pcam-v7-7-b47d9e363400@nxp.com>
References: <20260702-imx8qxp_pcam-v7-0-b47d9e363400@nxp.com>
 <20260702-imx8qxp_pcam-v7-7-b47d9e363400@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 16:27:15 +0000
Message-Id: <20260702162717.573FE1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319487-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,nxp.com:email,sashiko.dev:url,smtp.kernel.org:mid];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF33A6FA398

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing required `ports` property in `parallel_cpi` devicetree node.
--

commit 1d4cc7458532cecd40b7f34cec88fcc17577ec4d
Author: Frank Li <Frank.Li@nxp.com>

arm64: dts: imx8: add camera parallel interface (CPI) node
   =20
This commit adds the camera parallel interface (CPI) node to the imx8-ss-img
device tree. It also wires up the corresponding endpoints in the imx8qxp
wrapper.

> diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi b/arch/arm64/=
boot/dts/freescale/imx8-ss-img.dtsi
> index a72b2f1c4a1b2..b504f99f6acdb 100644
> --- a/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
[ ... ]
> @@ -222,6 +222,19 @@ irqsteer_parallel: irqsteer@58260000 {
>  		status =3D "disabled";
>  	};
> =20
> +	parallel_cpi: cpi@58261000 {
> +		compatible =3D "fsl,imx8qxp-pcif";
> +		reg =3D <0x58261000 0x1000>;
> +		clocks =3D <&pi0_pxl_lpcg IMX_LPCG_CLK_0>,
> +			 <&pi0_ipg_lpcg IMX_LPCG_CLK_4>;
> +		clock-names =3D "pixel", "ipg";
> +		assigned-clocks =3D <&clk IMX_SC_R_PI_0 IMX_SC_PM_CLK_PER>;
> +		assigned-clock-parents =3D <&clk IMX_SC_R_PI_0_PLL IMX_SC_PM_CLK_PLL>;
> +		assigned-clock-rates =3D <160000000>;
> +		power-domains =3D <&pd IMX_SC_R_PI_0>;
> +		status =3D "disabled";
> +	};

[Severity: Low]
Does this node need a ports child property to pass dtbs_check validation?

The fsl,imx93-pcif.yaml binding strictly requires the ports property in the
fsl,imx8qxp-pcif compatible node. While the i.MX8QXP wrapper subsequently
appends the ports node, other platforms like i.MX8QM that include this shar=
ed
base dtsi do not. This will cause devicetree validation to fail for those
other platforms.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-imx8qxp_pc=
am-v7-0-b47d9e363400@nxp.com?part=3D7

