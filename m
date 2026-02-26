Return-Path: <devicetree+bounces-268738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHFqDysgoGmzfgQAu9opvQ
	(envelope-from <devicetree+bounces-268738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:27:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C79661A43A6
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8286A303CC1A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5C03A1E72;
	Thu, 26 Feb 2026 10:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="YLDa6XyB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay97-hz1.antispameurope.com (mx-relay97-hz1.antispameurope.com [94.100.132.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750D33A1E9B
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 10:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772101566; cv=pass; b=Ug/tq01EtPlxewhhhea8vZq1njhqqQtaS0XvtBuLrVrJBkIb+3A5GcgieeRyZJ0LBaB6/Uii3B5eyhUcQD36qi4u7IOWdEF1WNxQP0nMyvWUzh2f4GOTAM/4WcnI8tQ5AMvFlKF8HR9WSQ25A/ksqnGD7Khz2kVMfGW2yr3Ykwo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772101566; c=relaxed/simple;
	bh=moyssVlWpwqjaiSMGtPZUV/767qmOniG50xtLgGUBcU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=p8nKinYUXAUpUO/MOPLrejecw4B4xWZAkLeIZavAdIQP3fEpwJmIQZpwSCcUpFRLrYtiguvt/Na/Cc9/4gYdMoiTC0unVfdV88zLZHXa6y8PS+081QcN6wnXxyETyQgIDQoiibS5D7QDacH3qXdsQWd+ajXbIyXnGff4bz5Dn78=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=YLDa6XyB; arc=pass smtp.client-ip=94.100.132.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate97-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=kUn9csnyj4e4zd3fT0P+1ubmMOmYC1BISsEuxDwjNs4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772101474;
 b=aSZ5oAPYtxFDcr80ZLAfoiFqpOp6JbKhQdt5MHY2VWr1tnb4mm19gWkAzinM2JW4XNt2A5dP
 tOidjyVKK0sX+exaKRNW9DMEbjCKGyR8wJGfBffswHNGagO19YyNpILPNMPKYYuiU706xOHL4mj
 wi7Ws4N6WTOQd15pFUmOa1FawPpvTwweT1pvIZ/HW9qvN0N9f+iqEXuKxx+OPlZKfFt6+9vKQOZ
 SzqajpPoDpDmvHC/uEUXXgxwZYKh7gDGJUzCXzobzoFXPkQt72mRcnFIIDxdW9xRpqvB3o5FkPG
 i39hNKt67TVOJexjWjq2WE05MGzD7CxGu9zCay872fi3g==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772101474;
 b=Zpu/l36jQQ2UWnsMdpqzBoZNX7XOhY/1BhDP1W/BMOon4dd5sP4HIiklFw5kG1BThAjjlVHJ
 +DQ/FPwPKye36iieXGRbAuUjV6f5P9Vhp6hzlSCSTV5Bxgo+0gq1+2AZvXDYug+9AaSWaiAZPlx
 Jt8xTELDWwUgq0M0k6y2FKCT3gg3Fny+0zTY3xxPc+s6FsQl91H/hKop5yyejcSbxREK68h7sGT
 mzwJ2KFvXwj5yTaoObKFdmiult7tyUhXNxKzW0g/nS0L2kXM6V9TB0DzIk1Qi3GXSscRv95XGzi
 U3Cqoxz1nhzO+YY0BzQqMjkgp2w1sFZBHY5TS++ZzyPjQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay97-hz1.antispameurope.com;
 Thu, 26 Feb 2026 11:24:33 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id E9B992205B2;
	Thu, 26 Feb 2026 11:24:27 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>,
 Tony Lindgren <tony@atomide.com>, linux@ew.tq-group.com, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 markus.niebel@tq-group.com, matthias.schiffer@tq-group.com
Subject: Re: [PATCH] ARM: MAINTAINERS: TQ: Orphan TQ Systems boards
Date: Thu, 26 Feb 2026 11:24:27 +0100
Message-ID: <2403960.ElGaqSPkdT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260225171135.122955-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260225171135.122955-2-krzysztof.kozlowski@oss.qualcomm.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay97-hz1.antispameurope.com with 4fM6yN64Qkz27lDm
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:5f8ca20172c337f721ff1e894cd67a83
X-cloud-security:scantime:1.864
DKIM-Signature: a=rsa-sha256;
 bh=kUn9csnyj4e4zd3fT0P+1ubmMOmYC1BISsEuxDwjNs4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772101473; v=1;
 b=YLDa6XyBYvqJPm2pA/3/WH3aRDyGppCZPCBWluzhCokUgm3/H/VPikgpO6xuXtyY7oEuog6W
 6Z0idAi9StWLpamh1mpN6mdXdZ55ZgsRA5qlICsZ4ZMG3lJhc8BYvH4O5klAklkLutUhZmwh1Sg
 xqAeI0efki52MNjjgQktgtmOtxBFV7uw6vhB+EImLOP10ENGagjMdA7x39sdzIF6Jfvj48P27Gh
 gDSJbb8vIxNk/8wDcfvP6ogE1d8dVXwlO8AbEZC9GaTqNFkrWOTF8G4d0tnJcLS49+v5znBrqMT
 qqYfoo3oMzE+I1dSl4lp14f2LH5oAqwNDMwwxNzSWVL1g==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268738-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,gmail.com,kernel.org,baylibre.com,atomide.com,ew.tq-group.com,lists.linux.dev,lists.infradead.org,vger.kernel.org,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:url,tq-group.com:email,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C79661A43A6
X-Rspamd-Action: no action

Hi Krzysztof,

Am Mittwoch, 25. Februar 2026, 18:11:36 CET schrieb Krzysztof Kozlowski:
> Emails to all TQ maintainers bounce for a month or longer, because their
> systems decided to block smtp.kernel.org.  This is nothing which can be
> fixed by Linux Foundation IT staff, but aggresive and irresponsible
> email provider.
>=20
> There were no answers from linux@ew.tq-group.com or anyone else in TQ
> Systems after my inquiries about this problem, thus assume the mainline
> efforts are abandoned.
>=20
>   <Markus.Niebel@tq-group.com>: host mx01.hornetsecurity.com[94.100.132.8=
] said:
>     554 5.5.4 Your IP address 172.105.4.254 has a bad reputation.
>=20
>   <matthias.schiffer@tq-group.com>: host mx01.hornetsecurity.com[94.100.1=
32.8]
>     said: 554 5.5.4 Your IP address 172.105.4.254 has a bad reputation.
>=20
>   <alexander.stein@ew.tq-group.com>: host mx01.hornetsecurity.com[94.100.=
132.8]
>     said: 554 5.5.4 Your IP address 172.105.4.254 has a bad reputation.
>=20
> Cc: markus.niebel@tq-group.com
> Cc: matthias.schiffer@tq-group.com
> Cc: alexander.stein@ew.tq-group.com
> Cc: linux@ew.tq-group.com
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Thanks for rising this up and sorry for the delay of my response.
We are still in the process of resolving the mail filter issues.

NACK for the patch though. Our mainline efforts are not abandoned and
we still support our hardware.

Best regards,
Alexander

> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index faa914a5f34d..f446fb30cf6c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -26781,7 +26781,7 @@ F:	drivers/hwmon/pmbus/tps546d24.c
> =20
>  TQ SYSTEMS BOARD & DRIVER SUPPORT
>  L:	linux@ew.tq-group.com
> -S:	Supported
> +S:	Orphan
>  W:	https://www.tq-group.com/en/products/tq-embedded/
>  F:	arch/arm/boot/dts/nxp/imx/*mba*.dts*
>  F:	arch/arm/boot/dts/nxp/imx/*tqma*.dts*
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



