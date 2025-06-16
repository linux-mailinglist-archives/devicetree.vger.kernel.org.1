Return-Path: <devicetree+bounces-186285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE2FADAEE4
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 13:43:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BFCB57AA200
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551112E3367;
	Mon, 16 Jun 2025 11:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZDLk7ZVs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E32B2D12F6
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750074188; cv=none; b=uau7fQHv+eu6AsUvEQr9/76fnVOuptRs9DCJKOUawo/YkGwo8EpxXPX8Dq707zNZdDHAPynkW9fWn0YZwUhTtABfCyvd1D+enYTUdmP1CjFH6nO6ujxAWJ+i5+u2LGMlsY32lSqeWiYRV0uOdTaXnMNUkzk4HfBCacfJ8MMlBa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750074188; c=relaxed/simple;
	bh=SlYsr4bUuL71I/0B1fBuLT5I1PNAUlvY0T0xSXsIL6g=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=sy5q0dmdPUU/ulD5xaCyTUQEPQkHBB/n38wzklKDq1phTZVQTFnNeOvwnYeM/SojiuBTKhyMdbeWfYz7VH4DVkt01zTWKPxNG/6YvM7OZKKumUIKshnNG30SPzDXma4pel2EpEzKuweRHLlFOgbGVl8/tTNTwTdXKWwIbW/pPho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZDLk7ZVs; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-450cb2ddd46so24251475e9.2
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 04:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750074184; x=1750678984; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SlYsr4bUuL71I/0B1fBuLT5I1PNAUlvY0T0xSXsIL6g=;
        b=ZDLk7ZVsuWv8EGpzNkH5kje+h6ZdTDlu8gF6ua76rta/nR/53VaidGfKmHOSKFcwZw
         iBBs6mseFtk8nQoODYNYkkbDhKLCYKH9lyJitZF+KlzYBWt/Y+5vOqi9b+ZduNzYtHbU
         fSiPkVtkwyWw7e0vpvzBLnf5EfhpDKtWcB4Vudi00BrS9fx7aPu52QZ+TdTFMSTJpGx6
         mLHeDTNS4hDPPfzlhuFCShJEZspD2YJzXvIwy8HimxUApvxFfHo216Rsttx6PXNxU8/o
         igkZuMxu+hFmoEAh7vqQI8Vg5qnkP5CwuX67lTDcZkuCZc3SbpynML+pq8hWdiTalN+W
         EeNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074184; x=1750678984;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SlYsr4bUuL71I/0B1fBuLT5I1PNAUlvY0T0xSXsIL6g=;
        b=b4dYFwStcIXM9L/fV+s7dNahwaUOw0q/mYnuJKaKUU2cU8DXxI+hloCDmtxw7CTqbt
         ltMwBCfvqK3XrggXbS0gSQyvRh9eMFec7KysV4Dk/DhmpDX5fPpwAS8WQPBcEqzRwH02
         GDn6ykNbeDw6vf+sF2zkIHajtyka/gn19A8DwVgI8nUzIQr9VvInaDi74q45U9NQkIf5
         Ygt+bi1Ez5Yb8m2mYWA20SrUe9SkPz/CE001LhtYEEThFxJqVJeDjarC1S8OL+21h2VE
         jZTvfDUFRIyCfGsEda6BhnvvsO66H88SJkRHVubKHUHGawjwIexWkviQYb/E+SPYZ8nB
         f0NQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuS4WJaiMx0Lx/91VeasbLikf4pOk5vCqhkqo488AZJehTLTpZer5Rgld1/VVwwB09eckRG09adbpz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0CFRhgK9p/mPR+MdCnArv48peD8GRN6ZqjbUtumPVkHCbUV+m
	2RmR3VkfSp18PbOFKkbgE8Xd96hFGCTfoNRby3CMdYW68mAdWJX8Ob3VGApHracqhOI=
X-Gm-Gg: ASbGncvzAamjzd63MYM8OjQjYAypSM4AUqkDxO2OhVZdsm35lrvCJEhi6KvAU6Ni+ql
	oIQj5Ci0bP7YEyMOuVQUnrpcbj8si7eIw7Ez8NvN96wuXxpiIVC/GQLXq6kRXy3cUMuou15GKhF
	I3Ew6Y7AOg/+QHSVy8SVBBJmhF6vQcAUq8jIabTHHPri49fiAzBLAD46Ob/qJihfztWSAIiMb8a
	ZRRulhs9PPdGbsVgNOVnFW+0O7HWScPb1Ctd4lTp3xBHMUGfNx5+CxAnmVppFHWtKL54om+38Gx
	tl9jc0ORtq/80Exootkd5dZx4gRr8mjoI7hxQGbSVd6mEwQ/Knjk0eEgNVC6hXys610=
X-Google-Smtp-Source: AGHT+IGzR3ZuLPqrDClmDT14/rcbBa024Df4uvC1J4VfbxZQZgOlZKKu8R1O8lRTFylZ0ymEYgXL0w==
X-Received: by 2002:a05:6000:1ac8:b0:3a5:2b75:56b3 with SMTP id ffacd0b85a97d-3a57237c7femr7023655f8f.24.1750074183744;
        Mon, 16 Jun 2025 04:43:03 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568b70d77sm10962182f8f.94.2025.06.16.04.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 04:43:03 -0700 (PDT)
Message-ID: <85513da45f564347185d1f5a6bdac242df022071.camel@linaro.org>
Subject: Re: [PATCH v4 02/32] dt-bindings: clock: samsung,s2mps11: add
 s2mpg10
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sylwester
 Nawrocki	 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alim Akhtar	 <alim.akhtar@samsung.com>, Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Russell King
 <linux@armlinux.org.uk>, Catalin Marinas	 <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>, Alexandre Belloni	 <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rtc@vger.kernel.org
Date: Mon, 16 Jun 2025 12:43:02 +0100
In-Reply-To: <20250409-s2mpg10-v4-2-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
	 <20250409-s2mpg10-v4-2-d66d5f39b6bf@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-04-09 at 21:37 +0100, Andr=C3=A9 Draszik wrote:
> The Samsung S2MPG10 clock controller is similar to the existing clock
> controllers supported by this binding. Register offsets / layout are
> slightly different, so it needs its own compatible.
>=20
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Friendly ping - can this one be merged please?


Cheers,
Andre'

