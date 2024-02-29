Return-Path: <devicetree+bounces-47148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0646486C503
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:26:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 365E71C217B4
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1A8F5A7B4;
	Thu, 29 Feb 2024 09:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dkLFfWfm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33C45A7AB
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198727; cv=none; b=ZFcHd86098be3MLJbG292MZglOZweLZc/XICMHVfGo8BC/6YyZGvlAr2CPK/kG+znquaeb6gv4XCCpprLqAXb9Ms9pbLO9byGgv7tSDNBTIEPSxaGumNBaADSjLSV05rz2/z29mLMKZod1EPC+eg+TSH0Ual/zCHw769X6ql7G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198727; c=relaxed/simple;
	bh=K93TGNrKb0GkgHOKTSz+x/4+8Z36bEWaT4XskVS6+L4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t4BGCczHPYtogjBs0fd6XB80fpln/xD9JQgg8jX0fcsP+zmbu1B29uvW1l2Is7zmAsICJcWEP1sBt0VppLl1l0er7jirlEA4+ZjwoU5anFy71PgxwYGdb2hN5rj0UUiX5a4+ixULIrxgzl8wohqMUtakLCia8Pwt5nqqTBYKD68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dkLFfWfm; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso811256276.2
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:25:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198725; x=1709803525; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K93TGNrKb0GkgHOKTSz+x/4+8Z36bEWaT4XskVS6+L4=;
        b=dkLFfWfm1XP9AJ4myW3/MMQysFEi7tW47i3ElfsC9w/QWwarIsDxpbINGpie+1D1Xe
         q82oFXBFf+8I3wCWcn5bzFqeNUlU+G9EiZjrBuVqNJju0C1BQo4q/MfIKZtgeVPXenpY
         D/2HE3TA83Ucncq5eYAE5ynlJNFMUeosoBFfY4MdFB6yshZZx2RKmsj9usLmAjNoMG4f
         EACfg35TeHAbMEdHJ3lX2sh8DrnveSto4ddaePkI222wVXw61ZoQCr8vP9oydpVFeT2B
         BhEN7XCkV6ud96+1fx+FRKmnVXDJXEFJJaQDFOmoY3O2Jl2h7zlWLd+6vlphFg53P9u0
         7r0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198725; x=1709803525;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K93TGNrKb0GkgHOKTSz+x/4+8Z36bEWaT4XskVS6+L4=;
        b=sHYQRvyPAEpabwRmuQdr5PZo2WLO+xzbraAIe2H4YdKUs+91WC6NfggzG1xmcdsmNA
         eTQ0N4QfSwBdahD/FpHMlTVm9iGWWtQxxrMsDpXE24k4fAqRvIfO75UviuHruzVSE+YI
         NUAIjxqi5JJ9sWod72oOKAaLx7/jEtiKGMW6Inam3CkDUs8RA+0LhmaKOZXvwRNLcvtN
         s8nVFhbMA1Y3OUZ0PJ11VwbHgILD8yE+uNocUnvNbjE0OGz1lfRAe7sw2kwUFsJAuSFR
         jcw7wbn/ci2TLOhxmxAcKiWHKHSr/H9fWWlul1dNzB5Vg5H84LmfNqAlmCky8M6soDvt
         qM4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWT4eKy4mEstXJYBdJnlyhM/t7Z0EkzqxPw4ELS6VGdtArbHE+vCwP8LckHai4HEOR4ttpwO/KLzWQqGQCN7KTdxFDHZChCiMY+zQ==
X-Gm-Message-State: AOJu0Yx7fa6ReDmo2URjDnlCdgeMMpX3bUBQ/4K3jWbhmECCye+Twjm1
	+Xd0nvydgGnWx0YLioseT3nfTZdC9wyAk13sxx96bq0655sRK6V/BMNVeZPJLSmU2hnT3ALm0o+
	GnQkoCgLiVcagtZK+1mCvuXVqCl03+kiaPslgCQ==
X-Google-Smtp-Source: AGHT+IEm2eq7h4OqpB9ZsuKpVyUbJqGCJ4nnMCzBfRnKHAXqac/WmT+lH3KUOMad2Qwl2YwaWx4J9gXGrOYlqlEqOis=
X-Received: by 2002:a25:3387:0:b0:dc6:b812:8ab3 with SMTP id
 z129-20020a253387000000b00dc6b8128ab3mr1619363ybz.26.1709198724817; Thu, 29
 Feb 2024 01:25:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-8-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-8-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:25:14 +0100
Message-ID: <CACRpkdbi_DUACLTbYLc06y1qepjL8XtEvWgFsXbJwTeXTcMupQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/30] pinctrl: nomadik: fix build warning (-Wformat)
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Fix compiler warning found in the pinctrl-nomadik platform driver. GCC
> message is as such:
>
> drivers/pinctrl/nomadik/pinctrl-nomadik.c:855:21: warning:
> format =E2=80=98%u=E2=80=99 expects argument of type =E2=80=98unsigned in=
t=E2=80=99, but argument 5
> has type =E2=80=98size_t {aka const long unsigned int}=E2=80=99 [-Wformat=
=3D]
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

