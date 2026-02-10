Return-Path: <devicetree+bounces-264244-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DMCNsPTimnWOAAAu9opvQ
	(envelope-from <devicetree+bounces-264244-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:44:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1F71176C0
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:44:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 912EE3021E98
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8296E32E727;
	Tue, 10 Feb 2026 06:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="QRflgOS8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay36-hz1.antispameurope.com (mx-relay36-hz1.antispameurope.com [94.100.133.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399AC32BF55
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.212
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770705847; cv=pass; b=CMM8PI6QRKx6CV8ELqLj2yB5io09Y47gvhhZaKuBR2Jv7XKCEPCqO3RXnrkiXN7oSXc42c3/0imIa9pLUnKAZ7o0E7EyloNY/Jn79XI6qVWdBpXHLeIhokgLS1LiQQgh1tPDZXbQVCWcoyn4mK6PSaIDLmSoN38ZqzE0cwCkAOA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770705847; c=relaxed/simple;
	bh=NWfPGNpiqRcWQ8BQoJ8ZIJ8pcwpimpdiDR2t2aXA+wI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pnGBk6CqN9tHOUaHw8riJnrhA81MThX8HV6FpdWmGOs+bUWWF/d+XkquZHrBNT3IrrB40/LUz/SiHuAUhLNqjzLQtOAnCZ7wqgAMsyEXUQK/4hgSabBlE+ZvP19+rdURyR6oh8D4a7p+QQzVgTLxTO1IJ0hpFJPL8A7DnYFPMig=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=QRflgOS8; arc=pass smtp.client-ip=94.100.133.212
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate36-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=b56rULzaQmeMuoYAaEU4xGBS2qJkvIqeuKLdirVgvFA=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1770705792;
 b=Ib/TnNUv4nZT4di/ph8Ff0ghYHV14ga9cV6bSwdF988VtCNeAs+EGQ0z/4f9EesLdb0QbfOj
 M8MN+SkovJp6433em9V81o0Yi0hfqNuuvJWQ6YuO/4lg7a8F9hjkr02M/DMxDHhGplqw/1ir29I
 10fXXe64PNYufZqnI1vL7mrsQtiuP4gR5ziddg0myO3+dvy9oyMvtFuW3iT9JoNj/W5sSbBwg1U
 IyfpSQRXPj01QZcsYRUd82ZxcsoRb8FLBbe56ruAfdrNWPeKPnEBG1CcJ6WUiHzftRFv7Nc3XWh
 KIEKdm3eu/yaPC7d60G7FeKuv4vKEHgXUr27HzW7Een3g==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1770705792;
 b=iL0U3JTRf21plG97HfuA4nQ5K60bDPmOmtr9tvdsXCN2lRWCY2+T+lMwo8Uc/I8oZ5BWmf8e
 0Oh01uRnAnPLAC7Mtw29mQaCRZHWuyjwaDGWQaXIwg40ci4jEQVcsZkijaEARm4O8yk5z4xxKgw
 Zbz5j5GVodON7DinhcODcrOWbakKjyPaKDssFjRPuQJ2XG2bV4+lPZ5maTBs2Iac+32p2+Lt3j1
 I29x6+kcBaxd/Mw5mZ4KFNIYU0jCFNCbDAYQ1XO1Y5/JP+Z8DIAgJ21hC33LmEupO/m8aQL9rOj
 VIsHKtnFKAFA1e/26HK4VeMlDIy4pW7VSrD66+Ru70z4Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay36-hz1.antispameurope.com;
 Tue, 10 Feb 2026 07:43:11 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 907185A3005;
	Tue, 10 Feb 2026 07:43:05 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Markus Niebel <Markus.Niebel@ew.tq-group.com>,
 Shawn Guo <shawnguo@kernel.org>, linux@ew.tq-group.com,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 2/2] arm64: dts: imx93-tqma9352: improve eMMC pad configuration
Date: Tue, 10 Feb 2026 07:43:05 +0100
Message-ID: <5085410.31r3eYUQgx@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <aYozeOpdHo21D8v8@lizhi-Precision-Tower-5810>
References:
 <20260209155015.267008-1-alexander.stein@ew.tq-group.com>
 <20260209155015.267008-2-alexander.stein@ew.tq-group.com>
 <aYozeOpdHo21D8v8@lizhi-Precision-Tower-5810>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay36-hz1.antispameurope.com with 4f9BpL2LgXz2HYn9
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:99e422220242feeb3b158eff7f537415
X-cloud-security:scantime:2.145
DKIM-Signature: a=rsa-sha256;
 bh=b56rULzaQmeMuoYAaEU4xGBS2qJkvIqeuKLdirVgvFA=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1770705791; v=1;
 b=QRflgOS8sqBuN4At/BIU9KinRzsy2E7tc2hMIImqGNOvCq9xwLzAhhiFcHdGJRH0qCahiLNp
 QfqL9AMUHLMV4ytCbaONRu6PUDlurUpPoHdMqi/NwrglC/b8oOkHyYy1RwGiZnJy4o5rr0vaRw7
 +R12ENRvnJgqFJ286tXR8cRRKYoF/EZ/PzflSfkn/BsETn7SKkUk9KemjxPYuyIB0SFpP5aBOIa
 UAQn4wln2B0rm+86QC8MO9T28gzJCvORhvAxNEhSlMfPN9XEy76+bFd4DfbW/xXZ669OhwzMfEZ
 fljN6jkRObr/CjctdNqR3pG7en73YXWrTpK1o+uu9R7Zg==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264244-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:url,tq-group.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4C1F71176C0
