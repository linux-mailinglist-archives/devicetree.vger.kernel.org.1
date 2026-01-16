Return-Path: <devicetree+bounces-256065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EA0D314A2
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E905305A765
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDBFA22FE11;
	Fri, 16 Jan 2026 12:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OQVZ6AOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853FF2264B0
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 12:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768567488; cv=none; b=F3q7cM6bz8voiEYxYUvaKPXnCE4WKvAAa78u2aqBPfvs73RFvWT1UTHADJiOjS1euAUW7B5ZovX3o31eYnR17T0N8sSeUx7TmdC1hHol7luCO07JRYsf8+Oft5ExPmezyRz5wXQ4WmN633FmoBhcNCTjNiy6PcMiSSllJbZ1Jtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768567488; c=relaxed/simple;
	bh=408DwCq9gASo4Vyk9YR3/taKUiVRWEuSFIGtx754BN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pEfvkhgQWRmYBd6NBvQCCHcoAoV2Sc+nL+YIrjw/BwD1PsHbQZSL94BbJtu6+FrMT0v9IQNgktRfA8JFO9Q4kIbzd8TgRXnCMWWifWjR4yFLu8pNgVjoC+iXyfCiod0oIz+JcRa9nGzcSm0Kb0twwBRAEV5OJ4ft6n6luDTsQH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OQVZ6AOE; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-2b4520f6b32so2708806eec.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 04:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768567483; x=1769172283; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uz8SRiw4IfjOx53ckfZ2h9xJeTMYhUuFqjQyqdesaBE=;
        b=OQVZ6AOEN4y5sSFc1vp0tHklN2BL9oP06+v0N8y9Yjlg4+0lsy/0UmJ5VnUUxDA/uy
         H/+yPQtX1yUvWdGeIzl8arF3F/W87wPxKkUnz0zxbM9qXfybH41qEHUSwTcvoRvCQE8w
         wgy2PlU9Jqz1ldc1r4L6tk9yWfBnQMMIOSSOsFsqBqBHKZARwdEGzvq2tC+Wu1op613A
         5UOrA6PCGZNiT5ghNIhL0bId6Dt97yUmQv391XM4ni+ASSNIETa4vDuajxMPN/KIw6iZ
         I1K1t/gfm3SMD794u72ePMMKG7FtFOCvudjnXFNC6FrDBw1NMJ5xs8nlQhDDkihS+stK
         QRxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768567483; x=1769172283;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uz8SRiw4IfjOx53ckfZ2h9xJeTMYhUuFqjQyqdesaBE=;
        b=POMhzipqoVYCfIGgGcRXLZJcDV+1ik04Bn2hQZfYY4fKURI6bt/UXhWoSZZvh6aipX
         EZrJXVXWTVJNsuseAkMW7xIQtyG0sfg03E/L8hWiXGcoxHAyzmJIiEOyIAgySVKY1Q9U
         DZSLp5swDtrQsDtFIBz1wQ79ocuEjzzi5WUg1iZdCxHNF+rQJC704xFFNHGxOmQ65eae
         4isPPm+gRKVdnUNGWJjq/qgvlgc3XOrBOF92VOH0Q6wKceooS279inhmc7PpPONNRTOs
         uzYcMLIDYV6UNeBRoYRVMop8xuCY3wYBmwcWWw9Vi+jZnFQQ0fGmqKWZqaX1QUoSCg9t
         +B6A==
X-Forwarded-Encrypted: i=1; AJvYcCXyeAAhn2shJ1A82l7Z67JeR4dRY5TeFiVpCTI2dfWh7r/+iftNtEn83qaO10MB2F+nGsgtC19G73Yx@vger.kernel.org
X-Gm-Message-State: AOJu0YyYMqSKGQLS6UaZzigtFB+ZcNFY3d3mx7wmfr1jU+/L0zYs8Taz
	Fl6AirnZguO05cKGduoseGO2iVdkJP/iZV+rpzTzQr+2nlmd6wNGTfiQ
X-Gm-Gg: AY/fxX4zGwgXUy78fzPONSB1JAnzUYk7GRyQ0qbB6Ux78Y9iquThDXWSpCNOi6vbRQ8
	AMyMcKQnUe2yfoaiFmjQLP/GXXhCo/CEpKN3T4t2s4LN/73ZM3aQdgikCl+elQxGe/lxxwx9dBZ
	SjP/tIwPEbPUowLz6gYHDAa/dV05ItcQ/FzEbtepo5dVO60Tmy7qmGHpCVGGCcbOKWa7aEnPSrA
	nIbd+/9GihGnRPj7qW2tMkEVHpZbZeJ9+NHJ8VMm1s88EnMX9sWjKlYzH9lPico+/dNdaMFz6Zd
	a+6HEoL7QNcmg64rj5ocvxagSS8fC5080AxeU+CDfPMNbwyBC8tGnVDFxwjN8klRybu7UCOcoj5
	RjWFFIOevvvGlAtnDvoIEIL4knTFhoeRAwumcbff93tT3blT7h8qbWfnzSG5xjihQvw/nBryIsy
	KnR4ak9ebyfTLjA7s1SQLuT+XF2GmGy7yZD5TdHkUGQ8fT3FHpzRt7E+8KDUOBnz3/hJkej7ncj
	A==
