Return-Path: <devicetree+bounces-266385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKj5OheblWmsSgIAu9opvQ
	(envelope-from <devicetree+bounces-266385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:57:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4466B155B4A
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A587300874F
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D17F3302151;
	Wed, 18 Feb 2026 10:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cU24d4+r";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="TiUG1oz2"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212DB3033CF
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771412220; cv=none; b=u8vaJm7BQITUHbPLOzpYXeT95YuS3yZ2mHbJ5qhM2R9vOzcsE+x5hSC1rFVwVepDWZYQuAJOoYj0LZu6w0cpiFzUR6dv5OJpZXMt5LW3C/KpU2ylNvGmw64OZFt1MGmCWuS0AAbtYeI2w+KZuDAhM//L3vkHZvA6/8s01iOUkNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771412220; c=relaxed/simple;
	bh=TQq+1P0U/jPyP7dzYbDaUc30sKVyeKQWH7aeE4w65uE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=co6Bp0m8y0H0GX1SGSXdCAhKiGCxCCN+FKOQQNudxWbJfTRcePBld/GUxqKEAgZ1huApM7o7cKdwrmWlNpM09bLgs0RF4n0HXguWFANTd1JBslLlt5iuiMtl3oU3c+JW0VI8AE9MX9/B8DE71drF4IfSNW5bg8Zh/EK+q/Eh0SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cU24d4+r; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=TiUG1oz2; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771412217;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=g5EhFzRS9kh8aYP/2UGoHhJQm5CJn7dpEnQsAb/ZMSE=;
	b=cU24d4+rQUm2uGbHlnP1g2cSEJgrTg4WyjJfNexcjCJ3rBDQ1yGVHBo0QKRZ7EyHF51VOK
	m6rjaJjCyeJPhiVxPMqB+NN95jNMLeMcxdgEefAekypN308VxETZ8WGXPiOVxUHZ7j9Bwy
	mqUdLzBxddSdCCb4IhZsrkuHBpoCnAg=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-381-gM7TYh7rPT2H9RZ86DLprw-1; Wed, 18 Feb 2026 05:56:55 -0500
X-MC-Unique: gM7TYh7rPT2H9RZ86DLprw-1
X-Mimecast-MFC-AGG-ID: gM7TYh7rPT2H9RZ86DLprw_1771412214
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-435af2d3144so3720399f8f.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 02:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771412214; x=1772017014; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g5EhFzRS9kh8aYP/2UGoHhJQm5CJn7dpEnQsAb/ZMSE=;
        b=TiUG1oz2estUXxUViF+BxA4uMI1OxJWd5TMPlmzWFM40W8DmqcN8h2X7/ydEy+5S4T
         RcjegxUsdb1NdQyMWejQ8jNdQVc+3R70YpTp41uPVek/crK8t6dIhmeKhXuuk7+s9B93
         XXD4GPjhvDxwPpjEPfPLreTOznnmypg848hfhWLaC90YyybjggBed4/Gg82CcSXWUc3z
         c0oWBYGwK4Sbf4XCgZRs/eTQEketZ2EurieQ4P3Vot4QMqRzBPDP25Q9Y19Hr+3Uxu56
         eE/yYkbA9McioMKt7bThMyASu1OYd1uM6QCTauQnnS8uAASwUPwLhK6IAgFmnGAE7Ma7
         qdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771412214; x=1772017014;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g5EhFzRS9kh8aYP/2UGoHhJQm5CJn7dpEnQsAb/ZMSE=;
        b=xB1C+9NpJwUZeq81PHpHLZNDD2WPEBXh7mCDNYh+fasPt4OmAktxd6MD2tn3sOrRmG
         6Ll94hcA1BXXXbyQv4FsOX1a71wUS6W8NyqyroWbZxQUv1jsFHL2SLxUi8t+BjZtl+f0
         5o4Yo5JZ8xeNdT/09GeVJOFJIVUVBgspcPePmBjk7YQ81CAlvAU0pnTG00spEFmIotLs
         DcyrFBn578OKtjKUZBrFVeJY2dY80lSNL0ISeyhYTKoD0qv2iUMo8M4n+vVDb834uOv6
         AbbU5cVEzVX1SC6x9GqjjekZwQfwbRYfYdhpzibmUZlr/bjAiVFNOEV0nMQbign2jeDB
         vhMA==
X-Forwarded-Encrypted: i=1; AJvYcCWIfACirK1DYHgrozqjU00yanbrQoBMsX8peX52f/1Nrk7mivMlrRrTmRCokA0C1Dp+yIkWFuphW/rw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwb1H+KoQ0v3jNy/+fy2XAIKX6hgu69dguy7wU7ril2Yf1qVHD
	nKY2jQsUy9KEmoDqjDFZaMzRBdkkhoj/OQN+GLv3lovkVn17it6wNHKtS4RwW2VLSqreo3XWSdg
	U/27wSZs+65w6ySp4NgSWB/e8wzTkE5FsYQC5vSY8vxGc1OIUq2QXH4QT5rsxqbA=
X-Gm-Gg: AZuq6aLms+w2ZsEUk7t7inBMIcW5UUMRJi8gn+sy5KWnyChyyDdOcN03avjBj9Vmwep
	kY9LKMuxCdopJv+nPbiU+PIaZc3BPo13I5Ej9i3GpOTQR0pvvoECpHF5ZXrYqafrupvXfso00a8
	LotXGo3d1kgzstTO1fUZEkmoQi7fO7uFMwMCwYQNt7YZ8ZeomGqa67n94fTsQNPKncIVE4KyE3N
	5MXj8wvv+1sisHcG2QQX0zFOAFYXM0da6lDsmuvsd9Psn5ap3G0KqQx3Ll+pHklxfLiPu+TyqS+
	2fZ9oG6Z51C0dSl59SOjk8F420w11/y0EChzvBWLvcmW5fPjYOBu+aP1fS28PZawjD8CXexcQA=
	=
X-Received: by 2002:a05:6000:2c0c:b0:437:8ff8:fea3 with SMTP id ffacd0b85a97d-4379db66593mr24384198f8f.21.1771412214097;
        Wed, 18 Feb 2026 02:56:54 -0800 (PST)
X-Received: by 2002:a05:6000:2c0c:b0:437:8ff8:fea3 with SMTP id ffacd0b85a97d-4379db66593mr24384146f8f.21.1771412213558;
        Wed, 18 Feb 2026 02:56:53 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abc85csm40735722f8f.22.2026.02.18.02.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 02:56:53 -0800 (PST)
Date: Wed, 18 Feb 2026 11:56:52 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Thierry Reding <thierry.reding@kernel.org>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, 
	Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
Subject: Re: [PATCH v2 07/10] arm64: tegra: Add VPR placeholder node on
 Tegra234
Message-ID: <20260218-magnificent-flying-coucal-a4f1c0@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-8-thierry.reding@kernel.org>
 <20260123-slim-seal-of-luxury-bdb58b@houat>
 <aY3oyMhkbxhgMbfi@orome>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="3lkrnqpcfmpi4l5q"
Content-Disposition: inline
In-Reply-To: <aY3oyMhkbxhgMbfi@orome>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266385-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4466B155B4A
X-Rspamd-Action: no action


--3lkrnqpcfmpi4l5q
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 07/10] arm64: tegra: Add VPR placeholder node on
 Tegra234
