Return-Path: <devicetree+bounces-146285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52327A3405E
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 14:27:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4896E7A3E99
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 13:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 041D9227E98;
	Thu, 13 Feb 2025 13:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="W2R8s45M"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3BE23F417
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 13:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739453239; cv=none; b=AC27ov2ZdIWDbjuTvvpbvXNSOLaYsZ1+PId7ZZjA5GqoyDFzuERxqySnWgrgDE4OpLMZ+atBI2Dy7ZAFqv3zwpWI+9CVENiTM73A0Cykih5Ic559Oz5VJy/IRT3p7ql9cpUHh2d5VhBG9/WA7KiUByBa3lu2AhjxJYDpVo/Nt/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739453239; c=relaxed/simple;
	bh=PETh38ePI29EJVHzrw4elbMK85jko6m6w3+fzKkGw4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nP09HH5OfCmGwA0pg8b/Mte2DhEjEh3HfP/iGya629W8tYrLcPWKirp49NCYZuNO3TYoCvTj0s5oHtGLeKbC0Za4P64IT7MvTETTE2Q5xZ5POoPG6QyTbnNq0oWs6AQawADmLJTR8M0gL6rGxmxGaagM3xNi5VmazKPIQh6pXT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=W2R8s45M; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Thu, 13 Feb 2025 18:56:45 +0530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1739453226;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WzD/OC0ZByBLmQNngbMt1lFnaeNPGOwTY+A25jppGVo=;
	b=W2R8s45M6Rdy6DBdhwhHWEe0Nrz/vcqTmXF6dPeS95nppgNdSxB9JUX13KftJDHnEbQMDI
	R5cKlCH/iBFqLictE1CBrp49paOvXv9OV2Rroy4RuM7gDaJyOS6wv8KDZTl1gy4YyUaGlV
	ZQnZAJJLwDI6ePm7MAWUuXlGnD+dBBo=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jai Luthra <jai.luthra@linux.dev>
To: Yemike Abhilash Chandra <y-abhilashchandra@ti.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, mripard@kernel.org, mchehab@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devarsht@ti.com, vaishnav.a@ti.com, 
	r-donadkar@ti.com, u-kumar1@ti.com
Subject: Re: [RFC PATCH 3/3] media: ti: j721e-csi2rx: Add support for
 VIDIOC_LOG_STATUS
Message-ID: <nvyplkcl74rpe7zl2vprfztaivlmwvrsrwyrqw7lbvbeij5ubt@4dehnb7j6ona>
X-PGP-Key: http://jailuthra.in/files/public-key.asc
References: <20250212131244.1397722-1-y-abhilashchandra@ti.com>
 <20250212131244.1397722-4-y-abhilashchandra@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s4c7q4omkexuyfrp"
Content-Disposition: inline
In-Reply-To: <20250212131244.1397722-4-y-abhilashchandra@ti.com>
X-Migadu-Flow: FLOW_OUT


--s4c7q4omkexuyfrp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH 3/3] media: ti: j721e-csi2rx: Add support for
 VIDIOC_LOG_STATUS
MIME-Version: 1.0

Hi Abhilash,

On Wed, Feb 12, 2025 at 06:42:44PM +0530, Yemike Abhilash Chandra wrote:
> The VIDIOC_LOG_STATUS ioctl outputs the current status of a device to the
> kernel log. When this ioctl is called on a video device, the current
> implementation queries the log status for all connected subdevices in the
> media pipeline.
>=20

What is the benefit of doing this for a video node? The user can directly=
=20
check the status on the cdns-csi2rx subdev for CSI errors.

As far as I understand, the video node corresponds to a particular stream, =
but=20
the cdns-csi2rx source pad is shared for all video nodes, so it will report=
=20
the total errors seen for all video nodes in multi-camera scenarios.

This approach will also give you v4l2 control handler status from a few=20
sensors (like OV5640) that implement the ioctl using=20
v4l2_ctrl_subdev_log_status(), which is probably just noise for the case wh=
ere=20
a user wants to check for stream errors.

> Signed-off-by: Yemike Abhilash Chandra <y-abhilashchandra@ti.com>
> ---
>  drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c b/driv=
ers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c
> index 6412a00be8ea..946704458fee 100644
> --- a/drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c
> +++ b/drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c
> @@ -377,6 +377,15 @@ static int ti_csi2rx_enum_framesizes(struct file *fi=
le, void *fh,
>  	return 0;
>  }
> =20
> +static int ti_csi2rx_log_status(struct file *file, void *fh)
> +{
> +	struct ti_csi2rx_dev *csi =3D video_drvdata(file);
> +
> +	v4l2_device_call_all(&csi->v4l2_dev, 0, core, log_status);
> +
> +	return 0;
> +}
> +
>  static const struct v4l2_ioctl_ops csi_ioctl_ops =3D {
>  	.vidioc_querycap      =3D ti_csi2rx_querycap,
>  	.vidioc_enum_fmt_vid_cap =3D ti_csi2rx_enum_fmt_vid_cap,
> @@ -393,6 +402,7 @@ static const struct v4l2_ioctl_ops csi_ioctl_ops =3D {
>  	.vidioc_expbuf        =3D vb2_ioctl_expbuf,
>  	.vidioc_streamon      =3D vb2_ioctl_streamon,
>  	.vidioc_streamoff     =3D vb2_ioctl_streamoff,
> +	.vidioc_log_status	=3D ti_csi2rx_log_status,
>  };
> =20
>  static const struct v4l2_file_operations csi_fops =3D {
> --=20
> 2.34.1
>=20

Thanks,
Jai

--s4c7q4omkexuyfrp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmet8xUACgkQQ96R+SSa
cUWkRw/9Fha7996M+iSt4Hze7iS/MHJkt1zXGu/V5py5hMizMPXwke/BGF3rO6DM
CyehfaRs2jdm4kq2U95udD/TB3WwH0ZYKqK7vJ5xgKpFK5/gJMqHhAAosto9XRFT
L1STl7eIMclg2C65wEkPvYk7ZdSSM/7EK2153skpsoAao3xMBfaED1uFWQah/dW+
XqHvnB4PoCy35Vsg8jT2rtfkXxv8GvkNmYzEgGqdRDE9vRIexTjLDPTovBVH768I
bSgei72CSWlcHuQ7IFvfnuI0PPHVbEqCBo31mnCUIfRwSqXKq4b7ABEvw/HLyax0
cNg753tCtEbkV6LFn20DS2OUEG2W2vOoAfaOEwljOhU+ehzO+61IJGsKyudD3heB
f7UzczkacN5iyTfroW3fD6ZQhE76ZxW7CAeunbLUxaJi+kLbDwk+BD/x7DQ4WWQY
h+mwzWFdyP+Y3oTRBftvk/iJ42nHabGsGnQrbUzHLke3uSjBGAPmFiqSCFPJ8fsj
U3NMbgS5rdQrPWu8lydVK1n2GPDLSia9Ie8hTxiTcaEmDfLoOWoD4A3F1Bzh1YZn
uimjh+pTkcpAk9Wi24I1/iWPfhk8xJPbaEsnvNeFNLfkO5p//tQ0kU/83GAEvG9L
p+YKvNw9WdDFyz8GCgXbeY8bhLyef0cBwrBRGtUwYdrIqipnHv0=
=W2Qx
-----END PGP SIGNATURE-----

--s4c7q4omkexuyfrp--

