Return-Path: <devicetree+bounces-298560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDY3EayVB2pU9AIAu9opvQ
	(envelope-from <devicetree+bounces-298560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 23:52:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F32555876C
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 23:52:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D885300F5D6
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 21:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E24030F95C;
	Fri, 15 May 2026 21:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P213e4aX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA8F2010EE;
	Fri, 15 May 2026 21:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778881961; cv=none; b=Xa8Qd5TtSetfet5MiLmY/TKEMmHLH6NV/vz7EFMZkJ3KDZK+ohPHr21Gr49iRjwOltdtxXyAHF0Bw/ImwyaBeby58pvq6s6NTvB79ksYW2KE2q3p0cVDYSabczY0cDw5ns7MwFcYDGGWE1yIvQZth9JnJcctNoAWe12gvHx105g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778881961; c=relaxed/simple;
	bh=io1mo3XLPCwCYCHxlFo+KOBQf0uvj9xY+ciVNMK0NxI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iUNAYzW/ogijb/axyvSXZoqKymt0QLNXM7eP/VsZeX5zrAuZU/g9zYefu0yHMhGNHnlAi9RZCVWMglnos8fV4ajypflRP0JGqq7LvKlUj7XCglmZCgy4kzlV5ZYqib7lLYI0BEIqu6Xs6xI1UyfT04Z7S8OGMsxqTcTH0kScOHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P213e4aX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A644C2BCB0;
	Fri, 15 May 2026 21:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778881961;
	bh=io1mo3XLPCwCYCHxlFo+KOBQf0uvj9xY+ciVNMK0NxI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=P213e4aXb9HJvDg8/dZMthaVg/w35t010uFFR4cIyU0eH1vo6+UizfHD2h6SeEiM/
	 XPwvUjjcoksDiLrokomu7n/grMB1lDV8wSTywzV+vB0t+YLSczx/4Srs5R3/NpB71R
	 zP6d6rZ5h7wH9y7WqobfGP44YA+4I9e0yx8PQ0dIxT8t8lMDi6pDnGaoNDMA98E3aD
	 xvYPvrmBCrBOAJN2P1fdFcxn+ADUY5vLxeHXeKJbJFGZhN4cSzl7Oqd2shDHBF3uCp
	 cQb+LsMEI1hstJ6m5SrwnbzrpSuO1SyIOr1bGpvkCe+MOlsAki5CnH7z1iYWdcc/JU
	 zMKHYnHL0d0DQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/6] ARM: dts: imx: add (power|vdd)-supply for related
 node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Frank Li via B4 Relay" <devnull+Frank.Li.nxp.com@kernel.org>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260515-imx25_dts_simple_warning_2-v1-1-b06bff192a05@nxp.com>
References: <20260515-imx25_dts_simple_warning_2-v1-1-b06bff192a05@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 21:52:39 +0000
Message-Id: <20260515215240.7A644C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8F32555876C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298560-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Frank.Li.nxp.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[4.44.29.128:email,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,smtp.kernel.org:mid]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly added `reg_5v` regulator in `imx53-sk-imx53.dts` incor=
rectly has `regulator-name =3D "usb_vbus"`.
--

commit 1eaf7d9176cad41b8d33d56943e5b16020f26bf0
Author: Frank Li <Frank.Li@nxp.com>

ARM: dts: imx: add (power|vdd)-supply for related node

This commit adds required power-supply and vdd-supply properties to fix
CHECK_DTB warnings for several imx devicetrees.

> diff --git a/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts b/arch/arm/boot=
/dts/nxp/imx/imx53-sk-imx53.dts
> index 1a00d290092ad..c1e065359fd2d 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx53-sk-imx53.dts
> @@ -29,6 +29,13 @@ memory@70000000 {
>  		reg =3D <0x70000000 0x20000000>;
>  	};
> =20
> +	reg_5v: regulator-5v {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "usb_vbus";

Is "usb_vbus" the intended name for this regulator?

Since this regulator is used to power the display panel, the name appears
to be a copy-paste error from the reg_usb1_vbus node directly below it.

Defining multiple regulators with the exact same name can cause sysfs
directory collisions and registration warnings in the regulator subsystem.

Would a unique name like "5V" or "panel-5v" be more appropriate here?

> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +	};
> +
>  	reg_usb1_vbus: regulator-usb-vbus {
>  		compatible =3D "regulator-fixed";
>  		regulator-name =3D "usb_vbus";

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-imx25_dts_=
simple_warning_2-v1-0-b06bff192a05@nxp.com?part=3D1

