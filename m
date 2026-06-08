Return-Path: <devicetree+bounces-308451-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4Qd7NAMGJ2odqQIAu9opvQ
	(envelope-from <devicetree+bounces-308451-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:12:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BF4659932
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:12:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GgF9d1mJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308451-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308451-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32F19309B78E
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82A64352013;
	Mon,  8 Jun 2026 17:35:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCE323ED5B;
	Mon,  8 Jun 2026 17:35:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780940101; cv=none; b=pgCMG4O9+a4z+YQq5NB+YBMQ4OloH56GqIiscgMZpXLflPdqxQKINF1qqIXkhJDXvFaTkTyAtB1oXPYBf+fsrAtFGM8v00f5hcLSaikuw4EZ01wwtv5Rdswv0xpSk34+3YUs8JvenA/eL7onkTlSK9eQXYsixjXSiZtLTuvBsC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780940101; c=relaxed/simple;
	bh=N/BlOr6IqWA7u5hswBBBa84Hnz73U2qA8o6mElH9O8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hB50FjW93ZPbRaSGvcVipCWlApKshrxHhQQSdWivSvkHepHHPAzQPZKWyMrCM0kzmvJR5GsGyzVPH9EnRT5ekN9v1pzTM3CGS+CJB5v4yGDqFz6vExIHHe7QjO56pkpRFTlDpn+3lqhjpDIXH5P1dqMOrhr/dELQZ+BUtkvPwcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgF9d1mJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AFC81F00893;
	Mon,  8 Jun 2026 17:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780940100;
	bh=3X58+ak98zXIl0hmCwArn7OR21uOOHpsO2nLWNu5Jz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GgF9d1mJ5KXoPgzadwHPsD5LEFsR8UtWI0lxxsgSQm1ybcppy6X+/fjlDyzG/7WnM
	 TG0s+Q3u+3fmhb18wIPBCvOo+atURJCqjdYhbaJxndpFezTFTDOHP79n7Vnb2VIzkr
	 yPMoTBBle9hVplin8Y6woZZKFtCrn3v1nnDOiIxJ1YTKy9Tw7UaVXFVUvraAh68xZH
	 eOXgoMUO7hu1w8TX0Wbo4aXnOjFuDvwfgUmHm9qqqd92xtQQGiQYXmaFaadCroP7TK
	 x+FJjzO7+8xnudkVajSdZhNJ2qNsCwoZynXqRCvc+PCSZNwO/5FCk2bVC0QYH+LCPA
	 E4zb1nd1CFQpQ==
Date: Mon, 8 Jun 2026 18:34:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Geetha sowjanya <gakula@marvell.com>
Cc: linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	mark.rutland@arm.com, will@kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: perf: marvell: Extend CN10K TAD PMU
 binding for CN20K
Message-ID: <20260608-spiral-unsterile-66189c3241f8@spud>
References: <20260607125101.17778-1-gakula@marvell.com>
 <20260607125101.17778-4-gakula@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GYpgjdsQiQTsrVfP"
Content-Disposition: inline
In-Reply-To: <20260607125101.17778-4-gakula@marvell.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308451-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:gakula@marvell.com,m:linux-perf-users@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:mark.rutland@arm.com,m:will@kernel.org,m:krzk+dt@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,spud:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28BF4659932


--GYpgjdsQiQTsrVfP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 07, 2026 at 06:21:01PM +0530, Geetha sowjanya wrote:
> Allow marvell,cn20k-tad-pmu alongside marvell,cn10k-tad-pmu, document
> CN20K in the title and description, add a maintainer, and include a
> CN20K example node with the same required properties as CN10K.

This is great and all, but is evident from the diff (other than the fact
it talks about an example that does not exist).
What is missing is an explanation of why a fallback comaptible is not
usable.
pw-bot: changes-requested

Thanks,
Conor.

>=20
> Signed-off-by: Geetha sowjanya <gakula@marvell.com>
> ---
>  .../bindings/perf/marvell-cn10k-tad.yaml      | 20 +++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/perf/marvell-cn10k-tad.yam=
l b/Documentation/devicetree/bindings/perf/marvell-cn10k-tad.yaml
> index 362142252667..1612052b59ae 100644
> --- a/Documentation/devicetree/bindings/perf/marvell-cn10k-tad.yaml
> +++ b/Documentation/devicetree/bindings/perf/marvell-cn10k-tad.yaml
> @@ -4,23 +4,27 @@
>  $id: http://devicetree.org/schemas/perf/marvell-cn10k-tad.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
> =20
> -title: Marvell CN10K LLC-TAD performance monitor
> +title: Marvell CN10K / CN20K LLC-TAD performance monitor
> =20
>  maintainers:
>    - Bhaskara Budiredla <bbudiredla@marvell.com>
> +  - Geetha sowjanya <gakula@marvell.com>
> =20
>  description: |
> -  The Tag-and-Data units (TADs) maintain coherence and contain CN10K
> -  shared on-chip last level cache (LLC). The tad pmu measures the
> -  performance of last-level cache. Each tad pmu supports up to eight
> -  counters.
> +  The Tag-and-Data units (TADs) maintain coherence and contain the
> +  shared on-chip last level cache (LLC) on Marvell CN10K and CN20K SoCs.
> +  The TAD PMU measures last-level cache performance. Each TAD PMU
> +  supports up to eight counters.
> =20
> -  The DT setup comprises of number of tad blocks, the sizes of pmu
> -  regions, tad blocks and overall base address of the HW.
> +  The DT setup describes the number of TAD blocks, the sizes of PMU
> +  regions and TAD pages, and the overall MMIO base of the hardware.
> =20
>  properties:
>    compatible:
> -    const: marvell,cn10k-tad-pmu
> +    items:
> +      - enum:
> +          - marvell,cn10k-tad-pmu
> +          - marvell,cn20k-tad-pmu
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.25.1
>=20
>=20

--GYpgjdsQiQTsrVfP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaib9QAAKCRB4tDGHoIJi
0iuaAP96ctiNghyt5d2J1nsjhd7clrVmybndmOZ62qcSmQkpFAEAtRVcR6SCoSR7
HhSMhZEIIzV91tr2oTChrnix/m86bQM=
=JDcj
-----END PGP SIGNATURE-----

--GYpgjdsQiQTsrVfP--

