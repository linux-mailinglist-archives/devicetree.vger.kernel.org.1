Return-Path: <devicetree+bounces-197871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E58B0B0B4
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 17:42:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C84EC189739D
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 15:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A6D28750E;
	Sat, 19 Jul 2025 15:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ebKgJs54"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF1041C69
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 15:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752939728; cv=none; b=QHpkJ0sE+C4CWrHPVPfEkwE+rtj06z/srYKhvhi6qQ6nbtr6cUPTaLcKgZULrClLysVYuEKIzqjBxSL+tuSTcrCDG56d3/iq1lCbQrZgQTEl4Y7s+vajc4qEJOhHuiRDZNRmsmL3onqqipYJJQpCoEl7uKRAAS3VjaBTD9tYv78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752939728; c=relaxed/simple;
	bh=rn1nnfWM5bSta9/PZz3/I1BzLdbB7ZlLj09o7IEgKVU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VBcezFNxUnNNKQd0PADPpPLkHK2kVDGUzHoczPSrdPDCwD/lWaPiGS2M0Tcuz4z0DfSV39px2US3mM6eMIuBMe5DoBTqihUKtbVYBqVhy+MCfbaaGSn4pfreALyxSRDzPVvy305AEbFRJHbCyYBeUg5dsP3dlUVkgIUepg5FYrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ebKgJs54; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-32f2947ab0bso23727201fa.3
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 08:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752939725; x=1753544525; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rn1nnfWM5bSta9/PZz3/I1BzLdbB7ZlLj09o7IEgKVU=;
        b=ebKgJs54pJ2fab+5VlnaUg/5Bojl+h+Q1zvBui86qYGWpEGMsYNCC/f+LESEA9uhM9
         4ebh1vYN47hGuPGSYW0cydgVvchSD/ceo6AuKz2aNeevZFGQzqst1lL5Zh2BFZTIBWAA
         jiflfmk91dvsQrILf7YPxK+tVeNXx7pQh5tPrRVhYulTUcFkQbhJ6nhTETNEE6WNs00e
         ArEHPYsaobCpOHISSlGjOfQQbIsK5x2w1cl0CyuiYt8iA1gUY6WzxaYqEVVqU1A6dSsQ
         pIiVypiiB8DadSHRO53FaKDf0wEymKRk5VbK5sAYXcYy/V9cIw7FDLkQk64DMkNqNmlU
         32nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752939725; x=1753544525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rn1nnfWM5bSta9/PZz3/I1BzLdbB7ZlLj09o7IEgKVU=;
        b=IKTRZES3Whm8spmGjP4AOhSIphJGqZf+15kf7RTYw6cn9N2ZmRUICZnSMPLgE8m1Zi
         YsvhJeMoKZB3dirwRU1xiniD5OFIq5dbS+feFFIFUzqBjNRzaTEiBXk/Hr0+4sRxj8cS
         22Oe6qm5ZAvcfFeTRNbnK8nbSnmx1IA4GEGONrP9zbncNzbp7qg7+/YPItQiBewBBWZS
         3REfi2fZ7MImYf3nhmN+XhI+tQLbiRk+9uoyh+f9NC0pyyBPMELyLrDePdKn5tqChWdK
         VUlG/QGMxkdDlz0aiuuqdjc3rlxyoNOmFX4Xc2wiWCa3WN0hXr1mjgMxbAvsptuFHzFE
         Bzhw==
X-Forwarded-Encrypted: i=1; AJvYcCWY/LEzv/JPPrOFi7zlxnl4CnsmQFiIxpEs5A9ATjjA/fRBWr2BNhpLo8SioRLaFS2F3Fm+9Pxb0YOH@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0/XhaX12IIPks4HENfodTna66744mG+N6gGN/TlTt4ZAHctpb
	BrdrOCyNpKAfIzDHU7r08lQ9xORZSammDbcVtAZ+ZTn/cM+VS7PCaEhh28cAdWHL0+5+5W3XDtj
	pK/OAKv+EC5CNd9S5RRp26I7+5QxU5bgcKajAkRVcdQ==
X-Gm-Gg: ASbGncsb4s1RPsG7e8Lrvw+arpPzE11M9iwgQDoPzFwJh/7ck+T12NL6aevTVUnnEt+
	uBLeKQ0OQWYC7OCclkBe9ohflGtae+H4I1PV2QoTl/hhoLTGaTw3wW1AMpKu+Rb1n/MnmUnYQyV
	ezyHxmHA3wvzPMBYdW65FULciHJMOBEbFBCyDpAxJnboHSyHzOHMhbagP8tKtFzZmdIzRgVbRDp
	14et8s=
X-Google-Smtp-Source: AGHT+IHz0AgUzYYyokGlt/TZ09DPKHJYVrOty6k/FTgVY5vV1r1KxHh9aV72LWBbI4MCzMrbevh/6hzgi1HVNc+Usj4=
X-Received: by 2002:a05:651c:54d:b0:32a:864a:46eb with SMTP id
 38308e7fff4ca-3308f2b7638mr46687401fa.0.1752939725118; Sat, 19 Jul 2025
 08:42:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250610-smc-6-15-v7-0-556cafd771d3@kernel.org>
 <20250610-smc-6-15-v7-6-556cafd771d3@kernel.org> <8f9fdb3e-9655-44ce-8a2f-c1628c88c929@kernel.org>
In-Reply-To: <8f9fdb3e-9655-44ce-8a2f-c1628c88c929@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Jul 2025 17:41:54 +0200
X-Gm-Features: Ac12FXwAlxaX4ocIXQ1MhtIhdmA9pd8x_pk-4cH3CUUGhFSCjbZy3REqIbEaUb0
Message-ID: <CACRpkdZdz7eHVjgX-X_UwjJ_qSu5hSPeocuQ9DWSiyjNLU5AmA@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] gpio: Add new gpio-macsmc driver for Apple Macs
To: Sven Peter <sven@kernel.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Lee Jones <lee@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Hector Martin <marcan@marcan.st>, 
	Neal Gompa <neal@gompa.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org, 
	Marc Zyngier <maz@kernel.org>, linux-pm@vger.kernel.org, 
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, Conor Dooley <conor+dt@kernel.org>, 
	Janne Grunau <j@jannau.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 19, 2025 at 2:59=E2=80=AFPM Sven Peter <sven@kernel.org> wrote:

> top posting on purpose: are you fine if Lee takes this commit with the
> rest through his mfd tree?

Bartosz should answer this since he's dealing with the merge
window for GPIO, but generally it's fine, and it's even using
.set_rv.

Yours,
Linus Walleij

