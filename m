Return-Path: <devicetree+bounces-234913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B79C31FF2
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 17:15:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 343CA4F5C1B
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 16:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 636A032D445;
	Tue,  4 Nov 2025 16:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="hjj6ITSa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4888329E7B
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 16:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762272788; cv=none; b=YIG5pPr5hHmh3bqo4dDCiM/KIVrGYrZJ3aZD/Jmrf/tqyR1m1Or9mWsrDcJpFm5WEUkCERVc6iLS+iPSgzIt1yNn+sofh0LsisMI+NLKrPMRSm+aRSrAHUPdPnasnnxDqlmCSuz1jzM3s9eo1V4SK8DrT8FWpPPy805lWFL1Wys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762272788; c=relaxed/simple;
	bh=EhPNKWXcOC4wz99nX7zOq9HMTheZCFEjaub0QmjufR4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mC7iMUtIYW+ruYqMuskezIsfd1tPZOoLazwvsymBEIg+wxLnfZ3j9Ter19yecHScn4hHZFjIf+JqG3vYWEeQvM6TEeJFaYyERYupUdC8ElK95IQsbRmzigqMW5LVJQKKmTlE/XEj6j7KDvGRPLBidV4q+9lGqk5QCsZUUDN3tyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=hjj6ITSa; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8a074e50b41so748217885a.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 08:13:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1762272786; x=1762877586; darn=vger.kernel.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EhPNKWXcOC4wz99nX7zOq9HMTheZCFEjaub0QmjufR4=;
        b=hjj6ITSa/YOUi20xu9/v5AesgSRzMLg19sEFsNeWD+6eZOnZbenW4dDrPX9dw7Cw0h
         RKkUQUoT7ZTZrxrVCCeQX5COtii25xMDmSKduAA9hCqaqCROe1Btwf+Ipn8xlL+wW7pn
         XRYjGZCYkfWmDiQytCI7fifHaVK7PFuaWlBAo8l5CCbwkoLRsbPPxY1FbGFe9OJPJhc3
         Sr65bse4QY3lpnovgYoE2Mh/71sSCRVGh/Qx2mjmxzZd4J3qU1YUh5ZRMc9nE0QPWHm4
         KVZNQQ+kS+adR9GaC8yPCWSWlpVmAK/ktG/P1GM744mI+EeqoXMwbkpWeF45OKn64QM4
         mRBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762272786; x=1762877586;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EhPNKWXcOC4wz99nX7zOq9HMTheZCFEjaub0QmjufR4=;
        b=vZFKD5iI79VnQiBCSrDGViz+3zPBcf+wb4TSqJ3yHw3CZgFw3jOjUDDcatXEyAb+N1
         P7sI61o2BMNDKu2II6S/z4YojgA+88hGdjWIbmVUzAw6MUNEhOtnlRz+1vctNIS5TiMA
         Oy2wlgt/ekMTH59J+Nnqu359vKtyXNhh3/pwOGEs1lRq+xBc4DmRopb9Iygm+r5jDdaI
         0Aepg01y0o8gKGDnHPNYCzeqSDX/yqfo4NjpTdsv4M9TA+biThrgmgrUCrM070O8S/yu
         RNaUsq6Z5IK30o1VSsMh9tsI7MsaKrVn97XCdMQg+jIvV1KOkBm6IlpgZpDkOQ+DMJKv
         FTcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWd8Fqkib2W2vFsDOMA+DPaExcyoAVSoFQ1x06qqe8mWZhugaH0wLA8XP11u/xO9nTerLJVogPH6x+b@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5GLySpn68BakC3HyCn2aeTF3rJ2hkaVbId5DCj1hMR1dhoXjZ
	wgRKZBrNUEZhJaXF2KlNx5+u4pucqbzpHSqF219/rGoRWkPucrTrPeMBzDefk970nbM=
X-Gm-Gg: ASbGncvYu9MrimHd3gPzOMalXwQgzSiTHb20kJYLeZmePzFeXeDv39vgm1xTW9U4jtt
	YGkDghCGYwCKiXACDSllXzPsK7e6gnN+IwA8eqxRiF37QgK745CqZCFH9fEzfRJuQU9MOLMmVxJ
	dmm7UVIimcbM8XAMPCoSVvPs1qqPdYePlQSzwXEJwy0e1Z2WB1hr8JrbwPrHUNN3wQ4kYykuRwE
	CVOEriZTyUNdbq8XfuTFrxfI0GocZxjSo2Rxweqne6ZK+NDdfnIplKna9daLLMJ48A3956TH/+z
	kbyQwlzxMab5/4YfBrHBFf2KPJ08mz0wynl2LIApQ2o+E2l15VeyqP+qzANJJ1SFdgpyYT7jgZA
	lkjfRX12NTCE9uzpfmkLwIHHGxQC3vHubVZPK2uOhQYRq0G6JgJ8MtVRISOkubdY5cK9SqET2ph
	2LDT8kLcLEivbiGolr
X-Google-Smtp-Source: AGHT+IHJNxRdepwmA70rIxH7CleHW+ih2OcQNUmhfvzupPYK5yYekte9k/E/acCX6TG/uH9ZccgQuw==
X-Received: by 2002:a05:620a:d8b:b0:8a1:eac9:a84d with SMTP id af79cd13be357-8b220b7f57dmr20914885a.44.1762272782998;
        Tue, 04 Nov 2025 08:13:02 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:ebd3::5ac? ([2606:6d00:17:ebd3::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b0f51ecd3fsm216022085a.11.2025.11.04.08.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 08:13:02 -0800 (PST)
Message-ID: <b6e6881197dc4c83e43ef5eb1f20c2bf1887d395.camel@ndufresne.ca>
Subject: Re: [PATCH 0/3] Add Amlogic stateless H.264 video decoder for S4
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Zhentao Guo <zhentao.guo@amlogic.com>, Neil Armstrong	
 <neil.armstrong@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley	 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet	 <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org
Date: Tue, 04 Nov 2025 11:13:01 -0500
In-Reply-To: <540d98ea-114c-43bc-94c0-e944b5613d74@amlogic.com>
References: <20251027-b4-s4-vdec-upstream-v1-0-620401813b5d@amlogic.com>
	 <b976b442-7d07-4fef-b851-ccd14661a233@linaro.org>
	 <540d98ea-114c-43bc-94c0-e944b5613d74@amlogic.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-kJqvtTvIehm+17QzwcKF"
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-kJqvtTvIehm+17QzwcKF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mardi 28 octobre 2025 =C3=A0 19:47 +0800, Zhentao Guo a =C3=A9crit=C2=A0=
:
> Ran 54/135 tests successfully
>=20
> - 52 test vectors failed due to interlaced or mbaff clips: The Amlogic=
=20
> stateless
> =C2=A0=C2=A0 decoder driver only support bitstreams with frame_mbs_only_f=
lags =3D=3D 1.
> =C2=A0=C2=A0 Test Vectors:

Is there plan to support it ? Most of the legacy content, and why users wan=
ts
H.264 around is to handle interlaced content. Its also not really optional =
in
the ITU conformance spec.

regards,
Nicolas

--=-kJqvtTvIehm+17QzwcKF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaQomDQAKCRDZQZRRKWBy
9G86AP9s4PfT2ZOEc7H8CSULI0fPz0RdFYmemyQn3wCh76IcygD6A5aq+z1GM0Eb
LOyvHiMpTuu/yzDSHPEMnVL2wN653Qc=
=yfQW
-----END PGP SIGNATURE-----

--=-kJqvtTvIehm+17QzwcKF--

