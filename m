Return-Path: <devicetree+bounces-267987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BrcGFfVnWk0SQQAu9opvQ
	(envelope-from <devicetree+bounces-267987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:44:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DDC189F6B
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 04311306ABDD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFDEC3A7852;
	Tue, 24 Feb 2026 16:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGDK8Y+Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA2C3A63EB;
	Tue, 24 Feb 2026 16:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771951442; cv=none; b=l15Ffy45wnj/O0DRGF9lvFvJ/oOFkhgT9YqbjxJnvB+8/J6lYe8m8HHalQ+JzFFXfOIxhWZHtIpkCSeKbTevHDnZc0btNpF8R3KWNyq97wJtPhUzvDzMjirExi6KNA3snPSt7UOMIAPVIZt/lrRxkEidVFViU1opAXwK64kLqmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771951442; c=relaxed/simple;
	bh=gXg+oZTBJu/SblD9Dy4pemoCyMGBFfdvgntwcCbaSWM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oiC95f2bOoBlEjkZCMCDNtq7/pvfa1rCzF59AONjLmyKrFlEoz+kyb36La8JY/DUCfD2pT3b1Yq0J3D7ExLGUItcrGoGt9ZuCUYBjI33GUgLxlPqwgH/A7pyqM4to+XzN8QMku3PU3F+3HEyDMmAvHk5sqHbtq1ZxPaFMLxgEqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGDK8Y+Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1225C116D0;
	Tue, 24 Feb 2026 16:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771951442;
	bh=gXg+oZTBJu/SblD9Dy4pemoCyMGBFfdvgntwcCbaSWM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UGDK8Y+YXU5iDV9b+yMJ0mfCNxIIY77XBBN9XItZpjVs8FEcOeTZHSPGfs3X6PH5Y
	 NObxaE3cR6s9AOpR1GW5fYKAn+maPmTgAcEK40fNX2a5CorFdnST1TvR08dqKVdO/U
	 /vh2ec5eDoUVSO6p4MiPPORsruqd0J4ePf0MRXs9/M7+suz/VRIer6YLgr6S9BUVAI
	 nb2j5xpP9RlrIu8Ulg3ONLuxkwemddXpTYJbfogMwb35gVN4k2RZnyNlVEbPucJjhy
	 kTsA39dy+CxMwbyhD8suvJD3GfLZbC1RgUcxMI5kgJjqqLXl3JUHduscOUQZUPy5qR
	 k1Mp08KXi6H7Q==
Date: Tue, 24 Feb 2026 16:43:58 +0000
From: Conor Dooley <conor@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v1 1/1] dt-bindings: cache: bt1-l2-ctl: Remove soon be
 unused bindings
Message-ID: <20260224-unfounded-blizzard-3f3adb0eecc3@spud>
References: <20260224152711.3615622-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WotHpSL7+lvOiEQh"
Content-Disposition: inline
In-Reply-To: <20260224152711.3615622-1-andriy.shevchenko@linux.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267987-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:email,1f04d028:email]
X-Rspamd-Queue-Id: E7DDC189F6B
X-Rspamd-Action: no action


--WotHpSL7+lvOiEQh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 24, 2026 at 04:27:11PM +0100, Andy Shevchenko wrote:
> As stated in [1] the Baikal platforms are not supported and
> the respective driver code is going to be removed. Remove
> soon be unused bindings.
>=20
> Link: https://lore.kernel.org/r/20260224150616.3585591-1-andriy.shevchenk=
o@linux.intel.com [1]
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

This feels like it should have been in a series with the driver removal.
If Krzysztof wants to take it with the driver to avoid warnings in his
tree:
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Otherwise I'll revisit this in a day or two and grab it.

Cheers,
Conor.

> ---
>  .../bindings/cache/baikal,bt1-l2-ctl.yaml     | 63 -------------------
>  1 file changed, 63 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/cache/baikal,bt1-l2=
-ctl.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/cache/baikal,bt1-l2-ctl.ya=
ml b/Documentation/devicetree/bindings/cache/baikal,bt1-l2-ctl.yaml
> deleted file mode 100644
> index ec4f367bc0b4..000000000000
> --- a/Documentation/devicetree/bindings/cache/baikal,bt1-l2-ctl.yaml
> +++ /dev/null
> @@ -1,63 +0,0 @@
> -# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> -# Copyright (C) 2020 BAIKAL ELECTRONICS, JSC
> -%YAML 1.2
> ----
> -$id: http://devicetree.org/schemas/cache/baikal,bt1-l2-ctl.yaml#
> -$schema: http://devicetree.org/meta-schemas/core.yaml#
> -
> -title: Baikal-T1 L2-cache Control Block
> -
> -maintainers:
> -  - Serge Semin <fancer.lancer@gmail.com>
> -
> -description: |
> -  By means of the System Controller Baikal-T1 SoC exposes a few settings=
 to
> -  tune the MIPS P5600 CM2 L2 cache performance up. In particular it's po=
ssible
> -  to change the Tag, Data and Way-select RAM access latencies. Baikal-T1
> -  L2-cache controller block is responsible for the tuning. Its DT node is
> -  supposed to be a child of the system controller.
> -
> -properties:
> -  compatible:
> -    const: baikal,bt1-l2-ctl
> -
> -  reg:
> -    maxItems: 1
> -
> -  baikal,l2-ws-latency:
> -    $ref: /schemas/types.yaml#/definitions/uint32
> -    description: Cycles of latency for Way-select RAM accesses
> -    default: 0
> -    minimum: 0
> -    maximum: 3
> -
> -  baikal,l2-tag-latency:
> -    $ref: /schemas/types.yaml#/definitions/uint32
> -    description: Cycles of latency for Tag RAM accesses
> -    default: 0
> -    minimum: 0
> -    maximum: 3
> -
> -  baikal,l2-data-latency:
> -    $ref: /schemas/types.yaml#/definitions/uint32
> -    description: Cycles of latency for Data RAM accesses
> -    default: 1
> -    minimum: 0
> -    maximum: 3
> -
> -additionalProperties: false
> -
> -required:
> -  - compatible
> -
> -examples:
> -  - |
> -    l2@1f04d028 {
> -      compatible =3D "baikal,bt1-l2-ctl";
> -      reg =3D <0x1f04d028 0x004>;
> -
> -      baikal,l2-ws-latency =3D <1>;
> -      baikal,l2-tag-latency =3D <1>;
> -      baikal,l2-data-latency =3D <2>;
> -    };
> -...
> --=20
> 2.50.1
>=20

--WotHpSL7+lvOiEQh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ3VTgAKCRB4tDGHoIJi
0sQCAQCJuAomeJGZn1OmshOerzTXoxJg/fCwfl0QJY0N5GlxgwEAk9OA8+GnHLFD
6LmrXP016b1NQOjmrbVHlZoTjCtZgwY=
=pElI
-----END PGP SIGNATURE-----

--WotHpSL7+lvOiEQh--

