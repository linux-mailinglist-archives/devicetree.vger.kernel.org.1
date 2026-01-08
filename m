Return-Path: <devicetree+bounces-253005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD87D05BA6
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 20:05:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B4AC30373B3
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 19:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8477A318EDF;
	Thu,  8 Jan 2026 19:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JaX9Ztae"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1AF4328B58
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 19:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767899097; cv=none; b=mJXhDssLSNfRgGiQUgav73PmdzelkzGmV7s3Ai5SvkxS9ctsDSPWisxxqRTM7v/Gksir3ZHMh42wPtCVlNLs5Okck1lDkcB6xgNnD8itJSJl3a12+VcaCNwfum6Sn7t3aB0Cts9XKBXLefeSP2A+3nBMUo/Nhqa18Ko4+tJOABY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767899097; c=relaxed/simple;
	bh=RyPxf5shAvpQP8hlb8TLP1Xg6ej01aqqA3BFhQUDMz4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=c2Qaq7GHLDD06S92zBf4A0MF9b/ElWwKZ90FY6bYOMEvgjSs31CoeOK8iLI0acEUXOtOe/82WBY2puFgTehdgAsLqMNaKciw8It/qX7udy7isCkwlT8jlJBxwbCh7IAY4HwMjilsbDuCRD3fkwCllkAolwaaZDp/2lWyy95zwtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JaX9Ztae; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64b7a38f07eso5370787a12.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 11:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767899093; x=1768503893; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XJp3kbRDibQZP4ezlU2rD6fXyAOAEb4WDi9o81OCimk=;
        b=JaX9Ztaeuknx8ejAVWA1BVwFK4O0l29wW0e5Nu+gnUtuhi+oPljuv1/cASte3zvQOB
         SOl9EeYzDB2uoobCUu03B3J4TpNkvpeEEbJuOS3rOMzksM1WQIi8aVU8NeaEEohih3FU
         CacRyz1xA+0O8OHWmvMVHPZqkHz/WP9LgoI5lajffWDiu9O617Q2ofLBrZAKJsU6JUpz
         evYwNiww4TfIJfjThPIMsiJRcvKdt5cl4+YGHu7SvtS7A2G3BrSzSiT8v/Je8MTibatp
         fHUEyAGT75kanPyw3oARop+G+gOh7azX8BpDNo/8fr76+QfQTFuaSdCpx5EQESGCfr9n
         xDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767899093; x=1768503893;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XJp3kbRDibQZP4ezlU2rD6fXyAOAEb4WDi9o81OCimk=;
        b=j2YCdANUPfY00k7vLqLU6Ntg4ZkPnuUQJ/szuDPCeDBglErihz2SpwOR57dFqpdXqh
         /93BG7PYekuzdo6naxYyoHGLPric4qiCN/AEVrGtrRd9FH2Eu5EfJzuIdnPFbzg7bDa5
         9/8QlNT8MazJe6SeyjKCJsj0HgFzxNfUe+YdXddo8C1mtwRwX9uRXQh8yAMV6uqUCvOF
         MFPCFefuVqcXJ3yuDRWwmlkaEZ34mhLi+saKx6xcaMVlKgJxCQ7WdSmaz0uwLV+nKyCW
         PED7g/5/egwwrD8brpPSpmxYubzBVZm+kqirsOgPHCG+TUwbtpD3jDfAfqU6W+6cronT
         ZVYA==
X-Forwarded-Encrypted: i=1; AJvYcCX6d9eHlT/Z2kmDhmGsJnHDjLecS1RQzRSkg49wM2YdXAWiuGLP1HK0r/5L60nkSiCfoSDWeqZOtWoQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzQdbsVN14ll2ZarXbfeyeTAAcTrHPAgJcwgD4TnRW3l7pAm8mU
	0UNGAkyyF7QeTul9hjdKEtcwnhmiwcvi1R4GnMUY9WDMxhVzlgGhdkgH3DtK6wsuhR4=
X-Gm-Gg: AY/fxX664Tk1IfGea2tL3HVY+AC08joWVRPaUCVC+5I+PL0DjRNxCpiM4XA+WSXvGjy
	yN/RoWgWb1M8FpPZgxdX9iCZjCjpJ1zQhVTdZafkgZsQpP7JajW+WyleWjjpaQw4Wg6ytVyJ0WS
	zimkO3A5U5z2naj1wV9mtemnSNidT23Opl6TQMAZUH0L+pzKWUzyEJzlBCKHcUaXj9eGs7H0McD
	LriPAYC6MxQOt0gwiBf2gIbfEWl2oH/QdqCVlKPrkY+SEjXIJmxeP1TTeSmKiMSSEHOjUqw6S4e
	6bTR7Qtd5P5wTsu0qbRllmj7bgX51ZYih3bJ0eXk8nC9SbD5CYrDMqUZHa8GNICeTkICTJNhFeZ
	VawhVMLgSFCaHvkXJqhnecBQYenN1HVGTdxWwjfgshlOioK1kFQ1DGbD/69vQT6YEf8643i7cyH
	9LcQ4=
