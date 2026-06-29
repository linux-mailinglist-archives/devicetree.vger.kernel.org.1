Return-Path: <devicetree+bounces-317155-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JNgZMOeSQmr59wkAu9opvQ
	(envelope-from <devicetree+bounces-317155-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:44:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 305816DCDE0
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:44:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MrzwwQQ+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317155-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317155-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5312031B12F8
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38ACD4279FD;
	Mon, 29 Jun 2026 15:28:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC103E8325;
	Mon, 29 Jun 2026 15:28:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746932; cv=none; b=dYt4bSiSRfjOJ0E/Soweec8/T18NWJjid1AYfEyUvZOE9l/MT+n8D/rJeR6IxV24jHEzoSwoiiPc6K98WyI5F61KmetnnW4d9ut8RtioQHbye+pyH2m3LowXv66Sxr2MucyX8ByzWoB6obfFdd4TDJfWdJ6Tk0SgrGaCZ1jAp6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746932; c=relaxed/simple;
	bh=MY9Ytz6a/CVHuy8kAsfuPgigMi/ENLW3FrEuUpyfYr0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FRBDbgoP2Wyw2SJilGJoEKR3ONezMGsG0tWFIC9N+JtNNoHdX/lUJDUZqG6I9X2Pa+VENU2oBxqCr2/bvZHMa5Dy4PCixdQWVk1TNnS9kx5yM6fHphlCDxzx/bigjtdn+8XThzjolpjiYCDxR7SaQtNvfVsX+kMHoPcMsnOuYEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrzwwQQ+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F9C91F000E9;
	Mon, 29 Jun 2026 15:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782746930;
	bh=qW27OTDiz3DnpChfO6yEsCFBE3/CSllV4f+mYUyrrzM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MrzwwQQ+Miauk7utZ4kljxfZJFbhTAQZyGoAkI47GVl9reTjgp8yJMmk51BdZWXRe
	 n+wWCUXUH6ReblJ5pbswvrR0ZsDb/Tiw3Y5rXyIahI4bp3buMCtuwcx4aAwKOFQKDF
	 SXZ9c2ca5hpBT/tf3YltS6wCF+nLbDDDgvLQlzWifb1vzj8qmSWUjehgOt3RCN6Kxo
	 3Z7WZoafZ2AevenCY4lfvdmAyxhjjB7ReKExL8iupTWOwcoAy+loZuSd/f2wJ/WaI4
	 LXZj4ylzcfK4dOp1NEKcMlA/77mfnWHHGYj4j/49boDwmFK/krMChNqVIwk2cYLi5h
	 6xEl1OAptfnHw==
Date: Mon, 29 Jun 2026 16:28:46 +0100
From: Conor Dooley <conor@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joey Lu <a0987203069@gmail.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: verisilicon,dc: make resets
 non-optional
Message-ID: <20260629-dandy-tamale-4d61723288f3@spud>
References: <20260629053017.4050868-1-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fsQd5dWNHR5ydpXb"
Content-Disposition: inline
In-Reply-To: <20260629053017.4050868-1-zhengxingda@iscas.ac.cn>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:a0987203069@gmail.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317155-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,vger.kernel.org:from_smtp,microchip.com:email,iscas.ac.cn:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 305816DCDE0

--fsQd5dWNHR5ydpXb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 29, 2026 at 01:30:17PM +0800, Icenowy Zheng wrote:
> The only variant supported by the binding now, the DC8200 controller on
> T-Head TH1520, requires two reset lines.
>=20
> Add the reset properties to the required list to clarify this. The
> in-tree th1520.dtsi file isn't affected by this change because the reset
> lines are already populated there.
>=20
> The driver still considers the resets optional, so if another variant
> with no reset line appears, only the binding needs tweaking.
>=20

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

pw-bot: changes-requested
(cos of sashiko)
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> ---
>  Documentation/devicetree/bindings/display/verisilicon,dc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/verisilicon,dc.yam=
l b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> index 9dc35ab973f20..919a900122012 100644
> --- a/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> +++ b/Documentation/devicetree/bindings/display/verisilicon,dc.yaml
> @@ -75,6 +75,8 @@ required:
>    - interrupts
>    - clocks
>    - clock-names
> +  - resets
> +  - reset-names
>    - ports
> =20
>  additionalProperties: false
> --=20
> 2.52.0
>=20
>=20

--fsQd5dWNHR5ydpXb
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakKPLgAKCRB4tDGHoIJi
0lGCAPwKrjkmGAYxO3JfnyREv1sUprkyzcktPSPR3AR4t97QZAD/cUjS/HTujbre
Zi4tcctcaS7mOvmJcrj2VxPFBxDvfAs=
=S07T
-----END PGP SIGNATURE-----

--fsQd5dWNHR5ydpXb--

