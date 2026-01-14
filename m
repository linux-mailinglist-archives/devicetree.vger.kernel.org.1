Return-Path: <devicetree+bounces-254958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30971D1E066
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3D653060597
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F24238A73F;
	Wed, 14 Jan 2026 10:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pN0XnPc2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310FF2C0269;
	Wed, 14 Jan 2026 10:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768386321; cv=none; b=OTFMxwhM3djHYadgQDAaEEYuyN/b/xc6L4rjcVmGKBkZn0YGwlJe+HPegWDSLNQLkRf3JNukrL4bIHShOyPnw/oL0xydllgIkh7uMmDQZtaiVvCO92np5lqk2zywlqiCe2NY4uzTLMuv5t2q3WQyBU1Y0IzphCji5NOrDBJsDs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768386321; c=relaxed/simple;
	bh=/G0hPN7tF2VQr3A3z7o2ONwXq18rHIyi9oJC0xHRDBI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:From:To:Subject:
	 References:In-Reply-To; b=qHYsMWQHiggcVpKky/iHpTTpD2p2PwRw1X56Fa/DPNR9iA4sl/3DN1DX017mswYCEeMaf5VgiBtm/Fkrsm70EwVQYSUnUFgpqOmjDxQGx9S35uCmo/lJ8LTdFySXVjGduW6Gj3ZtaiyqBAD6Y5J6QgYnZBpi58zRC1ySx3ITaDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pN0XnPc2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70922C4CEF7;
	Wed, 14 Jan 2026 10:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768386320;
	bh=/G0hPN7tF2VQr3A3z7o2ONwXq18rHIyi9oJC0xHRDBI=;
	h=Date:Cc:From:To:Subject:References:In-Reply-To:From;
	b=pN0XnPc2DJImBLwmJvjM2oNnAlHIE3Kqoft/Rb1FnZrBHtTeHP9WtRcdjiZz+0Vpc
	 XCu8x+4OXEwrBJE6/xObeuLcTRfv/7C/EaoijnEDhaU9DL1KbGadZv9ta/BHoX/G4N
	 wtpEMsQsU99U8ap56HCe7jMWvNmYTCydWhCxQ1wsWNIlPDGifsGpgKSpXI0CCcba8Z
	 6sulIHwj9PNQ0pdFbpA50GFmYmt3IFoW0hhsvEHKx79vtBZYXIALeblOYEaVSiaL+4
	 3zmqJCiVhRDpTFc/XjoVB2FgTQ+hH/YweCjrBpFF1oVRFWBwYZ5M7KUNdW2BMwuMDq
	 Jltc06xaZA4qA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=7eb0cd624331cbee9ee88fbf3e64a6b1cd9e4c24279d11d0edad060d6005;
 micalg=pgp-sha384; protocol="application/pgp-signature"
Date: Wed, 14 Jan 2026 11:25:11 +0100
Message-Id: <DFO8MODWITUW.12PP5XZKPR7FL@kernel.org>
Cc: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <praneeth@ti.com>,
 <h-shenoy@ti.com>, <u-kumar1@ti.com>
From: "Michael Walle" <mwalle@kernel.org>
To: "Swamil Jain" <s-jain1@ti.com>, <jyri.sarha@iki.fi>,
 <tomi.valkeinen@ideasonboard.com>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <aradhya.bhatia@linux.dev>
Subject: Re: [PATCH v3 2/3] drm/tidss: Power up attached PM domains on probe
X-Mailer: aerc 0.20.0
References: <20260107174525.1702585-1-s-jain1@ti.com>
 <20260107174525.1702585-3-s-jain1@ti.com>
In-Reply-To: <20260107174525.1702585-3-s-jain1@ti.com>

--7eb0cd624331cbee9ee88fbf3e64a6b1cd9e4c24279d11d0edad060d6005
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Jan 7, 2026 at 6:45 PM CET, Swamil Jain wrote:
> From: Devarsh Thakkar <devarsht@ti.com>
>
> Some SoC's such as AM62P have dedicated power domains
> for OLDI which need to be powered on separately along
> with display controller.
>
> So during driver probe, power up all attached PM domains
> enumerated in devicetree node for DSS.
>
> This also prepares base to add display support for AM62P.
>
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> [j-choudhary@ti.com: fix PM call sequence causing kernel crash in OLDI]
> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
> Signed-off-by: Swamil Jain <s-jain1@ti.com>

Tested-by: Michael Walle <mwalle@kernel.org> # on am67a

-michael

--7eb0cd624331cbee9ee88fbf3e64a6b1cd9e4c24279d11d0edad060d6005
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKgEABMJADAWIQTIVZIcOo5wfU/AngkSJzzuPgIf+AUCaWdvBxIcbXdhbGxlQGtl
cm5lbC5vcmcACgkQEic87j4CH/hDQAF/ZthYmk3jSMbxH03FLpsKg7gCLmCWYjfA
0xWDvcRPJKb0Uds6of/PbMPMPtfQ9z+rAX0a6mLC+znYbB4nwlKuhum6W9McZp1p
EL2xTHr44m3/k5IasFhHRMbQz5QEhnwJ5nY=
=K6zL
-----END PGP SIGNATURE-----

--7eb0cd624331cbee9ee88fbf3e64a6b1cd9e4c24279d11d0edad060d6005--

