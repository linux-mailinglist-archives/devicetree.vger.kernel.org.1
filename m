Return-Path: <devicetree+bounces-247805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC6ECCBB42
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A03230221A3
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 12:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFAEB32C945;
	Thu, 18 Dec 2025 12:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eap71J94"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611272F49EC
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766059249; cv=none; b=XUDA1XcJEA+rbDO2P0LrNLc078pilXWKNMrVFpFYo7pgiKY8Os6h1y8KZQNrSpnjrkrV9HJGZ/qRlahkOp9LOKWFPRl+JHWjyf2nxEUB8XFOIaYJd+SSadoo5My7yzOD8WUYXZ40mjGITI7K9KqyKsGxKyOdfIEnisy7nu8CNAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766059249; c=relaxed/simple;
	bh=mUEp/B5G3RS+Gy2qoIOov6C4swK+1+u6ataDU59bCZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gpdJoBYrhp52+YP0IuipqBAYMCGVrtYMeBWohFNfu6AWir8Jd8OVEeCB7c+fyGMnQwYvJyPoCAs52377bj6qIwLlJC0fCfrVQ5HJC4quhCOP8jF8Un+XG49wfwPGzn06UiXbv82SSdYCHtsWoLb5u9qdqApuUMGmFw2LItUgv0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eap71J94; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-430ff148844so687859f8f.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 04:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766059245; x=1766664045; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qo8UWl7Nb4OmN2ce/tkCHVKwnG2c1ZxIa3VYc8DeX0o=;
        b=eap71J94/KaWkEAbCXZDcSLBG7R7gxEsloMPqZtY+tsdWlEqX8Jxj3bMQcSXitfi+z
         uX4Rwrn30EmWL0ER2Rw8nLKYuG0MQZEjvRloVqajDaiVGpRJWZcpWzZgA1Gx0t1PN46w
         +PNvgKGJ4ov0/5CsCY9IXnqsZ+/PcHYejlnn5/O09Hu2KEuB42FgazZnwG9LSnE8O7ev
         I+YOvlf1Rb9ZDEGeWx3kfYrKk9atOJTy/KatpLEj1NvsXyvrJq7tOVH4+YmCYOhVCj2q
         39c0E8VQjoT/EfpiCL15nf2DZYIMdUQieZrOAfdUVSP57o+lJKFNkwir59GjS+donzKM
         E1bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766059245; x=1766664045;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qo8UWl7Nb4OmN2ce/tkCHVKwnG2c1ZxIa3VYc8DeX0o=;
        b=soUzh0stpKm8RSpgjTl+ftipNnaVc8ZROq9atrSv9Um8/Ai8jFQ9btiA9+sWCtTnzK
         eJc7P7fS1IxMqs8iL5EBT+dWRmx1veyGiqjJWO/FqKngtgs0MzTG1HMD5B/8WCiyXO/x
         M14vA0FqFsxKz5TqYgpbmhp3eFt5IDq/2v3PQCIz53CdlivcFJFahiISLlpAsyvDsJe2
         gHlZ1utwEny7H992Q+gi/u6O5ubqq8hM32v75gkuJnG8yjjiVVA+ZayoEaa+BsXyu/fn
         J3TvI9nppjn9+RRzNiIZqVRs3tb7lg1yxDaMuW/CSb/Q0ShLG8soCORnHSZ9H5jR4oe1
         YhTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJTtBVgdIpFfixdc814ny1r29tAr7XFKC4QyhUUmQauwWsz5EXwcPWjqUOvZIBTyzt6yeg+dld7opH@vger.kernel.org
X-Gm-Message-State: AOJu0YxSIoSlKtzeeWjMRyB4ydDEGTLb8YJOh+4efTZaipmCR27kpESl
	0AViK2NJEVMYqTFrNnaQGIKrfzlRvkBsTObS1f25rm2GpRRBPXs0Qxt/
X-Gm-Gg: AY/fxX7Ez/OniUFtRq25q7pwIN7IlnxR76X0o37ruyNMTbixYjwnAQn63HkDzl5VGDP
	MwI55GAdxdokrSNt9d+aUrMooVwSzzHkfpwOiltsZBnrn6tAiObwHg9G41pCrVWW24SWkMsvAQM
	p9WRO+awX1xXL2Q0V2Yuj2KokEgckT8ECgTeG+MT7d5U5xLiMnmSuAOhu+MBYT8VWYRPV3QBDYv
	BchAvzxpuFxPe92yc8cZ3MEYlAb1q87+bNoI4tTTSJ4W1PKpd6xPRSBvCD8jxQQVlOfhBCGb0xM
	srthK7OFFawTM67XcecII4QgnhqWaSJMsDDgKgpbXahov04H3hcAa9IpD6/QZbrIwSwolKIREL9
	X4aYKjrBxHr05Alga2E9ul5gMb6uOFxgb/kjy8MNuPLirMLujm5FiAaDobLz4Xfmw2v3aUYs4bV
	u+9nZWGmkRMHfSvthsKPwfus1c6hoS5ecft29fJNE6w1kvqDsfFDCBEwT8nY3pjaugTykb+2mSf
	g==
