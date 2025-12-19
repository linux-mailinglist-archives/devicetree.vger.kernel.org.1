Return-Path: <devicetree+bounces-248134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E18FCCF0D6
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:54:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38E5E3041CE7
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7912D2EC563;
	Fri, 19 Dec 2025 08:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="n549GOLX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay59-hz1.antispameurope.com (mx-relay59-hz1.antispameurope.com [94.100.132.230])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DA02E62B5
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.230
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766134447; cv=pass; b=bnBFOsCqc1QT6jPcZ3KQdK1vsoKVnROcJSBpSsc9fzl5VSAW5hnvmt5G6/VXrDVwMqyQPvi/MA+hPTYVKTw1A4XB7FqtMF1x/7Qs5qmICP/EkaaiEMeBiLl7toL8vHVS9tebJFyP0W5jTEUASgq2tZTb4f42mIzb79jvHDZ33GM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766134447; c=relaxed/simple;
	bh=6oc7It17KeilgegxeNRo1i/RHu/E39oXWX/QlQF0RCQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Qk63VM7Ua/8o5mn/thNLbhtvRj+Fkn0yjFRDvORx74/WbEjcYPowyPsmuEwKMCjWfe2+fsPFYUXg3NjjCKZHFv8fCNV94CKOGWXbb/BljUIqckdS8btiqI0jrbS981H7cy56a75B6sz8gTZIukAN5pf5HD+hJrExQIJyrzkNbVo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=n549GOLX; arc=pass smtp.client-ip=94.100.132.230
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate59-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=6oc7It17KeilgegxeNRo1i/RHu/E39oXWX/QlQF0RCQ=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1766134367;
 b=scEWDJeehWdNOamsmjtCcB8LQiPOJ6cHjG19Rmws4U2f5Bza3rm/LC/NgnR6rjRrJsbZ5oD4
 b6dqxfCxvarRCLKp7Z3bkam0Xwwq3qONyi+3AsJujNjYA8Mn3i0BfpEJFE/WI/Er7YNUoZXruMu
 W2vGcme5DefwVuxc/wDEi6s9QpncTqC8o6n2nW7ucelbxP2JbVYHCmk1fkGfQfR4+g9KyA2g3z5
 yNp1LfBny2qZNqKgI10adg+rxD/STqdAtIM1870uyhlPHSeYlBLvhkbhLV3CPdBRPynSrt4cJ4w
 ksXCj9MmbM25poLxJHuDz35WfkevNpx9oCodXcrq1BFdg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1766134367;
 b=P8MfYuQSEfq4z7A5unBOr3ioc3tFG4uJNWLkfgMIvymPVRmwA33YnhrcNGnI/t9Y3hN/iILN
 noDMguFRZ2XDaK/UUGFID/VhsmQ0WqUjuaD/5w8fG0CiMC1W/7Wj7+4rHGIufWb8Uh/taGYOXlN
 Cr99YILVSqv5KAVhARgf5LGEbp9+Vp7wcMS0sYDo+t1v7PqnvqS8fMMZv7zTk/Ad5nsqIVeYAFb
 O5vQ0fHGnLpggVIHHoB82Cz1IbBkQTnGJuFxqmlEy++6XXnXZnzuar0l+sboJCalVXwgmAp64Tt
 x1BItjid0dZNjoskw/c+h08EKQhuKqJmileBDa2RNERyQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay59-hz1.antispameurope.com;
 Fri, 19 Dec 2025 09:52:47 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 2A461CC0DFA;
	Fri, 19 Dec 2025 09:52:41 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Fabio Estevam <festevam@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>,
 Roger Quadros <rogerq@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Magnus Damm <magnus.damm@gmail.com>, Marek Vasut <marex@denx.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-usb@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH 5/6] arm64: dts: Add TQ imx8qm based board
Date: Fri, 19 Dec 2025 09:52:40 +0100
Message-ID: <5334958.kQq0lBPeGt@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To:
 <CAOMZO5CmP_rdFA=PqGSmKDU+ObzifHFDjwYMD3J67bjs0h_sfw@mail.gmail.com>
References:
 <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
 <20251218154412.1524249-1-alexander.stein@ew.tq-group.com>
 <CAOMZO5CmP_rdFA=PqGSmKDU+ObzifHFDjwYMD3J67bjs0h_sfw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5083097.iIbC2pHGDl";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay59-hz1.antispameurope.com with 4dXhBL1g4tz2H3m
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:ec9600c3e752c55b521189496a3b09b6
X-cloud-security:scantime:2.013
DKIM-Signature: a=rsa-sha256;
 bh=6oc7It17KeilgegxeNRo1i/RHu/E39oXWX/QlQF0RCQ=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1766134367; v=1;
 b=n549GOLXmCCkNU19n2P3rnNo84wi9E1DLYz0z0YjvxJOH/Yx1J6JS19yAfAhd9k3aUX0tFn4
 TlnV/a6blwhnznMlpcfy3dVX1TZmb7n8KDC/27MHSuRt9wZw35Ggi4M56LiGy6BqRVJZ8rtx3Uz
 YdgprAY6dttIDALHdhQouedmqXKg/avV3LC3UGEASCY8vBDbWv3NvafULloRHG4OMkrXqkXMD4V
 k0aNdXqF3j0OsbeG938cFgec1+I+bHi061HZomd1+BFWHDC/maImeRQfx7vEG88UcHM6FK7W/In
 5p47sfsufnUITWBXpOo7XBC1C9RgLZkAsI9WyNFOWh3iw==

--nextPart5083097.iIbC2pHGDl
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: Add TQ imx8qm based board
Date: Fri, 19 Dec 2025 09:52:40 +0100
Message-ID: <5334958.kQq0lBPeGt@steina-w>
Organization: TQ-Systems GmbH
MIME-Version: 1.0

Hi Fabio,

Am Donnerstag, 18. Dezember 2025, 16:47:33 CET schrieb Fabio Estevam:
> On Thu, Dec 18, 2025 at 12:45=E2=80=AFPM Alexander Stein
> <alexander.stein@ew.tq-group.com> wrote:
> >
> > * TQMa8QM on MBa8x
>=20
> This commit log should be improved by explaining the SoM and base
> board in more detail, providing a URL, etc.
>=20

Will do, thanks.

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
http://www.tq-group.com/
--nextPart5083097.iIbC2pHGDl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEByESxqszIvkmWRwbaS+g2M0Z/iUFAmlFElgACgkQaS+g2M0Z
/iUH1Qf+IxHFSR95T2hBQwwM9IgO1Inlb91z7oiYIXySTXPCEjG6Av5RtEuSZl2e
O+dt4h1CE9XXqLEY2DVjSvlFAWEx/L5EUisdPyJ2tXGliCgeVwF3XZW+C/ovnfdO
7jhXmGvdD2mFi3CO/wVemv1ppF7bMUby3dnyTDOjXVOfEf3a2hmT31pMqWgYzhCE
dEriyn7CXcQo1ZnNKjApIPZBVIaIhjkEXeghiUl1rTOzg/UHKF4vDfxXKyPqvDVV
RadFi1ad3RPyf72KEX3v6++BU5qn0jEjemNtK7XNRqfGZtPVUhT0N0fDiy5hAjIl
prnxK1jJb+NOc19mnDS82JD0ru0lOA==
=Q+zr
-----END PGP SIGNATURE-----

--nextPart5083097.iIbC2pHGDl--




