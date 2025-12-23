Return-Path: <devicetree+bounces-249040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D535CD8AB1
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:57:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A11E3038947
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34B432573D;
	Tue, 23 Dec 2025 09:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nC50Df+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C83D32AAB4
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766483797; cv=none; b=F8chO52hd+O7Gts2piQsKh0Yc1Wp/dxZP+5FkeikZBM6As5j9oOWBdhXeovWkzKBpziI5X6aZ7aZ8V7p9m3mm1CsH6UwpijMSXW9rnCRzK4arq9nHe/qN2Vu5oNirK3Lu1/hT9AZm6NoWDEgqvTk011BDYiPrxrEoQINr2qVRQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766483797; c=relaxed/simple;
	bh=lwVb17SkiONM66zGI7EYc14PR6wYd2ejDZ3F+14M+Ho=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=EzKQh4CPNW74VNfD8uYTf+vGNvBTRle0G61RdSLf0wYReTjVkGFHMBXU+ezp5SRx48FvdJYyXtoW2HY4z2mpH1JK+QPfj4iLKefjUdFJbCTiBYVsHAF/kXDvPlxXwdxzPhjkQsEGWkFY5OI8r6ZUuH+Fzb+XHtSZ4++dgFQYc18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nC50Df+v; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47774d3536dso37590725e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766483794; x=1767088594; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lwVb17SkiONM66zGI7EYc14PR6wYd2ejDZ3F+14M+Ho=;
        b=nC50Df+vf5jAcARCwiLsqBxoOojDnkXbKMgpjSgCXuBsx/YCqFqokLpahRLAHfkyg9
         fS+UsoqoYakTPR/IBsYw1W3NX9pRAJPgpl2Cl/nrFeOpeUbregNlT6r6SuuL57FCjx2f
         X+NNqDIDqJfGN8Eagxop6iGwFidfQEqEen9vGpgKI++WBQMCKdWd+ddHEVOAeevyVnTg
         rXHIPV/iAPib2MW3yW+xkdBRVYTWZw3P4YMicM1iEk9EcfM5g8cw51GJXRUe6dFfYSqX
         vFxIzHo6J9+vfsjPr8YhzyVq8Sd1Hpc9zQFX2+/S+E17V1N8t6bHcsDb1VBXKjte/xq6
         ciCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766483794; x=1767088594;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lwVb17SkiONM66zGI7EYc14PR6wYd2ejDZ3F+14M+Ho=;
        b=ptsB8HNfMb5zY6W9GwT2WNctCetcZhT/FndVXSuH5kyeSHbduaH7js8I1omqNxfpjx
         Zcb26R4Df0Ze252x6s/1YouVBy4BcBuf8fJQ5aktWAGz9y+6tWeGi5LGOfSflh4IAR1i
         +8cSeJYDz0Zfvx7sPoRJ8t8vzb+xNRxQlt1dF9N3PcLG0zI1fI7AXdeC7Lttx7AESEsI
         /QmFQJ+Mxzt8gei+akfxZppxdxUrPkCG6UZAN01I8mjGsBn+BjQwQuCK0Lj1w7enbGMv
         eEebDLce4JO33vcmePtzceOpxDcV4L1JJLlFHIlBibvRd4LQmbHRFcVq0HWitRtEv4MK
         r/Ug==
X-Forwarded-Encrypted: i=1; AJvYcCUUMBkwz3pVUGYrvgF76kYTgqghuBZ/goip64LMeWD7AC9aOl36plr2B3abE53XIXJ4FjZhsOE3O5uo@vger.kernel.org
X-Gm-Message-State: AOJu0YyQF5YKhIhlch7nZAlJ4tDrcUP2HutfTQ18xVvnd3NGTQq+3cU8
	Davzn5tKqUYxeetelm2V1yqE8IRanrGWaNN3oEQ6Ueg3mgCfrLZEHghcvzTxb1J8l+bl/QMOWYH
	4+yaZxew=
X-Gm-Gg: AY/fxX4eD34dp6sRFQxV4XSd1gF7aEmERhW6wZMLHL7KzJQv5NSNKt+mXe8XjVkMJ1D
	8r2Sd/RPq3De8ld+qApVowWmDM+8E8WFw+RhJ1E+0sVUk7ZsqzwYOOgt7qa6dsHNrmRcHifm4Fb
	45oEcTq7MOCdvE66DuoUk+vX2I7fGu9iYKQikjXpNwu2dIJze/DDcQmP8Cqp/9HJ/z41rfoC4ZV
	5Di2wr0klFgpV56RxJgnwrTJCzmoH36O3oJe2y8/XUjtNg76CTX11DJopfL0nCod+ihJVrgTYAA
	adhG1gT6edWacSZu5D/S0ywg2rUwnnytaVfhoIur1tAzk+i4uRQTMmy8DzytBEjjiR5e9Qvu8zB
	c9mSZ6/N0rqHjA/n49ag/rJZcv1aejqUXoTdUFWRUQRuc8/EDYdSdi5RUA8hPhdRUwcHP2tu5c2
	cGNU8MXV7EFQEwOjlJ2sbbbcuDRaA=
X-Google-Smtp-Source: AGHT+IHOPoabgpxzbwqkJAWzHxPTOtYYAX+lcS7QbhXZKZz5wUnl7nSHBNAH+unsA401WC75ARb6aw==
X-Received: by 2002:a05:600c:8b82:b0:47b:deb9:163d with SMTP id 5b1f17b1804b1-47d18b99b99mr130415825e9.7.1766483794521;
        Tue, 23 Dec 2025 01:56:34 -0800 (PST)
Received: from draszik.lan ([212.129.75.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d4e91sm228918095e9.13.2025.12.23.01.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 01:56:34 -0800 (PST)
Message-ID: <2150539a352c802372ffb9dbb3a47cf8b4e8a816.camel@linaro.org>
Subject: Re: [PATCH v4 4/5] soc: samsung: exynos-chipid: add
 google,gs101-otp support
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Peter
 Griffin <peter.griffin@linaro.org>,  Srinivas Kandagatla	 <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
	willmcvicker@google.com, kernel-team@android.com,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Tue, 23 Dec 2025 09:56:45 +0000
In-Reply-To: <20251222-gs101-chipid-v4-4-aa8e20ce7bb3@linaro.org>
References: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
	 <20251222-gs101-chipid-v4-4-aa8e20ce7bb3@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-12-22 at 16:30 +0000, Tudor Ambarus wrote:
> GS101 is different (but also e850 and autov9 I assume) from the SoCs
> that are currently handled by the exynos-chipid driver because the
> chip ID info is part of the OTP registers. GS101 OTP has a clock, an
> interrupt line, a register space (that contains product and chip ID,
> TMU data, ASV, etc) and a 32Kbit memory space that can be
> read/program/locked with specific commands. On GS101 the "ChipID block"
> is just an abstraction, it's not a physical device. When the power-on
> sequence progresses, the OTP chipid values are loaded to the OTP
> registers.
>=20
> Add the GS101 chip ID support. The support is intentionally added in the
> exynos-chipid driver, and not in a dedicated Exynos OTP driver, because
> we estimate that there will not be any OTP consumers in the kernel other
> than the chip ID/SoC interface. The downstream GS101 drivers confirm
> this supposition.
>=20
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
> =C2=A0drivers/soc/samsung/exynos-chipid.c | 70 ++++++++++++++++++++++++++=
++++++-----
> =C2=A01 file changed, 61 insertions(+), 9 deletions(-)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

