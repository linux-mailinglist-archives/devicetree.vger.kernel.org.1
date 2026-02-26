Return-Path: <devicetree+bounces-268672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBIaMAUKoGm4fQQAu9opvQ
	(envelope-from <devicetree+bounces-268672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:53:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3602A1A2EF9
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:53:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6AD2304501D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:53:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 558CE395277;
	Thu, 26 Feb 2026 08:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="ZYsrvQ7/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay60-hz1.antispameurope.com (mx-relay60-hz1.antispameurope.com [94.100.133.230])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719551E5B7B
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 08:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.230
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772095987; cv=pass; b=SiDUJR/9HUaXd4mekC2zQJSSZoU7Sx/I/veVE6PNrATmv17LFbI5Axoh1vfyFJ4nMNps8DYIR3ktLGhOTZURVmt9j7Dusn1pVTKyARVZ5eCPca0zi36vsLVY8l7Vm4Xh1+3CVgQ0fUwKLhycUWCHTiZ0hqiF7R0g+pa4RFANL+A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772095987; c=relaxed/simple;
	bh=uimvKOO39GkZdBj9POB5Xa7eFoV+1pJ5ljpxLfXiy5w=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QURXaoFRPV5dK54ho4zRvc//jpM0zbT7axUW5bAgcAPssauTapcXNUQOcqMr8nHaYY3i3m7OFjtPNOClWA5udg9WhUeTXDUnGZfp4CHiqpbE3ZUTzxherBVSCMOljx/GqpdiFYeqrQiGPIvXVLdKhM/UK5JPpVQrqkn3mS0GAIo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=ZYsrvQ7/; arc=pass smtp.client-ip=94.100.133.230
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate60-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=pZA7AsIzdwCY7ab6l8jLMqVVu0K3dmUt9FW8oclhVyw=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772095948;
 b=oMuDYSAcbrQr++7oKv0iDY8/Up8U9MUfXjyB5hP+bFE+w1CNPAlqrBQCOC8kZsn7L2B1BYlY
 +HtKvIQlmRxXlYgwABUFNZYvJx4s9D5ZnIi+yTOqrwIerdVUDLfAFpBwyXqOlBJpDkSIkkl1xQk
 6+o0XXWfFK+gcnHpIAOKAkUnz3D3XZc0tDj/OeAFxGRS9zU8UVBdBenf4LsyYev173fXY2wyYd5
 o8uOY1Lgiu836eAJJiZIjPOIHAvh4OGCyIfbYiGqXBLwyexDVo2SBhbrxVobbJlgLYMSmfFCbax
 CFZX6/Wy+Z6WqxbqMniuFhWakxUlvOMpiyCsubGe3VU1w==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772095948;
 b=RUKiZYanhYoOQwCpn11ZNXeDNq23jXlhM7AM5nqcwgZKiGS0wjBzotNoiqxk1tFeT/pQYYgd
 1LVA0pEkIrJNM+M3G3dn8iV6NGMzUPzSt9GIwiLJ0IW1cZadph/ZUhLxkHFnGei/GEtggcI2dcN
 rxWQjhmeWteQuGWkxYOPct1AeuxEw+BI7gXnrWjXklfb+cD3lPSElSLTAC7xt/3eC7aNv9EyMt/
 ZwDEofkIu82qP+ILrVdTG/kLvycZHjj3PrBhBNdXv4+4byLHqzq5pgxFmNn8IrWYMAgvyZ9JBCy
 mFakn5ExqChtnsXg8+QkafhP3rvMYpRlUiVcZCr350n0Q==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay60-hz1.antispameurope.com;
 Thu, 26 Feb 2026 09:52:27 +0100
Received: from [192.168.153.128] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: nora.schiffer@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 419F65A0F0A;
	Thu, 26 Feb 2026 09:52:23 +0100 (CET)
Message-ID: <ccc6e9665ec8d432a5729fb18a757bb76cd95d9e.camel@ew.tq-group.com>
Subject: Re: [PATCH] arm64: dts: freescale: imx8mp-tqma8mpql-mba8mp-ras314:
 fix UART1 RTS/CTS muxing
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,  linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, linux@ew.tq-group.com,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 26 Feb 2026 09:52:22 +0100
In-Reply-To: <aZ8YFYbRIHlcmWk3@lizhi-Precision-Tower-5810>
References: <20260225083419.5639-1-nora.schiffer@ew.tq-group.com>
	 <aZ8YFYbRIHlcmWk3@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-cloud-security-sender:nora.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: nora.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay60-hz1.antispameurope.com with 4fM4w80B2Yz28yMP
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:daeffe5ef58851175bcfb2fcf892fa20
X-cloud-security:scantime:1.389
DKIM-Signature: a=rsa-sha256;
 bh=pZA7AsIzdwCY7ab6l8jLMqVVu0K3dmUt9FW8oclhVyw=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772095947; v=1;
 b=ZYsrvQ7/Sf1sSFfqxyMsKWQzbizOKngJuTmjS5u1etgINp2WuX5HPIP7vxrvP/IA6gu4uuyA
 a/TdnKdtidXYt1e+uichrJA5TZ+sWFD/rQSyBsSbzk39SVvhEAZGsMc/4ILTSsMGWDIwGj7KZs6
 bUTP98eaxuKOwoAeujdRtp+XinxxexfFtyMv0x3K6aAeASecBIlFpPi5gfdkVdZe2kde5OK0i/8
 urvkfReVTC1kU0q4q/XlkvSTy/vVnWxc5yIN9+enAc1mMJ0QsT/RevlBk5Lqu7cM9ZenuWWHszO
 THolnYJEZJ/8zilHkIhe753OmJLh9ZaW7nAxAuDql9j/A==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[pengutronix.de,kernel.org,gmail.com,lists.infradead.org,lists.linux.dev,ew.tq-group.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-268672-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tq-group.com:url,tq-group.com:email,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 3602A1A2EF9
X-Rspamd-Action: no action

On Wed, 2026-02-25 at 10:41 -0500, Frank Li wrote:
> On Wed, Feb 25, 2026 at 09:34:18AM +0100, Nora Schiffer wrote:
> > The pinmuxing for UART1 was mixing DCE and DTE modes, which cannot work=
.
> > Consistently use DCE mode.
> >=20
> > This switches the RTS and CTS pins, which is fine for this board, as
> > UART1 is routed to a pin header.
>=20
> Is below commit better?
>=20
> UART1 operates in DCE mode, but the RTS/CTS pins were incorrectly
> configured using the DTE pinmux setting.
>=20
> Correct the pinmux to match DCE mode, which does not affect existing
> functionality because UART1 signals are routed to a pin header.

Hi Frank,

your commit message sounds better, do you want me to send a v2?

Best,
Nora



>=20
> Frank
> >=20
> > Fixes: ddabb3ce3f90 ("arm64: dts: freescale: add TQMa8MPQL on MBa8MP-RA=
S314")
> > Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
> > ---
> >  .../boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts     | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras3=
14.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
> > index b7f69c92b7748..1665a5030b993 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314.dts
> > @@ -848,8 +848,8 @@ pinctrl_tlv320aic3x04: tlv320aic3x04grp {
> >  	pinctrl_uart1: uart1grp {
> >  		fsl,pins =3D <MX8MP_IOMUXC_SAI2_RXFS__UART1_DCE_TX	0x14>,
> >  			   <MX8MP_IOMUXC_SAI2_RXC__UART1_DCE_RX		0x14>,
> > -			   <MX8MP_IOMUXC_SAI2_RXD0__UART1_DTE_CTS	0x14>,
> > -			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DTE_RTS	0x14>;
> > +			   <MX8MP_IOMUXC_SAI2_RXD0__UART1_DCE_RTS	0x14>,
> > +			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DCE_CTS	0x14>;
> >  	};
> >=20
> >  	pinctrl_uart1_gpio: uart1gpiogrp {
> > --
> > TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, =
Germany
> > Amtsgericht M=C3=BCnchen, HRB 105018
> > Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan=
 Schneider
> > https://www.tq-group.com/
> >=20

--=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
https://www.tq-group.com/

