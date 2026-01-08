Return-Path: <devicetree+bounces-252766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F231D025B6
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 12:22:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3004032920A5
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 11:14:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311D74A28BD;
	Thu,  8 Jan 2026 10:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IulLOtog"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9D14A1E1E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 10:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767869721; cv=none; b=Y/z3d9KAyyC4JW2CmSOx6AjwIPl68NOiUJHKH+o+jLoxWve9b0wSTF4Oc+OvK4r0DTEGFFdyYg/qroOgs4l6maAtw9TsNvgjYeoMXOghmOQZ05TRcnyMIat31irG7iBrR0EzjYzwW4zY3D9Dn0a1AiihcQeE24tisNB4ZTmvMi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767869721; c=relaxed/simple;
	bh=1EcDxSiAG1moBRCzOCZJ8zXcRYQt9YQGzwc3QfezyV8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YjYhHDaYLT5BXksnZ4CJQYcjh/9yddil2LlahiBCkea2uMOuj7MlwbAvqq930oDf1y7L6bjkrNr+56rvwx2K3TBJA2Hvsj+1UXRnzpEDQ30Flq/9juNLJ0C8NAyY8+MYDZFZUQWOEyn4mjU9fH5NgqktcFtKhdqxAG7MwECfDRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IulLOtog; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-8c30365ac43so288187485a.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 02:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767869710; x=1768474510; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Xp+jLnpi2PjqF/80J1/P3vKHgVtAc982+H+fWTmGZ9s=;
        b=IulLOtogqry/8kwuO67XPqp5pdFEowA6GHUKufqq2Zb66dfz4LueeKVDnrkwr5U1/Y
         cDnDqZ7r2eqvUCmYE3+EV31pVUWmHBfc4p+e4/yJ/tYmTSfh/aVl01mLKnBsmVxoRxSd
         Czly3hrALXQUKZa2ZGcpTzDUtm70D5zYE/hI6u3Sz1EBimnrjWbj4ySWZPcViLzE76XJ
         xUAB3LvMmrXVpSugFvS1a9bOAuz+PGC2+g8VgFIbBpBs009rj1uTqL63kMZ/8I7+Qd04
         mKNR8RjbMli/hfcDP5SgQ+K27oHniXLJXrnLFyMV8KzeAiP161eKN6hEfqdSi0nFTD/1
         ZVAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767869710; x=1768474510;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xp+jLnpi2PjqF/80J1/P3vKHgVtAc982+H+fWTmGZ9s=;
        b=n9M2zNDvv5QC4UmMozPSfESy8PaqAyFZwaxehMYM91nZJOuxj6OegFlSBYNb5Z37em
         /+iTF/pvMOCdJ9G/nuGHWT6SUpKpHeACQqP18jD6N7uGroo5yZPinINzZWpJfwZJyewu
         smrI/6oy2WRAothyAKtqmEN62fKB7kjIOV/JgBZVbKidhyfX7SRfzrbgWEiQux1JJZMy
         oUDaO6lW8h01/7o+iHIQWTPb0aHePA081365lO5Co3KcrIWJno3MY9KXMBaBpf8xJS+D
         yS5nGBwCGlY5R7K10vS7ks4E0H51jWHU7r/1zDup7yuZxTVmAb3b4W24XMTs7oCbQV7h
         ICsw==
X-Forwarded-Encrypted: i=1; AJvYcCWHT80cT17IzF7O82kj/ahb5pz7uiZOo6NhXiiQTnKwI6MkPff0YONpNGqBsOOhU/v8ojvQ2EdDwqAo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6MNRbqoYZMwPlvamRVRXn+AcWVvAUi6KV5YKYTrE8/jzUZlia
	NAxLoC0DF8ey6WRaaTRoglUBrhBqGLcwWjBE0zaPP6Y9YXnpFcRlmuhlQlw5JGK3P/k=
