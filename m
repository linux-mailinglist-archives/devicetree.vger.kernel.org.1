Return-Path: <devicetree+bounces-254492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8776BD187F8
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B315F302F81A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85999302CD5;
	Tue, 13 Jan 2026 11:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ypiZBYLJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8520236BCDB
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768303856; cv=none; b=JOodltKlx8IEeQv0H5/HaZyH4celQZXhkaSZlpvTBjK3Qf+3TtBZeinnLabhEbIszU4okg5O9ulCHBVu2CHXDssaE2oUuvBmgom31SY6Q1uo1od1zcyrNqoRYUHLPP3KHTFBxigaS/rDaAC7Udr4JD9QIlTcRLr5+/RqAKpM4bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768303856; c=relaxed/simple;
	bh=f4wVU9QaczKT/9p32vT2mvG6pfkyMA13UZGXDs37Bbs=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bQSto7HaFIPzO1GCj11OvcSOxmaxfnQa1zXoEdk/UFAou7BMdD+jHYz9MD5OC8c5ktvCyDjqkGpCUiJNs5n+yiUGSr3GtZA/mMfX7LujH8pTfL4rF62cS5kGtlc4XUyJNkvosAqTu6hGPZvkalkRPozRrvPhJDJU2c8fbuu+jpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ypiZBYLJ; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2ae2eb49b4bso9571455eec.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768303853; x=1768908653; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f4wVU9QaczKT/9p32vT2mvG6pfkyMA13UZGXDs37Bbs=;
        b=ypiZBYLJwq4M61y/wA3xFHM25YVqCiYHbmqaVnS/UQwheMZI2xbR9i3AKLbSwNVj6j
         t7xOHInIbvA4VQ2NB/2OCtrlwqpkXuSTBOG+Hbi6Ctt+SO/u9swUACxHJbqWN+v/BhsL
         Q7ovqaNQyVDLLFTg6e2ly+RaAr/Yq6zeIeSfBq5FywtC2EKoAYoWTxXjuDekTBWHNoCE
         3osTqAeAtdXugZAzSDZzbNeCe8ii6Pw6MWKOlkXdEF+ZMAWV/07XMFXGTa+CX8dY4Pll
         /gII+WoWN3Eq1suql8MfTa7gl3UX+zyNJoB02iaATV4hIblqcb33Ayuk0EiXFDNZVOul
         xaWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768303853; x=1768908653;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f4wVU9QaczKT/9p32vT2mvG6pfkyMA13UZGXDs37Bbs=;
        b=p2G87aKeAGFUij2ERUkkhhrW0uOLTpRpO0kISjteIUPYv6XVtKstYGv4YF14IdMGgj
         EoyW3/EYvz32GrImog9LuK6UZnwePSWWjZYikRVnbZNNdc6vWIq9P+y/6lPyJnNf7Bbu
         ppP1uBmqKeSFUA83pR3VZtsVnqOJrr3IijfatcGPwsn+bgQOPA59vAlZNV+Bf6Bs3sOz
         01hNIjAbOmmmnovY6L45SZET3Tjmp3b+ujklcs0Jd/LFLOxBdSJT0Qqz4foi0BtlG2Va
         vyB6uDOeb/aLc20SOlhCMZMP39q9RPEeHOxala92l5EVi4YjyKUnwKb5XC7/iE2vfMOt
         sm/A==
X-Forwarded-Encrypted: i=1; AJvYcCVdoluktch0NC5xahjj51pryuGNFulJI6bE72Bx7z3e/m3D5dpjnvrRI2wd7+rer7NPKTDlvvOyBpCV@vger.kernel.org
X-Gm-Message-State: AOJu0YxIpPLA65BUodSz8iN3z9mUQHzKLaHDRzHZeqUQPtPPj0pdnaUj
	XU1rfM75FxVUSSdyKQu5MGMF398SVkcE74AoV9ZmOCoNX5bHgcy4/LrguUl5FGeJUCI=
X-Gm-Gg: AY/fxX5cedPMDHqSN9FVdezJP6W5MaIwVskPlnzkcmenerjspVCk0PScveOzZhypomB
	8/05zAGW/MnbsvWtGfJ2dnX6HpiugEsEMWeq4XaflZfSaHl9zw4NH18LT/eIUnUo2PlCaYQd22j
	NWaD7dRHFjutGm48YlGA/tTXy4BW9Il/7m0kohf9orAGR6Aya3/jujDk/9VmDFJJF8qn8j5BW1b
	gD6Cp6xDTT2KQsvJUfURiqEUwoECZpA2x5vDl1N9yppS2le3C09GCWWfpoMQtcl65dWRp9vK0iU
	l6D4AwBxkQz+DzCO23rG53Ng413Fg7BUMen0uN74ReI6YluO9miK5EZ8kw/s4+5Cs6bYgOyZ49G
	NVXCbCrzU7D14onUVkLTspwB/F9Tuh14Cdp3yas5/sfyYCLRjSA2L95cShu3lOOnJfw3KvkYx1j
	F1Hf4PjDbf42jEG3AwbdAFRFkamx4=
X-Google-Smtp-Source: AGHT+IE2PQGkBRDHh0wt/RR1JmU3vgEQYzdNyA0r5cB4mfroq+TTyqSFY3sc0gpnweUJAe3hVTED4Q==
X-Received: by 2002:a05:7300:cb07:b0:2b0:3d03:37d4 with SMTP id 5a478bee46e88-2b17d1e4d38mr24451146eec.3.1768303852511;
        Tue, 13 Jan 2026 03:30:52 -0800 (PST)
Received: from draszik.lan ([212.129.80.26])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b17078d9b1sm19000610eec.18.2026.01.13.03.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 03:30:52 -0800 (PST)
Message-ID: <ca6de8e5aa0dbd99c74481a9dba9ea9f1ac61a1f.camel@linaro.org>
Subject: Re: [PATCH v3 2/5] dt-bindings: clock: google,gs101-clock: Add DPU
 clock management unit
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki	
 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	kernel-team@android.com, Will McVicker <willmcvicker@google.com>, Juan
 Yescas	 <jyescas@google.com>, Doug Anderson <dianders@google.com>
Date: Tue, 13 Jan 2026 11:31:28 +0000
In-Reply-To: <20260113-dpu-clocks-v3-2-cb85424f2c72@linaro.org>
References: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
	 <20260113-dpu-clocks-v3-2-cb85424f2c72@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2026-01-13 at 10:58 +0000, Peter Griffin wrote:
> Add dt schema documentation and clock IDs for the Display Process Unit
> (DPU) clock management unit (CMU). This CMU feeds IPs such as image scale=
r,
> enhancer and compressor.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> Changes in v3
> =C2=A0- alphanumeric in gs101.h header (Andre)
> Changes in v2
> =C2=A0- alphanumeric placement (Krzysztof)
> ---
> =C2=A0.../bindings/clock/google,gs101-clock.yaml=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 19 ++++++++++++
> =C2=A0include/dt-bindings/clock/google,gs101.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 36 ++++++++++++++++++++++
> =C2=A02 files changed, 55 insertions(+)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