X-Google-Smtp-Source: AGHT+IHFbyH2Udw4Bw75NdZIIhSE1/uD0iJk9MPGkWdf0FiTFxZb2C5qCNkaZXVD8ufPMEM7axZCVQ==
X-Received: by 2002:a17:907:3eaa:b0:b73:9b49:2dc7 with SMTP id a640c23a62f3a-b8444fd1589mr810433566b.52.1767899093260;
        Thu, 08 Jan 2026 11:04:53 -0800 (PST)
Received: from localhost ([195.52.31.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a233f2asm883679966b.13.2026.01.08.11.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 11:04:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=7947329d98261ade7d2d40f049ba218cf4626c3400a81e7292b42acefe9d;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Thu, 08 Jan 2026 20:04:44 +0100
Message-Id: <DFJFX7LVOKPI.3E0RKGCIGJZOR@baylibre.com>
Cc: "Vishal Mahaveer" <vishalm@ti.com>, "Kevin Hilman"
 <khilman@baylibre.com>, "Dhruva Gole" <d-gole@ti.com>, "Sebin Francis"
 <sebin.francis@ti.com>, "Kendall Willis" <k-willis@ti.com>, "Akashdeep
 Kaur" <a-kaur@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Alexander Sverdlin" <alexander.sverdlin@gmail.com>, "Markus
 Schneider-Pargmann (TI.com)" <msp@baylibre.com>, "Nishanth Menon"
 <nm@ti.com>, "Vignesh Raghavendra" <vigneshr@ti.com>, "Tero Kristo"
 <kristo@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.21.0
References: <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com> <979eb1054dbe116c2c8bb9920e94e3a93db5346c.camel@gmail.com> <5e116c9089bfa8d645eb044090a75523758c6743.camel@gmail.com>
In-Reply-To: <5e116c9089bfa8d645eb044090a75523758c6743.camel@gmail.com>

--7947329d98261ade7d2d40f049ba218cf4626c3400a81e7292b42acefe9d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Alexander,

On Wed Jan 7, 2026 at 3:49 PM CET, Alexander Sverdlin wrote:
> Hi Markus,
>
> On Tue, 2026-01-06 at 18:25 +0100, Alexander Sverdlin wrote:
>> > =C2=A0	main_mmc1_pins_default: main-mmc1-default-pins {
>> > =C2=A0		pinctrl-single,pins =3D <
>> > -			AM62AX_IOPAD(0x23c, PIN_INPUT, 0) /* (A21) MMC1_CMD */
>
> this is a bit trial-and-error, but maybe you could try to add missing clo=
ck
> retimer/loopback pin for test instead of disabling ST? Would this help:
>
> 			AM62AX_IOPAD(0x238, PIN_INPUT, 0) /* (N/A) MMC1_CLKLB */
>
> some SoCs from AM6x family seem to require it even though TRMs claim the =
default
> PoR state is the proper one.

Thanks, but adding that does not help unfortunately. And it seems ST
being enabled on that pin does not break it either. The data lines seem
to be the important ones.

Best
Markus

>
>> > -			AM62AX_IOPAD(0x234, PIN_INPUT, 0) /* (B22) MMC1_CLK */
>> > -			AM62AX_IOPAD(0x230, PIN_INPUT, 0) /* (A22) MMC1_DAT0 */
>> > -			AM62AX_IOPAD(0x22c, PIN_INPUT, 0) /* (B21) MMC1_DAT1 */
>> > -			AM62AX_IOPAD(0x228, PIN_INPUT, 0) /* (C21) MMC1_DAT2 */
>> > -			AM62AX_IOPAD(0x224, PIN_INPUT, 0) /* (D22) MMC1_DAT3 */
>> > -			AM62AX_IOPAD(0x240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
>>=20
>> All of these have ST enabled on PoR, according to TRM.
>>=20
>> > +			AM62AX_IOPAD(0x23c, PIN_INPUT_NOST, 0) /* (A21) MMC1_CMD */
>> > +			AM62AX_IOPAD(0x234, PIN_INPUT_NOST, 0) /* (B22) MMC1_CLK */
>> > +			AM62AX_IOPAD(0x230, PIN_INPUT_NOST, 0) /* (A22) MMC1_DAT0 */
>> > +			AM62AX_IOPAD(0x22c, PIN_INPUT_NOST, 0) /* (B21) MMC1_DAT1 */
>> > +			AM62AX_IOPAD(0x228, PIN_INPUT_NOST, 0) /* (C21) MMC1_DAT2 */
>> > +			AM62AX_IOPAD(0x224, PIN_INPUT_NOST, 0) /* (D22) MMC1_DAT3 */
>> > +			AM62AX_IOPAD(0x240, PIN_INPUT_NOST, 0) /* (D17) MMC1_SDCD */
>> > =C2=A0		>;
>> > =C2=A0		bootph-all;
>> > =C2=A0	};


--7947329d98261ade7d2d40f049ba218cf4626c3400a81e7292b42acefe9d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaV//zRsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlOF
nQD/cu21gm/lNOgHb5baZ1th/s8xiWa8aurswOgo90T3OqYA/1en3p+Vn6oSouYA
dhhamdGyjVdH1yAP6BGMwtwcfBED
=WALh
-----END PGP SIGNATURE-----

--7947329d98261ade7d2d40f049ba218cf4626c3400a81e7292b42acefe9d--

