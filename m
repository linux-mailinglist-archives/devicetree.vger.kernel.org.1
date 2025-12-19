Return-Path: <devicetree+bounces-248133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CDDCCF0CD
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:54:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70567303371F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 346942EBDCD;
	Fri, 19 Dec 2025 08:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="YoC6Vg47"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay03-hz2.antispameurope.com (mx-relay03-hz2.antispameurope.com [83.246.65.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55C02EA468
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.89
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766134447; cv=pass; b=qTfPbTWgikZYMGcAj3SZA2lh/7yOt6VEOqWa0ydCor90NKGE0gbwv2Ss3axLUjJh9QKMPNKeQXanHoAM4cr0/oCw7Cvxs94W+OhwcO2PIF0eo3sToOgDazV5bgLmkeYx9uFlccCz0T876y05PKT3r7Qod08gaJ/sasHR0TsVhqE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766134447; c=relaxed/simple;
	bh=7lPH8ZuwqrR0EPFMmGW3KMxzeLFRv6JnjvXAyllK02A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fnWDfuUBTc4uojHoOFECcd2V55maOUFPqTejlcvsXtidASiTX2lMhEEGzyy+5qK1DTsJU9nUPNGcySRthq1NcdFv7I9wAumXg6TLgmW3DHFzugb+PXhde4tK8HgQSNEXjLNdlO0Alm0ZQfztuNSh7iECMqTGM/Sp2Gcz0iAx2UU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=YoC6Vg47; arc=pass smtp.client-ip=83.246.65.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate03-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=XlXr7igiWKsjjzIb+5AsG+BOhT+y2sXxD6hRFSbAez4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1766134343;
 b=VUoTccffnIqvhBF00zxfZP7rGrJ1grXaO2fM/0nQ7x0myaVVBgtrgPdoGoD/OnCppk1FCZXC
 8j+ahQ/gjcZ7WNAGVG1CK4NKjZPDhkKFFYIe9EZX2SNkQjrK4lCfkjI9YkiaYnkd6IofFeitjzy
 L3CiNfsbQ6t1abpjT92HprjpCrYX0cNRIXSjeknzhCpxY4/4amSuSJckX1wTBkfBm8KeMPI7qQj
 HMRv0m2h5fkvinznsJRZ6sdeFMDzER7Vd8LbRSaA5QE7MK0AgyHrKP3Fy2zXPjvApApp25qqnjF
 k2kmQg4ax3kmjk+SRAwkYmgSpwWDmigc7oTreZ8RbY1aQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1766134343;
 b=aOLBL14nG4xcXgo0ZyJcoCb5d1LqM19oZn2BHO3hqfapkpKCKs87BoN+mG770KuEeg7epbZO
 JxCpIkPEj558Ha8wGGYORe7bx8F8SYqGVCJOyA6job3+S5KpRMf8HIlFjcl1nDfuHuBEuOSN+sn
 yIyhvchJ4eTk7SJdLMh7Rr0XUaQRYZHVx4OT9ur6c47f4CUnLjs6aYJi5axq7pmv9+huo//zczh
 4s4z9KlZ4Ale1MkDXhX/lsrYbuDt6ebIxgzn5dw4xX8jKvAMwNa4GQo6Y0uXXFgSAGG3/yOlnfO
 RE7rLhsmT2DDPKY4jkgXEMZINzV/lAwbkU5dJVFYFjIaQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay03-hz2.antispameurope.com;
 Fri, 19 Dec 2025 09:52:22 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 4751A220D57;
	Fri, 19 Dec 2025 09:52:16 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
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
Subject: Re: [PATCH 0/6] Support TQMa8QM
Date: Fri, 19 Dec 2025 09:52:15 +0100
Message-ID: <24355727.EfDdHjke4D@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To:
 <CAMuHMdUkghCNb96J38hbEZ8Jct6m2MPvnPumGp-y_dPfPW9eAg@mail.gmail.com>
References:
 <20251218152058.1521806-1-alexander.stein@ew.tq-group.com>
 <CAMuHMdUkghCNb96J38hbEZ8Jct6m2MPvnPumGp-y_dPfPW9eAg@mail.gmail.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay03-hz2.antispameurope.com with 4dXh9s3M9TzYd7D
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:d9ceb68c40de01de860771274803b5bf
X-cloud-security:scantime:2.014
DKIM-Signature: a=rsa-sha256;
 bh=XlXr7igiWKsjjzIb+5AsG+BOhT+y2sXxD6hRFSbAez4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1766134342; v=1;
 b=YoC6Vg47r1nR1ena4A1AuL+PV/XYOW39Rfq92EFVnSaMZbF5cP13vtfnrT2SrUBx+zU9Ytru
 j9fJQTv88xCqdEG61Esm/YE/weRJpmRcVsYIJmLMk/bjretrYduiwMixRVLOsM7dm3YuhZ4TvDl
 9l1OIwvzSQzIvf62jTcO1Huo2GAYxq+O2hEhG+7UCobAs/BRiDd4x6DpsnZG+HCr15hQnklmi2l
 U08u+dLw0g9OvbHG5dNUTCCBb/hlze8KTh+15hg7KR9yB0Kty9psm3Vd/upN/wVbsk9ztosb67I
 CDbjx0YFugc0YssALMzQhtWBRkDhTqQWFIYwrwjuHcYWA==

Am Donnerstag, 18. Dezember 2025, 16:28:39 CET schrieb Geert Uytterhoeven:
> Hi Alexander,
>=20
> On Thu, 18 Dec 2025 at 16:22, Alexander Stein
> <alexander.stein@ew.tq-group.com> wrote:
> > this series adds support for TQ's TQMa8QM. The first 3 patches are prep=
atory:
> > 1. Add support for clock-output-names for clk-renesas-pcie. This is nec=
essary
> > as clk-imx8qxp-lpcg.c (driver for phyx1 phyx2 clock gating) reqiures th=
at
> > property on the parent clock.
>=20
> Hmm, clock consumers should have no business with the names used by
> clock providers, even less so whether those names are specified in DT
> or not.

Well drivers/clk/imx/clk-imx8qxp-lpcg.c does exactly this. AFAIK not just
the ones references in DT, but also hard codes ones.

The root cause is that clock-hsio-refa and clock-hsio-refb in
arch/arm64/boot/dts/freescale/imx8-ss-hsio.dtsi are setting platform-specif=
ic
GPIOs in SoC .dtsi...

My current idea is to use fixed-factor-clock instead:

> &hsio_refa_clk {
> 	compatible =3D "fixed-factor-clock";
> 	clocks =3D <&pcieclk 0>;
> 	clock-div =3D <1>;
> 	clock-mult =3D <1>;
> 	/delete-property/ enable-gpios;
> };
>=20
> &hsio_refb_clk {
> 	compatible =3D "fixed-factor-clock";
> 	clocks =3D <&pcieclk 0>;
> 	clock-div =3D <1>;
> 	clock-mult =3D <1>;
> 	/delete-property/ enable-gpios;
> };

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



