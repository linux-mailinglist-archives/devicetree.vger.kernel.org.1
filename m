Return-Path: <devicetree+bounces-258619-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIlKHbN0cmlpkwAAu9opvQ
	(envelope-from <devicetree+bounces-258619-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:04:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1896CDE4
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:04:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F19E3002913
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DF3438A9B4;
	Thu, 22 Jan 2026 19:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IacF3okU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070B525C6EE;
	Thu, 22 Jan 2026 19:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769108648; cv=none; b=lXunKU+1I8goy2PyKLDaZBAJbnCayQCB6Jp+YsfFhq1X9NyzqGKd88XyTQBWRSe/NsQJL40x+FsugiiPj3n+XsPq0TLBMo6hP8pcchpUXGXxqlkjLzORUDrFVUOEz2WuSGedtPhacAX1aF1voJNMgLST9MgMnv1m/J/dkQU5qps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769108648; c=relaxed/simple;
	bh=GGNI4GHUk/83jvoB2PweFxVkxnSkX6D4xd6OKpOsssE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hjeZZkRiHpU9I79pyAQgIH3WD+4EDJ8zdg2uBtfhqEmx0IGB/mP6XJ+2jLgLt69qM5P3COPPYwbF04APuypZiNMWdwt80PoX3CzzaSKss5VX2R9ti3seCIZmkgNGo5+HV+mxBd7GrfgRfw1Jaeg2xXakcoYGrTZDTzqcVBOGW8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IacF3okU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35B26C116C6;
	Thu, 22 Jan 2026 19:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769108646;
	bh=GGNI4GHUk/83jvoB2PweFxVkxnSkX6D4xd6OKpOsssE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IacF3okUd4cuRjmez3UIYogvaxcWbxGBjtYmdQ6grRmIORwC7RFpLBNW/xOodsXsm
	 AA08qBM2O6O9xYQrYDqy2bYZOXcQEqt9wdmFOmTBrWufi4SWhhtYs/6ktTn0cpYwOH
	 QOOvQ0Dr/LZT71PSvlwIcN1HkJzVoypC0NhzfDQKFu+y3RGfa0xiXwZ/qwy40znvLd
	 TT6g02FlXPUnPbxeFSWrT2HJTd1nRsZ7h+ESfrA/FCXf39GBSJmDoWdyHhK69N3sGo
	 IgUY7/it/beuz7FYjGJim7ESQS2WGNVVmSTSR0LH6WxK16NDZgAI3xpaVuR4wBNLS3
	 MzhaGxK8zLUtg==
Date: Thu, 22 Jan 2026 19:04:03 +0000
From: Conor Dooley <conor@kernel.org>
To: tzeyee.ng@altera.com
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: socfpga: stratix10: Add emmc support
Message-ID: <20260122-carnival-mandatory-91115c410d74@spud>
References: <cover.1769089199.git.tzeyee.ng@altera.com>
 <32c1ae8735c80629757ace0c35a62da0c40911d0.1769089199.git.tzeyee.ng@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iM19+XLOo0mop+Pa"
Content-Disposition: inline
In-Reply-To: <32c1ae8735c80629757ace0c35a62da0c40911d0.1769089199.git.tzeyee.ng@altera.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-258619-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9B1896CDE4
X-Rspamd-Action: no action


--iM19+XLOo0mop+Pa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 22, 2026 at 05:47:43AM -0800, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
>=20
> The Stratix10 devkit supports a separate eMMC daughter card. The eMMC
> daughter card replaces the SDMMC slot that is on the default daughter card
> and thus requires a separate board dts file.
>=20
> Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
> ---
> Changes in v2:
> - Introduced socfpga_stratix10_socdk.dtsi for common board settings
> - Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
> - Added fallback compatible string "altr,socfpga-stratix10-socdk" in
>   the socfpga_stratix10_socdk_emmc.dts

You forgot to modify the existing socdk dts to use the common dtsi,
as-is you've just moved the duplication to a different file.

> ---
>  arch/arm64/boot/dts/altera/Makefile           |   1 +
>  .../dts/altera/socfpga_stratix10_socdk.dtsi   | 131 ++++++++++++++++++
>  .../altera/socfpga_stratix10_socdk_emmc.dts   |  21 +++
>  3 files changed, 153 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dt=
si
>  create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_em=
mc.dts

--iM19+XLOo0mop+Pa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXJ0ogAKCRB4tDGHoIJi
0rN9AQDk7a/mC3YkLXwJeonpC3fK/YDhAHdUH4b4zaaP5rK0dgEAmn9VyTG3hjyG
XvFe0Nw5Q7oUr2OLaLpIr2zuhwy4Cws=
=s/sr
-----END PGP SIGNATURE-----

--iM19+XLOo0mop+Pa--

