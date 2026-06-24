Return-Path: <devicetree+bounces-315392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZxpzB3dGPGoxmAgAu9opvQ
	(envelope-from <devicetree+bounces-315392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 23:04:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDFD6C1563
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 23:04:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nDRxaxeS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315392-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315392-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C39B305A465
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:00:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D65C13E5581;
	Wed, 24 Jun 2026 21:00:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE86F3E5574;
	Wed, 24 Jun 2026 21:00:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782334823; cv=none; b=qI542i+xQL6PuhA3Gqt1xdz7yUk9Kj9By3UupbLSeP5LINRTr6+BEZ1oNFddvn+vfXbChioJrNDPlOKpgO9Ho/9Fw+Xs/B4OKwLcsn5+bZoPOuwLvwtvP20WJAfoHtw7R8bJxLLVCcnzepvmp/Q1g5rz7ssg0GQHR+grBewLgnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782334823; c=relaxed/simple;
	bh=ZCGyxl1ZkKNbF8wyVMvLYKOWOlR8yW5Wn3hgWp7PbFk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Jpt8MGLfsmfvGNembNP27O//ga8I2RCj2pHlh6pSGike0kO5ZSOSf8nq2A0j1xBvcn+CnuLw56oGPpnAiFrlxy+J0MIiguwU+s8G8LzDVm/wjUohGdVNCH8+UAGaEZ2myV+lgnCpZ5o6iyrzp7rQHVwGQNyR/rJXYotNAkVZO10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDRxaxeS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DBDC1F00A3A;
	Wed, 24 Jun 2026 21:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782334822;
	bh=ULklWo7c89n6QzIpJ0lpNjTP8gIzMcPtLqsY9g9+eos=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nDRxaxeSIHTWeRPbZ4pY+MuEDblJoBZ9PCzz/NjSNY3Ah0OMyM8BYgiyyInLqBXLN
	 PnBhJgVZWrbw6SLRCYwfiheR9Sq0WowQ5g7RCa2ATYNVK5ZR07J7QlWjcSr+bCcY9t
	 nhYQH3s0ZwsbElivEZ8MCbDvtrSffdy8xOkXh6SSTlfuKuqmAFdWZAdXdSeXYcHgrn
	 xZOKe3U/u2Xk/OEtdk0SuGse4xR522+iBvLrQhaoCSayleXjaiU89aL184J+9R8Fe/
	 Ym8D8kQwM5rdClsT2+SdwiHDbUShx1Od7klLgFaI3IwImTWsql9zZElpuBD8CP7Gzs
	 6zY/ritynhgHA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 8/9] arm64: dts: imx8: add camera parallel interface
 (CPI) node
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: conor+dt@kernel.org, imx@lists.linux.dev, robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260624-imx8qxp_pcam-v6-8-4b3f45920d2f@nxp.com>
References: <20260624-imx8qxp_pcam-v6-0-4b3f45920d2f@nxp.com>
 <20260624-imx8qxp_pcam-v6-8-4b3f45920d2f@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 21:00:21 +0000
Message-Id: <20260624210022.3DBDC1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315392-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,nxp.com:email,smtp.kernel.org:mid];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6FDFD6C1563

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Mismatch between DTS port assignment (`port@4`) and the dt-binding =
documentation which specifies `port@6` for the Parallel RX.
- [Low] Devicetree schema validation error: 'ports' is a strictly required =
property but is missing from the base `parallel_cpi` node.
--

commit 80a1591fa539edb7320ce7a2c3b3f4dda7b4baa1
Author: Frank Li <Frank.Li@nxp.com>

arm64: dts: imx8: add camera parallel interface (CPI) node

This commit adds the camera parallel interface (CPI) node for imx8. It
defines the base cpi node in imx8-ss-img.dtsi and configures the endpoint
connections in imx8qxp-ss-img.dtsi.

> diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi b/arch/arm64/=
boot/dts/freescale/imx8-ss-img.dtsi
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

[Severity: Low]
Does this base node need a ports property to pass dtbs_check validation?

The fsl,imx93-pcif.yaml schema strictly requires the ports property, and
dt-validate processes nodes regardless of whether status is disabled.

Will building devicetrees that include imx8-ss-img.dtsi without extending
this node trigger validation errors?

> +		clocks =3D <&pi0_pxl_lpcg IMX_LPCG_CLK_0>,
> +			 <&pi0_ipg_lpcg IMX_LPCG_CLK_4>;
> +		clock-names =3D "pixel", "ipg";
> +		assigned-clocks =3D <&clk IMX_SC_R_PI_0 IMX_SC_PM_CLK_PER>;
> +		assigned-clock-parents =3D <&clk IMX_SC_R_PI_0_PLL IMX_SC_PM_CLK_PLL>;
> +		assigned-clock-rates =3D <160000000>;
> +		power-domains =3D <&pd IMX_SC_R_PI_0>;
> +		status =3D "disabled";
> +	};

> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-img.dtsi b/arch/arm=
64/boot/dts/freescale/imx8qxp-ss-img.dtsi
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-ss-img.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-img.dtsi
[ ... ]
> @@ -62,6 +62,14 @@ isi_in_2: endpoint {
>  				remote-endpoint =3D <&mipi_csi0_out>;
>  			};
>  		};
> +
> +		port@4 {
> +			reg =3D <4>;
> +
> +			isi_in_4: endpoint {
> +				remote-endpoint =3D <&parallel_cpi_out>;
> +			};
> +		};

[Severity: Low]
Does port@4 match the devicetree binding documentation?

The Documentation/devicetree/bindings/media/fsl,imx8qxp-isi.yaml
documentation explicitly specifies port@6 as the CSI-2 Parallel RX.

Even though the driver configures the hardware correctly with num_ports =3D=
 5,
does adding port@4 here introduce an undocumented port and create a schema
mismatch?

>  	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624-imx8qxp_pc=
am-v6-0-4b3f45920d2f@nxp.com?part=3D8

