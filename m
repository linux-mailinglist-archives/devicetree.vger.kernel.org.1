Return-Path: <devicetree+bounces-47138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA9E86C4BE
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:17:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 841F81F21B20
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 864345822C;
	Thu, 29 Feb 2024 09:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wIQcQEDn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A095813E
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198243; cv=none; b=GPh/eoA+MTo2kuwnYMzJDmT2JcPYSsvRSoJ8fZXYCe1YxfZ8BP1oHNSQgq+PvSV0ADhDRZ/B3HLrye46fSFsGxt1ZMjcwNPqUVyWXRVGwsGijRzJbSnis2N9dPxhbqnEfbgYuYIGZZTYSGEFw4SFb2H7WxWw0nISbl9Kr7iOpsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198243; c=relaxed/simple;
	bh=pyMOm65mkTq4KPjGu5e8RURncimpVYdKFWYO5eLhNgw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B6E+8L+Iq/qs+rKleL5mMJqvKAQmlUipL3P9+VWx1DlvvVFR2PkLuPHPQD11XFWWS3trea45nwGdW0rNK8n+gEu+JucIB4Nk2UtwSgYKPRXq23rGJAkRuqLFS1T3Ke/dxgwllcSrLB2IwkmSTbobQBHZCWsN+RTcfAcjLSZaa0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wIQcQEDn; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso564234276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198241; x=1709803041; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pyMOm65mkTq4KPjGu5e8RURncimpVYdKFWYO5eLhNgw=;
        b=wIQcQEDnaQmtXyOq/SWlcunU2bk2yuQru4KZawdmWXH96/3SUYIyU8+GDtzBZsP/1I
         hjkR9xuYNZc0kHSuCy14nVy7hMjL6nEXQ/qyGQHAYpt+YifkLhHeuQEjgG7Ksz3+FKKf
         /KXHC+8Z6dvfr3ZLt17ok5psG/ztG0PNr8YgvACDkQplVM4pw48tLLba+ckwDgsLHArU
         y1nqzMSCmbb6erIqzK0e9rbgCIwED7Ujz0uflRJdMsIVDHY3T6QAWVUkFPTlYuUXc04t
         2lgYZWKdj2cc2IP3HUF93l57RXATGtkKVXNo15UKmwVjps9EkMol9eRkxBd68PzUk8Tz
         pRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198241; x=1709803041;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pyMOm65mkTq4KPjGu5e8RURncimpVYdKFWYO5eLhNgw=;
        b=A6mrT58XCG2ApK89VUgyXl38P+cRmiVQKpNAl1ZBkyStnkajJMF2gHVHiE6b/eNaIs
         DX1doBo4sIDIwMf3ZSSZPRV+geWdI0Q0v1YjpYgLPwPDWsgJcAgQr3/TL9WLuv4gBw/1
         FoE8cyD20tbjUc5Nh1mb/jOUBfjVQAVW2EV1aPIxbjdzOMSelZLB4qWCykkM4vhCxPA0
         noMOe0g140N2UTfQTclDjvnD9VXtndzTfyg28ScVpbpx0/8I+5MlCUM4mIl9H9RRqBM9
         EJh7bNgBIbZ473VtJEUzlC1OZTnqFcv4R6U0ds7AJ4Uw+q4WQLHdqEC7P7bcI0whDd4y
         ozwA==
X-Forwarded-Encrypted: i=1; AJvYcCX87hdqihSPvZunVZRBJZbVWKOnp7R5pMIlGoaO38OQYr24BI+tUYlB4VBEmrzTKYzHZXfy1Ntd66vTwTdUFMUIs0b+g6KjIvkN+w==
X-Gm-Message-State: AOJu0Yy7hcJUNBKbaskKpdYwqYr6ufYounrb+RO3T+MtUDmy3MlacGqw
	nmiXFbXsQfkzSfNjWIbvSty0kTcjg6ko3R52Am74agcMPQsXq8JgyoWNBbiyXQ4fcIiC7F46hbS
	LrwQI1ijBr9FGVeeH0MdH7kUYC4AtHhIJ4Q2OTA==
X-Google-Smtp-Source: AGHT+IEGuc1J77jqIh5A2j3VQGDX6nzcAs4cFbpidh2ExxatqFvQBOOAMN9rR631yhTD85gXsSS2YzVQ6uvvblXyxJM=
X-Received: by 2002:a25:b309:0:b0:dbe:d2ec:e31 with SMTP id
 l9-20020a25b309000000b00dbed2ec0e31mr917083ybj.27.1709198241022; Thu, 29 Feb
 2024 01:17:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-2-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-2-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:17:10 +0100
Message-ID: <CACRpkdb_U_vLypuZFVDwCqSp3EwK0DCR0cOi_MJ=TUwCCQOF8A@mail.gmail.com>
Subject: Re: [PATCH v2 02/30] dt-bindings: gpio: nomadik: add optional ngpios property
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> This GPIO controller can support a lesser number of GPIOs than 32.
> Express that in devicetree using an optional, generic property.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij

