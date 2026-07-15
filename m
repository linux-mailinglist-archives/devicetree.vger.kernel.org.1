Return-Path: <devicetree+bounces-327141-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HzieNuufV2qGYQAAu9opvQ
	(envelope-from <devicetree+bounces-327141-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:57:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCAC75FAC4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:57:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TM5Rzz1u;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327141-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-327141-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B99D3295AF6
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF290481AA4;
	Wed, 15 Jul 2026 14:38:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC9048165E;
	Wed, 15 Jul 2026 14:38:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784126311; cv=none; b=i0lX2MNYHxuSR7XuZfcnFSDpODZB/q6wyQS5bLS36gFDwxqkytxd1xUb7BF61OfWA3a8SZ+Kbc+QSdJs+AxQ3hTWmhM8zUy6QPVejU79l4577B9bIIfxHRir3r/b1DOQpB9syryz7bsKaxckWXVEu4KW3SvBNxcz/NDQ6I0R6cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784126311; c=relaxed/simple;
	bh=Jb7kFcmNYVymDCC+BdCblS2A453NigHo4lz0bhHonOY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=m0p/G4o4QMUCXlLDprurxhGBR1yANMoJYk0GhlV8YcptL9Mk4k/OzAo5QWmq1s9SScTyXvtqXEL5omVe/wmpHrsPFE5LZG/yhVK5QKaKpFBx84Y2Emh/ojgay5Y8KOmSe3D08gUcMFrH/lyZwsURuBnittJPvIgMtJ4+wMVe0fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM5Rzz1u; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D5A91F000E9;
	Wed, 15 Jul 2026 14:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784126302;
	bh=p3bXxUe1YA2cg2wUt1Er8zoc65NLXK8fX+dBGveP4o0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TM5Rzz1uzDQHrG61nEX0C/1QEb5N2lVThMVbMvD5hy/H8w939yHvvJFLHysHJ8Q/1
	 pAndvfq9jzVwui9He9mXITp6qkGFYwmGviqyAWD81alGzYa2JtdlVgzBwf/kmVwOjK
	 t9/RCu+AFXSVP7kr4M5VUWLPZOQAsC+c5bYXXiiqaHofAG/TNXFD1c1fvw+bNEcXtA
	 absqFxIqBOg7jkz0WK7+OBKhe7OLDKyXYT4MlnCHGXqKlYBVCgUEzLcLONOMZZ+gQa
	 uMfIrfXuYYg8LHUChoGhDeMRR1yqECaECLY6Biid/HxyikJHZK8YvoRG15NFTed112
	 0Pa8zrMims5Rg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/7] arm: dts: st: Import optee node from u-boot
 device trees
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mathieu Dubois-Briand" <mathieu.dubois-briand@bootlin.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, robh@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260715-mathieu-uboot-dts-import-v2-3-bc931417bd0e@bootlin.com>
References: <20260715-mathieu-uboot-dts-import-v2-0-bc931417bd0e@bootlin.com>
 <20260715-mathieu-uboot-dts-import-v2-3-bc931417bd0e@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 14:38:22 +0000
Message-Id: <20260715143822.7D5A91F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-327141-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mathieu.dubois-briand@bootlin.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2BCAC75FAC4
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Critical] The `bootph-pre-ram` property is missing from the `optee@fe000=
000` node and its parent `reserved-memory` node in `stm32mp157c-ed1.dts`, w=
hich will crash U-Boot on this board.
- [High] The patch unconditionally reserves 32MB of RAM for OP-TEE in the b=
ase board device trees, permanently removing this memory for users booting =
without OP-TEE.
- [High] The OP-TEE nodes were added to the DK1 base DT but omitted from th=
e DK2 base DT, which will silently break OP-TEE support for DK2 when U-Boot=
 drops its local overrides.
- [Low] The newly added `optee@de000000` and `optee@fe000000` nodes duplica=
te definitions that already exist in the corresponding `-scmi.dts` variants.
--

--- Patch [3]: [PATCH v2 3/7] arm: dts: st: Import optee node from u-boot d=
evice trees ---
commit 455c0e25ccd33494a8e1d7d65c591a7e9158f5c7
Author: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>

arm: dts: st: Import optee node from u-boot device trees

This commit imports OP-TEE firmware nodes and reserved-memory regions from
U-Boot device trees into the upstream kernel device trees. The goal is to
allow U-Boot to drop its local additions and use the kernel device trees
directly for these platforms.

> diff --git a/arch/arm/boot/dts/st/stm32mp157a-dk1.dts b/arch/arm/boot/dts=
/st/stm32mp157a-dk1.dts
> index 0da3667ab1e0e..236da589eb909 100644
> --- a/arch/arm/boot/dts/st/stm32mp157a-dk1.dts
> +++ b/arch/arm/boot/dts/st/stm32mp157a-dk1.dts

[ ... ]

> @@ -22,4 +22,21 @@ aliases {
>  	chosen {
>  		stdout-path =3D "serial0:115200n8";
>  	};
> +
> +	reserved-memory {
> +		bootph-pre-ram;
> +
> +		optee@de000000 {

[Severity: High]
Since stm32mp157c-dk2.dts does not include stm32mp157a-dk1.dts, won't adding
this only to the dk1-specific file silently break OP-TEE on the DK2 board o=
nce
U-Boot drops its local overrides? Should these nodes be placed in the shared
stm32mp15xx-dkx.dtsi instead?

[Severity: High]
Does this unconditionally consume 32MB of RAM for users booting the standard
stm32mp157a-dk1.dtb without OP-TEE?=20

ST provides dedicated *-scmi.dts variants for OP-TEE environments that alre=
ady
contain these exact memory reservations. By placing this in the base device
tree, it looks like standard non-secure users permanently lose this memory =
to
the memblock allocator.

[Severity: Low]
Since stm32mp157a-dk1-scmi.dts includes this base file, does adding
optee@de000000 here duplicate the node already existing in the -scmi.dts
variant?

> +			reg =3D <0xde000000 0x02000000>;
> +			no-map;
> +			bootph-pre-ram;
> +		};
> +	};

[ ... ]

> diff --git a/arch/arm/boot/dts/st/stm32mp157c-ed1.dts b/arch/arm/boot/dts=
/st/stm32mp157c-ed1.dts
> index 49dd555cc228c..7da7260350869 100644
> --- a/arch/arm/boot/dts/st/stm32mp157c-ed1.dts
> +++ b/arch/arm/boot/dts/st/stm32mp157c-ed1.dts

[ ... ]

> @@ -70,6 +70,18 @@ retram: retram@38000000 {
>  			reg =3D <0x38000000 0x10000>;
>  			no-map;
>  		};
> +
> +		optee@fe000000 {

[Severity: Critical]
Is the bootph-pre-ram property missing here and in the parent reserved-memo=
ry
node?=20

During pre-relocation, U-Boot allocates memory downwards from the top of RAM
where OP-TEE also resides. Without bootph-pre-ram, U-Boot's DT parser will
ignore the reservation. Won't this cause U-Boot to relocate its code and st=
ack
directly into OP-TEE's secure memory space and trigger a synchronous abort?

[Severity: Low]
Similar to the DK1 file, does adding optee@fe000000 to the base ED1 device
tree duplicate the reservation that already exists in the
stm32mp157c-ed1-scmi.dts variant?

> +			reg =3D <0xfe000000 0x02000000>;
> +			no-map;
> +		};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-mathieu-ub=
oot-dts-import-v2-0-bc931417bd0e@bootlin.com?part=3D3

