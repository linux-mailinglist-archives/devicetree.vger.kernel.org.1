Return-Path: <devicetree+bounces-140841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E7AA1B9F6
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 17:06:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35F9E1886E51
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 16:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6D26156676;
	Fri, 24 Jan 2025 16:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mpbTupNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8903E70816
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 16:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737734749; cv=none; b=un8FYl0/ilgvZcycFU8lnS/bYhGlp66K0QWInsc9KdCcpDcSkjbfn3wCL93H3nn2SX8pqwigu72HV6g/As5RrigRwd/NgTIi9Mlu5ErhYx3mrwenrzkJb5q1HhEz3oTD068PtH73kLnoP7bSQrmrzL0Oz63kagT8q7mt6Z4YZS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737734749; c=relaxed/simple;
	bh=Lnk1sbrTvml4RlDAoryvcPVSDPW9xYYWVt/XO9b6zq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AMubbZ7rBSR6P3iGmJnSqou1QkGGXlqKTkT+6PuhcABYOcFNuyaq9869X1aQfLtg0lMD70ZOVJmn1CjYbD/ZwwuK36JTNn+bASkMuI13sC4LrNqFVBeoaGwC8wNMFinYj/fjTcvgkbwAUmS1KkJDD2A1gXmxkIFtPFPiP+qPCuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mpbTupNZ; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-385e0e224cbso1342216f8f.2
        for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 08:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737734746; x=1738339546; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FSLLPyUJ3eeG6sl2A0x/JpnZ4BR24iB3b7G+EsJS7gA=;
        b=mpbTupNZACaQx3sxgNJC6KhO2U9shvU28jMP4ROQpwlhOxIuFQORvYL51vJCgVj9oG
         6l6IYvHr7G7J6fUMQRO9MLczwey2IesNBHOqCQnLUxhmi8c1qf5dtrdXe7OM+h2uWzc0
         KEp5xLCrDjT2ePkqNCgsAVnVSgei/VytXlrjDE0MD2KEYr2UZjodQ200a3SDE8h4KOus
         +S4fKlIsWQxWCTZUhZElYgeUIsGZbf4z2EJCMx/H+FPFNMoHmOhmldCYJAJ9YAeSWg3X
         +5kNkli2b/YPRsgB201pXS4lSKMDUVBhuWs1pFbFEO8TwNc1G/bEXbraCRyKUBYUBRO5
         qPHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737734746; x=1738339546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FSLLPyUJ3eeG6sl2A0x/JpnZ4BR24iB3b7G+EsJS7gA=;
        b=AZYAWG6EDJszCprM6xkNMhoNQi0fcETTLuRDYZ3OqGMYfNWpEPOOhqLo41u6WP9HoW
         FNQouzPMjhMfHzWRcDmT+XI+mZkheBpSflZKkClZiAWpmgeT6rVgvztdafWb+aYL97Fp
         zhaDOXLNder9TOE2/gVrfd7UnIUy3i+Pq+586xAAA+GLR0Ocskwc0ETsHVf9V7E4TVdE
         7U1I5Hdx9DXm3TI6LNR/qTJj7hiZFvBVAKhscGjLboX/icHJ4P8S+I6/a/+iy1rLbDGO
         vh+uxBycbC3JjZc4PH2zIrs0RgWGjBNtnQQLWwcJUyz6ioNoCELgAS+2+6bRG3eDUTGn
         mERg==
X-Forwarded-Encrypted: i=1; AJvYcCUlhOgPYRiEBCdjwDeYMkmpMNy1IYlILCWd0MEZI2Yw61osj6va6m0zmzXH4NxP3YwMqzqWOJlPaDLG@vger.kernel.org
X-Gm-Message-State: AOJu0YxGDP3ArE3M5cBV9bHI7eRTKheeYB42prJw7iiBJ+6D+qmL9aK9
	a+mnZ5jcI2lPAj3vQgWfWSp4qrAHDvcwzCsU5YDbSmDYPahd2Ygb8RtAcPOvx3o=
