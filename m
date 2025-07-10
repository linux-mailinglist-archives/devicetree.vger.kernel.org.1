Return-Path: <devicetree+bounces-195092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10078B00666
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:22:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 261AF58858B
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 15:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27409275AE3;
	Thu, 10 Jul 2025 15:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="g7pIiWkk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com [209.85.219.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0232749D5
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 15:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752160869; cv=none; b=iC5y/buf1l+O1VwP/gzRZdAuOuHJSpyUsjAat7FC8uSuE4shQumUbFl/hiJGWG1AM7b58PdxLTo4f2QMy5kBEuQFiieD5H/5zOswkeLCt8uqZcojXzv/jICKwbCYqVQMV72ZKsDmjGQCCvtnppknBeepBPoOX/i2ifvoRhGB+zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752160869; c=relaxed/simple;
	bh=xKpf3SbAmWkt5VJofJn48qdY/118qeqD5HjzAhisH5k=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=EZAszMdD+Zk9JYV17ucA5WIWtCrxOmVMs7EflVyimEWcK7uTFS1yDqldn563f18Yu1w5g4VJSsg96v3S722U962EllUtu8AEJ1Euym9wdRizvjb/x9k8tdA2io0bPZ3Vkc/3RCQ9IkOaR+XWJK5LBlXW+U+63BjBcO/jRMEyTrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=g7pIiWkk; arc=none smtp.client-ip=209.85.219.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qv1-f67.google.com with SMTP id 6a1803df08f44-7048d8fec46so16872796d6.0
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 08:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1752160866; x=1752765666; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xKpf3SbAmWkt5VJofJn48qdY/118qeqD5HjzAhisH5k=;
        b=g7pIiWkkWy9cBm69Kumkvogf8ZLcwSjfcm5DU+mc8q7eRtCM0oOreHVMI511ffJOvR
         MbuUYvq1qLZCwH1E4WMYgAN7qWm34IvE0NbHREDo6MIlHDQdUdzPRya4SMpqA5elSp/+
         FtsLUrY9DKfr0fTPykaP+s7Vxjc1eMfh92f2/SMYS9ajjFzUQeTadLRYG97XznBXY1i2
         KlxJ/vXW7iwJnf9npM1alSyrPG2zNd2Q5ZdEU/GPTfEIKOuP/kkLRv/+VXVAscOXv/Gb
         IQeCKLvdA0jBNVhgZJ3/51pfTVj1loGYUZu0PnUYf0azgKfegYWI6O0MH0OCK1BZ+yvW
         UbyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752160866; x=1752765666;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xKpf3SbAmWkt5VJofJn48qdY/118qeqD5HjzAhisH5k=;
        b=qCJQshMfX49LhD+0YfmZraH7sBRXZzJufJEwfUB8yndy+N8lW4aUddLV0/n346Yu67
         YTNjs+QTkayMtNYSMLJe1+yyDhv0S4xFjZq1Yp9JXofSZ7AjcKvrijSBDTXhu2VZ4YDS
         mfpEz6nMwRBVxUHhmDA/o9ZkBc1RqJNaDsNsgSD6QApBeeRhBnsjwCIWDukLd0CB2BK5
         GkWoNWXbjjnqvaQ0WxD/NUyHQUn5eIyibNVgFNgqyYpS3wVo0fg0VAl/b8WfUtTb0CrR
         zJuzBzd8bS6ny39JrVSj/acTR7UP1+nrr8PanlPPu+Rjun3ENBH098ZslncHW9bZqe3k
         SttQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6czW0hlZoWswFpYbrr54dwJ/CHx8yqaLyGagukKIpmIsFUREd6LVKMMrNrFCdQvKousxukTh9rMou@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+CgEpz42r7CvsKFt1czYxARxnT17BearYQRbhKhMolZsLjZgz
	Umk8achtooBC5XDxANVAEdn1B5mQNk6Te6+OL/KMfCyXeetXnhyo7UTHbOJjMJ712vU=
X-Gm-Gg: ASbGncv04UCCJgtML6Qt40BjbX+R8gBPBpZaQWmqCMBLp0tJ68upzAdoP5l/vuwOKkM
	JEdjFYKFo+7l+sBtg+wGapNC6uSSs8vdVKKk2xl9i8LTpTpDiEipElcvTzUAKvJYBIRsoZXaMQG
	BaHgFHn05UbPszpCw0/klB9SMYWSVU6cJWzHmH1aKMvl5hr/aQa9kd6jcAaLlzhgCFhQgR2cmVs
	qT6Ib7TE3nB05MXLlOhV9/IFVoMoKVLroV3+P/g96bGtA3HcrIpFbGwpW+AaxeoIvt/1tpyzUqs
	uO1WE2Tf95YULbL+tdfVjwRrejDf0iFNlge2aqaq/n9o5tjYbWEkEEU5N+bSzGm4ao8=