X-Google-Smtp-Source: AGHT+IE5M6ZuZzi1ubk7F7STia1y5L8LT6foat09zhyW64XZ39JP9w6RdvA+9FLun2Nwu/VBkpIYQw==
X-Received: by 2002:a5d:5f96:0:b0:430:fca5:7353 with SMTP id ffacd0b85a97d-432447a3dc1mr2689635f8f.8.1766059244348;
        Thu, 18 Dec 2025 04:00:44 -0800 (PST)
Received: from orome (p200300e41f07e000f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f07:e000:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43244934c29sm4674641f8f.2.2025.12.18.04.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 04:00:43 -0800 (PST)
Date: Thu, 18 Dec 2025 13:00:41 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH] Revert "arm64: tegra: Add interconnect properties for
 Tegra210"
Message-ID: <aUPsDeFmxAJ09Tk7@orome>
References: <20251217104744.184153-1-jonathanh@nvidia.com>
 <CALHNRZ8syS6F9W1ovw2Y-jkspQafCnLy0ynocn0sMLurShHnbA@mail.gmail.com>
 <CALHNRZ_vkw6Ns=PMa+x0SY64+Ov0FeA5tMKJr+-tY9_OasKUog@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tp7y7od5f2vxm4kw"
Content-Disposition: inline
In-Reply-To: <CALHNRZ_vkw6Ns=PMa+x0SY64+Ov0FeA5tMKJr+-tY9_OasKUog@mail.gmail.com>


--tp7y7od5f2vxm4kw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Revert "arm64: tegra: Add interconnect properties for
 Tegra210"
MIME-Version: 1.0

