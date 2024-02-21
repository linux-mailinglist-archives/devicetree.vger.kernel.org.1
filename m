Return-Path: <devicetree+bounces-44357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFCC85DB3F
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D2DB1F226CF
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 13:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A436F074;
	Wed, 21 Feb 2024 13:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mN4Anb93"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86723C2F
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 13:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708522720; cv=none; b=ZD59dI70kIH7J9Z81QhEnwzh317Xk31D/98YHdT44z4urJWJE83GVwBws2SpRX9qOnqUXEHpOpS4hCzXWHhEWp0mF64ttSzwo8nS4IEGi7YTvm4KjGiV/9JdvAG11bB2Vhac+4S566kCnI+LGsa2hbnQuvIkW9FOop5fAu+1MX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708522720; c=relaxed/simple;
	bh=ph2UbQgsrbuCfnh/AmINSm2tHoGX/U8LJgWyPisUXjU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OF/DUBCkqfVP+Wol/q6vYL8Sj/si4GYMIVxkS49Qbo5VfnQbC2h6tiBt9L/mIT57+zanX5TQRBICvSOH1qB9b3h+RJgGZymMSSC5tfINVBcx9+Uy0D7LA3jNrmQVIaVw/oSy/CG6ZdqcNLOBq4YkETDzSVKqzwchxYOBqAUgoBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mN4Anb93; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dcdb210cb6aso7365213276.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 05:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708522717; x=1709127517; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ph2UbQgsrbuCfnh/AmINSm2tHoGX/U8LJgWyPisUXjU=;
        b=mN4Anb93TyOuMCHkH2B+0+jOratxIs0faqE6FYvN2AK5/qA5eyJ8A6bVX7hLpyztas
         KjwwFNlqUA1CILCqeQ2CmYGSbvod0HAccRXn6sWolw9/m1uXyvaSoz/m60xzep9zFmeu
         Jub4BYZvfiYqjcD1/6YRWOph5pW2T3T9Id0DdtmZx+QC1MW9r6bo+ov/veqB6PMLIWmB
         mP+LhIHiWKLuRaee6rXky7yYrQuMvR+RKOV8X2x4h3FQ+PjNGsfRKhkRpaPEtoZPaIIN
         caH1RmeYoXp2DMICeE1O6C/2fQM85uhJt6gtj2A+LPdCHhOMsGT6RTFRK7bny04CohjX
         CAEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708522717; x=1709127517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ph2UbQgsrbuCfnh/AmINSm2tHoGX/U8LJgWyPisUXjU=;
        b=Vb2cLK7xR58ASLIFuNTSX5wTMstXt6Ylonk3EEP8JnAoD8ZdENSbq6+xIOKClDNBtG
         8ZhIWd3oSwhLHDobrpu52l7XaNClZMDWxht/sxMi2oQSk1vLUYKD3rpvjvuSR3/xGTaB
         lWk00QfI0lJhB0W1/4rfjtHRdd6W8dl/5AcgB4YtC/HI+rLNfT4oqwDNxjDjIAB/UZAR
         9rlW9EAfeuOu9mzo1g1MB4eEMowR0ZA1ewHw3l3GW83ddB73DS+BR68DqakSiR7g8rnx
         J4T12dFIxmuO5PUG0Xr654DYl7SkW/XCdLJRfbRsZOb5T5bMXbtOTtP1dPjWZxOoCVk2
         w0lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsTAKyzI1Ar4G8IxmjBS6Dhj2LSoXHXBdAiJo58lU2EmSfCAckRasZrbef3SvABP9v8Duna3RUrQRco8vedFSQcNjNpqDauijD2A==
X-Gm-Message-State: AOJu0YxT68c4yblZ3Y6MFzGuN0NYXikdmsTuc/VDoy8JPm12wP8xP4JE
	2RlAKPKqndKOfi2N7htC00L3Vfo46PoVc3r4nxo4cuquDffkd0Y9F6mTEjAUvh7mijdy0fSlNP/
	9i5Md65M5yORyEYCcIvMDSIDzsn757XOASLHnAwq976mQ4bo8
X-Google-Smtp-Source: AGHT+IF2OkLRDdLse8vRcitJs8gTndLo8D9Y6JeTVVYt2QhVtGqFzHLke4WYR6iZMGxv/F5qvwz1XhINpDDxRT+71EA=
X-Received: by 2002:a25:ab06:0:b0:dc2:2e01:4ff0 with SMTP id
 u6-20020a25ab06000000b00dc22e014ff0mr15988542ybi.45.1708522716910; Wed, 21
 Feb 2024 05:38:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240212-mbly-clk-v6-0-c46fa1f93839@bootlin.com> <20240212-mbly-clk-v6-5-c46fa1f93839@bootlin.com>
In-Reply-To: <20240212-mbly-clk-v6-5-c46fa1f93839@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Feb 2024 14:38:25 +0100
Message-ID: <CACRpkdYNe=2w10uB1mUgs2Lgg1TRiSF=bOa45OH5Lcz6+G6FEg@mail.gmail.com>
Subject: Re: [PATCH v6 05/13] dt-bindings: pinctrl: mobileye,eyeq5-pinctrl:
 add bindings
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, linux-mips@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>, linux-gpio@vger.kernel.org, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 2:44=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Add dt-schema type bindings for the Mobileye EyeQ5 pin controller.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I tried to just apply the pin control patches to the pin control tree, but =
I
can't because of all collisions in MAINTAINERS.

If you move all MAINTAINERS business to the SoC-wide patch I can
apply the pin control stuff directly, but maybe you wanna keep the
series together and merge on an all-or-nothing basis?

Yours,
Linus Walleij