X-Google-Smtp-Source: AGHT+IH0uA7EbnPkACvyJEVJCpbYJKsf0sky4Js9sJlbaC40zioZfAIyIXsCJGWIghdll3hzxEsL/w==
X-Received: by 2002:a05:6214:4e14:b0:6fa:a5c9:2ee7 with SMTP id 6a1803df08f44-70495a1fe12mr51088666d6.8.1752160864846;
        Thu, 10 Jul 2025 08:21:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b699::5ac? ([2606:6d00:17:b699::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7049799e407sm9536186d6.23.2025.07.10.08.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 08:21:04 -0700 (PDT)
Message-ID: <78c981eb7fafe864bea60c662ba5b474fbd44669.camel@ndufresne.ca>
Subject: Re: [PATCH v6 0/2] dma-buf: heaps: Create a CMA heap for each CMA
 reserved region
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Ripard <mripard@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Brian Starkey	 <Brian.Starkey@arm.com>,
 John Stultz <jstultz@google.com>, "T.J. Mercier"	 <tjmercier@google.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?=	 <christian.koenig@amd.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek
 Szyprowski <m.szyprowski@samsung.com>, Robin Murphy	
 <robin.murphy@arm.com>, Andrew Davis <afd@ti.com>, Jared Kangas	
 <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev
Date: Thu, 10 Jul 2025 11:21:02 -0400
In-Reply-To: <20250709-spotted-ancient-oriole-c8bcd1@houat>
References: <20250709-dma-buf-ecc-heap-v6-0-dac9bf80f35d@kernel.org>
	 <49e3fa834aadb37452112bb704a1a1593c1fd0b8.camel@ndufresne.ca>
	 <20250709-spotted-ancient-oriole-c8bcd1@houat>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0MU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT6ImQQTFg
 oAQQIbAwULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgBYhBO8NUoEVxMPCGgRvEtlBlFEpYHL0BQJ
 oLLLGBQkJZfd1AAoJENlBlFEpYHL0BEkA/3qkWYt99myYFSmTJUF8UB/7OroEm3vr1HRqXeQe9Qp2
 AP0bsoAe6KjEPa/pJfuJ2khrOPPHxvyt/PBNbI5BYcIABLQnTmljb2xhcyBEdWZyZXNuZSA8bmljb
 2xhc0BuZHVmcmVzbmUuY2E+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQ
 TvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyy+AUJCWX3dQAKCRDZQZRRKWBy9FJ5AQCNy8SX8DpHbLa
 cy58vgDwyIpB89mok9eWGGejY9mqpRwEAhHzs+/n5xlVlM3bqy1yHnAzJqVwqBE1D0jG0a9V6VQI=
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-0srW01EuwsYGDYpmIBS/"
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-0srW01EuwsYGDYpmIBS/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 09 juillet 2025 =C3=A0 15:38 +0200, Maxime Ripard a =C3=A9crit=
=C2=A0:
> > Will there be a generic way to find out which driver/device this carveo=
ut
> > belongs to ? In V4L2, only complex cameras have userspace drivers,
> > everything
> > else is generic code.
>=20
> I believe it's a separate discussion, but the current stance is that the
> heap name is enough to identify in a platform-specific way where you
> allocate from. I've worked on documenting what a good name is so
> userspace can pick it up more easily here:
>=20
> https://lore.kernel.org/r/20250616-dma-buf-heap-names-doc-v2-1-8ae43174cd=
bf@kernel.org
>=20
> But it's not really what you expected

=46rom a dma-heap API, the naming rules seems necessary, but suggesting gener=
ic
code to use "grep" style of search to match a heap is extremely fragile. Th=
e
documentation you propose is (intentionally?) vague. For me, the naming is =
more
like giving proper names to your function calls do devs can make sense out =
of
it.

Stepping back a little, we already opened the door for in-driver use of hea=
ps.
So perhaps the way forward is to have V4L2 drivers utilize heaps from insid=
e the
kernel. Once driver are fully ported, additional APIs could be added so tha=
t
userspace can read which heap(s) is going to be used for the active
configuration, and which other heaps are known usable (enumerate them). The=
re is
no need to add properties in that context, since these will derives from th=
e
driver configuration you picked. If you told you driver you doing secure me=
mory
playback, the driver will filter-out what can't be used.

Examples out there often express simplified view of the problem. Your ECC v=
ideo
playback case is a good one. Let's say you have performance issue in both
decoder and display due to ECC. You may think that you just allocate from a=
 non-
ECC heap, import these into the decoder, and once filled, import these into=
 the
display driver and you won.

But in reality, your display buffer might not be the reference buffers, and=
 most
of the memory bandwidth in a modern decoder goes into reading reference fra=
mes
and the attached metadata (the later which may or may not be in the same
allocation block).

Even once the reference frames get exposed to userspace (which is a long te=
rm
goal), there will still be couple of buffers that just simply don't fit and=
 must
be kept hidden inside the driver.

My general conclusion is that once these heap exists, and that we guarantee
platform specific unique names, we should probably build on top. Both users=
pace
and driver become consumers of the heap. And for the case where the platfor=
m-
specific knowledge lives inside the kernel, then heaps are selected by the
kernel. Also, very little per-driver duplication will be needed, since 90% =
of
the V4L2 driver share the allocator implementation.

Does that makes any sense to anyone ?

Nicolas


--=-0srW01EuwsYGDYpmIBS/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaG/aXgAKCRDZQZRRKWBy
9DlHAP9fTMIloahiN5XMBZnBB4aGkZUXdygAalNGlj6RFJZc3AD/RAhlPPmyBaVt
ZDKBRjZVW40OnGDxhAYZePpjsIkSPw4=
=uaX4
-----END PGP SIGNATURE-----

--=-0srW01EuwsYGDYpmIBS/--

