Return-Path: <devicetree+bounces-259791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHaEIMmGeGlVqwEAu9opvQ
	(envelope-from <devicetree+bounces-259791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:35:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1D291CB0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CB4230247C2
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1975A2E0413;
	Tue, 27 Jan 2026 09:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="fmBZCKnD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8332857FA
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 09:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769506327; cv=pass; b=WYwyg/QAoYQSztnVsOl/sBfHWyjmVeHvDf2Yb26IP4czgyztvUId9Dco83qiH/ZsqKxcb4ISejruXAiOM0lEGDKPIxNHZJ461O0sPgdeXk1nJoGmayjkgXh15npO+lvZiM8rq8AGWXy4wBQL6MgZY/TZN1voEgjp6UhZaVPVXyM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769506327; c=relaxed/simple;
	bh=M3oMSDbjiW4R18BSXzzYXRQFWlLFqSCUKD5znDE6+cE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=t7JwNQ5VmpAUGNLWd5QsGi5ksqv/5Nt1X7blgysoBOFHQIUGzzZEcbGMqslgR77vmyuE5CmViQWmFCe36V8GIHyUmq2TAls1wa1XWQL1YlT6qeNt9KmnM+XLk0Wwq7i1VPs0IbLueAkLmBGg0LEPGvowhIF/yqm6qezovBEeM4A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=fmBZCKnD; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=FUH6gbSg3S533iqWlZ7raLgIM4/kSDOyTLmPhW+hpEg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1769506297;
 b=EmordXtg0oT2nOQT1rW5YuEKpXKBLUSomgzRkYRnSgI1JOYauWSUjuvWNK0YXgbA2mazousJ
 Wo22wDmY7bZ8MiLBkLWIrW7teYtJC8PJx9SQEudcgjSYFJClpcd+Y69LfG93lPEZjleVfcoYFfw
 02VebNzwzuwTKMsya8yOjaG0wSGJeRVi7f7KsZ/81YJtNEggq86z1a+6reuR7vRLuYDbr69SlIX
 H73NfhMzhPrwqyq+fTXjAOhfyTFutrzmL/7Q1hN/AmH2eSriXPpWneDpknmM+mV5QO8HTYRM5hN
 3dx5UoyP5fpKZckgjdur1CGonOpOK+c2TthBbvGJz332Q==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1769506297;
 b=E8qetw1OUL19hYEH7E24raYI2iHKnvER7VQmgW6KuAjUVDt3dR+2DDGv2XGZoGLZPdp8DebD
 irrqndYKdad+iOeIO/+hSjZp65WAeIJ5aQiv+j8710ZISeIejKG1rth3gujmAL9LE1QJKEqry8k
 mLgBt3X3dpuJeGHOoI4I3uihrsbum+JFcnP8vKlCbaeZh2mP7iwFXZP9+FNxGGGNfycpQhTpRwN
 iAIhY6rb/kNIAmKN+xeVGCngZ45qBNQ4MET77Fff25Na7o3tti393pdlvhTyFF+8iyymdDZBN2G
 2kGsAu0DQesiA2kBJoIQjGxTLQwEsaM9/yCyJpgEkXsKQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Tue, 27 Jan 2026 10:31:37 +0100
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 3718EA41055;
	Tue, 27 Jan 2026 10:31:30 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Cc: linux@ew.tq-group.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject:
 Re: [PATCH] arm64: dts: freescale: fsl-ls1028a-tqmls1028a-mbls1028a: switch
 mmc aliases
Date: Tue, 27 Jan 2026 10:30:54 +0100
Message-ID: <2821824.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260127085533.9738-1-matthias.schiffer@ew.tq-group.com>
References: <20260127085533.9738-1-matthias.schiffer@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4f0gC65xhnz3ybCn
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:6af234dfb0c07f78d372f7b2c3975209
X-cloud-security:scantime:2.803
DKIM-Signature: a=rsa-sha256;
 bh=FUH6gbSg3S533iqWlZ7raLgIM4/kSDOyTLmPhW+hpEg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1769506296; v=1;
 b=fmBZCKnDcwKZ6H5aKWmM57Bty2Y8YaukECk2MLNBXd4vJjP65vqOeL7FbzlX22atUMnpfAUJ
 OTtf6nB4QdGQiiisg9RDuq+BIvPKbWx226AYQWt+S3gMfE5kK4HNJDusVCATbXcebnnIQ1+CdtY
 K0pnI17xS8WZX7K6DYfor4UuAMqKZeUglAFQxb6yIV0xa5JjjPYG/f0gX3HXDUhrVIOoVeUfd0t
 uflH+YpSCAYIlq0gl6bZwO8j5fq25Vt7iqTwLLu67jwxQN8lTNKRH+5Fcz2Y7+aeRkkKeeGDviT
 iG6coDP+cip9mYPXWJT91KkhWfpzOWmOb1s20T9Pt3OwA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259791-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:url,tq-group.com:email]
X-Rspamd-Queue-Id: DC1D291CB0
X-Rspamd-Action: no action

Am Dienstag, 27. Januar 2026, 09:55:33 CET schrieb Matthias Schiffer:
> All modern TQ-Systems boards follow the convention that mmc0 is the eMMC
> and mmc1 is the SD-card when both interfaces exist, reducing differences
> between boards for both documentation and U-Boot code (which uses the
> same Device Trees). Adjust the recently added MBLS1028A Device Tree
> accordingly.
>=20
> Fixes: 0538ca1f102d ("arm64: dts: ls1028a: Add mbls1028a and mbls1028a-in=
d devicetrees")
> Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>=20
> Notes:
>=20
> - Gregor (author of the fixed commit) is not working for TQ anymore, so
>   his mail address does not exist anymore and he is omitted from cc
> - Normally we would consider modifying the aliases a breaking change;
>   fortunately, these Device Trees are only in linux-next for now
>=20
>=20
>  .../boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi  | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls102=
8a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dt=
si
> index cf338b2e80064..426a81e1743f1 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-tqmls1028a-mbls1028a.dtsi
> @@ -17,8 +17,8 @@ aliases {
>  		gpio0 =3D &gpio1;
>  		gpio1 =3D &gpio2;
>  		gpio2 =3D &gpio3;
> -		mmc0 =3D &esdhc; /* SD-Card */
> -		mmc1 =3D &esdhc1; /* eMMC */
> +		mmc0 =3D &esdhc1; /* eMMC */
> +		mmc1 =3D &esdhc; /* SD-Card */
>  		serial0 =3D &duart0;
>  		serial1 =3D &duart1;
>  	};
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



