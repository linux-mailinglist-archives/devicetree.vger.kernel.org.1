Return-Path: <devicetree+bounces-276532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNd6EFgRuWmFowEAu9opvQ
	(envelope-from <devicetree+bounces-276532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:31:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DD92A5B0B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:31:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49B0E304BDB6
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD76239BFFE;
	Tue, 17 Mar 2026 08:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="WSnw09+a"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E11239B953;
	Tue, 17 Mar 2026 08:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773736177; cv=none; b=X7fqzfThHv02momXIANWUkxLRFGJkvNKahD06MHln0OHg4o9ak19PGsBYGlJ8EQrMByTQqeRUF/yKtil0I+Nkuecew3BtC6IDEBuXL1Xqu83qgV7M7F52wCpU1f7j/yAhONwCHG6X3wSAhdmO4LKXN4ywlvZc1YJhphOySeyXjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773736177; c=relaxed/simple;
	bh=gi/ZxAhA+arY1RPLfmbgzJR1H6+n0adS5mBFPksGDVg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SVT9xZoX35LSx0itQnbp/jNLcL93GwqRSPXe3wCTfqYe4BlPl4ztyFnB4Lf3nIsTRyI01oQrmUABoXKbolvEXJR7bLDD874BrFyv1QO07v6xAEhzvox9+kQkxt3IkM32iUVZ5wKRcDChWIWDAgDicvBilKaH82Lov4SqfDVjAbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=WSnw09+a; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=jUJuwBPFUR/Nz9GUBUjDSAihNxJJ1UtBMGnVcsi8xBs=; b=WSnw09+aEcy15TNNNA1Hhve6Pk
	vFi66MVEPlCq1qmkI2uKkzpk0Jm8v8eS6CA8+ayoT5Yk/WwKiWRmLh63h0l66DLHVxto0zyv8I6dj
	nlWfFRxROoAzPEyEYNW5IS1ijN477fXNu9HbyxJfeP3mXZceXrbo2Ul99t7e99bb8lKJUvPVqYhiw
	qPeGGCzdhykrT+7LPEG8NVa/w/lRrX4RYcydSZjXGxlNicpu53RU9+1x0S8KrfQ6vBwYL1kri7yCD
	ClzY7zwOiIhtoSQH5dlwubKpe3CY8rLMOuH1xfDf5vjpsbcN/ioo2moMpPw1Nmn1tHZOb53Iab6wH
	3neZIBHA==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2Pnu-0003MK-0j;
	Tue, 17 Mar 2026 09:29:30 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2Pnt-000MQw-1r;
	Tue, 17 Mar 2026 09:29:29 +0100
Message-ID: <bfd19beec4ccbe296cdc1da865b15caf3ad1e5cc.camel@ew.tq-group.com>
Subject: Re: [PATCH v2] arm64: dts: freescale:
 fsl-ls1028a-tqmls1028a-mbls1028a: switch mmc aliases
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Alexander Stein
 <alexander.stein@ew.tq-group.com>,  linux-arm-kernel@lists.infradead.org,
 linux@ew.tq-group.com,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 17 Mar 2026 09:29:29 +0100
In-Reply-To: <20260224152523.570057-1-nora.schiffer@ew.tq-group.com>
References: <20260224152523.570057-1-nora.schiffer@ew.tq-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27943/Tue Mar 17 07:24:09 2026)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276532-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 97DD92A5B0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 2026-02-24 at 16:25 +0100, Nora Schiffer wrote:
> All modern TQ-Systems boards follow the convention that mmc0 is the eMMC
> and mmc1 is the SD-card when both interfaces exist, reducing differences
> between boards for both documentation and U-Boot code (which uses the
> same Device Trees). Adjust the recently added MBLS1028A Device Tree
> accordingly.
>=20
> Fixes: 0538ca1f102d ("arm64: dts: ls1028a: Add mbls1028a and mbls1028a-in=
d devicetrees")
> Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
> Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>=20
> v2:
> - updated author information after name change
> - collected review tags
>=20
> As mentioned in the v1 submission, it would be great to get this in
> before v7.0, as the TQMLS1028A/MBLS1028A was just added in the current
> development cycle, and we'd like to avoid changing the aliases after the
> DTS was part of a mainline kernel release.
>=20
> Best,
> Nora


Hi Frank,

can we get this applied, so the change makes it into v7.0?

Best,
Nora



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

--=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
https://www.tq-group.com/

