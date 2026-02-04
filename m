Return-Path: <devicetree+bounces-262750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJoiFBOEg2llowMAu9opvQ
	(envelope-from <devicetree+bounces-262750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:38:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A2BEB09A
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:38:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BF26B3002524
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F9AB34A3DC;
	Wed,  4 Feb 2026 17:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK7mxYwl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCAC340A46;
	Wed,  4 Feb 2026 17:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770226702; cv=none; b=n3elXQspQ/o9oo4cCgHvGDtLhXEitBrcIobVdbijNxzwz+deoDNjMIlJVWyg6e0wOMroFywDrMmw5Zy/i5BNRNdPi9kEbJraaFQQoE8NiMjp1W6K5W4jwbEQhp3wy4tqP3Y9e6EcxtdsQp9jIeF21m05BBwDEamU0M/3yIhWNeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770226702; c=relaxed/simple;
	bh=szEiRqNQBmBl7xB3+WCKENyasS6skJktBrmm9AAZG38=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yz8YrnBdgBm2Cw0n7bn1w0f3yEjEpxp0A99u2G1XLofa+xHrU3BPpMEQQCzqkJncCap3IYQIWKnPv3O7iq88p26+qXcaqMJmiXIjj866r2F8EhI1qHsRGbVbTbTKWijrVFDw9Ce4w4JG1Q28XpPYRelA1HOCRchNvCGpwBHBkvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK7mxYwl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13636C4CEF7;
	Wed,  4 Feb 2026 17:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770226701;
	bh=szEiRqNQBmBl7xB3+WCKENyasS6skJktBrmm9AAZG38=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OK7mxYwl5E5s94aPs5ejbwJwn+I0fRMo+pjfbWuEl14jpm/cuNrxDl6nLpp90CEg4
	 33XUY3dbyIFmQtbo6TJYO+zr5ppcsJbkWWIxWcKxs9J0ZK8ix5Vp0/WedbhUpQsccb
	 9DuUEZudveuh5ObbojfrsmnZP5QDZ4hsD6/cX4Jt8ODok+fwbWHVKm4S5WpFs37lPJ
	 U3DGGW2XCWjaLiIO8Qea9A7RTF4iUsOiPD3VvKtwn49l4LYQBQauSb7f3S+vlWjvU6
	 KmeAvb9OPMU/bHH/1GWkpkFGhlq5yEOpCaNTMirEGJOc/fl+9AqLIDRxALp03Se55B
	 owkMaQ9Waz6Tg==
Date: Wed, 4 Feb 2026 17:38:15 +0000
From: Conor Dooley <conor@kernel.org>
To: Lv Zheng <lv.zheng@linux.spacemit.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Jingyu Li <joey.li@spacemit.com>,
	Zhijian Chen <zhijian@spacemit.com>, iommu@lists.linux.dev,
	linux-perf-users@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 8/8] perf vendor events riscv:: Add support for
 spacemit,riscv-iommu HPM aliasing
Message-ID: <20260204-suds-shush-d85872589cb3@spud>
References: <cover.1769562575.git.lv.zheng@spacemit.com>
 <cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <5242DDF0A783AF08+e141f1898581018f8dd0723cb5c870c23ec679d6.1770195980.git.lv.zheng@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iqh0NaWGo05RcNxz"
Content-Disposition: inline
In-Reply-To: <5242DDF0A783AF08+e141f1898581018f8dd0723cb5c870c23ec679d6.1770195980.git.lv.zheng@linux.spacemit.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262750-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,spacemit.com:email]
X-Rspamd-Queue-Id: 51A2BEB09A
X-Rspamd-Action: no action


--iqh0NaWGo05RcNxz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 04, 2026 at 05:09:52PM +0800, Lv Zheng wrote:
> Add JSON HPM event aliases for SpacemiT distributed IOMMU (T100) which is
> general and compatible for all SpacemiT RISC-V SoCs.
>=20
> Signed-off-by: Lv Zheng <lv.zheng@linux.spacemit.com>
> Signed-off-by: Jingyu Li <joey.li@spacemit.com>
> ---
>  MAINTAINERS                                   |   3 +
>  .../arch/riscv/spacemit/iommu/sys/ioatc.json  |  30 ++++
>  .../arch/riscv/spacemit/iommu/sys/ioats.json  | 163 ++++++++++++++++++
>  3 files changed, 196 insertions(+)
>  create mode 100644 tools/perf/pmu-events/arch/riscv/spacemit/iommu/sys/i=
oatc.json
>  create mode 100644 tools/perf/pmu-events/arch/riscv/spacemit/iommu/sys/i=
oats.json
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 7c50701b6001..4d91f99aa742 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -22459,12 +22459,15 @@ K:	riscv
> =20
>  RISC-V IOMMU
>  M:	Tomasz Jeznach <tjeznach@rivosinc.com>
> +M:	Lv Zheng <lv.zheng@linux.spacemit.com>
> +M:	Jingyu Li <joey.li@spacemit.com>

To be frank, this looks misguided, or at least premature, to me, given the
state of the patchset.

>  L:	iommu@lists.linux.dev
>  L:	linux-riscv@lists.infradead.org
>  S:	Maintained
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/iommu/linux.git
>  F:	Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
>  F:	drivers/iommu/riscv/
> +F:	tools/perf/pmu-events/arch/riscv/spacemit/iommu/

--iqh0NaWGo05RcNxz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaYOEBwAKCRB4tDGHoIJi
0rAbAP9BQO+rmDwgyVtdWWl0COzirfBZ1h1MHPLEsDSPOC3q8AEAkAY/lFFX/2Ft
ThczQMoz8DL7QCbK+gjE+pWs9vdsNwE=
=n4nj
-----END PGP SIGNATURE-----

--iqh0NaWGo05RcNxz--

