Return-Path: <devicetree+bounces-254047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1D6D133AA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:41:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 002A7300A3FE
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44033278779;
	Mon, 12 Jan 2026 14:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gkS5X7jr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C73257855
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768228497; cv=none; b=WurkTwcZJoMsltkkqEpljCD33fyzv82h4EBgDZMC7u0es0FpE3RY2ZgN5rMHbsIwrWLLRODX9TexDQi/YwyNS0TY8dCFH+iM5ncB5yWg3PtVhsEw/n/KWheACDmab0Aph56HIRmej5CgWfSWRNK7fuUK5k0OqiIZQWMsVU6zpTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768228497; c=relaxed/simple;
	bh=I3IZav8x6KeIVwEYXoT0Fb7mxh2EWJMO+2D6AGLXtFI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lAp0ER5di/Cd9dY90Y4yQvyHedczy1iEeEa5xXgpwk2nkxFIsZ45rjwSPuMxR7LjhzVYPAfE6iBmReIPKuPB5UIBxuofNSFdVo53CIk+0lFFhGO5OHq0ABwN8M9qOQx7TQUD/efJaRN2+IeNWXJb2MWsiDeEgVYgbNuFwSu6Ly0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gkS5X7jr; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8b31a665ba5so792711885a.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768228494; x=1768833294; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I3IZav8x6KeIVwEYXoT0Fb7mxh2EWJMO+2D6AGLXtFI=;
        b=gkS5X7jr+akI8rVuE9kjcKgLg4gfxOThBHc5TK0PoV8vwy7Fb7TTsu/ju/5018ieQl
         MoXs3/v2XO7ctbjnBjlFCuagSNnqdetcpOdTFmix3pZKca3vvojMXjKlMpYLnnYXP97s
         x+VtP9WII0GwVT/RjGXLiFUyftFuEy9EpQB4qCOZI7l4t3kcm/pil5HGv5l/k3SIyJz3
         6cSY+Zfwz2EIZE0686oOU2GgjYOTtr+6BoWDcSA7GTRpsx0Mtq9YSpePoMC75dsPeLOg
         0Qvv982vlxS+h+PkwicEQTiDM3cnLi3cxs9DJTayOgHzipepqSwkrMSmhEQmoQB5fWzl
         rSgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768228494; x=1768833294;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I3IZav8x6KeIVwEYXoT0Fb7mxh2EWJMO+2D6AGLXtFI=;
        b=ubGbwwRPVU/JDS53OjtsqOjtog6RvqFD6Oq9lN626YvU1s1Iyl1vnzdFlvQbIvmu47
         IhiaJqY+fSIV4v3FZJNNfBNTHlTwgk8qQgs43LIBWw0gA34ZEPhGgiki8GQ0JbYsqTk1
         dpypKCYo/vXFBGr5Ka8qNyawUNgNZIdh8G30UVosHFGkIEKhgZe/J0xDUzFki4srWE74
         /10x1SH4PABQrj1qqCRJAQVtXGNqJ+K7Ckc9BMgfohyFgb9pvyAdIY0fyWITm99YJPji
         +AfYJOiqf1MjdbZmxbu+WWIbBaYdFsL+EVhGqGEIcWaw2vEboS2SVTqnDMmmekiFrplz
         iTsA==
X-Forwarded-Encrypted: i=1; AJvYcCUUU5T58f+chsM7PrQ4m2mt0/kxH9SgL8h1tXdwseY20X/+uEnNSCB8khglGTNFOgP/pyq5B9CSuyI3@vger.kernel.org
X-Gm-Message-State: AOJu0YyQX0LOqNuR7iwJDbGUfN2x8bEbc2JzKihkXP0Cqd54A55jAhvR
	feIo4tbqwSxXGAz7qfXCRrzzjRDR5BD4EQkkz9VcSpthk5VSG4ePZbUw8wsFn8z7oLI=
X-Gm-Gg: AY/fxX7kPr3kzRVo9/fp83lj3KXR6hpzLrXmQRbSCK38uh5HLrXXLTE2hw7429eELPr
	kbIiybaC4bD94L+G2R2uN/gcMd8pmKAzz6IRrb5Ax1b4A0Bw5GxIvWoJxxijS+enIKRoDCsH7DN
	4NzatqNOePiLPlkvr2ZBKKG+fSco6WNaYBe8JDCnjvomlvdye63USH01QK3Y4hYIho3PPQP71Q2
	SHHlyMmZd4xJZrCUp+wKigiJQ59tCdww91ws5AlMOhasLQ4RwIWz5d5SJhxbaMGKCHUI5AqiAQX
	sP5d7AkEVnRaSr5TjeCj/+7GCHNPcMJatuXbLU4gqOcI1dFOT8dt3qh6iDUnxowgI8xj71kr5rs
	A7WQeFnsHKtD2CHlEcO1/BwaxRc57nUzBx2sBEY6J4ldMu7DaEK8whAWiYI1xKoFRVvtyWPR0w6
	VOpCdC0e9SC7JoUR8MpakKGgl6ePc=
X-Google-Smtp-Source: AGHT+IG04Y7YMmlOxxQtJZWLENiUI2pQKTZxZxtP13zxTopqbGg/cTPtEwR9TRQdWUjb986bpAHcBQ==
X-Received: by 2002:a05:620a:4611:b0:8b2:f182:6941 with SMTP id af79cd13be357-8c3893dc9cbmr2437032985a.57.1768228494337;
        Mon, 12 Jan 2026 06:34:54 -0800 (PST)
Received: from draszik.lan ([212.129.79.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f4c964csm1519599785a.22.2026.01.12.06.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 06:34:54 -0800 (PST)
Message-ID: <f9141db956695fd9ae34f86eeb4f3f71a78d5646.camel@linaro.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: samsung: exynos-sysreg: add gs101
 dpu compatible
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
Date: Mon, 12 Jan 2026 14:35:31 +0000
In-Reply-To: <20260112-dpu-clocks-v2-3-bd00903fdeb9@linaro.org>
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
	 <20260112-dpu-clocks-v2-3-bd00903fdeb9@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2026-01-12 at 14:16 +0000, Peter Griffin wrote:
> Add dedicated compatibles for gs101 dpu sysreg controllers to the
> documentation.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> =C2=A0.../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 2 ++
> =C2=A01 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos=
-sysreg.yaml
> b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yam=
l
> index 5e1e155510b3b1137d95b87a1bade36c814eec4f..9c63dbcd4d77f930b916087b8=
008c7f9888a56f5 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg=
.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg=
.yaml

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

