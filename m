Return-Path: <devicetree+bounces-239247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 24910C62F40
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:47:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7A05A346DC8
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 08:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA226320A17;
	Mon, 17 Nov 2025 08:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OEL+gACv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D3D265632
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 08:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763369211; cv=none; b=eJU1WrAFCrIgCxIgtjSN0C1YXdthiFUX3EJr23P3a1YMCJXY4/YVy76KyaSFtAljTx5YLnPZCXT35ku7M3Jfg7nzSZoe9bPgpWVgACjudBNO3U9CsREHc1Y+rKDg5/QCGNonQQbdUPFgy2gGW3EbOBSECZKsOPmO+k1EPbA06cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763369211; c=relaxed/simple;
	bh=E6K7+S3tjpAT9jtG3l7RnnMbEQwnKRCZim2mlFfHZDk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XqgnnkmDod4NW+EwYYHziVRKrrnVnfGr5aezunUnddYqF44tuU7j67Iy0ThqwTd4vzF2RtZMstdtekqCPsq5lEC8HYfHB3DFg/060ygRiOKRw6xC1nMAx/3zOKu3lSKjB/0kZr72287/i/Ycr56dd3xFTuwJfHHFgHEmjcuD35M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OEL+gACv; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b3b0d76fcso2596109f8f.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 00:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763369207; x=1763974007; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=d27vDqN+JHw1+uJquBYSsbfwHP1Sqq5k0Pnf9NNAEn8=;
        b=OEL+gACvv5jWRGBSSP4S89jHUz4O41aGE8t0X8SSYpe4nwKPmQzzFLefQPgLbxR+E2
         jHZTIyvNiOHRubCh9n5/3RV47ZqPz4MxvPaJBz9e2AbIOhkv/MQPWzq7g5REUAmmA1c0
         mx6IqnAPOMc/EoDupoIruUKNZA/Ap1rRifu9xNxqf59zIYDUbwQxIRmfEw5cEBKuEx2k
         V6y9PaP5Tvi1BTr0VBcxvETRGEsy0wD6zeLsHfFe5KcpJdgyzDXEmIj4M0f8io2iygGj
         ka6bWQY0liE2ZOI/Bn3Aa3lzeBUmnD5QQ2cyiu5iAYOKdr1dSTISSL+gjWL4SBQhXC1G
         XGsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763369207; x=1763974007;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d27vDqN+JHw1+uJquBYSsbfwHP1Sqq5k0Pnf9NNAEn8=;
        b=SG3XpuznXmJdNjGP0SY0Kj4igkl+TsNpHGPnpziwkDJR45HMiFxK5IsHPJx6zLOXPL
         xoIfzed4CGVrVVnPTQaJOWc/3Prp4vj76Wwy6RObu394mB4x9BUKaFeA6Cx0imM8cmsb
         6LgHvPplz/Bpg7izAHrJK9h4d2bU4WIHf1uhEiFsNMjdtD2xowCrAE7mdt7JSH+ktHW4
         lWubp/H5/JpFpwYpQnPSanVLnTehaXIs0q7Y7xsJ9hBZu2qcaaBBcSK+bct5d0SXgXAk
         Q+PWUoMszVCXRIPikawqxe5y20EVIbW72Zo0TGO6FHnWnSpHAmKmjmzma5uQ5dG5xuXq
         IoWw==
X-Forwarded-Encrypted: i=1; AJvYcCU2B3MqCVUES9Ly5miEfKVxraQTHT7lDvA5n4ePDcQSoHDTnU5vL2Y9awA+o3uooql6ZPyitF0xKscs@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv2lhz4GhJaq5R5zPOM6yjkDtmKLPXFpBHkuZxh+H7BkOyrDwT
	a17wiPmgq2LmoN0yy9gGFH0mzBDP6mUcAY9bq+jV19O7Pav1RZodc+7EiLcTNGucQR0=
X-Gm-Gg: ASbGncucLzd6SNUH544E1ikq/JFkLWEAIUvtVEb78j+MJZlkSmQH2gQ42Ju39lzXd/a
	TDCSDV9DMIMe7vAVgi/v+ejrFWD0TP5JElxKCsEHDMrngHWsuLMqy38jrnct7nbr2hb/A2JVtss
	8otz2AZpHgObI4T5eBIm2mC38AMJaI+vcszn2FgRuUb9sWYKdRa4z1UvKkSY2K7BkcwTDt0N6Im
	Bnir5QTAcbWM373Vln05FppAUW4b3y4RO84tg8+PZzDN6qT8OsSZz/5XVnIO9gABg5NUt6okStk
	VWAmpgTcHjZrpDPopRoy8FwvyEL9jDpwICBMHgZQHyj1Uws9lndudC4lJuFI/7SiyddtRy5yxNm
	h2TnyRQG5BKKyBp8Guqqxsl8Eh7KJCvVGBuliyYDmEPtfSAWI66am9JaOnffrUEtcpFe4SN/eN6
	HB0sdbZ6Ts4+GsyaXCTjdQxdPMLSJZ
X-Google-Smtp-Source: AGHT+IHwkyRbcMxnSU28LuZ9foW7wfrOf8fSpE3f89YPvs1x9ZEE9MUab9lKz3FiPMeNgj6Sk2rsIQ==
X-Received: by 2002:a05:6000:2306:b0:42b:5521:31ad with SMTP id ffacd0b85a97d-42b59384ffemr9496363f8f.49.1763369206970;
        Mon, 17 Nov 2025 00:46:46 -0800 (PST)
