Return-Path: <devicetree+bounces-143967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC44A2C5BA
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:41:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 957F93AAB27
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D6C23ED76;
	Fri,  7 Feb 2025 14:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="J2RKMGp/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0AB23ED6D
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 14:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738939261; cv=none; b=NPVk2rgySguFjafuReLCTxI0bzdJvg06iHEySLPaiuJNaRmsGViFkWz0tXrYXr1AqH7wMCCwL7WNwsgS0o1beJfvdTeX/YB21aj83wWdvNrS43IwRNKHbi8zjEiZzl1/+4DmFuCCZkJlmO3uFz0h9laknxtHsc1yD90EruZfP50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738939261; c=relaxed/simple;
	bh=xJEkLXudz1CQJmIOdErR1RB+mXEJ8b7FEi1aaAe+BXw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FiA/9+ociJwhCPzXSBigA40PXTbq+b3MhxPec0+3T34tCSaCocqcYQ01q+ARR5/xHkzee77cfx0yl3xsFiO3Ha76OU8HjHvpFeiP5Kc/Ryxw8ddgwEcZ97xsFzJRTxSxExPS5lx66Tnn3MvEJBvRrF6QtT0J+16rL+7etn3Ug6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=J2RKMGp/; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38dc627eba6so924164f8f.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 06:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738939257; x=1739544057; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1KBZdnubEKdi6STg94A52T5aXYCeylB6o8hYtV5L06s=;
        b=J2RKMGp/Yz3yNH5D+9DCQ58JmbquPIG3kGgUFxvdNh8ZY07BipznO+6r0qwONTgCIO
         2hnV1XglVvyaQe9TeNlnozwqN/oaCPnYgrBfRXjwWYKl5p9IrdBQV5AtNr7iPUb3iG2m
         br427qsQUf5+1y6wGzDQCDtzU0Z5mIsKvWEi3zu37+dLbhkmQkbXJIRqb9YgiIQNuqI1
         i1eJjeRPPoAPcNGDLDSv2Z9pTePXLkKzy05I6H29pwmoVtVI9CiJMSoHT2mwy20hjQHY
         TZMWOHZ+IiO9Ux4QkdzgL7jKg38xv+uwf4xNp3c/3jZlDzzwq/hYFVB2d3IL4VAXjbPm
         GcaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738939257; x=1739544057;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1KBZdnubEKdi6STg94A52T5aXYCeylB6o8hYtV5L06s=;
        b=QfgadaR0CS1AUBlx45rV8HUmy6/c5nJMmh5iwqgZF5G3JnSFWZjAhnkaiNswRt3mnI
         RvhkotBR0SvIHCW5q4C7RiYYIl7SOIKLju4fR4L2dRc4LXhmVjG6acxC647gQPr0KkFV
         w8dixSYrQM2dVKGTfFpHbU/5L4n2ZFEviog6HO1prnpDHUib9dwJlw389kEFpWI0yfs4
         LURElyIrRVIgVwuFw9r1FlNdTzOgQOCvm0fC0Miiv0EYuJr3YVOB9OrFtDmcJ8MkAO5z
         PA7xnBPKZw/QE+oaUyYzWslzoneaDJn5K1Sg3PSRUE24lixtuQQWt8WSawhtjlRGpdg1
         38mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsuyJzqMk4dy2Lc647kWD0xJbspRrR4nzIfEame06T2d11hXrPGV9OjSeCmUMhmv7ioy7lD1uAojQ3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+xoqpRQKfv94uLBgWogtI2HC5R/6FfbkfiAYMp4ipefewVFd1
	4TXn6pGVZwjXVewyKea5tTgH8VKFNfsmFwV64wcZMgF/zbzUhb3Nzjp0mqUGb0c=
X-Gm-Gg: ASbGncv/tH0JJYD9rdcifThFVXmxEEZTRcCGVYU7LBSgFPJvFhqEBcainYrkziCU7DK
	1/xTE6q7zY6XnGtkkVYWE1zM2DU+kpHO0ZfNeXsTIbDYpN2lcOMKGge+AYz6XmpKVV9jHKloj8y
	MJsN+LPu+DX6ceRc1yyEql7kSUa30jzybnP9NqT3jf1TfTCTfLBKNKtjjiKihYV5g/s5sXOwv1W
	cOP3Teo8ag7dtaIuexGrr4xupkHoa7tE5B4SLfTLXVjBtuCIP3TXvm61gmfclVzXA3lnHB1a6vi
	LtdekmYFsbI=
X-Google-Smtp-Source: AGHT+IG7EL7Q9V4DQ+o18bpccPBxDu6gEZW584jUcL0IjgWm+axiLmV9dtxCXuoar414LarSWG/NcQ==
X-Received: by 2002:a5d:64a3:0:b0:38d:cf33:31c6 with SMTP id ffacd0b85a97d-38dcf3336e9mr992260f8f.50.1738939256923;
        Fri, 07 Feb 2025 06:40:56 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:3b5a:db2d:b2b7:c8b4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc4458d71sm3584817f8f.63.2025.02.07.06.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 06:40:56 -0800 (PST)
Date: Fri, 7 Feb 2025 15:40:55 +0100
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andrew Davis <afd@ti.com>, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Siddharth Vadapalli <s-vadapalli@ti.com>, 
	Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
