Return-Path: <devicetree+bounces-136010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FEDA03725
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 05:53:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 012BE163C0B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 04:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B2C71917F1;
	Tue,  7 Jan 2025 04:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XSWwX5A/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405921662F1
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 04:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736225581; cv=none; b=lwdnlJ+CgTeK425E16eRzAWW4Jb/YatUsxgIOikhvc0j8DYyilXKiPHzFH+tr6bInlwVZFSDhMxAcv2Z4sOPAibvKHzaaRZ3PyrmcpvEri4f5ggiizhV/+0nVlkuDuq3asHAx1JCtFybYDffIxh7wqOwRqNVRX6lvzGVdlqhjkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736225581; c=relaxed/simple;
	bh=60IKh1YALIpE5luozTsZiDL++m1KjCGPj6msSEt8t+U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BbYG5gNegw426EzQSwB3hm9/KcLq4hjs9NX6leErsHonf/81X4AMup97tE0a2ojYWhAjjFILs/MaE+9mCVhsplcHP/Afyl4lkaqlr5OFOErUz6K03yfZ1uUb+1QTfLIq4MQJlRWXHi3YM4d2xq61qkZC/rweumbjNnQpbqWMfjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XSWwX5A/; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d3e9f60bf4so27069624a12.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 20:52:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736225577; x=1736830377; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=60IKh1YALIpE5luozTsZiDL++m1KjCGPj6msSEt8t+U=;
        b=XSWwX5A/dCTAeCQIE5gbiCSJ7KPOjNyvC6YC2yuJlExkvaRl1ZWLE+VJUYrYkzH7sa
         CPFBBi/KWxU9oJ/WdYl0C2c4Im+2fNeMB9mHvh2C2XjHyI0u77xN1mPKU+a6LrmAqqsO
         uzz0QYlSoW4Pxd6x6u2BCAAAqonCTxxDeMu5lgImh9i38oTfWIuPqiR9Dmc6plIOf6Jh
         /FMqXCUQFDoE/vNKdXLXO1Fyd0buQG08vS0/gAWnKc4VAufZO6YmW7baLF4HaAko4e5G
         ULV25h/2WihbjEzZCJhaPAPmrHuyzWjNRbdeUlK6IQxJOYRr881GzGfNvemb0lEmndpJ
         cAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736225577; x=1736830377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=60IKh1YALIpE5luozTsZiDL++m1KjCGPj6msSEt8t+U=;
        b=J01FYWx46ULGn1c/i6WBqKE2fzS0d98XdiA0OEOMTpv9GEOCjwIyWMaut8LNljGCXY
         OI2m9O6Sn90yxq1DLxtVVcmfN1v6dc17jk4qT5UPheL0COibg8GIxjJih5nY8iKRfm0C
         olpaDKglq903Xd/+rPZALDDoGA1NjfrjpKCtMVs0gYj9CahHnHmWxwBWW5hFzfdr7yHf
         3VwDIxlCJ2mISjo2GlltghbntlwPlcpJeyaKEWOc3yiH5iC2W78yU9/ab1hQSd4XC0fE
         eNl3euZSJz8YdDUSIO4wIqCzdqerXBD13mossy+sd2mt9vayyn27QKWI9o9aoly53bkm
         6Xgg==
X-Forwarded-Encrypted: i=1; AJvYcCVbMqQ4N5gPcHUUXnTJQ1xnmrnSKiT/PSAm+RMllBHKCUBKGWKgF0AKCtvSydBlL4LLvuVQ3Niiw6Fr@vger.kernel.org
X-Gm-Message-State: AOJu0YxLRDNqKeM8kVe+qCDPrl0Z9md8BbS9P4GNl5kdRRslpuecb0uJ
	aqJeu3R3qvvDoCBGQ65/35SeZo/79/1cf5YaCZ70ra/371efrcJlSGyiib7udQ8=
X-Gm-Gg: ASbGncvdeD+ElfeGAomm7Vm0JDNeqpjN7Momb15EiGe0lLncIv7nN+uumcaDyOopDDs
	y8HwDob3n+Gwu/ULLG2tPTFQdva3YQPthLoF18IHvXxO+yus0snlshOfTastOQxGt/5ApP+PAMG
	qPEs5FjB2swieUT94SqMWt2MELCa9qEC0wqOkvIfd7fBIaigSKfv+qyGJ70iYV1Qo6qx/LpXxsI
	1lbsNMICX+ZARR4mnQGGftW6K/B9nPkjGl4t4cukSHWPToqf5PaneoomxjqWw==
