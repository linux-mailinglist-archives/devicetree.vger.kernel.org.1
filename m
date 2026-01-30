Return-Path: <devicetree+bounces-261246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CD0jGo/EfGm+OgIAu9opvQ
	(envelope-from <devicetree+bounces-261246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:47:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2453CBBB70
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:47:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BA368300F1AA
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE4027467E;
	Fri, 30 Jan 2026 14:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="NrZUX5i7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DD725CC40
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 14:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769784460; cv=none; b=ZzT/dzjAheNGmId12apLeGqLrSCKH6K6Y7FFVZpahxc4klWwDeRAOeNntuSDP3Lr3m9eWFttfnov4dw/IhNJtrhXPpf6STqZP2n9y1dlr0gXX79Gj/1ADjTcw2GEgvQbO+W9a00Sou+C6KOI86fVtAQwG24AiSVEThyJbq2V97s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769784460; c=relaxed/simple;
	bh=l0NK+L1zbI+S1elZ/cP/d0bNA/FxXgDqcRb+gufNh+s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=irBSlPGPvVeEM8ClBSveo0GU+enexrsUwJuP0BaDdAZAsAwamkPbff0c4nJ+fWDRSVY+Wovd2tucAjm7BX0VT0HGyr0j4HCFK0p++e4TXy4ptiztZe033ZRWykimYuxs+UMJG8TW82VzCWqC5xhgZuzRpGckx1sEeZ2Ab9cSWd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=NrZUX5i7; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-502acd495feso23217341cf.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 06:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1769784457; x=1770389257; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=m2hfas+OWqJcbZ6w1+Kimr6HVSADO3LaGmzUbd8jJBA=;
        b=NrZUX5i7imhVIy92tZcx8S6LtPcpdUm9vR+yPdySba+zQEwxFRUr1WjadUVbCoLqfj
         KIQiY0y/Nf5FDInR0YFFYeXdpS8yq0hiUTy2yO0EA1RK3tNw7quKqKg2mC1aSuo8p4QQ
         5g4GMImgiygJGiBWPjEjrNdnn1zOQuavQ5X93MBPm343I9I4jLoLYhbzTnntUQA9WUJK
         BUgBu65cGj3MUXyc7l9jPWERD6DTE7u4ZoA2ofp0bqgDhrUtsm2VaaZmMzhvpDsKlxit
         v7gzPPp4VOvNTB3Ppb9gUUz5CBxC33CigGuefiCtgy6uG2lesb5vnr6dDPUZ7TZLrqki
         n9ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769784457; x=1770389257;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m2hfas+OWqJcbZ6w1+Kimr6HVSADO3LaGmzUbd8jJBA=;
        b=kt8Aw3/JMbdvstMXwaxjiTlLAdAR5ycjukAV2DugpXfu8DOWhYqagfL4o8J3Qm3hhH
         NWPPqWTHefc1yamu/ALosP4BL7qkHxlOPUjWtoD1HEaGIq00BI9IvL7S+YmgDB+vQ9Ut
         y8bMYgx+miuUhaPV8518IBH5lAHGx2TM4fq9qNEnT89sDsqUdz7Ftu/AsnQKMK+6xIHU
         88XSniTxqBSKt3Ap2gwfFuwBVNo/KLVvijvQ0FkcgTN88sVXgUV3jqO7DLMzgMbpLN+f
         MMPQqbezWxaYUilm5ZmrMP62EiPVTIy4DvfJFBjqT0g27ffRHgSnFerjknOj9Oh94Xdo
         zhMg==
X-Forwarded-Encrypted: i=1; AJvYcCWPD9tRlg+0OWxQacanSPnlOUzZUJ6bu5yIaat2PwKuqvvZk+JUGdE6ZfIRA/4MUstFn/A4bxWLvuc0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8QGIQw4c2zdz6TUgBj7MF7zXwMgX/By3YNsgla7204b98uV6y
	oDEwgWQ9z7h5NMgS3q6wsd1oUy5FkYuz79HaX90l7qRky48vUaFDyOD+EiTqDJzn0DBe2oHFKOi
	ye2gR
X-Gm-Gg: AZuq6aIHboJ6KsP5TfSnXajsYKFf8oi8fwMWLuVwx/Tgl906Zd7rCzcrFb9YjByN5bG
	yeTSSu+7JNwHt97XnvWwZPcZkmmNqz/GoEmvSi0h1dP3xuP2Mhzrwn6sO5mm2/D1pG6r/TH68lV
	WC0CtaDoCW3+X2DHgu5pNbzsTtmBdp3Cknh7NbUQOmRfhU26L9scUFdtUqiRVDWVyv+5GatBbrf
	RWiDYFw0GcKxJ9zzIb3WB+SiaN1VxNRqQmzGSJOf/WnBMWDuELC9p6PD1Ppp0JOr4b6m2Vic1n6
	2/eXQKrHq+v794o07p5bsLOdbm7v6lniOCj+QGGyokE1iV4+kqQAakXylxg4XFqQ9WXQByCrFZ9
	Gwk5ipQjYGMMr2wFlF18m1f37Z16gPUQ1DIpSblxP53G1nbCCtopNR7AZ3NOskTBWLPYYXUjzzO
	l4oGED0srUffL0Q/ry8x6QlY1VDY4=
X-Received: by 2002:ac8:5a11:0:b0:4f1:ab79:fb18 with SMTP id d75a77b69052e-505d21c6bbemr33783391cf.25.1769784457458;
        Fri, 30 Jan 2026 06:47:37 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::5ac? ([2606:6d00:17:7b4b::5ac])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50337cbde30sm58435431cf.33.2026.01.30.06.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 06:47:36 -0800 (PST)
Message-ID: <df8d5d5f28870752e77ec74f34fea7ceb6e97286.camel@ndufresne.ca>
Subject: Re: [PATCH] arm64: dts: imx8mq: Restore VPU G2 clock to 600MHz for
 4K60fps decoding
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: ming.qian@oss.nxp.com, linux-media@vger.kernel.org
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl, 
	benjamin.gaignard@collabora.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de,
 sebastian.fricke@collabora.com, 	shawnguo@kernel.org,
 ulf.hansson@linaro.org, s.hauer@pengutronix.de, 	kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, 	l.stach@pengutronix.de,
 Frank.li@nxp.com, peng.fan@nxp.com, eagle.zhou@nxp.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Date: Fri, 30 Jan 2026 09:47:34 -0500
In-Reply-To: <20260130084133.2159-1-ming.qian@oss.nxp.com>
References: <20260130084133.2159-1-ming.qian@oss.nxp.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-i/sogahe4R0AwUuBxOvE"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[ndufresne.ca : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,xs4all.nl,collabora.com,pengutronix.de,linaro.org,gmail.com,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261246-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas@ndufresne.ca,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.6:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2453CBBB70
X-Rspamd-Action: no action


--=-i/sogahe4R0AwUuBxOvE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le vendredi 30 janvier 2026 =C3=A0 16:41 +0800, ming.qian@oss.nxp.com a =C3=
=A9crit=C2=A0:
> From: Ming Qian <ming.qian@oss.nxp.com>
>=20
> The VPU G2 clock was reduced from 600MHz to 300MHz in commit
> b27bfc5103c7 ("arm64: dts: freescale: Fix VPU G2 clock") to address
> pixel errors with high-resolution HEVC postprocessor output.
>=20
> However, testing shows the 300MHz clock rate is insufficient for
> 4K60fps decoding and the original pixel errors no longer occur at
> 600MHz with current drivers.

Tested on EVK, with the downstream DCSS driver, and this change triggers DC=
SS
underrun (which is related to the DRAM QoS erratas on this SoC). It also
sometimes trigger the "not all macroblock decoded" warning I added recently=
, and
we can empty IRQs, but these are handled now.

>=20
> Test results with 3840x2160@60fps HEVC stream decoded to NV12
> (the same scenario that exhibited pixel errors previously):
>=20
> 300MHz performance:
> - Severe frame dropping throughout playback
> - Only 336 frames rendered in 11:53 (0.471 fps)
> - Continuous "A lot of buffers are being dropped" warnings
> - Completely unusable for 4K video
>=20
> 600MHz performance:
> - Smooth playback with only 1 frame dropped at startup
> - 37981 frames rendered in 10:34 (59.857 fps)
> - Achieves target 60fps performance
> - No pixel errors or artifacts observed

That probably only true with the upstream DCSS + a small resolution embedde=
d
panel ? Can you clarify this setup, because the display drivers mainline ar=
e
very minimal. Would be nice to show you average DDR read/write bandwidth
utilization during this run for comparision.

Another information that bugs me, in the BSP code, the G2 voltage is increa=
sed
too, which you didn't do here. They also use the thermal 2 zone to kick it =
down
to 300 until it cools down.

Nicolas

>=20
> Restore the clock to 600MHz to enable proper 4K60fps decoding
> capability while maintaining stability.
>=20
> Test pipeline:
> =C2=A0 gst-launch-1.0 filesrc location=3D<4K60_HEVC.mkv> ! \
> =C2=A0=C2=A0=C2=A0 video/x-matroska ! aiurdemux ! h265parse ! \
> =C2=A0=C2=A0=C2=A0 v4l2slh265dec ! video/x-raw,format=3DNV12 ! \
> =C2=A0=C2=A0=C2=A0 queue ! waylandsink
>=20
> Fixes: b27bfc5103c7 ("arm64: dts: freescale: Fix VPU G2 clock")
> Signed-off-by: Ming Qian <ming.qian@oss.nxp.com>
> ---
> =C2=A0arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 607962f807be..731142176625 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -960,7 +960,7 @@ pgc_vpu: power-domain@6 {
> =C2=A0								=09
> <&clk IMX8MQ_SYS1_PLL_800M>,
> =C2=A0								=09
> <&clk IMX8MQ_VPU_PLL>;
> =C2=A0						assigned-clock-rates =3D
> <600000000>,
> -								=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> <300000000>,
> +								=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> <600000000>,
> =C2=A0								=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> <800000000>,
> =C2=A0								=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0>;
> =C2=A0					};
>=20
> base-commit: c824345288d11e269ce41b36c105715bc2286050
> prerequisite-patch-id: 0000000000000000000000000000000000000000

--=-i/sogahe4R0AwUuBxOvE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaXzEhgAKCRDZQZRRKWBy
9PeIAQD5M45/PuqurizwtvrI3NE0hSFwAP/bvFLOeVBaM9GzsQD+PGBAYJjzNYYA
DPbDkSTiWXrcCwv7P2Bo3/hz5rdgBgU=
=/XEy
-----END PGP SIGNATURE-----

--=-i/sogahe4R0AwUuBxOvE--