X-Gm-Gg: AY/fxX5/GZwY7ORkDwgVYag1aQP8t3+nmTMWBK5+/0kR/8sXe0LTdUhlIwPUJtOt/uC
	F0ujET9d8Sqx7tRPoqg0EnrSHo/SdzILKQnh4mFwNdosY8U6uJuKFf6qQmaZw+3AkqEzB6sC/7G
	RVX2viFv3TIXMmKfxet05ocjTMNqULh+RPrqJ/9qWU1BhYAiaAaSShxjhfkueZQzJ5+h431c4pg
	4boEBEBNarrpILJzIjjByzWXdMYpxgE/ONwV1wNg2JNqZ+aola2bNaWrwDJUwBneAncSo7PxJw7
	zgRDAhPwgPU8OroTFB0YbxF9QVAzCF8KzAA6jt0lmrU24mRaQ17tlaRkZRXq2egScXDqO+8NH/i
	Y+MfYz5mTNiliHSyZEgeX77sXgMJ+mWech3G5VaJWaXoknA79QCdfHvisQFQfFkJrnNLQhKOQRw
	j7Gi0L6D9bjltOT6v6KXru6L2YFXle
X-Google-Smtp-Source: AGHT+IH+RaIZdxo2LBIZtEtzdVtnDlJ9INeZCwV1cPG9NK7uPV6RGwucuqTJ9BlmjvonRR2RJ30qBQ==
X-Received: by 2002:a05:620a:45a6:b0:892:8439:2efa with SMTP id af79cd13be357-8c38938d982mr647120085a.23.1767869710344;
        Thu, 08 Jan 2026 02:55:10 -0800 (PST)
Received: from draszik.lan ([212.129.74.168])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f400b59sm574557285a.0.2026.01.08.02.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 02:55:10 -0800 (PST)
Message-ID: <0c09a8c461db5a09e75de4587eef38bffbccf2d2.camel@linaro.org>
Subject: Re: [PATCH v7 3/4] clk: samsung: Implement automatic clock gating
 mode for CMUs
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>, Peter Griffin	
 <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar	 <alim.akhtar@samsung.com>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko	
 <semen.protsenko@linaro.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, Krzysztof Kozlowski	
 <krzk@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 kernel-team@android.com
Date: Thu, 08 Jan 2026 10:55:45 +0000
In-Reply-To: <8b2c412d-3e1e-4be0-a9d5-ef67f6f0d409@samsung.com>
References: <20251222-automatic-clocks-v7-0-fec86fa89874@linaro.org>
		<CGME20251222103019eucas1p2c60f033dc02adfef360b4fc69bd4021b@eucas1p2.samsung.com>
		<20251222-automatic-clocks-v7-3-fec86fa89874@linaro.org>
	 <8b2c412d-3e1e-4be0-a9d5-ef67f6f0d409@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Marek,

On Thu, 2026-01-08 at 00:59 +0100, Marek Szyprowski wrote:
> > @@ -334,10 +456,20 @@ void samsung_clk_extended_sleep_init(void __iomem=
 *reg_base,
> > =C2=A0=C2=A0=C2=A0 * samsung_cmu_register_clocks() - Register all clock=
s provided in CMU object
> > =C2=A0=C2=A0=C2=A0 * @ctx: Clock provider object
> > =C2=A0=C2=A0=C2=A0 * @cmu: CMU object with clocks to register
> > + * @np:=C2=A0 CMU device tree node
> > =C2=A0=C2=A0=C2=A0 */
> > =C2=A0=C2=A0 void __init samsung_cmu_register_clocks(struct samsung_clk=
_provider *ctx,
> > -					const struct samsung_cmu_info *cmu)
> > +					const struct samsung_cmu_info *cmu,
> > +					struct device_node *np)
> > =C2=A0=C2=A0 {
> > +	if (samsung_is_auto_capable(np) && cmu->auto_clock_gate)
> > +		ctx->auto_clock_gate =3D cmu->auto_clock_gate;
>=20
> Do we need to issue "incorrect res size for automatic clocks" warning=20
> for every legacy Exynos based board? The check above should be in=20
> reverse order:
>=20
> if (cmu->auto_clock_gates && amsung_is_auto_capable(np))
> 	ctx->auto_clock_gate =3D cmu->auto_clock_gate;

Good suggestion. I have one or two cleanups anyway, I'll add that as well.

Thanks for spotting this!

Cheers,
Andre'