X-Google-Smtp-Source: AGHT+IExtBcC1TdRfmrYbsdlfJ/xTSCHU6F9T+AcyPoKwaobnGSIRxLtGmMNUARkLtwmvOeIpjrxLQ==
X-Received: by 2002:a17:906:f59d:b0:aa6:9372:cac7 with SMTP id a640c23a62f3a-aac334c1628mr5915566066b.31.1736225577578;
        Mon, 06 Jan 2025 20:52:57 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f015b53sm2324711666b.163.2025.01.06.20.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 20:52:56 -0800 (PST)
Date: Tue, 7 Jan 2025 05:52:54 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Nylon Chen <nylon.chen@sifive.com>
Cc: Nylon Chen <nylon7717@gmail.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	conor@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu, 
	thierry.reding@gmail.com, vincent.chen@sifive.com, zong.li@sifive.com
Subject: Re: [PATCH v9 3/3] pwm: sifive: Fix the error in the idempotent test
 within the pwm_apply_state_debug function
Message-ID: <c5zjujxi7wsuabdpttojkrwnvkwna56gz3gnapxskg7tdzmo2f@frvbwzguizdt>
References: <20240222081231.213406-1-nylon.chen@sifive.com>
 <20240222081231.213406-4-nylon.chen@sifive.com>
 <jvwgsszvs4jtcytcphsdjulzgqfqzdp4sisu236ddwsqgmvriw@ngi4ljgh5b74>
 <CAHh=Yk92=hp+kaTJWL13_jwJ5gzAAi8gbRF=Ns9=yq2trRUQEg@mail.gmail.com>
 <xf6ympnaljfjztptb5w5qdpuluckptozdz5a7gtuycsev32ngr@x2ovibqv6evr>
 <CAGKtFavQAZOof5QSTFCEaRJEPETm5aBqzkV4g24n3ioiBAOgDA@mail.gmail.com>
 <p6rqpx3yrn2ib4ulmby7tbnpbg4bjyt4dt6snrmhuyw6hx6izl@lywssban54et>
 <CAHh=Yk-iFGULUQc-U-PNjx-st7d5KER3J+t54SNERVaNr++qoQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3m47uht7xkb3ljzb"
Content-Disposition: inline
In-Reply-To: <CAHh=Yk-iFGULUQc-U-PNjx-st7d5KER3J+t54SNERVaNr++qoQ@mail.gmail.com>


--3m47uht7xkb3ljzb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v9 3/3] pwm: sifive: Fix the error in the idempotent test
 within the pwm_apply_state_debug function
MIME-Version: 1.0

Hello Nylon,

On Mon, Jan 06, 2025 at 05:00:32PM +0800, Nylon Chen wrote:
> Hi Uwe, I have made the following adjustments based on your
> requirements. Does this align with what you had in mind?
> - period
> seq 5000 1 15000 | while read p; do echo $p >
> /sys/class/pwm/pwmchip0/pwm0/period echo "Testing period: $p" done
>=20
> - duty cycle
> for duty in $(seq 0 1 10000); do echo $duty >
> /sys/class/pwm/pwmchip0/pwm0/duty_cycle echo "Testing duty cycle:
> $duty" done

That + doing the same test backwards (i.e. using seq 15000 -1 5000 for
the period test and seq 10000 -1 0 for duty_cycle) should catch most
rounding bugs.

Best regards
Uwe

--3m47uht7xkb3ljzb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmd8syMACgkQj4D7WH0S
/k4USQgAu73hQyBwf5XFDneH+1QmqAmiN2wEaeF4n94f4vD0QtTqb1SQ+kIDIV2y
h331G9V73C2jt7PVtH2a+pF367sblfDWrYufCtuTXj4akJGtPEcme1PuxmMdwip5
+OtHKLGC2Zb7N9r5VQkwok4Ijci6vUF3unjz+sQipFReZcygL+XeJ3Wd+DWMu//t
IfbmsYkXK826rUqBBoHVJigEZsQugsR69+EHYnXu4sT2W2gkIr+SXbZOFQx1lo2r
TVtmwJtKF7qflQS5STsyZyp1xKoAk33XPB83D3h4yz1IDIbzhKJbqqjadvgdvouK
myVcdVQFatxC2GuFs+5M73nHcQkhGg==
=OoYH
-----END PGP SIGNATURE-----

--3m47uht7xkb3ljzb--

