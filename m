Return-Path: <devicetree+bounces-265265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JNmEJzSjmnJFAEAu9opvQ
	(envelope-from <devicetree+bounces-265265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:28:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F581338D3
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 08:28:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4E5D3011587
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4427A27A465;
	Fri, 13 Feb 2026 07:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nvvm/i5g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620E61C84A6
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 07:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770967630; cv=none; b=dB9v5VHBZyEhl3KlviKZClOUH4uDLrngLTfe7UXfXw9Zqp+dJdFLptWPKuhlwRhEj8K4wcR2abk0MLbSqBFne0m3sg8n9mKgJx8WyA94x0XwlwQjHNG4I0hnCWvM2lPou+AcOKXE4Ez+77+BJTMTs+WohEFYr8oz0eP0EKefiqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770967630; c=relaxed/simple;
	bh=vmpfu15x4cjEqpcqUE1ZCLtIDbwYueAHkh3Brfua/3E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pMMi6Mrq3SLbYgritHt15BYT3g+w1QwbQOichiOuyy0bl1dcz2EmyobZG+iP5aR94AeZHlaahozSfCCgxyGZRUbKfyQ30U0jUM8fXnj+9HtitqqCv0e+PGxFS/YKBjL/pq+eZpPGqA7Ygkkbn3kp/PzSrKpO0n7FHkfNvqondFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nvvm/i5g; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-482f454be5bso26163585e9.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 23:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770967627; x=1771572427; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8T5o+WgGfW/lBoBXgg51mLpZKPQ9oP0YY1GV2iyeVDY=;
        b=nvvm/i5gJ0ch3iQ8eRQCIbXNosnhHE5GGOONdK4FN3jD04ghGkXqZ/E8+PnaFWlOyi
         Rw9BoC5oG5RjvimXpYiiG1N9OX53JVXfiy+fO5+Ob/2uzHX5YCZVZn+w7JzYOkbS2ntu
         4Ct/Epdvx6nrImmTAsAlFTit+uH1FZKvTEFa+29oMC6Ibm5Ob5JjHuQhR6iwAHpPjAPQ
         Uq7vtX8Gi1w4NZi9ADlIAtqX9NQoz0UvRZmAXzMWXXEUcgMn0tT9Ot2Rj2RnxlJbqGyC
         +LW2YCVr39CrsT93THKAEuZCx5Yp90z+Cwvmt+aIyjbS6SEcGFEt3S9tcg0ODMJIgtZm
         nbnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770967627; x=1771572427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8T5o+WgGfW/lBoBXgg51mLpZKPQ9oP0YY1GV2iyeVDY=;
        b=uDEZaKi5H2MjUHH3VDkhUvekhXo6Swd4lvye1wvolyPhmQkFK24yuVVllWUiBoo9uW
         D3MbxGMGGMf9kFKCrmEeVB4Zh7+RzK5N4LV5S7tn8trE4uitdA+eDYDg3AKQZnkbDi4J
         +s/g4JH83KEiFR/2zie3l+X8AK9heE2GB6v58kqCVSQ/ZOPAF/2CL7NKrbHigd9TJZF3
         Z553dcKFAdsB0+klWKtmvOpcvvATJQGvvFhdDO2sPexokQi6byyKBOwy9taCqb/QOpRy
         8Tm2batOcK6mUObGjXUHBc0V7f7TDZ5PH0OLydCQ8EMtZtB0WX2Lh9tvV6UGo90clR05
         8bpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeu48tmT5gubT+IR7ZaC+2sZtJ5+12LVtmy6V87aL7mHOU0i6Vi0mi7Vz2R+6PpelUzSwvzje9VS3o@vger.kernel.org
X-Gm-Message-State: AOJu0YwBQKmrsc21b1OeOTdsIaqdgj0T2GEoXdUt5Sbzug2L+i+URCGg
	MiwZSFdXHw/6GQvl+fOtrZnb2L1yrw6JS6vYCvLuDx5tDLk4Ga6ytvS0pf4Rgjejn1Y=
X-Gm-Gg: AZuq6aL8hHM5zo86CaLaKI5/z0OzDI9MgiBxsKyMbn4kR3+KsRsQUmoZp6RV6J/WgCy
	FpxSIXGYYLzvsN+7ELQHJzC3RQM6npNCNxJBtBkl/YbJb56NHWCpPvj+f1+qBL38HBBFKrh89Ah
	optbZOVnxPSiFrSaXwY3RYRdM5xvYT0BA1pDZsTonQkACNrkLdLW5K0eRdAx9nG/Ggcgw9bwBo9
	Npre8s4RSVv9nPoaJ3a2zNeB99FIXZrhOXOTnN1OgdEjHDBAwqQUPrJztHuadrt94+CdC1WSwHN
	xb28xZqYtqedPLjP9KYYSGVutkaPfJKhYWC9liatt+XY+LIJUWzp6xLwcvh7osWboxErWzOzxhZ
	7H8dA8bjykmsUooZXy1xMFhmA5dktFQgbewJwWrLpD2/IWybxq20iOYyVKVh14OigxuEy55GPsu
	8O1msGzxfAxoIc3jDjzYdThhhW+MFCJg7lvCE2GiRa0TPB35VDT6FKT8l32yLbfuZX6mLSXWJrh
	W/nKVpA1Fvrxfk=
X-Received: by 2002:a05:600c:34c1:b0:475:ddad:c3a9 with SMTP id 5b1f17b1804b1-48372fd3c43mr11757265e9.13.1770967626654;
        Thu, 12 Feb 2026 23:27:06 -0800 (PST)
Received: from localhost (p200300f65f20eb04101188b09ed9186a.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:1011:88b0:9ed9:186a])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-48371a10cacsm17260195e9.4.2026.02.12.23.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 23:27:06 -0800 (PST)
Date: Fri, 13 Feb 2026 08:27:05 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] RM: dts: imx: set #size-cells to 0 to align with
 nand-controller.yaml