X-Received: by 2002:a05:7301:3f16:b0:2ae:55f2:ad57 with SMTP id 5a478bee46e88-2b6b40f01e5mr2028389eec.29.1768567482726;
        Fri, 16 Jan 2026 04:44:42 -0800 (PST)
Received: from orome (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b36564ffsm1810021eec.28.2026.01.16.04.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 04:44:41 -0800 (PST)
Date: Fri, 16 Jan 2026 13:44:35 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Ashish Mhetre <amhetre@nvidia.com>
Cc: will@kernel.org, robin.murphy@arm.com, joro@8bytes.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, nicolinc@nvidia.com, 
	jonathanh@nvidia.com, vdumpa@nvidia.com, jgg@ziepe.ca, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH V8 4/4] arm64: dts: nvidia: Add nodes for CMDQV
Message-ID: <aWoymh04hKXsADa-@orome>
References: <20260113054935.1945785-1-amhetre@nvidia.com>
 <20260113054935.1945785-5-amhetre@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4oau3igknnhri5c2"
Content-Disposition: inline
In-Reply-To: <20260113054935.1945785-5-amhetre@nvidia.com>


--4oau3igknnhri5c2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V8 4/4] arm64: dts: nvidia: Add nodes for CMDQV
MIME-Version: 1.0

On Tue, Jan 13, 2026 at 05:49:35AM +0000, Ashish Mhetre wrote:
> The Command Queue Virtualization (CMDQV) hardware is part of the
> SMMUv3 implementation on NVIDIA Tegra SoCs. It assists in
> virtualizing the command queue for the SMMU.
>=20
> Update SMMU compatible strings to use nvidia,tegra264-smmu to enable
> CMDQV support. Add device tree nodes for the CMDQV hardware and enable
> them on the tegra264-p3834 platform where SMMUs are enabled. Each SMMU
> instance is paired with its corresponding CMDQV instance via the
> nvidia,cmdqv property.
>=20
> Reviewed-by: Jon Hunter <jonathanh@nvidia.com>
> Acked-by: Nicolin Chen <nicolinc@nvidia.com>
> Signed-off-by: Ashish Mhetre <amhetre@nvidia.com>
> ---
>  .../arm64/boot/dts/nvidia/tegra264-p3834.dtsi |  8 +++
>  arch/arm64/boot/dts/nvidia/tegra264.dtsi      | 50 +++++++++++++++++--
>  2 files changed, 53 insertions(+), 5 deletions(-)

Applied, with the tags rearranged and the subject prefix fixed.

Thanks,
Thierry

--4oau3igknnhri5c2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmlqMrMACgkQ3SOs138+
s6GZWw/+PsfThyygUX03IXSU8Jsrup/oODhWPhvKjNgijz6nnSVFBhA0BA5ikMoH
FCIWEVLZKqW3QA6ftDE8V3MnYh+JPY1qW0g55q5jFthi1qtwtbL+WlMvvGPqulGx
8XYCYkYrtzg/PEx+UJi/0DP0i0BNCCCSSx4fTNDxUqpNdre3oGyD0Ac8eF0xkp90
JLv76ggCT7UX4MNuXEGGs4ndCBYlcOeO1wDkkDd8ZfkdZU8qAaOnvM4TNRocSZIU
imgVHUIRNXnaMOB29ykaxvAjah65rbv//4inrVutVTLepKoH/rT/p2ahSUHG3JIZ
DAssTp4AUCO2Ovc4CGqPBw5ORMs3TdKnKFGqyQN718EnSGmJkzwbWZ0Z1Q+FJrdN
s2RQXxLdL9ZGcu3tBm3/5j5If5VRvNo5aTc2IDhjeKsrVRPttCw6FBZfbxHcHj0M
UZls4LAAes/RnZ3XQDrUdf6mIgoOZnx70Dy5BfulONNoVf7SxE3yZGR0h02q9EVp
kJlCh9VuoS0aza6CpWY8mv6Gam171pC0VJABduWXeCfxKW0uqDIce7EOrppXT1/w
7XMvcfiSfopGB83vO4ulQ3rTPvot2fbJnm9JHrYPdnYwkDPFRs+zDeDSr3Ub/iZ/
U5J/FD1YV4AsdQfuwEDWkE8URTqex7eqUWg3i2yKHe2wZBYHb50=
=R6HJ
-----END PGP SIGNATURE-----

--4oau3igknnhri5c2--