Received: from draszik.lan ([212.129.83.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae2dsm25605597f8f.5.2025.11.17.00.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 00:46:46 -0800 (PST)
Message-ID: <5a8b54fe20dca15e08dbe1f91232bddb95484a94.camel@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: gs101-pixel: add all S2MPG1x
 regulators
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Peter Griffin	
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, Juan Yescas
 <jyescas@google.com>,  Douglas Anderson <dianders@chromium.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 17 Nov 2025 08:46:52 +0000
In-Reply-To: <3ddf1b76-8376-4d56-837f-c9b06d04af94@kernel.org>
References: <20251113-s2mpg1x-regulators-dts-v1-1-80a70ef42be1@linaro.org>
	 <3ddf1b76-8376-4d56-837f-c9b06d04af94@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-11-17 at 09:11 +0100, Krzysztof Kozlowski wrote:
> On 13/11/2025 14:31, Andr=C3=A9 Draszik wrote:
> > +			ldo12m {
> > +				regulator-name =3D "vdd_cpucl0_m";
> > +				regulator-min-microvolt =3D <700000>;
> > +				regulator-max-microvolt =3D <1300000>;
> > +				regulator-ramp-delay =3D <6250>;
> > +				regulator-always-on;
> > +				samsung,ext-control =3D <S2MPG10_EXTCTRL_PWREN>;
> > +			};
> > +
> > +			ldo13m {
> > +				regulator-name =3D "vdd_tpu_m";
> > +				regulator-min-microvolt =3D <450000>;
> > +				regulator-max-microvolt =3D <950000>;
> > +				regulator-ramp-delay =3D <12500>;
> > +				regulator-always-on;
> > +				samsung,ext-control =3D <S2MPG10_EXTCTRL_TPU_EN>;
> > +			};
>=20
> Please add here brief comment that ldo14m is to be defined per-board.
> Same for all other cases which are missing from common DTSI.

Sure, can do. I assumed commit message would be enough.

> > +
> > +			ldo15m {
> > +				regulator-name =3D "vdd_slc_m";
> > +				regulator-min-microvolt =3D <450000>;
> > +				regulator-max-microvolt =3D <950000>;
> > +				regulator-ramp-delay =3D <12500>;
> > +				regulator-always-on;
> > +			};
> > +
> > +			ldo16m {
> > +				regulator-name =3D "vdd085_pcie0";
> > +				regulator-min-microvolt =3D <725000>;
> > +				regulator-max-microvolt =3D <1300000>;
> > +			};
> > +
>=20
> ...
>=20
> > ---
> > base-commit: edf57d8dafc63f9298a209e518ea6a2e0df78ed0
> > change-id: 20250603-s2mpg1x-regulators-dts-aea4bde3dff9
> > prerequisite-change-id: 20250603-s2mpg1x-regulators-7a41c8399abf:v4
> > prerequisite-patch-id: 9d4a1e0afe6eb45dcd35a9537b7d5b4e35e801c3
> > prerequisite-patch-id: 928fd84e5f6207a2fd98dd8372a91df0776ecfde
> > prerequisite-patch-id: b87abb6b9a8fc104f0f752bca0e9347d17de72e0
> > prerequisite-patch-id: e053834e5bec411f5c512b63a3528e49aad11ee2
> > prerequisite-patch-id: 4fdd195c0b3fea537144ac8d82bb40a38cbde117
> > prerequisite-patch-id: cc716fef97d6c25c0589d7269b8f34e04ea96216
> > prerequisite-patch-id: 20ff503abaf2fcaef4328e1f8009ed3df242bad3
> > prerequisite-patch-id: a0d80e8f49401dd79a7e4dda2517e00228aa3087
> > prerequisite-patch-id: 2368af876ec7c643d9765d3fb1e9bc4991023a18
> > prerequisite-patch-id: b70d5648790458e72db82e26b180bbd7301469b3
> > prerequisite-patch-id: 92be1aa6f95b2a5795df84e11a602e97a41b2938
> > prerequisite-patch-id: 86625bb109da618cbb8aef07fa717257918077b8
> > prerequisite-patch-id: 2016c6cd5e0d51daddada37232e3b99c8f4ad77b
> > prerequisite-patch-id: d323362e84d3991bd949745579aec34897620321
> > prerequisite-patch-id: b1571de42ac7dcf0fe8ddb77650a656244ff751b
> > prerequisite-patch-id: 44ea2393bc4df716427cbac9b7f080a683ba1c0b
> > prerequisite-patch-id: c968c5b557897767bfc2629de79b1ede8ab48767
> > prerequisite-patch-id: 221800199a94e12e928dc9606c82b6eb33cffa3a
> > prerequisite-patch-id: c76d8055f620e0b5fa81101a31db08fd5a60e773
> > prerequisite-patch-id: be0027a934451be02b1c4653bac8b6bc2ae2bd85
>=20
> This would block this from merging, so then please add RFC prefix. But
> probably these are not actual dependencies, so they should not be here.

I added these to highlight the dependency on the bindings updates, to avoid
validation failures. Looks like the drivers in that series will need some
updates, so bindings will also be delayed.

I'll send v2 of this here once the other series is updated, as I don't
want lingering DT validation warnings :-)

Cheers,
Andre'

