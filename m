Return-Path: <devicetree+bounces-262352-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJeLCIwtgmlFQAMAu9opvQ
	(envelope-from <devicetree+bounces-262352-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:17:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C828DCA17
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84F213016B1E
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 17:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F3C23A1D08;
	Tue,  3 Feb 2026 17:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="NuUOa/tW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5A0311977
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 17:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770138767; cv=none; b=SSz9R8IHdfRkhDc/8/v0Na0nggjSZO+IkPUun1UgMWXzBQb9ZiWeuiG9imVQb70W06psMJg6N7kT+WSjyinrMiAsHgCY0/37f7W4DpsOisaT45J82uK7RmmQHH+Z4mC3uaSadHVbFEpanlZy+0BditIf7s/+G9rBqAqFKDdufI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770138767; c=relaxed/simple;
	bh=Y+OuOI2ubqgCVchlqqXv2JkAghT0P/SAeklx80lKeoU=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=m29mhWSAmSjkIImA7HU+5IIBi/cDqLOQmYh+h6jZLQTY18tZo0p1yHvwSV3Y/udt2JyJTj/t0NPKi9lRYRB0p2ogCOTr4sFVLgJeRCNF2ra+aipunGPa3Kl+bDgLGJG9SeaOQetSiImi2e1PGEz2Bkl+DAGVZNXsvOc3THiKWUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=NuUOa/tW; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id F2DB041C6B;
	Tue,  3 Feb 2026 18:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1770138761; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Q/RzIoETwq7EI8AtWKZybI6w+H5plu3IYaH4qKanRYc=;
	b=NuUOa/tWVQA88Evlzzmypa+ZhmtZ9WD5NE3qkTSvFW9VDfzrlzWn/ica/Oh19ldTQOQex1
	CG9Fzqx/MhWhIrx46uP60Hpriu/XwRWX0tUqFIbbDG19lngzHUuzJCSIS+GwVeQadyPf90
	VxkSaSy9cqfGiwqZM3p0SoZDp1w/pOF25hTsRFUJ99YTCucmLrE+ehN97OzMwKkEm3Xq/f
	ov+VWlccOepeSU/UKtDTG7Rom3SqhOaZgZr3a+oEmlU0ZQUEZdr69c7BNzN7k3IFODzDgL
	FduwERu9VmRpfmuGf7o30rvVO61f3yK3rO1DnmotOQR50cKw3Q49+moMFBH42g==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260203151013.305032-1-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset="utf-8"
References: <705908c9-4552-d808-783e-3ce0cf45bbff@manjaro.org> <20260203151013.305032-1-jerrysteve1101@gmail.com>
Date: Tue, 03 Feb 2026 18:12:37 +0100
Cc: alchark@gmail.com, andyshrk@163.com, conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, robh@kernel.org
To: "Jun Yan" <jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <f6eb572c-dd2c-9606-4fb5-b26b51bbbb06@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add OneThing Edge Cube series
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 4d8686c9e18ae259edcb18fbfd3b0c43d48bb8492706122afcdcffd3f170db1beae6de266bce58e1b5874c7e84fd60e44ae1a487be8ceb28d76f935daafaea6c
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_QP(1.20)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[manjaro.org,quarantine];
	R_DKIM_ALLOW(-0.20)[manjaro.org:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262352-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,163.com,kernel.org,vger.kernel.org,sntech.de,lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[manjaro.org:+];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dsimic@manjaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1C828DCA17
X-Rspamd-Action: no action

Hello Jun,

On Tuesday, February 03, 2026 16:10 CET, Jun Yan <jerrysteve1101@gmail.=
com> wrote:
> > On Monday, February 02, 2026 16:04 CET, Jun Yan <jerrysteve1101@gma=
il.com> wrote:
> > > The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> > > eMMC storage, and supports one SATA interface, one Gigabit Ethern=
et
> > > port, and one USB 3.0 port.
> > >=20
> > > Other than the difference in RAM capacity, the OEC and OEC-turbo =
are
> > > identical in all other specifications.
> > >=20
> > >   Specification:
> > >     - Rockchip RK3566
> > >     - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
> > >     - eMMC 8GB
> > >     - Gigabit Ethernet port x 1
> > >     - USB 3.0 port x 1
> > >     - USB-C 2.0 port x 1
> > >     - 12V DC Power supply
> > >     - SATA 3.0 connector x 1
> > >=20
> > > These devices do not have a PMIC, and their hardware circuit desi=
gn
> > > is highly similar to that of the rk3566-box-demo[1]. Hardware sch=
ematics
> > > are not available at this time, with the vendor firmware dts avai=
lable
> > > for reference[2].
> > >=20
> > > Ethernet, USB 3.0 and SATA 3.0 ports tested, all working well.
> > >=20
> > > [1] https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/bo=
ot/dts/rockchip/rk3566-box-demo.dts
> > > [2] https://archive.org/download/wxy-oec-RK3566-4G-dump/wxy-oec-R=
K3566-4G-dump.dts
> > >=20
> > > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> > >  .../rockchip/rk3566-onething-oec-series.dts   | 312 ++++++++++++=
++++++
> > >  2 files changed, 313 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-=
oec-series.dts
> > >=20
> > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/b=
oot/dts/rockchip/Makefile
> > > index 4d384f153c13..234fa53abe17 100644
> > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > @@ -104,6 +104,7 @@ dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-a=
nbernic-rg353v.dtb
> > >  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-anbernic-rg353vs.dtb
> > >  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-anbernic-rg503.dtb
> > >  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-odroid-m1s.dtb
> > > +dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-onething-oec-series.=
dtb
> > >  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-orangepi-3b-v1.1.dtb
> > >  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-orangepi-3b-v2.1.dtb
> > >  dtb-$(CONFIG=5FARCH=5FROCKCHIP) +=3D rk3566-pinenote-v1.1.dtb
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-ser=
ies.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > > new file mode 100644
> > > index 000000000000..2007b93e190e
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > > @@ -0,0 +1,312 @@
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include <dt-bindings/gpio/gpio.h>
> > > +#include <dt-bindings/leds/common.h>
> > > +#include <dt-bindings/pinctrl/rockchip.h>
> > > +#include "rk3566.dtsi"
> > > +
> > > +/ {
> > > +	model =3D "OneThing OEC/OEC-turbo";
> > > +	compatible =3D "onething,oec-turbo", "onething,oec", "rockchip,=
rk3566";
> >=20
> > Thanks for the v3!  After thinking a bit more about it, it would be=
 better
> > to name the board dtb "rk3566-onething-edge-cube.dtb" and omit the =
"series"
> > part, because the only difference between the board variants is the=
 amount
> > of DRAM.  Also, "onething,oec-turbo" should be removed from the com=
patibles,
> > and the single compatible renamed to "onething,edge-cube", because =
I see no
> > need to have an additional compatible, which may be added later if =
really
> > needed for some unforeseen differentiating purpose.
> >=20
> > Also, it might be better to use "OneThing Edge Cube/Edge Cube Turbo=
" as the
> > combined name, because "Edge Cube" is more self-descriptive than ju=
st "OEC",
> > which may also help with various search engines down the road.
>=20
> Sorry for the quick follow-up.
> In official documentation (Most of it is in Chinese) from OneThing Te=
ch[1],=20
> the designations "OEC/OEC-turbo" are more commonly and widely used.
> for this reason, I propose retaining the "OEC/OEC-turbo" naming in th=
e model=20
> property.

I see, that's an interesting twist.  As some kind of a compromise, it w=
ould
be best to have the board dtb named "rk3566-onething-edge-cube.dtb" and=
 use
"OneThing Edge Cube (OEC)/OEC Turbo" as the combined name.  That way th=
e
board dtb name isn't too short, while "OEC" is present in the model nam=
e,
for search engines to pick it up, hopefully, and for people to see it i=
n
a few places. :)

> [1] https://help.onethingcloud.com/be81/OEC1/80c5


