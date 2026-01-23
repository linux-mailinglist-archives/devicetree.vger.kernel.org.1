Return-Path: <devicetree+bounces-258941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qB4rE593c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:29:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D73A763FB
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A7B7301DB85
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EFF8314B91;
	Fri, 23 Jan 2026 13:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="J82pqcGe";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="OlYPiSWq"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12237313555
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769174940; cv=none; b=OJLqBC8G+IoLmogFrN7Srxj1v7+E396cBtNwwn36098GIOUCb7zM5yPEWsAim6J1hK1zYkOaFujfZR5lhrBX2dNe4q/uZOk6k37LWyi7/dbWo/cPy4l212C53BWrru5vKuGZm3cz9JZHVCaMELZSGRrwQe6MvyelzYzmxzGabHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769174940; c=relaxed/simple;
	bh=XOKhg51YAQQBLJz+iDYs40wy3Y89L9H1D+aBjSmMLU4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ITClHXKNGi4/WAdSxSm3/Jgm4WjTYrIz+eZMqK4sof0snESzb4G0b3nHZkYClO+xtMV6SHvhScMFWanmw+amlYLpYuWG2zofLDSzhWLAkO9j1WAggJnZJ+72O05RZhrK4D5pcMPzXKm8RmItwb07SnCxtl0FhCWc4Ce11EP6bag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=J82pqcGe; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=OlYPiSWq; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769174935;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ffNID3lES/rvD/wRrz1/dUM8poewF7Ay9LgcS6R1JVY=;
	b=J82pqcGet3/R17KrWpciHq/BU4C/SAnQGDKKKKv+j6nJX45eG2WQCcEV8X73HI98TLdUii
	XrEzSIFF/h7FeszACZjTLSqXkIDbLNwKM6a4+e02siaFpRhQVMryv4/q3u5zBFrq2iu0ou
	UyyRtPxKVk/tXRd6OTLwbXOH03/E0E0=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-647-IDDbss2NPTCQA771B933mA-1; Fri, 23 Jan 2026 08:28:53 -0500
X-MC-Unique: IDDbss2NPTCQA771B933mA-1
X-Mimecast-MFC-AGG-ID: IDDbss2NPTCQA771B933mA_1769174932
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-4325b182e3cso1524928f8f.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769174932; x=1769779732; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ffNID3lES/rvD/wRrz1/dUM8poewF7Ay9LgcS6R1JVY=;
        b=OlYPiSWqf78NmVSyrGVGYSW6GwW9uN0ySxtYLJjN6PpMTMG/NgLO/NR+KCCRLz1+yo
         0NdVMbE9SH/etGzuL3OQaFJuvE2y3RCLz5qUYctrNhIaiGSRMsQyAuiq2S7emYfAbKfN
         PF6pSAG3HjwlzjkEPX0oRGlEVB9GI6s3zDXAGjckyfapbqkm1HQ5iA5r/RWbyzMF29u/
         5KmEi0PbEv2XODU3aKOs4fEH/cBuYamtRdlsXLykbChKMK/gzxBv7wihYHTmbo3e6E3i
         aVGq6RH1saFguYteGibcqLAFpvXQzPGT8aATppzzsYrmqAT3t021e9gOmjTJW0i57RGR
         6Xdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769174932; x=1769779732;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ffNID3lES/rvD/wRrz1/dUM8poewF7Ay9LgcS6R1JVY=;
        b=LOST9F1pUEkLQwgDqdfbVsYY9NkIrOVOh3tkX1T8gXvCc6OUCKsTAb7wf974mWREdx
         mAMqHKlI5mDOyq0ID3t2fpqtYpN8BwJY0+YwxjtFlv4F5HtPluanGB4STtaCm3v/B59V
         11p6fJtDhb/JHDS0wrN0ULTQPgSMaShP8M8sNhy+LIK8+I701rGuQxN0BUYfXKaL+jOU
         kSe6ZWXVjVRZsu8HepTbDyoTt1InZD5o9WSFii9iacX3glAOnh5cA23qlk2vG2TC9+zv
         NiDvlSSEvzwSzQ5Nn2IBGfEKsjvLER5dp8mPZZ7OOc5Ae766fPPLV5U8XmHkUMlav+N/
         19JQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7Zr8Sx96HHzIM58BbUcYUiRczrc6Kf01I6UisdaPfnDh577fOjME+FiwIQwQ0tcypHtUGZ6r4yz2i@vger.kernel.org