On Wed, Dec 17, 2025 at 02:42:58PM -0600, Aaron Kling wrote:
> On Wed, Dec 17, 2025 at 12:20=E2=80=AFPM Aaron Kling <webgeek1234@gmail.c=
om> wrote:
> >
> > On Wed, Dec 17, 2025 at 4:48=E2=80=AFAM Jon Hunter <jonathanh@nvidia.co=
m> wrote:
> > >
> > > Commit 59a42707a094 ("arm64: tegra: Add interconnect properties for
> > > Tegra210") populated interconnect properties for Tegra210 and this is
> > > preventing the Tegra DRM driver from probing successfully. The follow=
ing
> > > error is observed on boot ...
> > >
> > >  drm drm: failed to initialize 54240000.dc: -517
> > >
> > > For now revert this change, until a fix is available.
> > >
> > > Fixes: 59a42707a094 ("arm64: tegra: Add interconnect properties for T=
egra210")
> > > Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> > > ---
> > >  arch/arm64/boot/dts/nvidia/tegra210.dtsi | 24 ----------------------=
--
> > >  1 file changed, 24 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/bo=
ot/dts/nvidia/tegra210.dtsi
> > > index 709da31d5785..137aa8375257 100644
> > > --- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> > > +++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> > > @@ -202,19 +202,6 @@ dc@54200000 {
> > >
> > >                         nvidia,outputs =3D <&dsia &dsib &sor0 &sor1>;
> > >                         nvidia,head =3D <0>;
> > > -
> > > -                       interconnects =3D <&mc TEGRA210_MC_DISPLAY0A =
&emc>,
> > > -                                       <&mc TEGRA210_MC_DISPLAY0B &e=
mc>,
> > > -                                       <&mc TEGRA210_MC_DISPLAY0C &e=
mc>,
> > > -                                       <&mc TEGRA210_MC_DISPLAYHC &e=
mc>,
> > > -                                       <&mc TEGRA210_MC_DISPLAYD &em=
c>,
> > > -                                       <&mc TEGRA210_MC_DISPLAYT &em=
c>;
> > > -                       interconnect-names =3D "wina",
> > > -                                            "winb",
> > > -                                            "winc",
> > > -                                            "cursor",
> > > -                                            "wind",
> > > -                                            "wint";
> > >                 };
> > >
> > >                 dc@54240000 {
> > > @@ -230,15 +217,6 @@ dc@54240000 {
> > >
> > >                         nvidia,outputs =3D <&dsia &dsib &sor0 &sor1>;
> > >                         nvidia,head =3D <1>;
> > > -
> > > -                       interconnects =3D <&mc TEGRA210_MC_DISPLAY0AB=
 &emc>,
> > > -                                       <&mc TEGRA210_MC_DISPLAY0BB &=
emc>,
> > > -                                       <&mc TEGRA210_MC_DISPLAY0CB &=
emc>,
> > > -                                       <&mc TEGRA210_MC_DISPLAYHCB &=
emc>;
> > > -                       interconnect-names =3D "wina",
> > > -                                            "winb",
> > > -                                            "winc",
> > > -                                            "cursor";
> > >                 };
> > >
> > >                 dsia: dsi@54300000 {
> > > @@ -1052,7 +1030,6 @@ mc: memory-controller@70019000 {
> > >
> > >                 #iommu-cells =3D <1>;
> > >                 #reset-cells =3D <1>;
> > > -               #interconnect-cells =3D <1>;
> > >         };
> > >
> > >         emc: external-memory-controller@7001b000 {
> > > @@ -1066,7 +1043,6 @@ emc: external-memory-controller@7001b000 {
> > >                 nvidia,memory-controller =3D <&mc>;
> > >                 operating-points-v2 =3D <&emc_icc_dvfs_opp_table>;
> > >
> > > -               #interconnect-cells =3D <0>;
> > >                 #cooling-cells =3D <2>;
> > >         };
> > >
> > > --
> > > 2.43.0
> > >
> >
> > A little bit of documentation on this, should someone read the list to
> > see what happened. The original report of the failure is here [0] and
> > only occurred when the tegra210-emc driver fails to probe. After this
> > report, the related code change [1] to tegra210-emc which registers
> > the driver to icc was silently dropped from -next, but these dt
> > changes remained. So now these interconnect routes do cause tegra-drm
> > to universally fail on tegra210.
> >
> > Aaron
> >
> > [0] https://lore.kernel.org/all/56aed0ec-b104-4612-8901-3f6f95e0afab@nv=
idia.com/
> > [1] https://lore.kernel.org/all/20251027-t210-actmon-p2-v6-1-1c4bd227d6=
76@gmail.com/
>=20
> There may be another option here. I'm beginning to think there will
> not be any way to set the icc routes for the dc's while the emc driver
> can fail to probe. The next best thing looks to be just dropping the
> interconnect nodes from the dc nodes and leaving the rest of the
> original commit in place. Then reland the tegra210-emc driver change.
> This should put the no-emc case back to where it was, while allowing
> actmon to do its scaling when emc is available. And I will move to the
> dc icc routes to downstream dt's, where I tightly control that emc is
> available.
>=20
> Does this sound reasonable? If so, I will go stage the changes and
> verify that it works as intended.

Let's go with the revert for now, since that clearly documents where
things go wrong and it can be easily reapplied once the root cause has
been resolved.

It's a bit unfortunate that we don't have a way of making these
interconnect properties optional. If EMC fails to probe for whatever
reason, I think the assumption should be that it doesn't do any dynamic
scaling of the EMC frequency and hence the entire ICC stuff isn't needed
and should just be no-ops.

On the other hand, other than the patches getting reverted, there's
really no good reason for the EMC driver to fail to provide them, hence
I think once that's been restored we can apply this again and then that
should be the end of it.

Thierry

--tp7y7od5f2vxm4kw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmlD7OkACgkQ3SOs138+
s6HxMQ//Xx7wnIEgJAk2Fk23Tg5mlEcRapx+MxmvhRHR1wOeStLCpPuZiJRBmICd
J0KJJC5Fi4FFqQSaSh+03BGfQ96dg9M/rX7xO7ca5QDED2jR9hnrZosixfcN8y9r
Cqs/cX7PLBcp+owBevlS9Pq8MZUtEIbVHiS75qITisqstpLDhUeoNMZQbatnV22T
r72nXwgFxeuRYdwyWajcQ5wteyY+B9krvlsgreIDDRqRnee8olfqZhNJULlRHmpc
ItNGoiXPpXIIJkusYbxrWR1V8LZUIlSXu+OA7Wj3nEJFk8Je08zLsd0JkkBFKFXX
O37qb3UcSU0pnOJXfGNkkVwR8q8iBMeFkSPMONgVboLNtH/3t4d+YdNTVonhLmPg
C2g++XMSKhD6vnCsRRXnXs4maYbTFF8/wWE/T6DUfq/SdN72Jeuf6iK03SSWiLlP
uPCv3DmanAdBBrBLODzvNgx153yKpWj104J+zzV285QxdKiKRk2+pCM4g7z+OTa3
W8UQmk+MKWgMx8XwF56+Pg8MGdNKck7/HrcUSu4hDSmoNokHdhQkueQICnRt4Kpr
Gq3MGlkAV8ihkvPNY2zu5v/K/vZQXgHq5siBGtSk1J3zwitCLI6S/7gbzcDmypVQ
piHsiTBAVZ8HbHrYXi7F87dY86quNJ5gjLfAv8daIKAl4SLUXVY=
=Fiyk
-----END PGP SIGNATURE-----

--tp7y7od5f2vxm4kw--