Message-ID: <aY7SFS3LUC6rFwSB@monoceros>
References: <20260211-imx25_nand_dtb_warnings-v1-0-2f06aaa1e3b9@nxp.com>
 <20260211-imx25_nand_dtb_warnings-v1-2-2f06aaa1e3b9@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="suzgqi3scqpas5au"
Content-Disposition: inline
In-Reply-To: <20260211-imx25_nand_dtb_warnings-v1-2-2f06aaa1e3b9@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265265-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[bootlin.com,nod.at,ti.com,kernel.org,pengutronix.de,gmail.com,lists.infradead.org,vger.kernel.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,bb000000:email]
X-Rspamd-Queue-Id: 94F581338D3
X-Rspamd-Action: no action


--suzgqi3scqpas5au
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/3] RM: dts: imx: set #size-cells to 0 to align with
 nand-controller.yaml
MIME-Version: 1.0

On Wed, Feb 11, 2026 at 04:19:40PM -0500, Frank Li wrote:
> Set #size-cells to 0 to align with nand-controller.yaml. Remove the
> redundant empty clock-names property from the NFC node.
>=20
> Fix below CHECK_DTBS warning:
> arch/arm/boot/dts/nxp/imx/imx25-karo-tx25.dtb: nand-controller@bb000000 (=
fsl,imx25-nand): #size-cells: 0 was expected
>         from schema $id: http://devicetree.org/schemas/mtd/nand-controlle=
r.yam
                                                                           =
     ^
Missing 'l' I guess -------------------------------------------------------=
-----'

Best regards
Uwe

--suzgqi3scqpas5au
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmmO0kYACgkQj4D7WH0S
/k5AVgf/QsQPSAIdM1RxlXudv1+osYGz6GEEo592KE57oRkdUvtyYxJXlqICexVq
CcrktfuQdhxHkTa+TGp6zt0D5ud0nzXjBYtGZVIhE6iKYiav5EiFArQ3wPcvnDQP
3x1upQR/8SgvfyApCIlLo47oipzbM/RDXrq7oKBgQQlvfjTdDJWeEn/+DAMULR//
7/32JHfGYcuRTzcn5CRi8QotO47K9uUcx3Hp96n78OcP2CgahlMpdlQTU3k4YDMZ
Yn1AJ+Ip34Pnhwi6RKW3AtyTLTsSmsgtogie1n20MHuTG7FGGLFze6oP6AWaxmDl
Ed8LGzeR90IPomEYk2RYoB/o4eurFg==
=y1p4
-----END PGP SIGNATURE-----

--suzgqi3scqpas5au--