X-Gm-Message-State: AOJu0YyzUKFTXybQQcUYp1avjaAqAwQBmNBIfvNHZIYCSGjiJEn2kTRk
	3/Q2LxMM+iW2/nfmLYXMTvSQ08esAcGfTTbe20LzFoB2k7Rq6Y881BJd6SFDPDBFlX0xLet1NIv
	XWEKcf3bk6gNvsmltm6CYnn3wYqh9B6T4/YBknhGoti1KyDbFB5w06ofByynsrjE=
X-Gm-Gg: AZuq6aLpHMxqGTjVcm8krIxdZvW5tVPCxbtDcdKXx9+cdjci94dUWCIkzSwIW72Z+SH
	g9t8rUu2Pp2gSR7lMZ4bj6OWz7UjuMLJPOiBusSfxHEQlHriU5BHyJDCHDxEhynxdFsGD64fftC
	Ec5linisEbPoAIwzwSGA12zualse8jtxOU8Sl/uQYCXsfcaaSzBH1JggPi+SPcv1zwvPnojmy8r
	YIJUbOShq25I2w6BB4OMdw75R2PTtE3XMC9u7LggOFDkKJuojfKFoKYFQR8c2KycgjjV2FIRn2P
	9BP36LQtELUJnkoqIebd4pYLhmIR4RBqiyLH5khldmVHC1ebYZS+wEuzXWjQ4g==
X-Received: by 2002:a05:600c:35cf:b0:47e:e952:86ca with SMTP id 5b1f17b1804b1-4804c94550emr57737885e9.2.1769174932335;
        Fri, 23 Jan 2026 05:28:52 -0800 (PST)
X-Received: by 2002:a05:600c:35cf:b0:47e:e952:86ca with SMTP id 5b1f17b1804b1-4804c94550emr57737405e9.2.1769174931899;
        Fri, 23 Jan 2026 05:28:51 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804dbe1fb8sm20935105e9.20.2026.01.23.05.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 05:28:51 -0800 (PST)
Date: Fri, 23 Jan 2026 14:28:50 +0100
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
Message-ID: <20260123-slim-seal-of-luxury-bdb58b@houat>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-8-thierry.reding@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="cj5dkpv3cmq4mgtz"
Content-Disposition: inline
In-Reply-To: <20260122161009.3865888-8-thierry.reding@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258941-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,nvidia.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6D73A763FB
X-Rspamd-Action: no action


--cj5dkpv3cmq4mgtz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 07/10] arm64: tegra: Add VPR placeholder node on
 Tegra234
MIME-Version: 1.0

On Thu, Jan 22, 2026 at 05:10:06PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> This node contains two sets of properties, one for the case where the
> VPR is resizable (in which case the VPR region will be dynamically
> allocated at boot time) and another case where the VPR is fixed in size
> and initialized by early firmware.
>=20
> The firmware running on the device is responsible for updating the node
> with the real physical address for the fixed VPR case and remove the
> properties needed only for resizable VPR. Similarly, if the VPR is
> resizable, the firmware should remove the "reg" property since it is no
> longer needed.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra234.dtsi | 34 ++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra234.dtsi
> index 850c473235e3..62a5dfde9e38 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
> @@ -29,6 +29,40 @@ aliases {
>  		i2c8 =3D &dp_aux_ch3_i2c;
>  	};
> =20
> +	reserved-memory {
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges;
> +
> +		vpr: video-protection-region@0 {
> +			compatible =3D "nvidia,tegra-video-protection-region";

The heap name doesn't follow the documented convention, see
https://docs.kernel.org/userspace-api/dma-buf-heaps.html#naming-convention

--cj5dkpv3cmq4mgtz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaXN3kgAKCRAnX84Zoj2+
dgbuAYCUCaHUWqJPUhpJEcWkq2uLIaAHUBUCBbdSNPF5dpiFWDp+QSk3hILjtrCJ
0RNZRFsBfRAntBAG5/xlnModxB1enPz3Z9TuAC/80PaW7OVoKyjeBvgxqbNMjc+5
iM/+K++lbw==
=V4o/
-----END PGP SIGNATURE-----

--cj5dkpv3cmq4mgtz--


