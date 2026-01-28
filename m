Return-Path: <devicetree+bounces-260478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP7yGIMmemlk3QEAu9opvQ
	(envelope-from <devicetree+bounces-260478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:08:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CD0A389B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:08:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56EC73055604
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B6B36826C;
	Wed, 28 Jan 2026 15:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOkEASV7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23170369209;
	Wed, 28 Jan 2026 15:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769612562; cv=none; b=qq+lGsTbo/NtAc2l3DpN9gLhJoKDW7RxssmOe3yMzF98AyCBjFYJh6O3HqIjGIBqL05dr3d4AhsfsyaHYQn/PlYGe6KWwCLHdqJl6cS2IuC5ZgVxzGfrAI5Rs2Oj5ggEuELYBAJmvTfEfm2WdvoNDHJ9OL/F3GUWnVQ+BIhrfC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769612562; c=relaxed/simple;
	bh=OzclO5ndo/wL4JKiiZcq354jGTZGzW1qFKtfJyb0gAw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T05lydtZgwii7XoYe+h0l53MdhccbzhWk1vXBu5RGPsnp7R3SdPNNUVpMic+kdUMVk8jXVqeJPQEC9Nz3ba3AMfzYv5gccwBrva045JYwH2o2fNDA96+lnvyvTiWr3X6PFXHAKDBamJU/fwKAXp7hDJp/xuBFPyJIQE/71hAcbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOkEASV7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A34C3C4CEF1;
	Wed, 28 Jan 2026 15:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769612561;
	bh=OzclO5ndo/wL4JKiiZcq354jGTZGzW1qFKtfJyb0gAw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WOkEASV7ibh5p2CTehKsxUlE7iWPQh6t3N9IIV18m943CgEZsfVqkIH1Qcs/o130f
	 PvPAbMt0XeeM53VxPKmbpTTB7hPkatQ+GB71XvKQ47Eq/eXlt04RQ6TARr+i7Y2/Hd
	 +XgQKms/Sa75wU//zIu4QRijBigKycVuT6LoKjYbgA8UaKqMaK63ufodBzRPZtRCKs
	 GsGst1ucHn8JkHkdzc6Rci3Vz+YkCNlSpenNyXVPAkAq3eSeoUTvjDTqWDSHXeRVYv
	 mkV+DkqZujyVS1VFXeeJ1mkq7tJze8T3tSBxr3EcoT9k9F1wCwafKTsLzCYpPFR/1i
	 vs2fdXqG7tO6w==
Date: Wed, 28 Jan 2026 15:02:35 +0000
From: Conor Dooley <conor@kernel.org>
To: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	joel@jms.id.au, fustini@kernel.org, mpe@kernel.org,
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com,
	agross@kernel.org, agross@oss.tenstorrent.com, bmasney@redhat.com
Subject: Re: [PATCH v3 1/3] dt-bindings: clk: tenstorrent: Add
 tenstorrent,atlantis-prcm
Message-ID: <20260128-duckling-confess-88e64fabe752@spud>
References: <20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com>
 <20260126-atlantis-clocks-v3-1-b016135551b7@oss.tenstorrent.com>
 <20260127-mystify-carmaker-150aa3fcd6c6@spud>
 <CAEev2e-p28J_H2oWdrtgGJ0Z=2iGn8FjFBN8ggU0t_Wtbi62rA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="br2m+ehppYMnSZbO"
Content-Disposition: inline
In-Reply-To: <CAEev2e-p28J_H2oWdrtgGJ0Z=2iGn8FjFBN8ggU0t_Wtbi62rA@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260478-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tenstorrent.com:email]
X-Rspamd-Queue-Id: B0CD0A389B
X-Rspamd-Action: no action


--br2m+ehppYMnSZbO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 27, 2026 at 05:39:33PM -0600, Anirudh Srinivasan wrote:
> Hi Conor,
>=20
> On Tue, Jan 27, 2026 at 1:58=E2=80=AFPM Conor Dooley <conor@kernel.org> w=
rote:
> >
> > On Mon, Jan 26, 2026 at 03:07:14PM -0600, Anirudh Srinivasan wrote:
> > > Document bindings for Tenstorrent Atlantis PRCM that manages clocks
> > > and resets. This block is instantiated 4 times in the SoC.
> > > This commit documents the clocks from the RCPU PRCM block.
> > >
> > > Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> > > ---
> > >  .../bindings/clock/tenstorrent,atlantis-prcm.yaml  |  82 +++++++++++=
+++++
> > >  MAINTAINERS                                        |   2 +
> > >  .../dt-bindings/clock/tenstorrent,atlantis-prcm.h  | 103 +++++++++++=
++++++++++
> > >  3 files changed, 187 insertions(+)
> > >
> > > +
> > > +  tenstorrent,prcm-rcpu:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description:
> > > +      Phandle reference to RCPU prcm, needed by other 3 prcms (PCIe,=
 MM, HSIO)
> > > +      as the control registers for the PLLs that drive these subsyst=
ems are in
> > > +      RCPU prcm's range
> >
> > This is pretty suspect sounding, if the PLLs for !rcpu are controlled in
> > the rcpu register region, why is it not a clock parent for the !rcpu
> > prcms?
>=20
> I saw another clock driver doing it in the manner I did [1], and

The example is using it just to check lock status, which I think is
different than what you've got here? What you wrote implies that the
whole configuration for these PLLs is in that register region.

> thought that it would make writing the bindings and the clock driver
> simpler. Each prcm node would have a single input clock (otherwise
> there would be a differing number of input clocks for each prcm node).
>=20
> What would you suggest that I do?

I suggest that you model the clock tree correctly in devicetree, even if
that makes things more complicated. One prcm node having more input
clocks isn't something to be afraid of, it should be pretty
straightforward to handle in both devicetree and driver, and is not any
more complicated than having to deal with the syscon phandle that you
use at the moment.

btw, where is the code for the !rcpu clock controllers? AFAICT, this
series only has the rcpu portion and I can't find the code that actually
uses the phandle. Why is the patch documenting stuff that has no user?

> This would also avoid having the clock tree in the driver contain
> multiple entries for some of the PLLs (one in the rcpu subsystem where
> it is defined and another where the same clock is referred with {
> .index =3D 0 }) which could become confusing.

I don't really understand what you mean by this. Can you elaborate?
If you mean that multiple clocks produced by the prcm would all use
index =3D 0 as their parent, that does not sound abnormal to me. Without
being able to see the !rcpu driver implementations, I can't even make
guesses as to what the clock tree looks like.


--br2m+ehppYMnSZbO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXolCwAKCRB4tDGHoIJi
0rw0AQCdOeRioPlgzz56UBWH3uR/Xsa7xMRZG6htp+xFGP3KfQD9HiJzVLnZWBa6
2Q+cUcXOAJr0fH9Po/fYWMqWfseCbgA=
=QOLe
-----END PGP SIGNATURE-----

--br2m+ehppYMnSZbO--

