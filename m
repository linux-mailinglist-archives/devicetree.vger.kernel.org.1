Return-Path: <devicetree+bounces-243454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BC2C97C7E
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 15:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51E363A342E
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 14:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E7E30FC12;
	Mon,  1 Dec 2025 14:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gmaYO8LL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8BA31353D
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 14:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764598269; cv=none; b=spwRjoQNdk0mWFCVYryD3A0cc5POcI+x1/NgSTvmhgd3b6q28zI76uJH9UkFmnK5m1c99xbV1qauGN+s8x8735uLbP60MfV+nP5WiVcxcT3qfH+GnPdKD26qF5oJoYQb7jHcCgx+Y0z+wruMrpZw4fnHxyT/XrkF7wJCck7fNj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764598269; c=relaxed/simple;
	bh=0Mrs2ijgX21f6ksv66mCAQsr3PSgk54buiEGY7STqEI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nY/w4reDnPI73VCpDBvsvpXtS5iIYJKffqRXT/RM4x/j6mXWAtieO6RxJvtHixrAzcqMfDJD+Ow8xyrrFl9JymWnB9QnF41bOfzcHYJF3v7+1tUWRtvK1haPSdbDc75/ZHFXiNslCdsLL+r9ixUtLOLKiO0CLQd0nlSvEOdjusg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gmaYO8LL; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4779a637712so25327965e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 06:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764598265; x=1765203065; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0Mrs2ijgX21f6ksv66mCAQsr3PSgk54buiEGY7STqEI=;
        b=gmaYO8LLAkw+6b/1349RWV1mQmzhHsTrnSL40V6rlMdiILd5s9Ov3WF1UjaJns7bP9
         RnGCpUtExpmMnUOdKmPOm0bncrLqYyH/wPHRCCF8fsaLz06nKPbVSjtAw/4K//36xGFJ
         T7GDY3MEJDcuCAqyOuSAFhePwxXCbbRB7YMcBTIo6sa3vSGtkXZLltQhoI8DG5wVXsfJ
         hhozRta9TjQbDYFIk+dAjHYV3CBz4qFpOBmakcIwISao2ynttu7rbU6kkTht2ZrN8TDk
         i8LBlFVAYFrnikSjJn2joiqnIY3ZTm8a6tm1isvLeEZOHwPrxTdiXtaIjfUlVbP8o46V
         EzkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764598265; x=1765203065;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Mrs2ijgX21f6ksv66mCAQsr3PSgk54buiEGY7STqEI=;
        b=ixAlzSiB2GQne1oFpvhEUZALxseRzP3U8YK883aHI2D3Tgnwc9VQXYRSv4V/JR3V4C
         o7Wnni+XwmkNSaHtn3Er5i6mEjMovuab21KtlLNxeKjBr1NucsK923hTomItAIlrPSIv
         6BpjJUYYvWnKKp/X0mqQJ4HL1CzwWe1f6/jrYFn6SG1/1V5qd788p6RHdEHXWcf72fWY
         cRiJBM9q+9RJqRlLWSWjPOxPILLaoyuoyQiNTxHnFCgRe/swUql0Bvzf6Lc4g+Mq98mR
         XRtZttoysjhKC7k9EL2hVmOldIlvvFWbSmN0jhkiFcBlfCkose3JpqjjsCBQo94LEOST
         8wgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVe34+q1rjnLE6ZacJeXi2a2cxH6+JzzbubX2LJMN7la7Ct6JtLJIt2D/f+tNA+HazKZkwxvu10qonm@vger.kernel.org
X-Gm-Message-State: AOJu0YzpdoUZU89CoUBNt1MfocOOzSr6xQDO/qPoiLIJ4OqJ807JVkm8
	Rn0NR+s8VFDSY3vU4s/Wi2H+pUcsLQEtwpgxcJEZuzObJht1+c60NOOm
X-Gm-Gg: ASbGnctj3+OCeutlQzaxW4ODm+V1hGnmWuS4i5f4DED7QCE3hSilqaMsm9Z3wIXBwYd
	LhbBQuqIEGWN0UK5EMdDQJEUb0swfm7uSLZ7aX9xqkX3Sqt5Rz/kNekCzk6XmXS7I6jYMRdHzb4
	MokxDLRXa9c80CZr+GTGISmceFlamaJgl0yKt/xR2voiUWbHdHslfDob7GtOfWK+e7eGIwkXBhB
	s1kp/yBmNvuk5LZFJnvz3H+Uv/lh0MirQde2pQ42n0RHmfxUsLc23wV/wvjaKIjwAFNLurqe+Py
	PfLDI+PN9Zi5AYuTNbMjh9ndP1ZtGr7+nZ4eXS+5+QJg4w0zC+9IhiTTpAs5OwR1nJ/waoD2H8T
	sx9bBZFm+b0Mf5KHvtgI/ODHOru3scpTV7Wjijc7O0ZJCgvYHbz4cIzKaR9Mi83ZJ69pnGWVjTl
	g+feYEdhmbLKzGTbSbrL+rIEFTHLKy8VrLEccnpCVzYYSoHPTMVWBtfsIJWe7ur5fZoMqNrEuGQ
	w==
X-Google-Smtp-Source: AGHT+IEE6nJwSv7GJv5Tpq+9BS1wDZGt0pOH46cSqLXpdpti1ytJV7Lap5tpsWVi/xKgs1f9pxSxvw==
X-Received: by 2002:a05:600c:3553:b0:477:7a78:3016 with SMTP id 5b1f17b1804b1-477c0170782mr399239025e9.8.1764598264581;
        Mon, 01 Dec 2025 06:11:04 -0800 (PST)
