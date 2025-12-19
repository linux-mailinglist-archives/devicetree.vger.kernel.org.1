Return-Path: <devicetree+bounces-248106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C133CCEE68
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:10:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C99AD305FABC
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5827A2E1EFC;
	Fri, 19 Dec 2025 08:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="g2Oc97S5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17912DEA90
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131811; cv=pass; b=gc56PPLfkR9P6D5XdLl7B4bU8oxZy5wb2gIAsymgxOXaxdLDN7KI9LNWJCySE3SoH94X3VCbrsxS57hmP+HISquVaUOqgikpxkJAFPLgYuMRxrNGWNodwVFxySGz6esvBfuoLAtEY5ySiL43+girXEbV1FCdj/4Rm11d8G2bo9A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131811; c=relaxed/simple;
	bh=SshNRPgIyfZhOL9g00Tx3x9NU8S7Oou4WRUj0p6RJMc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=igb4nUndB/x+CE3L1dBhv3jgYg1h7xTnSAzhPDfL00UmuUEncSqGmj2frkj1GmIeBNyeYPsiFGE1xsnL2Hx0AcAd8YKQ8z32b4MqtZGVLkTBprpjETAUGhAeQL8yOX33VpyZPzoowOuby/lbf9m9/gz/OgB5wKy2x635FEvFpdE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=g2Oc97S5; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=9ZkmG5LDdBWcr5F9UYs40lXE33P3xPwDRyGsRHQ2ZJw=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1766131770;
 b=My6AVrh3BxTxj2X0kkbazFbcc/0irtvhqqpTFsDsfwDCNa93nCSTWpybP48826t2u/8l/PYr
 8DfG6hFBECLl0fvAOKEm581CVDoRpqBSkVZghvQc69e4jo2B0f/1/TiXPqHcpHV4E4EbrigQiD9
 okL0Q46DxmnXUggnrBGj6XV7MbZyDzC9Rt6ISMPybFxNl7cdiCP5+ZgLxg7qPj4kQBh4r8xImT0
 QNeP+883svDkJkD9UZOvoBknw8L6v42+fPfptV/vAHyVYzePAVsPWv29caqlqwhIg7TUm+6Y7kZ
 Q6B/kAEsmIkedAocXu1pMClhAYjbyMzmTv11fuobqU/dg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1766131770;
 b=XME+Nms10c7I9GlJ0kQM2JgUwG21hAaCx1Zo0NWp+ZXSXlpawsdcRQ4erzIfFl1zLNWxL9bp
 11UCr01SlZ8LKg+E66HmG0XJrU/5Yz1iTCfeCgWJKAEJtEfK2KNYcRe0sGWLW3ht/Sa3c+9KJno
 qoRxvpYVk2JkRLUCIIa9h6+Y8ybP6XwfaZDmnpssyNubhyB9WlVUTsIzVFV2eUJ997TFAoHfJUw
 06PyTwUtf/zgfkAVbr2y83KySRtIuxYlXPVoiCSZfU1ty0Ys8nNKnfvD8eVFOpua5K+aFAxokYN
 yp8GoLRmnFab8JFC3N9dKxIPNw/FzhvxOu3cLmlCwh3gQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Fri, 19 Dec 2025 09:09:30 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id AC51CCC0DAC;
	Fri, 19 Dec 2025 09:09:23 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Peter Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>,
 Roger Quadros <rogerq@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject:
 Re: [PATCH 1/6] dt-bindings: clk: rs9: add clock-output-names property
Date: Fri, 19 Dec 2025 09:09:23 +0100
Message-ID: <3357591.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To:
 <CAMuHMdWEJ-eYwUTnotsTVEtKrujYVsEB4kFVjRYh3wXZvyjfGQ@mail.gmail.com>
References:
 <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
 <20251218152058.1521806-2-alexander.stein@ew.tq-group.com>
 <CAMuHMdWEJ-eYwUTnotsTVEtKrujYVsEB4kFVjRYh3wXZvyjfGQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4dXgDN6fwtz3yb91
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:5b88bc5d9b014baba218eed2fec8b5d2
X-cloud-security:scantime:2.167
DKIM-Signature: a=rsa-sha256;
 bh=9ZkmG5LDdBWcr5F9UYs40lXE33P3xPwDRyGsRHQ2ZJw=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1766131770; v=1;
 b=g2Oc97S5zt0s1Oe1WtTPOcfkjgCt9CpbuV3uK0Q0NHeakYTWCqeVlOZ4c7Vko6+A9HGlBP+k
 7nR6TmFyrMqYie3h6xVVJlaE8qxM/fUYPDcdXVZBeqxIuFNNmnK6yIXbxQVvW0g5t3v6iDBfBx/
 aUJf/15yQX3Xegaxu5ecgeNe7ENQjrUkMYd7XkPOb7V3knK3KkLymMIxQQM5dCnSDoQmHOLun18
 Fzjc/ZmVITPwzirnGP+k+iGNrP3CrJsgkHNul2Sv+9USqVSpgQqbcQXnRGfb/2colf+nqOnwL17
 gdRXD0Yv2DeHIsfn7b5wxkwAQJtcUbxKMYcmj/m+CXlAA==

Am Donnerstag, 18. Dezember 2025, 16:26:10 CET schrieb Geert Uytterhoeven:
> Hi Alexander,
>=20
> On Thu, 18 Dec 2025 at 16:21, Alexander Stein
> <alexander.stein@ew.tq-group.com> wrote:
> > Add "clock-output-names" which is a standard property for clock
> > providers.
>=20
> Why? Isn't that property sort of deprecated?

It is? Oh, I wasn't aware of that. Maybe the property should be
marked deprecated in dt schema then.

Thanks and best regards,
Alexander

>=20
> Will be replying to the cover letter next...
>=20
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>=20
> Gr{oetje,eeting}s,
>=20
>                         Geert
>=20
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



