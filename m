Return-Path: <devicetree+bounces-189648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF30AE8B77
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 19:25:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47B8C174CD6
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 17:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D2592C1596;
	Wed, 25 Jun 2025 17:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jE67b83Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61454189F43
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 17:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750872350; cv=none; b=c1SuWs+C21BmyA4frE2wUeMzyi4kThSjIiOutYrBZRFLsKQ/1TgVLoB5xEsFuF4jqGb9bjrk7Jyq5uoLD0JoYCEgj/pqVNF3q/0kj/wk4FGKzpOwBBo5J/a0nxPV87gKGBOk+EQnitgmWbnuGFtPS0yEuL0Hm6nnZwsNE7z7Mi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750872350; c=relaxed/simple;
	bh=6O7A/YC5TjvPF+nYhT2LrlK3lJoYuXaotH9sOdtaJq4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=nUJ51IbsZusm4jbEtDe+P96aQhtpAwbn5TDGkLduhwiWrb397tM2Zg149IZi8Hq1PvRrz9ayUkggnLjR3Ld0Fqsq/fs/3YCOxZRQUH30BDKztAIbcnr0ktQr3pr/rKjZOhT5ExWJQzKl/6Fvh3hsQTJSEriJTeWT4O+cVr6aW78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jE67b83Q; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a52874d593so77322f8f.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 10:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750872347; x=1751477147; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6O7A/YC5TjvPF+nYhT2LrlK3lJoYuXaotH9sOdtaJq4=;
        b=jE67b83QgwZcy6pHW8GumX2NRNDq0snQKw5l8LoV39RDzm998i1h2inlkvN5yiEyFy
         gfEuT+a/azn6tvE37Y01vL5tzWboOreQuuWlOjKLbeUDdrc6T+T93smKTBWNuGwJBkEf
         n9j8nHRZ6QDtb4ynm3Ydz0J898zvRpnA/Thk2bWOuRFxBIqq77SZYYqmX3DEF7HD7+Ce
         h2i5gC9e16aNeAKjiU9xUs9bDTh2Gk8mtG55XR3VEBiLsjdpoofek7riMheJRp30r88f
         DUm5mmvAT3lEbbq0w1Rym6B74AJfoWxOr3dplJ3AFELv42OHmCpyuDrjHr/sjHB/sVfy
         U7Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750872347; x=1751477147;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6O7A/YC5TjvPF+nYhT2LrlK3lJoYuXaotH9sOdtaJq4=;
        b=e268IDBlibuAf05kSEFFO1US8Z4gttvHO3cGrjMqgioIIQlIQDueWk7Jbanv0RsBPF
         DMyNDf4r2q8huRmUhqboFB9PHHVMSDRDY9KzTf2wlQZqwTjRhlZew9GiRsyEOsUkdLq6
         waA81+6mJ0GwuZJNpEr6xwd+Hye4v7IXWX2ELAKnmhE06u+juT0qp8B7TYdFk6d8uMUE
         X8JxhRFOMbDKiS4SxbNGQXwFznpdd9cFyVUgvo3qQ5gf94jUhQ9uUp26EERKw9CoR0ka
         FMsaP/mDn+AmnEUBXm3xjmPnbYf/yscCjIjzAbSDQvf7q8X4yn4XvfOxWDETbT5eAKhp
         OJsw==
X-Forwarded-Encrypted: i=1; AJvYcCX0VywZTlKuQYanfTL7BwfezGFbOb63icFANmwZfeGlXt/Cp7WeLNEPp+Pt2Pb28TUNwWvptfgq+i6J@vger.kernel.org
X-Gm-Message-State: AOJu0YwUuS6x6HGpC6S9i9l2Fi8C1rBMidBjBzjLSpWHfjWtocWDr8eV
	Xemp8bNW57bIzlQ/T0NQgL4jg2TNLC9zVw6gWqtcyT9dvenC9ElCcu6RNFWGLnmedKI=
X-Gm-Gg: ASbGncsRYn/L3AIQt1lfG7GV1IsKbYnodtb0MlcnejDlz/a80Yf9RgA/lH1zgCsAcH6
	xGY9y2Uq1yDpffb1usmSurk2yrPSicNzGY07UpiajKnOEE7GEh2t3mH+lV9DuSBTGSJwcaM4eA9
	kBsSNIp83TRTz7tn1btDDsko/QJW73LXMr+Kk4tQN2pPYtGFqHQsYqmNAexE7hQ60U1a9hJ6fL1
	agcorSpuYRcEARRdwAG+KXgAEJffDBY2xRWmUzIBR0kW9ufDtAmuZ0Z8HSi6sUzebQbUICAqjaU
	ruMc2CAtg8qGKWIsfeNDg/orIhuDxpoVE/mgKvH2dSq/iTSusx7USG9ud7v9oP/zhiOeOx+m/ii
	6
X-Google-Smtp-Source: AGHT+IEWqQYs8mY+5uoMYCKPajkMpm7F+LqZUiSbpYVGFaDjaB+825h/sM7EDs5jZzTatPcapcPi/g==
X-Received: by 2002:a05:6000:4186:b0:3a5:298a:3207 with SMTP id ffacd0b85a97d-3a6ed64bdb6mr2932119f8f.48.1750872346775;
        Wed, 25 Jun 2025 10:25:46 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823b6e9esm26240185e9.28.2025.06.25.10.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 10:25:46 -0700 (PDT)
Message-ID: <5113e57e0475a62f2f50006a7178377c508f9403.camel@linaro.org>
Subject: Re: [PATCH v2 0/4] gs101 max77759 enablement (DT)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will@kernel.org>,  Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Rob Herring	 <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley	 <conor+dt@kernel.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Date: Wed, 25 Jun 2025 18:25:45 +0100
In-Reply-To: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org>
References: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2025-05-24 at 06:21 +0100, Andr=C3=A9 Draszik wrote:
> Hi,
>=20
> This series enables the recently merged Maxim max77759 driver and
> updates the DT for the Google Pixel 6 / Pro (oriole / raven) boards
> accordingly.
>=20
> This gives us some extra GPIOs, and enables NVMEM which is used to
> communicate the requested boot mode to the bootloader when doing a cold
> reset.

Friendly ping.

Cheers,
Andre'

