Return-Path: <devicetree+bounces-131840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0BF9F4B66
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 14:01:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4156188B08A
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 13:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1011F3D41;
	Tue, 17 Dec 2024 13:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oDshkeoo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D3116ABC6
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 13:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734440450; cv=none; b=OVYLiB+l7UmHo1EeRlFz/Aos5EoAiffbsNA40b/Zf4g9OZMDZ1xmiMqPR4X/HbhI6ELWqRHv50xjOMTDmTpNSUCSGyg471NJHe16hWMlymdXpsld7k/um2IZubMLsQqlZ+BanoEGxSgDtU6JpeEmeevQ31vfMg+HtBsMpFRWQjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734440450; c=relaxed/simple;
	bh=GQIWeq5N/1+/+kDvpSpnt8IVUMXNOzsNCXvdUhT2KmU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VgHv9IaR5K/z+HXinbIDLvvdjpoy24n98EL2coY9p1t+HCRgCcYFNtkUM0xZqRKc6r1xVGezITgCQqaJckwGLSxtW2j7uULi1PggUC7sB6+37jh869G48KNPNKBwgS/Cl5Lu24vLVrhq8XUABFMv6KPRFC88C4ufzFP4cbifXbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oDshkeoo; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53f757134cdso5943134e87.2
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 05:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734440446; x=1735045246; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GQIWeq5N/1+/+kDvpSpnt8IVUMXNOzsNCXvdUhT2KmU=;
        b=oDshkeoomomkIWzWQtd40b2V5rwgwFkhB7Eu7YBZGDvIYVgrDvlPqAjvxUdLBWF9uu
         2eSFlFRSUmS3lgz62kRmWj+Fway0aioruT2H4RepwD0PYuC+KOO67uBEYJ1b420tKwyX
         SzPj/DWyPya0fN1WIQP7kluPUlE/7mpclvMFDagnOQp+RTL9iepc57XYBCISnMeDeRlJ
         ey5hJ4amtgEWvmvw8ebabxfDkQdp5xB3O+4ZeLIVHkDbNDlE/2HNVsS1StdG73epPkrX
         zwawVFoq/IDIcv+gE8TCRFc31FGfhttkRGDvdPHSItlFlhNPBYqBZoG6gpgOl2sb9ZEz
         Yovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734440446; x=1735045246;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GQIWeq5N/1+/+kDvpSpnt8IVUMXNOzsNCXvdUhT2KmU=;
        b=pqLbXEZVXBZ7oTjWCGqGYWO4vPmi08iHXEpP6IHM1BEBtxFnIi/X6YS8gAOyCshTAQ
         ET4kgNC2g8m+90j//Hn0p9Lk+rUHO1VrAinjXAAQ5Sn+7lsTxS1vZ15slyUMg7BYPUjF
         1NgVItN7GDag7uXd4yIYalMFCmo0TeOO00onh3FAkjW3AiGoLS0A5yVGqajM6pUyUAj5
         oy3u3heurtgH2WurqIeA6e1HysOJzS4ZpNVRPvMX/2O4K6bcUqdU0ueShINd8wdkvyJI
         wLACR0m0rQVwv33sIgSNalJyi0+uPSJvZjVy/hVuvF917AXQFsrO4s3C/m1CBBKzUxt9
         vwug==
X-Forwarded-Encrypted: i=1; AJvYcCXV/EEMjsH3VN8UZzd48Lnhee8ykOCt+h+dWKsfCvNEbqpBRi5A5nTSPJXKalVQYszWh2qtGXSec4yu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9w8dkniBTlDwLUVUYMUv7IwIoYcGZn48V7W9zRjE2PMGCs6IQ
	YBvW2bnWbN8Tu73yPbhoF4jdtHyQwFnOxEUn5oERIXxOYEDpBY7bg5ZejNoJYeSBzvtGgSTNSd4
	z5/so5cvJwLONdf6JwBlxLOC2n+HVjVdKge9LbA==
X-Gm-Gg: ASbGncuCzRzAJNbIl8RgZNFntTkOL+5GtNlHF5Q+7yKdOhLJmar2Ht393s+ghrjZQyw
	HokJ2gqzwk3FSPwVhZEAQlEYSft8vE6yi60mdZw==
X-Google-Smtp-Source: AGHT+IE11omUaJ4WXf3M872hwf4LKHvl3NeeSE6hV/ORlMdadi+NJj5MwYpomF9yj0vKXlTRigYPF4Zh1hB/AzSqds8=
X-Received: by 2002:a05:6512:220c:b0:540:3566:5760 with SMTP id
 2adb3069b0e04-541310a37fbmr1037395e87.35.1734440446299; Tue, 17 Dec 2024
 05:00:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1733136811.git.andrea.porta@suse.com> <42e09506979d878547d1140d7f6bf68ace76549b.1733136811.git.andrea.porta@suse.com>
In-Reply-To: <42e09506979d878547d1140d7f6bf68ace76549b.1733136811.git.andrea.porta@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 17 Dec 2024 14:00:35 +0100
Message-ID: <CACRpkdY+6QPRH-Pd9SwXV6dsdah-otMa8bkt=-avzF6Aiaz7gA@mail.gmail.com>
Subject: Re: [PATCH v5 02/10] dt-bindings: pinctrl: Add RaspberryPi RP1
 gpio/pinctrl/pinmux bindings
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof Wilczynski <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Derek Kiernan <derek.kiernan@amd.com>, 
	Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>, 
	Stefan Wahren <wahrenst@gmx.net>, Herve Codina <herve.codina@bootlin.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Andrew Lunn <andrew@lunn.ch>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 2, 2024 at 12:19=E2=80=AFPM Andrea della Porta
<andrea.porta@suse.com> wrote:

> Add device tree bindings for the gpio/pin/mux controller that is part of
> the RP1 multi function device, and relative entries in MAINTAINERS file.
>
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I can also just merge this patch to the pin control tree if you like,
tell me what
you desire.

Yours,
Linus Walleij