Message-ID: <ebsbaaxyatrcikoem75t2blkhhceuidq3wnj3r2hbezfcmtc3u@ptffexrigbff>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-2-515d56edc35e@baylibre.com>
 <20250124-heavy-jaybird-of-vitality-4cbe24@krzk-bin>
 <20250124-able-beagle-of-prowess-f5eb7a@krzk-bin>
 <mocfnpebc67xegcis6tx3ekhsjcsqnvhwtipufycrtq2be4nbh@pmxhir5gmkos>
 <639b4e3a-3f68-4fba-aa33-c46dcb6fc88f@linaro.org>
 <d6252b73-0bcc-4724-8144-d6a98c8980f8@ti.com>
 <74ee6d9b-fd78-4d8a-a94f-b2c4dc794b60@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="75tbd5owaa2jk4ua"
Content-Disposition: inline
In-Reply-To: <74ee6d9b-fd78-4d8a-a94f-b2c4dc794b60@linaro.org>


--75tbd5owaa2jk4ua
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
MIME-Version: 1.0

Hi Krzysztof,

On Mon, Jan 27, 2025 at 01:09:49PM +0100, Krzysztof Kozlowski wrote:
> On 24/01/2025 23:35, Andrew Davis wrote:
> > On 1/24/25 10:48 AM, Krzysztof Kozlowski wrote:
> >> On 24/01/2025 17:05, Markus Schneider-Pargmann wrote:
> >>> Hi Krzysztof,
> >>>
> >>> On Fri, Jan 24, 2025 at 09:22:54AM +0100, Krzysztof Kozlowski wrote:
> >>>> On Fri, Jan 24, 2025 at 09:19:49AM +0100, Krzysztof Kozlowski wrote:
> >>>>> On Wed, Jan 22, 2025 at 11:24:33AM +0100, Markus Schneider-Pargmann=
 wrote:
> >>>>>> Add compatible for ti,am62-ddr-pmctrl to the list. There is a DDR =
pmctrl
> >>>>>> register in the wkup-conf register space of am62a and am62p. This
> >>>>>> register controls DDR power management.
> >>>>>>
> >>>>>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> >>>>>> ---
> >>>>>>   Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
> >>>>>>   1 file changed, 2 insertions(+)
> >>>>>
> >>>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>>
> >>>> Un-acked, I missed the point that you really speak in commit msg abo=
ut
> >>>> register and you really treat one register is a device. I assumed you
> >>>> only need that register from this device, but no. That obviously is =
not
> >>>> what this device is. Device is not a single register among 10000 oth=
ers.
> >>>> IOW, You do not have 10000 devices there.
> >>>
> >>> Do I understand you correctly that the whole register range of the
> >>> wkup_conf node as seen in arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
> >>> should be considered a single syscon device?
> >>
> >> I don't have the datasheets (and not my task to actually check this),
> >> but you should probably follow datasheet. I assume it describes what is
> >> the device, more or less.
> >>
> >> I assume entire wkup_conf is considered a device.
> >>
> >>>
> >>> Unfortunately wkup_conf is modeled as a simple-bus with currently 5
> >>> subnodes defined of which 4 of them consist of a single register. Most
> >>> of them are syscon as well. So I think I can't change the simple-bus
> >>> back to syscon.
> >>
> >> Huh... Maybe TI folks will help us understand why such design was chos=
en.
> >>
> >=20
> > Many of the devices inside the wkup_conf are already modeled as such.
> > Clocks and muxes for instance already have drivers and bindings, this
> > is nothing new to TI.
> >=20
> > If we just use a blank "syscon" over the entire region we would end up
> > with drivers that use phandles to the top level wkup_conf node and
> > poke directly the registers they need from that space.
> >=20
> > Would you rather have
> >=20
> > some-device {
> > 	ti,epwm_tbclk =3D <&wkup_conf>;
> > }
> >=20
> > or
> >=20
> > some-device {
> > 	clocks =3D <&epwm_tbclk 0>;
> > }
>=20
> How is this comparable? These are clocks. You would have clocks property
> in both cases.
>=20
>=20
> >=20
> > with that epwm_tbclk being a proper clock node inside wkup_conf?
> > I would much prefer the second, even though the clock node
> > only uses a single register. And in the first case, we would need
> > to have the offset into the wkup_conf space hard-coded in the
> > driver for each new SoC. Eventually all that data would need to be
> > put in tables and we end up back to machine board files..
> >=20
> > I'm not saying every magic number in all drivers should
> > be offloaded into DT, but there is a line somewhere between
> > that and having the DT simply contain the SoC's name compatible
>=20
> That's not the question here.
>=20
> > and all other data going into the kernel. That line might be a
> > personal preference, so my question back is: what is wrong
> > if we do want "1000 new syscons per each register" for our
> > SoCs DT?
>=20
> Because it is false representation of hardware. You do not have 1000
> devices. You have only one device.
>=20
>=20
> >=20
> > (and the number is not 1000, scanning the kernel I can see
> > the largest wkup_conf region node we have today has a grand
> > total number sub-nodes of 6)
>=20
> But what is being added here is device per each register, not per feature.

The register layout is like this:

0x8010 - 0x803c contains 4 clockselect registers
0x80d0 is the DDR16SS_PMCTRL regsiter
0x8190 - 0x8600 contains another 7 clockselect registers

I see the feature here in the block being clockselect registers. But the
ddr-pmctrl register doesn't fit into this so I opted to describe this
single register as one node as it looked to me like one feature. Of
course I would have preferred this to be different but it is not. Would
you prefer the clockselect registers and the pmctrl register to be
described as one syscon?

Best
Markus

--75tbd5owaa2jk4ua
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZ6YbcgAKCRAkjLTi1BWu
P32tAQDDFpUCXnqpUVFgGzWKJ0+Btby4irHJR5AwUo6TBJspUQEA1cTFCuFIHwd7
sRPwiUaYo5lHGko/LxAGHjz/pMwiIAg=
=EDBB
-----END PGP SIGNATURE-----

--75tbd5owaa2jk4ua--

