Return-Path: <devicetree+bounces-60964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2744A8AB1AD
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 17:21:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6DC81F240BF
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E665712FB08;
	Fri, 19 Apr 2024 15:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuCJAwBs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F7C12FB01
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 15:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713540004; cv=none; b=Oa+cAYMyt6OSDNstoVNgrQzwWoSmKQlM4wG4F/YRk2jSRT3YMLPTXnccRJSZp+fI2DYIScUNvgcVCFuBGli4RSKNU5JFxQccy5IdAaIHoJVpaGfVu2sH3YTBf7+9mycxU9tKZBbIakdFzp0s5nzbJuAZjRKx0I5VvGzuN5V1ZNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713540004; c=relaxed/simple;
	bh=1kdVwLElLzaz4bsya0m7/1uwWWLKQl/YNOx2FfJccZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o94DPR0S4EgE+Lo3qwrALDwiwfaEcNf2knyJQvJJO4+ck1q/oJaZ2chYEzw/wh7DInB7EF1bDKWCeuHPvrPY6l3Xs3rNYbHGMso8YEFTzI2/pXrQ6oS8CQIwfjFPnvO1I4L9qd3hD/vH93zjFSGc4jU7kpfFe8wmhI6HU/jyyY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuCJAwBs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABA52C072AA;
	Fri, 19 Apr 2024 15:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713540004;
	bh=1kdVwLElLzaz4bsya0m7/1uwWWLKQl/YNOx2FfJccZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PuCJAwBs7zsxV7HOlNyyJE2gYqiSHuzut5N4zinlRoXaOWNRnq/ZNIWEzh2g+T0sU
	 qb/YHjNlXxBjPXg8YLnQIOjd87FkaRFFfV7QfX3ZSMf77kEpRQ/F3Se4NPBy1vA0J1
	 oomoo7Dy/VkwvioCpVGnG6Q7tMDQME2EvvaPOrlXuUCnmQ9Cb0vjsOzb+mDUdRf7BE
	 kspjtkGdRmK1zL4oSEb4bZTq9bEqjJDdiqRCM4VU1rjL2R5Wt6arALIyQnhlhNAswH
	 ghWc243H+6MQAEigo/XdmdA98XIzLoNsYgxMgBoVx5GJU7LESB4lLqaRuGIfcLClep
	 DfItc8b9Hv6KQ==
Date: Fri, 19 Apr 2024 16:19:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
	David.Laight@aculab.com, parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension
 description
Message-ID: <20240419-disdain-litmus-82874cc4872e@spud>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-10-ajones@ventanamicro.com>
 <20240419-chafe-leotard-e5daee19b1c8@spud>
 <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/Hvn84EQb/nPMg28"
Content-Disposition: inline
In-Reply-To: <20240419-8c6af6a169a7aa0b9aa5cac5@orel>


--/Hvn84EQb/nPMg28
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2024 at 05:16:05PM +0200, Andrew Jones wrote:
> On Fri, Apr 19, 2024 at 03:45:46PM +0100, Conor Dooley wrote:
> > On Fri, Apr 19, 2024 at 03:53:24PM +0200, Andrew Jones wrote:
> > > Add description for the Zawrs (Wait-on-Reservation-Set) ISA extension
> > > which was ratified in commit 98918c844281 of riscv-isa-manual.
> > >=20
> > > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > > ---
> > >  .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++=
++
> > >  1 file changed, 12 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml =
b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > index 468c646247aa..584da2f539e5 100644
> > > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > @@ -177,6 +177,18 @@ properties:
> > >              is supported as ratified at commit 5059e0ca641c ("update=
 to
> > >              ratified") of the riscv-zacas.
> > > =20
> > > +        - const: zawrs
> > > +          description: |
> > > +            The Zawrs extension for entering a low-power state or fo=
r trapping
> > > +            to a hypervisor while waiting on a store to a memory loc=
ation, as
> > > +            ratified in commit 98918c844281 ("Merge pull request #12=
17 from
> > > +            riscv/zawrs") of riscv-isa-manual.
> >=20
> > This part is fine...
> >=20
> >=20
> > > Linux assumes that WRS.NTO will
> > > +            either always eventually terminate the stall due to the =
reservation
> > > +            set becoming invalid, implementation-specific other reas=
ons, or
> > > +            because a higher privilege level has configured it to ca=
use an
> > > +            illegal instruction exception after an implementation-sp=
ecific
> > > +            bounded time limit.
> >=20
> > ...but I don't like this bit. The binding should just describe what the
> > property means for the hardware, not discuss specifics about a
> > particular OS.
> >=20
> > And with my dt-bindings hat off and my kernel hat on, I think that if we
> > want to have more specific requirements than the extension provides we
> > either need to a) document that zawrs means that it will always
> > terminate or b) additionally document a "zawrs-always-terminates" that
> > has that meaning and look for it to enable the behaviour.
>=20
> IIUC, the text above mostly just needs to remove 'Linux assumes' in order
> to provide what we want for (a)? I'm not sure about (b). If Zawrs is
> unusable as is, then we should probably just go back to the specs and get
> a new standard extension name for a new version which includes the changes
> we need.

An (official) new name for the behaviour that you actually want, especially
if the patchset sent the other day does not have the more stringent
requirement (I won't even pretend to understand Zawrs well enough to know
whether it does or not), sounds like the ideal outcome. That way you're
also sorted on the ACPI side.

--/Hvn84EQb/nPMg28
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiKLmAAKCRB4tDGHoIJi
0g5bAP4gpBeGLR39p3Uv89m8zJpGf129yNgJOYfGxi/SIvRKAAEAtESaPNdVR57/
QIqWIobvFuJf/rR+CDw4zDeDOE0Abwc=
=dR2/
-----END PGP SIGNATURE-----

--/Hvn84EQb/nPMg28--