Received: from orome (p200300e41f07e000f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f07:e000:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790b0e21e8sm323578165e9.15.2025.12.01.06.11.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 06:11:02 -0800 (PST)
Date: Mon, 1 Dec 2025 15:11:00 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Ashish Mhetre <amhetre@nvidia.com>
Cc: Jon Hunter <jonathanh@nvidia.com>, will@kernel.org, 
	robin.murphy@arm.com, joro@8bytes.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, nicolinc@nvidia.com, vdumpa@nvidia.com, jgg@ziepe.ca, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH V2 3/3] arm64: dts: nvidia: Add nodes for CMDQV
Message-ID: <r2mkiktazyn3nvhirbs2ac7n5ymdw62ueutpxt55cnivdi7pdn@6i4hjtvxp2ph>
References: <20251125071659.3048659-1-amhetre@nvidia.com>
 <20251125071659.3048659-4-amhetre@nvidia.com>
 <dff3a962-82dd-4aac-ae11-69f0e95ba04d@nvidia.com>
 <acae92d8-3394-436c-be8e-8bed7a923e85@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hmgu7kapjngbyggz"
Content-Disposition: inline
In-Reply-To: <acae92d8-3394-436c-be8e-8bed7a923e85@nvidia.com>


--hmgu7kapjngbyggz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V2 3/3] arm64: dts: nvidia: Add nodes for CMDQV
MIME-Version: 1.0

On Mon, Dec 01, 2025 at 03:06:55PM +0530, Ashish Mhetre wrote:
>=20
> On 11/25/2025 3:52 PM, Jon Hunter wrote:
> >=20
> >=20
> > On 25/11/2025 07:16, Ashish Mhetre wrote:
> > > The Command Queue Virtualization (CMDQV) hardware is part of the
> > > SMMUv3 implementation on NVIDIA Tegra SoCs. It assists in
> > > virtualizing the command queue for the SMMU.
> > >=20
> > > Update SMMU compatible strings to use nvidia,tegra264-smmu to enable
> > > CMDQV support. Add device tree nodes for the CMDQV hardware and enable
> > > them on the tegra264-p3834 platform where SMMUs are enabled. Each SMMU
> > > instance is paired with its corresponding CMDQV instance via the
> > > nvidia,cmdqv property.
> > >=20
> > > Signed-off-by: Ashish Mhetre <amhetre@nvidia.com>
> > > ---
> > > =C2=A0 .../arm64/boot/dts/nvidia/tegra264-p3834.dtsi |=C2=A0 8 +++
> > > =C2=A0 arch/arm64/boot/dts/nvidia/tegra264.dtsi=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 55 +++++++++++++++++--
> > > =C2=A0 2 files changed, 58 insertions(+), 5 deletions(-)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/nvidia/tegra264-p3834.dtsi
> > > b/arch/arm64/boot/dts/nvidia/tegra264-p3834.dtsi
> > > index 06795c82427a..375d122b92fa 100644
> > > --- a/arch/arm64/boot/dts/nvidia/tegra264-p3834.dtsi
> > > +++ b/arch/arm64/boot/dts/nvidia/tegra264-p3834.dtsi
> > > @@ -26,5 +26,13 @@ iommu@5000000 {
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 iommu@6000000 {
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 status =3D "okay";
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
> > > +
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmdqv@5200000 {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 s=
tatus =3D "okay";
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 };
> >=20
> > This needs to be ordered in the file according to its address.
>=20
> Hi Jon, Thanks for the review.
> cmdqv nodes follow same ordering as its corresponding iommu nodes.
> I have added them immediately after corresponding iommu nodes.

No, you didn't. It seems like you sorted by type and then address. But
we always sort by address first. Type doesn't matter.

This node belongs above the iommu@6000000 node and after iommu@5000000.
The same ordering should be respected in the DTS include.

Thierry

--hmgu7kapjngbyggz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmktofQACgkQ3SOs138+
s6EyLhAAsTEU10nghdoSpblIcVzJ/qhmjr7WspdOv/UxyNC6yGc32tbPTSMeeGKB
ojvenyoNPugSaOyLZXSFTl/kpTKdGcoCkegC04uNDzwhNYdBeqEmWQBcWAA726Br
KavTOQhDpPmV0XdPm1lDVjo9xbNSDasetodfY48k8vfJCf4BEdBCAY3LDzvzdAQ5
m77dDHC0z38Ytkjl5kbQsuZywmE67pYDtsOV4kQ0dZiZXBKWzJVEME92ADY5t2Y1
MuLoASC1ETuEPnpjMJ1lU+1QTUiDN7LlgDiQzRkR/MkBrw+GbaUrwhzh0pNB8xHR
BS9h/RUC8wpaiDulhMEq8ZDPFsjHkH3WlGNv7vC4HspcUhzkzaT8PFSfuzcHYSNr
gddqDlRd9cpPkoqPVT9BLfX8VPeIOSz4vQp8fr5OlM0gNVS71Dlr7qr8DNQo9JbU
hZ0P1D7clUrw5gCGXcEDHLtpesD+jOswALr64iahD1xGKEDcUsZIM+DLgmFjuuU7
sRcKhRF6Y0eroL1Skol2tvZ6iLrTRXToACMtXiR3HGPAtiU4nm04EC8nr1WVbNYL
qjfxz0QXACVToYJPxQVVcjZ+uLMBtBR7rVsd7Q+A/NeBPwctkw3/+foLMmRsP6jw
AuvrP0nzagjXuL/UJEOYw9YYgbg5e58q8OG1mWmjeqKRcU7JmN4=
=78kF
-----END PGP SIGNATURE-----

--hmgu7kapjngbyggz--

