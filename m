Return-Path: <devicetree+bounces-226045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD03BD3345
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 15:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53FD84F22AD
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D00102FF175;
	Mon, 13 Oct 2025 13:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gv9plx17"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAAD306480
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760362092; cv=none; b=tPunp5CahRJPyrqoT7lMgCJo513sSEhyE7PmXnq1ohC1Ks7dOcMpksAKTjrPhIWoSJXcoKmCHL+Eogs7BDz5ByEXl7qV5K+Mny9+fB1mEraMiFVBiFav+jKR9opQFRgaS24+XTue2e33xQXj79Euz7cUaK/TQj+KY4rl2AmToWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760362092; c=relaxed/simple;
	bh=TCpcJBzt3HXWbE0TqPgkXkphc3fKiTL00tff0CRSHVQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kQlAosBseaF6EPZIj+iQHaac6evV40t/xTCVADMOj5N9qCRLxE1bdqn0tjmGBWkzGxILHZ+xJ/NNgeTLvGEFcfoPBWexeG9lMNe194xbQg8BzIeMhJgaZmLxhJPGqE5Vb/ql/iPjKkOZbaF3mbjT4EmnULLh0Xt0lAJpbF7qPR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gv9plx17; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-36295d53a10so33497451fa.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760362089; x=1760966889; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TCpcJBzt3HXWbE0TqPgkXkphc3fKiTL00tff0CRSHVQ=;
        b=gv9plx17pEiS+EkBGJpZ/SyeAHmUfIlBigKhPUbxCyqRcCoeXIjPdp+hY2aXZQ3Eex
         G46nxphidg3ABVP7Uv+V6wlrtMdi45WHRewTnMkQ8kdwvQrkKN9CdAEO7BIWMraV8OMn
         TqxBLz9tkl9kakYhOGU4+j2FlT8Wk4f9Bb8S2ExlnTKEHhia4zFDJttMyuus4xT3NQI4
         +RXh7W1tpPFpC3r2zNwOtxBuQ0LPPrsy8Rc56YigshKDETudRTyF3L3nuG0wJK4mYc9I
         c6qLbVaF0T/samWllup0AvOSa4XgPwuWMOG/J2dxJbQJb/rOmvFrZkfzQv0jUx9c6GXU
         NLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760362089; x=1760966889;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TCpcJBzt3HXWbE0TqPgkXkphc3fKiTL00tff0CRSHVQ=;
        b=sEjtNXIfdchxFJnU5GH+xwbVvc+QND1ViZoOyC38NglEbGGwvhQOvjVolhcU847u+r
         +GT+Q+Xe+KNAGcL9Cz3tdwM9lCxp66GRn0fOXE5F22horLm5BSiKfhqveLP3S34h1KZz
         hD3XZTsMabVIKVqQjle5ybxkHCgBtGkd7rqbGGaQ0bbbCnx1di+3dUdRQjEZ/vEa5GX2
         7vAZczR8UxrY/E/bSrWkvySrjdxvzb0AGz5zgwjm3Mn4y6YaKVF94Wk4OADQ8Ve48vjD
         d5NtsoR9Yr4ioxq9lwOA9PSmj6OZRc5T3Z4PrMeEldEXQ7Ly0WQZDqGZGQEYvTNLbn0G
         DlEw==
X-Forwarded-Encrypted: i=1; AJvYcCXMv8KVekKH9PRZTMG/tICVe3fdbj65/wMFKkl/UpFt/MIlSr23QPo1A+vzywZAi4HjzmSVXR1NZtOc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6W7ZVjTY3CCN4oyRVDYVrhhnKyb8ogQTzm7GT0XSwu+Ai9NgF
	u6NrtvQIll1KBprYJ9vhCpAo8O2IGe9QCTNm72jAZbgAu3aIpgPKr/i19fUG7SWh8K8MEdklpRz
	+7+gMHM3xV2A2307FEhBSBOlDDeOigQ/HrtULjbopHg==
X-Gm-Gg: ASbGnctqwIloxB1EDTOtAepCLrIlSOnP7J6QeC+4Z1z3BoW1kMbL42/9nnKfkDOvSHE
	dyCXuA87DpGnlB9Jx2cPAcekTkJp3dFms5ZzPaEj5dSkvKSx0apL1kwvLvmBaobtGJqxDGT0s95
	DelWyrvOVyEnRAfckKnqNZD2vRtm6/9ZPPdOe1fHLjZEVf9dg6SiFGGngMmEK1J6YGQILJjTZ23
	oApgunuIhm+D9tP4JYP2isxQ+agQw==
X-Google-Smtp-Source: AGHT+IEuC3uWreohj3S+OBKmbdTWmAhPpTphQzDPpWDlJpvqlnw78r/6/iGnmmf8C9Fpr4YtuqStpXMM8FvmbRHGKAY=
X-Received: by 2002:a05:651c:1992:b0:336:72be:3339 with SMTP id
 38308e7fff4ca-37609e64b9dmr56919791fa.28.1760362088862; Mon, 13 Oct 2025
 06:28:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926-manpower-glacial-e9756c82b427@spud> <CACRpkdYXh2MCs=vAif7BpxfYVRuDTkYYNwpV2t=J_ZRW+N4Vyg@mail.gmail.com>
 <20251001-unfreeze-ludicrous-9d744548bf65@spud> <20251009-amendable-trimming-da31551d730b@spud>
In-Reply-To: <20251009-amendable-trimming-da31551d730b@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 15:27:57 +0200
X-Gm-Features: AS18NWCthi_sQuhnDEU35_vHT-Z7ycwcOA1ZjAB9Zqs6xKIeB40fACBw2G4Dpcw
Message-ID: <CACRpkdYssH8zObJTUH2VVB7FrVFmJUd+Ea7etTGbicQgkuU=CA@mail.gmail.com>
Subject: Re: [RFC 0/5] microchip mpfs/pic64gx pinctrl questions
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 9, 2025 at 5:55=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:

> So, what I ended up doing is moving the "gpio2" stuff to use
> functions/groups as your gemini stuff does, so each function contains
> one group containing all the pins it needs - except for the gpio
> function which contains analogues for each of the function's groups.

I don't know exactly what you mean by this, but if it entails any
entanglement of the GPIO function with another function, then
there is the recent patch from Bartosz in commit
11aa02d6a9c222260490f952d041dec6d7f16a92
which makes it possible to give the pin control framework
an awareness of what a GPIO function is by reading hardware
properties, and that it is sometimes separate from other functions.

Yours,
Linus Walleij