X-Rspamd-Action: no action

Hi Frank,

Am Montag, 9. Februar 2026, 20:20:24 CET schrieb Frank Li:
> On Mon, Feb 09, 2026 at 04:50:14PM +0100, Alexander Stein wrote:
> > From: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> >
> > Use DSE x4 an PullUp for CMD an DAT, DSE x4 and PullDown for CLK.
> > This improves stability and detection at low temperatures under -25=B0C.
>=20
> Nit:
>=20
> Use DSE x4 an PullUp for CMD an DAT, DSE x4 and PullDown for CLK to impro=
ve
> stability and detection at low temperatures under -25=B0C.
>=20
> If you think it is okay, I can update it when apply it.
>=20
> Reviewed-by: Frank Li <Frank.Li@nxp.com>

Thanks, this sounds even better. Feel free to amend it when applying.

Best regards,
Alexander

> >
> > Fixes: 0b5fdfaa8e45 ("arm64: dts: freescale: imx93-tqma9352: set SION f=
or cmd and data pad of USDHC")
> > Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >  .../boot/dts/freescale/imx93-tqma9352.dtsi    | 26 +++++++++----------
> >  1 file changed, 13 insertions(+), 13 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi b/arch/a=
rm64/boot/dts/freescale/imx93-tqma9352.dtsi
> > index 3a23e2eb9febe..ce34a296495c4 100644
> > --- a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
> > @@ -271,21 +271,21 @@ MX93_PAD_SD2_RESET_B__GPIO3_IO07	0x106
> >  	/* enable SION for data and cmd pad due to ERR052021 */
> >  	pinctrl_usdhc1: usdhc1grp {
> >  		fsl,pins =3D <
> > -			/* PD | FSEL 3 | DSE X5 */
> > -			MX93_PAD_SD1_CLK__USDHC1_CLK		0x5be
> > +			/* PD | FSEL 3 | DSE X4 */
> > +			MX93_PAD_SD1_CLK__USDHC1_CLK		0x59e
> >  			/* HYS | FSEL 0 | no drive */
> >  			MX93_PAD_SD1_STROBE__USDHC1_STROBE	0x1000
> > -			/* HYS | FSEL 3 | X5 */
> > -			MX93_PAD_SD1_CMD__USDHC1_CMD		0x400011be
> > -			/* HYS | FSEL 3 | X4 */
> > -			MX93_PAD_SD1_DATA0__USDHC1_DATA0	0x4000119e
> > -			MX93_PAD_SD1_DATA1__USDHC1_DATA1	0x4000119e
> > -			MX93_PAD_SD1_DATA2__USDHC1_DATA2	0x4000119e
> > -			MX93_PAD_SD1_DATA3__USDHC1_DATA3	0x4000119e
> > -			MX93_PAD_SD1_DATA4__USDHC1_DATA4	0x4000119e
> > -			MX93_PAD_SD1_DATA5__USDHC1_DATA5	0x4000119e
> > -			MX93_PAD_SD1_DATA6__USDHC1_DATA6	0x4000119e
> > -			MX93_PAD_SD1_DATA7__USDHC1_DATA7	0x4000119e
> > +			/* HYS | PU | FSEL 3 | DSE X4 */
> > +			MX93_PAD_SD1_CMD__USDHC1_CMD		0x4000139e
> > +			/* HYS | PU | FSEL 3 | DSE X4 */
> > +			MX93_PAD_SD1_DATA0__USDHC1_DATA0	0x4000139e
> > +			MX93_PAD_SD1_DATA1__USDHC1_DATA1	0x4000139e
> > +			MX93_PAD_SD1_DATA2__USDHC1_DATA2	0x4000139e
> > +			MX93_PAD_SD1_DATA3__USDHC1_DATA3	0x4000139e
> > +			MX93_PAD_SD1_DATA4__USDHC1_DATA4	0x4000139e
> > +			MX93_PAD_SD1_DATA5__USDHC1_DATA5	0x4000139e
> > +			MX93_PAD_SD1_DATA6__USDHC1_DATA6	0x4000139e
> > +			MX93_PAD_SD1_DATA7__USDHC1_DATA7	0x4000139e
> >  		>;
> >  	};
> >
> > --
> > 2.43.0
> >
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