MIME-Version: 1.0

On Thu, Feb 12, 2026 at 03:51:29PM +0100, Thierry Reding wrote:
> On Fri, Jan 23, 2026 at 02:28:50PM +0100, Maxime Ripard wrote:
> > On Thu, Jan 22, 2026 at 05:10:06PM +0100, Thierry Reding wrote:
> > > From: Thierry Reding <treding@nvidia.com>
> > >=20
> > > This node contains two sets of properties, one for the case where the
> > > VPR is resizable (in which case the VPR region will be dynamically
> > > allocated at boot time) and another case where the VPR is fixed in si=
ze
> > > and initialized by early firmware.
> > >=20
> > > The firmware running on the device is responsible for updating the no=
de
> > > with the real physical address for the fixed VPR case and remove the
> > > properties needed only for resizable VPR. Similarly, if the VPR is
> > > resizable, the firmware should remove the "reg" property since it is =
no
> > > longer needed.
> > >=20
> > > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > > ---
> > >  arch/arm64/boot/dts/nvidia/tegra234.dtsi | 34 ++++++++++++++++++++++=
++
> > >  1 file changed, 34 insertions(+)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/bo=
ot/dts/nvidia/tegra234.dtsi
> > > index 850c473235e3..62a5dfde9e38 100644
> > > --- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> > > +++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> > > @@ -29,6 +29,40 @@ aliases {
> > >  		i2c8 =3D &dp_aux_ch3_i2c;
> > >  	};
> > > =20
> > > +	reserved-memory {
> > > +		#address-cells =3D <2>;
> > > +		#size-cells =3D <2>;
> > > +		ranges;
> > > +
> > > +		vpr: video-protection-region@0 {
> > > +			compatible =3D "nvidia,tegra-video-protection-region";
> >=20
> > The heap name doesn't follow the documented convention, see
> > https://docs.kernel.org/userspace-api/dma-buf-heaps.html#naming-convent=
ion
>=20
> I could change this to protected@0, which would make the name of the
> exported heap "protected".

protected-video would work too, but yeah, as long as it's unique, this
works.

Maxime

--3lkrnqpcfmpi4l5q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaZWa7wAKCRAnX84Zoj2+
dvUhAYCm3FfvWk95XHH2FpeLOwuwKc6yGIbEd2DSsZvfEyoEj29SyLApBrBuUbbF
1e/ifR4BgM0QdBWXEmJb3YcqxnY/OdqsBvatOWUWz2hoGC3/GAFLKTRWhVfS1lbP
wk++E+B39w==
=Z//1
-----END PGP SIGNATURE-----

--3lkrnqpcfmpi4l5q--


