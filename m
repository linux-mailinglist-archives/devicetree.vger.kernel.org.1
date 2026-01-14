Return-Path: <devicetree+bounces-254943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3ADD1DEB5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 505C43059A41
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80C5938BDAF;
	Wed, 14 Jan 2026 10:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ghupxcdT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69BE38A9B6
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768385326; cv=none; b=Dk5VzAS8X371wzQHyiVKwnkH/ssMm32F75WkRgO4neAZ2OOYUnOmZ1FH47kod5dTdBVVfbDVkczoOvdqsbfWAqr5siuwviVjCh3pZVWLgUYtTNLM5i3XHn6nmDeec/ef3q+HeQNVIekJtc4U8rdqhGkxE9ceHqUZnLcEWRLgQnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768385326; c=relaxed/simple;
	bh=/VVV4Ijmp3Ls2wh1WtR/yQpGrW85l4Zba4/iPpipd0s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RCnY5rNXRr6xkhdA6NQ3NdGCjTucTzGBLmi8WEOQy7W83mPp+d15tVrWbHn7srU3ZYtvbqk9u5ODJgNgEsE+9QQgwmPTrrZgzZRKDUPUqbRAA6Wx+q+687tTioIwTSWcapb+DTvsiBqeCsfjR4VuwFVTapoN6HWucQSaVRQupXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ghupxcdT; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2b04a410f42so7623617eec.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768385324; x=1768990124; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/VVV4Ijmp3Ls2wh1WtR/yQpGrW85l4Zba4/iPpipd0s=;
        b=ghupxcdT/aeHjf39mpyt5EcQaM6/SMavCFYJkPV3iqxOvscTht/DQNCF8XpBuKX0OL
         4dCm4+Xpc6pL0zNpm2sNbj0C9A7k4UyYH1TNm1FGRoo2cHlV01XOYAqYW6j1gTV6tgrq
         bYNXc82y4LdmyjeNxAYCmig+5ZUEeIuBe/pEswyWFcll+gqgg2Y2HzWId7D77SpA2Kle
         IBM1RUOF94aIlOWB+E+Z0MipQW1QchLHE1yoh23nMF0CukXbbEDEWXRxmCUcHLeAxHJL
         Gkw/eKwcsihF1W2axNw17An/0HOioTLhOD5nMXPkOvWTHY4DN7zjHQnHOeLoRzOXXdXK
         vK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768385324; x=1768990124;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/VVV4Ijmp3Ls2wh1WtR/yQpGrW85l4Zba4/iPpipd0s=;
        b=nBxAShMHFk4eZJq4tDZulGBDa1GBg0sk6l/Q0Q9nBtQvoesfE1iGX7yjU7M4zeXeWD
         bAQEzwS8hjogoGgcJBTg2ByBI3Ltus8B/JQ5j8uYfEtaB9XWqHL3fzS77N6ABV7z318D
         p9iuE+HwQqaUojepGQqtTo/ttsjufuZz/Lk0r4V6ijAHDXhVEG4GkZ9IjPXVY34R+5XG
         4lOSWjQVdVUTS8TowWt0gXzLu4CdAjv3RXdZvDKNGho31IqOOPp+dcSZmodSOhvLvwnF
         XtLWyBQw1xYevlYhoGjUkDIaSK1G4aFSw1d4eopxOx6FKdZzfoNnDuDU7zWQLbwFozJI
         YnCw==
X-Forwarded-Encrypted: i=1; AJvYcCXxqpKkgk781giTkzrUoYaCA4GFFZXWA/XrQZP3RULwCQ29QEBQHHVk5lBJN59Gd2a+LlXcE3p0/qbB@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjh6fDn/Irvj1gi6dX6IcsQXit03DclyFWcaySFZ6Aeak4GiW+
	MPjpu1+gquZtGbwCe5Voi1Nhtl2gjhRSNGWgEKxF3NR89O1sTJi2OWJtmOYTI6UXCgI=
X-Gm-Gg: AY/fxX7prhTesL0S1jby6zc0T+JcevkHmPhYccvJgfQxbkP2OulH8/Cm1miZjifrgdB
	WUrehG2pclEmqMXwrBqhwqruwyA8vXoPCNE/W2YU9aniBQog8eEe2oYC8q0OoXri4zJr10pXMNy
	wF5/IU+V/Y8l/F4bYUmfnXUjq5FkYojlXpwnEnTvJqL2RN1WoCw8vICJ+Df9vrBKj5tEG/Bvf6K
	x/KjEpBkdDAoDCGXs/eS0DKYzNQ/ekNs1YSFKZDl+Gal/U+r72deF7IdnBfcj5m35O+0goG2rkk
	iWkXIEdm0UQbmdAjUgvr8BwAC1pRgLwZHsgZSy+FOoVT8RCCDKJoUDB550S0GcRzOrY8ZY1A/6t
	TGk4Bg95iclmuWdShczQCnwvaZVg27efwIkoluC4twOlK4cmp+p6eGqWHyzDD6R5GEwNvS6/6Z6
	GWSLI8hCpbF3nPX2Sr
X-Received: by 2002:a05:7301:4e08:b0:2ac:1c5a:9950 with SMTP id 5a478bee46e88-2b4871eb693mr2526439eec.34.1768385323644;
        Wed, 14 Jan 2026 02:08:43 -0800 (PST)
Received: from draszik.lan ([212.129.75.26])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707d60b1sm19790893eec.31.2026.01.14.02.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:08:43 -0800 (PST)
Message-ID: <c449218000258224fd9460e898b9705c1d0d415e.camel@linaro.org>
Subject: Re: [PATCH v3 4/5] clk: samsung: gs101: add support for Display
 Process Unit (DPU) clocks
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
Date: Wed, 14 Jan 2026 10:09:20 +0000
In-Reply-To: <20260113-dpu-clocks-v3-4-cb85424f2c72@linaro.org>
References: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
	 <20260113-dpu-clocks-v3-4-cb85424f2c72@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2026-01-13 at 10:59 +0000, Peter Griffin wrote:
> cmu_dpu is the clock management unit used for the Display Process Unit
> block. It generates clocks for image scaler, compressor etc.
>=20
> Add support for the muxes, dividers and gates in cmu_dpu.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> Changes in v3
> =C2=A0- Alpabetic ordering for all cmu_top children (Andr=C3=A9)
>=20
> Changes in v2:
> =C2=A0- Update gout_dpu_dpu_pclk to gout_dpu_gpc_dpu_pclk (Peter)
> =C2=A0- Fix dout_dpu_busp parent (Peter)
> ---
> =C2=A0drivers/clk/samsung/clk-gs101.c | 283 +++++++++++++++++++++++++++++=
+++++++++++
> =C2=A01 file changed, 283 insertions(+)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

