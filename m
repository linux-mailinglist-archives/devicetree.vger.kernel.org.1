Return-Path: <devicetree+bounces-226771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9EBBDB2F0
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 22:14:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7CC564F3C6B
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 20:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1117B305E15;
	Tue, 14 Oct 2025 20:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mc3xoKx4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B450305962
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 20:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760472846; cv=none; b=kyGgqnP66W40jEZPwLHKSXdiZSNheQIpwrSANmGdZhOBJAsMqEliZKmI2c0v1uNix7lRRNOFdzfOwdkD9ljPR9kJZFuXmefzziEC+mxlpWzIePAd6xs4+xX8YKuCtmG0xALUDi28F/YL6Is8il/PqVxvHgCjK5FYpFImNj5TXKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760472846; c=relaxed/simple;
	bh=4SjEPEjlWep5gU3J6a93orAuWUCgYWFpGeMwqORKnmc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NbSYXvF7UWtHn4lp6u8jkP06X4uy6kKFoMK6QJzZYbGci+Wd/dYcFi+1t9CWLJqOig12g49QJ2j9oz9BvUXsWvrN7qb0R9rDgH5h7tzJ/2tkBMl95/sykIhEZt2tuDoPN1h3RHYhE3i/wlVaepSWMsBpdlPxv7polSCZFaMXOc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mc3xoKx4; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-376466f1280so28490771fa.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 13:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760472841; x=1761077641; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jRL7yP55FZsuArjzHnzTt8bkESp9r+xQAl9w62GS3Mk=;
        b=Mc3xoKx4lEehWzQDHoTU+UXsbFg/vtl31qNH64lbPz/u1e/TEmdDATCsVoDH0bOTsa
         9pEJWzCs+UOgeRmMjQOFC9/APu8+If1m4tnVpF73SnE2/Ik9OAvYz3Z1aqKjeEW5pcni
         K/1S26gIwSihR0YvJ01vr69j3OSEHQ57qiw5xu8HNvMCU8h5wRn6X9hMO1nrR4+qt2pa
         yPa6YpUIxjHiBpErq7e+XzGCyrKL5QyN4b+1iKMu3vCaNCI60nkW9gFH0kHCtk3fCpNe
         afzz2Bb4V/WSYbyd8Dn/x9I8nBopQiCcdwCI56w8BySF2fIyD7mSHB/zjrCYPbqs6oCU
         +/ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760472841; x=1761077641;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jRL7yP55FZsuArjzHnzTt8bkESp9r+xQAl9w62GS3Mk=;
        b=mjRbJ+OVdwaF88EguUJ5JgA44WrrnwOaFOSQyt+flh4EPbREBrrALs74q4LsuJABpv
         0vED2VwQcDTMNaqr2S0c/J9wL7JIGgOGmS1xCy246NFrJ/OXM49AWl6TTL37yYJ4zm9l
         Zv+fEWQ9Lr6CfB7IGEbgNk/gdrjjpKG8rB5vSFzNfHb0O7QQqgOvK3s1+ACqMAUw09kq
         cn2R+yPApiRplwsgke1i/E6Fj2FGBA5pZkc117PBVtyGv/B8NlnT/QxRpEcChUg0EIax
         BNdPJthlbsFS0xxYm1nFH+9zO/SdUg0UOIsrtLKP6QAApxvr+Gf+1W5bS1A0aBtooYF8
         bafg==
X-Forwarded-Encrypted: i=1; AJvYcCXh5l6+PY3xqHDIpFe4bh8mV7jME8WGEFp4TEkaWdeueLz8spwc+wTYgNj1OJ51D0B9bvW9j2OJmEJy@vger.kernel.org
X-Gm-Message-State: AOJu0Yydqy6aPpsHWosIsS0Zp0emulLwimkgR1cxF/e1uxdgUQxwEw3j
	49mUoSHq9ymv657Nijub5u6sfK7SYRsYwqA3NLZU9M+Yrn+wKGprzGBODLCGmo39/r4e1NuN+P/
	k2hmD+8oNFtkDS1PoiZa0Ucff1JC/llsED/ub0svAnw==
X-Gm-Gg: ASbGnctRJsQCKDOYgb3xa5OxNxNk1mcmqLU6lqdYQ7xFU0kSn6YCdYAobNKnRCnpibR
	GM6PikQhpZ+znQ/Lgb9W2yoZcchYVW1f1SM9IwJzYRA+e3hGe0vvtnhUIk1Bqy3llqBYGhWFxuX
	Xp3KfEpoIDgyz2ZgL3elt70Vf+gt4sVUzASPu6l7cIwUfiKl/Lhatd9QcA3mnXjey/1eHxyskZd
	NovvmLWTeUDxZhm9MDJOTz0KMnoMBtfJdboseGe
X-Google-Smtp-Source: AGHT+IG+c/RQZD+0BVP0nLHNcQQpCHhF3SSDuV5EMqiXVv1DgN4Em2i5iNrVkDIsVxWl80rtbzj95RlgyVMuiFXBe08=
X-Received: by 2002:a05:651c:4344:10b0:376:3b32:ad9c with SMTP id
 38308e7fff4ca-3763b32b732mr39537411fa.23.1760472841322; Tue, 14 Oct 2025
 13:14:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922152640.154092-1-herve.codina@bootlin.com>
 <20250922152640.154092-8-herve.codina@bootlin.com> <CACRpkdZPURiag1cUQZ319_QA83u+qOCSRALxpe10_+cTcevy+Q@mail.gmail.com>
 <20251001174205.71a08017@bootlin.com> <CACRpkdZ1qg6ecA5DyVEGUHQxLh0SnC=GC5JZdevT99YVWU0ypA@mail.gmail.com>
 <aO5ekPxeg7tdFlHi@shikoro>
In-Reply-To: <aO5ekPxeg7tdFlHi@shikoro>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 22:13:50 +0200
X-Gm-Features: AS18NWASZOxDjvevo6edLy771RxyP0LAmvYlJlH8qS2O9u5M72Qx7DPeuUj90bc
Message-ID: <CACRpkdacJCp8aCCrCAzD5F=_K3g25t_8kZGzaEoXMBnhY8hkzA@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] soc: renesas: Add support for Renesas RZ/N1 GPIO
 Interrupt Multiplexer
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Herve Codina <herve.codina@bootlin.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Saravana Kannan <saravanak@google.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Phil Edworthy <phil.edworthy@renesas.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 4:30=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:

> Because the HW design kind of suggests it, I'd think. The GPIO
> controller is a standard Synopsis one ("snps,dw-apb-gpio") without any
> extras. The GPIOMUX (which is extra) is according to the docs part of
> the system controller with a dedicated set of registers. Luckily,
> self-contained and not mangled with other functionality.

Aha I see. If this is so tightly coupled with the Synopsis
designware GPIO then it should be mentioned in the commit
I guess. Also:

config RZN1_IRQMUX
       bool "Renesas RZ/N1 GPIO IRQ multiplexer support" if COMPILE_TEST

+      depends on GPIO_DWAPB || COMPILE_TEST

?

I understand that it is convenient to make this a separate driver.

I'm not sure it is the right thing to do, but it's no a hill I want to
die on so if everyone else thinks I'm wrong, I can just shut up
about it, it's not like this driver is a big obstacle or anything.

Yours,
Linus Walleij