X-Gm-Gg: ASbGncuf4MkIJPgppEeThQv8Yb/4HdawKr2I7n1x4Q2iUjWXBHMEI7ZJBSIZE4xxTSB
	n8diFjQFiCMqdyUnRtWyDGlPeRnujJ9Bg8Rxv1HF6fhBRR2GpQoyt9nApjX1KXaT8Pf9ovCb8If
	OD9BsxeaYkuZACYegYh1N/R25xQ9zKvaJVwTmcU3wY0iGI280WgyZniZpJmpbCFQZBAb1TcI/kr
	IcOCMg4jI+PA1xsFeLBhgbFVxtgOXzzlo80dIBm7KH0wY5bezQaU/eYSrs2YPmVSuxQMvEowPhX
X-Google-Smtp-Source: AGHT+IHu71iPwryPb6wf6GWCZ7WryeDM57ilIizqC276MrAU2otzGaNMVdxAiRILENjcqzySRoVfkw==
X-Received: by 2002:a05:6000:1fa8:b0:386:32ca:9e22 with SMTP id ffacd0b85a97d-38bf57a9b6cmr32883744f8f.41.1737734745485;
        Fri, 24 Jan 2025 08:05:45 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:3b5a:db2d:b2b7:c8b4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a313383sm3121770f8f.36.2025.01.24.08.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2025 08:05:44 -0800 (PST)
Date: Fri, 24 Jan 2025 17:05:42 +0100
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
Message-ID: <mocfnpebc67xegcis6tx3ekhsjcsqnvhwtipufycrtq2be4nbh@pmxhir5gmkos>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-2-515d56edc35e@baylibre.com>
 <20250124-heavy-jaybird-of-vitality-4cbe24@krzk-bin>
 <20250124-able-beagle-of-prowess-f5eb7a@krzk-bin>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6onensuvvdsjldrm"
Content-Disposition: inline
In-Reply-To: <20250124-able-beagle-of-prowess-f5eb7a@krzk-bin>


--6onensuvvdsjldrm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
MIME-Version: 1.0

Hi Krzysztof,

On Fri, Jan 24, 2025 at 09:22:54AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Jan 24, 2025 at 09:19:49AM +0100, Krzysztof Kozlowski wrote:
> > On Wed, Jan 22, 2025 at 11:24:33AM +0100, Markus Schneider-Pargmann wro=
te:
> > > Add compatible for ti,am62-ddr-pmctrl to the list. There is a DDR pmc=
trl
> > > register in the wkup-conf register space of am62a and am62p. This
> > > register controls DDR power management.
> > >=20
> > > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > > ---
> > >  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
> > >  1 file changed, 2 insertions(+)
> >=20
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>=20
> Un-acked, I missed the point that you really speak in commit msg about
> register and you really treat one register is a device. I assumed you
> only need that register from this device, but no. That obviously is not
> what this device is. Device is not a single register among 10000 others.
> IOW, You do not have 10000 devices there.

Do I understand you correctly that the whole register range of the
wkup_conf node as seen in arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
should be considered a single syscon device?

Unfortunately wkup_conf is modeled as a simple-bus with currently 5
subnodes defined of which 4 of them consist of a single register. Most
of them are syscon as well. So I think I can't change the simple-bus
back to syscon.

For the DDR pmctrl, this really only consist of a single register, the
registers surrounding this pmctrl are not related as far as I can tell.

What do you suggest how I can solve this?

Best
Markus
>=20
> So:
>=20
> NAK
>=20
> Best regards,
> Krzysztof
>=20

--6onensuvvdsjldrm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZ5O6UAAKCRAkjLTi1BWu
P5rfAQDNbL0vazXvwSxT0FMHOxQjKSLWMcLETRZTvmW8q9WHtAEA+84TjER89z3+
zrPMDyZlpDGj1SmA970Mp80fwQsW0wo=
=WI+3
-----END PGP SIGNATURE-----

--6onensuvvdsjldrm--

