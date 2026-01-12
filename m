Return-Path: <devicetree+bounces-254144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE707D14A9B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:06:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CBCE8300CA24
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:06:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1250937E2FB;
	Mon, 12 Jan 2026 18:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="Qrf6WVwf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A01C3803FC
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 18:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768241203; cv=none; b=VXKjXj2oflffoUNTjbsO99ifG9arIb0Mu+wv76jH6hhjkr9VSd7EGhoXKABnfuk9721d9yDNnJDagb7ptz5NPjSyCjGRB1mXSrM3Qr2tUKgUxyBH3I+eIHuyAMKG+bZfFGOYl3LdGca+dvosMHOduLPVLddE+8YJBsDW7adElR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768241203; c=relaxed/simple;
	bh=5V+kaIh6mKTKkXbiLC1YnXNQ+AeXGBwp1O9WUqH2p/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lGimHaUNbybxTlmDxz4jGe/x5jP97J/B5KbMhZ/m4EDuygx9OFmzWPrqevG55NLaT5WWDe5NloZeCay653UHjT+TDxoTtceJTRI8GdIBFHpm454UMLPKXuGiYTJccEYrmvzz/J6e5GxmtvSUHOlVYhZUs1HmdbCBdJddJfsSDnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=Qrf6WVwf; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-65f6f9d84d6so1326410eaf.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1768241200; x=1768846000; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=erthKSZ6iPdBhOLwPxkw7BloMWfY5AM7ogPjXWO1YdI=;
        b=Qrf6WVwfmpXqHt2eHdFMUJL50unaa/bGRH5BYxZmyeGxl/Ek8LESbo36rVZngKw3O5
         fnGVev0wJ9qfmUCebIs7hqw1JcMhk6fXRo5pRmAnq8lWuN4M2hrFLuDBID0jZJlvsrAp
         XnegmmW3KUWLpIZ1PbNaW5WgA2mdHMLur51lM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768241200; x=1768846000;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=erthKSZ6iPdBhOLwPxkw7BloMWfY5AM7ogPjXWO1YdI=;
        b=UaxGyEFrIUUaFU66h5x/kKWgNfbG07GNqElqtpEeVj0dlJZ8OheeapZZ4s5HmQAsdf
         kLPuMd7KbU0wJ3NwVSEFV0Q5VCt7YlYHinNDv/Hxg7nX/pGX5X9+8aEZWB5VQkMQnQN6
         3udZ3yIGCIcVUF9AIawjoUvjcO7CKWD3WdaJ4U5cLET/cT/SEQrE2N23PaMFRwalCkDI
         Tz1Yq2efw0t0wMlrnL87fPnTTFZf/7HVXPKKiPXtbdhFzIoPgx/XCbFGAnPi713A8s5e
         vF+qeBu3Kxqs2QBFGhw+haH3vEajTU3xdKoO8nu1p8tu6xq/ydCcbSmDU5w/5BQRrYPF
         yAiw==
X-Forwarded-Encrypted: i=1; AJvYcCWHisrMVKaQiQlso0ou5A/tYefkg75ezwNFaQHQW/ocZChWJH+Oq5rLvWqfTzhXZy7RgStCaG85r3SS@vger.kernel.org
X-Gm-Message-State: AOJu0YzCtoRy7MZa0Aeagc5r2BR2qx5QvFklOZptq/dwJGbUix5McGY5
	/Ta1s1KABxuSL9spnrp/xO5DSYUoFCCCOE/eksa/flLquwu91ov4mJxhRt+TcmvjM0U=
X-Gm-Gg: AY/fxX5k80Yqv3aTbpp/iMaxtv8UMIB56Zy6++tsBw26/eJKIwi9GN1k2D4dMYbls4s
	VES3i0fU/nbcgIiSYn3nAa14CSrc6ZWgO55PbHvtmV4N8G1VD1+b9SOLjbSOZYXTqw+TCMDgxEg
	tudeo/4p2UI5AJZfD1BN7/TVWNpSq5nBXRGGHCsjWMZyMyTEtHMMgTZtLzd3gVbovkyUFnGEp7O
	uJptF20VGnEiq7VGu8z6wwfitSXeWv2f6ovyKp/xJzb56QEsv82ahnCjdwKI4V2g3XHHm/i9AHu
	MdDAEZoLGQI0pWFWUZY8CShFsO+nOcqJcCcWOgz8JIaC/QpjhXyzcrECtvGobxpk3b/usGpb3yk
	Xj4u8kk2K2j2iee4GalfkZQifno9AoCKTUPGSjMKu6pZFFSWaxxHPBn3xxeCWyLDtWAfdl/SYIt
	+x2sx5PGGDDBKtAKBKlBMIXTPhikbtV9PmRVmOPmoD6uL0WSNrQNJoJXiUooOU/PqrvHHPCnEc3
	uhvv+GQ/L9uPeqGQ35irlpGKKXaja1zfsTu3jQ=
