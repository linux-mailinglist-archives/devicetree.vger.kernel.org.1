Return-Path: <devicetree+bounces-111872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77ECC9A0304
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:49:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B18931C24937
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C457C1C4A03;
	Wed, 16 Oct 2024 07:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z8wuPAPc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D3B1D1748
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729064965; cv=none; b=M/mAtkdtTYny+moMTIfZ38hjSG6nUoxgy1goob4ygoOqDxHFF7KGFB+e+1zjhRtRq9Z6ARtQJit+ewDeECtusa2ihH+u2LGzBcLvlKkkIvKJmnyAUZm7YrpsfdhV2APeA/9PEcMo4l0YLN3oOML/mie6WXe4ABRD6rs+gT2+mLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729064965; c=relaxed/simple;
	bh=QWnazseZaR1hFH35CRDb6Y30SINMOACCzxzQc/Bmpgc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W+IIjPMRAQMkv2aOjMZQjb4SLa4GqlgqJYzhVKze30X/h0M/SpVrxSMCJKdk2ZpyfUhV5djTkqa3I04KeABMfyAcQbBfvYvQGhMigSpZSxUJaQGMd64L0Scehh7Z7ABDA+WZe4UeMFK4ztWZXnevD1GGKI7o0xYjFLdxohGFTnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z8wuPAPc; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb3110b964so52229721fa.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 00:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729064962; x=1729669762; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QWnazseZaR1hFH35CRDb6Y30SINMOACCzxzQc/Bmpgc=;
        b=z8wuPAPcefaQ1AebVAu57jY5CwSsWETGr7CXhtrdH3i+0iW2irFeDvGnpg8jrm2yEk
         Dh5tF8Ot4Urgzw2k9ft6AdfKlFQ4FqqOHVc0P4UUkBKlpb2N14Oj6trFgCF0MIDvt2jO
         W+4rNtZPPrdBlXrNGaVmEeVCU6Igl4Hb5PPmvy7zoQ2v45ToPqOKDsjcZdyHDNfNX0Mm
         g/EfWCc7K9ytpts1jl5vsKR9ce5Lma3FHNnBvw5Rt1+WgQ30FwZFmZgHgK3xSphpeAnG
         Yf6cmt8ysRFfFo5MgU8hAjgHlN/YD7zp/X0xCrykhD4c2GQe4CfOE5bSISX2hbZIk5cU
         dBqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729064962; x=1729669762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QWnazseZaR1hFH35CRDb6Y30SINMOACCzxzQc/Bmpgc=;
        b=TVPbbwkH1+EtgI61TK9qFD455xMJOxezV9V4yHFkKyIB8J5D7RzgNzJV5kCmKZeeFW
         PutL0Jf6Prg6a9dC0X1l5a10D00UGJSnoBseZWqUXPN8p0g4/RKoXZFdjub0GkUNkpwd
         YVMsbAk5fh0cFZChIIyVr0RJx5TA1izEfUEJWjQorz/uorYRCc1ZTbub0YCedXv4VS50
         PrcBTpoXfIQ+I1YsYLeOBN61rUIK5Tlf2g2QEjpjjFnEmQCl3I/XyqkRJ9dPzjyoa03e
         7iNWDu6hIbDbUtIsd5dOfgaTdtPPhlkify10WMEobru7PPR22qjKbgpL74dsKafKkQN8
         eqeQ==
X-Gm-Message-State: AOJu0YwHa0Z7g1Zo7e1Gv16V6GDWtG0mpkqb4m03Y+Wp/hOKD/raq/42
	i9c0o8rtnLDX7kCMLqyNAckHNsM7GlGaMOp1gJrtH47l5IU74TmBBRB9zWKgBhGp5zTlQdvBz/e
	e5BwnJ/NGYXJ3q/sFkH9Rb+SoZJGF/0wLcXdOIg==
X-Google-Smtp-Source: AGHT+IEJtfOZ6tmB/1Jh70YGfdb6Fyjw/5c+r+5nMZ/h23do2N62F4ltSdGqMukO/9A21bWVWbbzYDdVIQKRACYe6O4=
X-Received: by 2002:a05:651c:b09:b0:2fb:58fa:bb01 with SMTP id
 38308e7fff4ca-2fb58fabc43mr43923771fa.17.1729064962056; Wed, 16 Oct 2024
 00:49:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 09:49:09 +0200
Message-ID: <CACRpkdbn=C-eCrVZTJNky=Z4=8DnymtFHLgaw2qdf11X6LexdQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] ARM: dts: Add some BCM6846 device tree
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, William Zhang <william.zhang@broadcom.com>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Benjamin Larsson <benjamin.larsson@genexis.eu>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2024 at 8:41=E2=80=AFAM Linus Walleij <linus.walleij@linaro=
.org> wrote:

> This adds some silicon blocks to the BCM6846 DTSI file and
> adds a device tree for the Genexis XG6846B device that
> make use of it.

Oh there were more warnings I hadn't seen, too big inbox.

OK rinse and repeat, adding ngpios to the gpio-mmio bindings
and fix up the MDIO address-cells.

Will send v3 when the GPIO binding has been accepted.

Yours,
Linus Walleij