X-Google-Smtp-Source: AGHT+IHMKosHECSc4+Zx0/DZ1EmDSc9S9i8aKwxXsTmq2VUbIcLRUggYDk1hwyiYs1cRyUGa2EZ6Vg==
X-Received: by 2002:a05:6820:2d48:b0:65e:da9a:976f with SMTP id 006d021491bc7-65f54ed7966mr5646365eaf.11.1768241200388;
        Mon, 12 Jan 2026 10:06:40 -0800 (PST)
Received: from bill-the-cat (fixed-189-203-103-235.totalplay.net. [189.203.103.235])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65f48bec1c4sm7346752eaf.8.2026.01.12.10.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 10:06:39 -0800 (PST)
Date: Mon, 12 Jan 2026 12:06:37 -0600
From: Tom Rini <trini@konsulko.com>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>, u-boot@lists.denx.de,
	nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	srk@ti.com
Subject: Re: [PATCH] arm64: dts: ti: k3-*: Replace rgmii-rxid with rgmii-id
 for CPSW ports
Message-ID: <20260112180637.GR3416603@bill-the-cat>
References: <20251025073802.1790437-1-s-vadapalli@ti.com>
 <20260112074948.GA101138@francesco-nb>
 <20260112075636.GA105765@francesco-nb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l3dCGue1f5wWDFkV"
Content-Disposition: inline
In-Reply-To: <20260112075636.GA105765@francesco-nb>
X-Clacks-Overhead: GNU Terry Pratchett


--l3dCGue1f5wWDFkV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 08:56:36AM +0100, Francesco Dolcini wrote:
> On Mon, Jan 12, 2026 at 08:49:56AM +0100, Francesco Dolcini wrote:
> > +Tom +U-Boot ML
> >=20
> > Hello Siddharth,
> >=20
> > On Sat, Oct 25, 2025 at 01:07:59PM +0530, Siddharth Vadapalli wrote:
> > > The MAC Ports across all of the CPSW instances (CPSW2G, CPSW3G, CPSW5=
G and
> > > CPSW9G) present in various K3 SoCs only support the 'RGMII-ID' mode. =
This
> > > correction has been implemented/enforced by the updates to:
> > > a) Device-Tree binding for CPSW [0]
> > > b) Driver for CPSW [1]
> > > c) Driver for CPSW MAC Port's GMII [2]
> > >=20
> > > To complete the transition from 'RGMII-RXID' to 'RGMII-ID', update the
> > > 'phy-mode' property for all CPSW ports by replacing 'rgmii-rxid' with
> > > 'rgmii-id'.
> > >=20
> > > [0]: commit 9b357ea52523 ("dt-bindings: net: ti: k3-am654-cpsw-nuss: =
update phy-mode in example")
> > > [1]: commit ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mo=
de for fixed RGMII TX delay")
> > > [2]: commit a22d3b0d49d4 ("phy: ti: gmii-sel: Always write the RGMII =
ID setting")
> >=20
> > What about U-Boot?
> > I just noticed this in today U-Boot master:
> >=20
> >   RGMII mode without internal TX delay unsupported; please fix your Dev=
ice Tree
> >=20
> > and I think this is coming from the DTS update from Linux to U-Boot.
> >=20
> > Can you look into that?
>=20
> Ok, I think that the issue is that the U-Boot code was updated
> correctly, but now we need the v6.19 DT in U-Boot, and as of now we have
> 6.18 DT.
>=20
> Tom: are you planning to sync the U-Boot DT to Linux v6.19 before the next
> U-Boot release?

Once it's out, yes. But, uh, this tells me some TI folks forgot to
backport all of the dts changes too then as we shouldn't have broken
platforms in-tree like this.

--=20
Tom

--l3dCGue1f5wWDFkV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTzzqh0PWDgGS+bTHor4qD1Cr/kCgUCaWU4KQAKCRAr4qD1Cr/k
Cvk3AQDuM/GRmnrbkiiukhCxNdwOxiZCH8uDyIsMLBzAm2bFqwD+NlctSgODsb0C
erEXYpRFivilIFIFxVhDG7lW0OOJSAE=
=p3wn
-----END PGP SIGNATURE-----

--l3dCGue1f5wWDFkV--

