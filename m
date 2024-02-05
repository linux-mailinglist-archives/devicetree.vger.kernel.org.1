Return-Path: <devicetree+bounces-38507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD7D84956A
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 09:30:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D457B22A2A
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 08:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 264DDF507;
	Mon,  5 Feb 2024 08:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="f6j+pZbl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DBCD11CAD
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 08:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707121821; cv=none; b=Otsh/o7JPteYgcDIf/WNy8ZcWHSoVsTbtycux8EddJ7TO5B84FGl40qZ1vBBB/kTDBXTp0NCvlUSuSiVJU+EBCLGasFtUTHO/izH2vsP64XYQUPTrVSBQ7G8JeUxb9Q0UAXZrU1H4NhoxGCLLHDOpfpx1EpMLzdgKWS34+wreiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707121821; c=relaxed/simple;
	bh=nlIMxqjJPSzuxtueVeijM4g7c6JXyj/R/N8/LJ/xQio=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UCtiZzjEGGmNcg/X+AbtnwpYbcnPnjWBGEaxnMAZOtp2ymjLlkw+GwJQtLnlCuGzJ04tcG8/GEq18I9ySINzRz8LLx6OuSLwVLYVye5KDVptRE1G+j2QYJ6dMFPZ7qTK5pkGRZ1T+FhK+paKhonx8VLDB16nPB6q1bMcBtIpGzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=f6j+pZbl; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-7d5bbbe592dso2100505241.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 00:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1707121818; x=1707726618; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNCUJBIaTHFkHjFjWMjXIHtC7NKJHWwr9gHKOI9UqWA=;
        b=f6j+pZblpL57ylpLIYExLLWQq0HBBrWQxXMkceR2/Mvuh3nns7bX/gTevUPg+MQ2uN
         xcusP9D5fZtZ6saZc3cWmVKc/R5m8L01lYH4V/1XZVhkyRWJrMQE4URkD7ux+ZAPwFqh
         xKncEB5v2mEEdiNME1tZUVaZMberVmWnt/7lsVZS14mTgv4BFZcdwo/wELQ8/1cqj6I3
         vYfxYPRQBCGBjSGln+pbmBRvwEgPdMNisD7CfXYpOfdLb69Unq5vh+IBeMOHEHGMEYYR
         LE3svIGTvz2TJjQkJLh0YHOOVIF2bqOVqGpOYULUDbomJBB8G2omWIkdRRo8yD6Xko2p
         J4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707121818; x=1707726618;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wNCUJBIaTHFkHjFjWMjXIHtC7NKJHWwr9gHKOI9UqWA=;
        b=RklganxR14RhAIpxTZmGjYpjT65KHu0edxnxs9j/n+N3ETfUqfK5vb+9urJvoYYl6R
         FCFtTNaURknuZELLpX/I793VvM1M6S1S7TKP9OtrqEnXWv4VTNSYOhp4kuG0IsbjXUdS
         01uKWaSl/IsvDSoE2BMaLgXWf+jO3YZUSI2h2INQcgKBgY1wXebZtxJ0fkz9OnuLFlJH
         7rw1p+gefL1JSa9xkpOCLTvlVYrcxUYBqUeUfvZevmnABeur3B3EMhGGSAjXjCHpUSD6
         CbgRJQCBCqO1JWJDIoTq7h1GxbN0NdrVbXnPVclw5gS2rRcwXat0G9Iu2O1GT1ueb5so
         KWxg==
X-Gm-Message-State: AOJu0YyyVkSDpx5kU/bA5QWui2bSK+kZ25toQakN1zsd9uMQJ/MZFopR
	r9yqnhCJHAvFrnjsuPAbodhAGfWQIRXw6sRyMFwnMgwK1Vi89FlpGxeIOKyDBQQpH2F1ghulZ80
	FVnmACYo54MkVyMRsYT4WZ5bLgeEXCCcMVqJL4g==
X-Google-Smtp-Source: AGHT+IGHJM13AnHqcxTdJ7seBTXZ1xKUz8/lRLWAbrplrgbQQv3QnDgC2qllQbRvzT9A/qvGNwDI4f6ANUPuAbNLE7A=
X-Received: by 2002:a05:6102:21c1:b0:46d:237c:4d6c with SMTP id
 r1-20020a05610221c100b0046d237c4d6cmr2355500vsg.1.1707121818496; Mon, 05 Feb
 2024 00:30:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <a8396308c995959349fd40e61199853a9b711ece.1706783050.git.michal.simek@amd.com>
In-Reply-To: <a8396308c995959349fd40e61199853a9b711ece.1706783050.git.michal.simek@amd.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 5 Feb 2024 09:30:07 +0100
Message-ID: <CAMRc=MdkFpvkpsrc6k5GgH4kk3V+bNX3_G4z+pRdPWSm9QH-Ew@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: gpio-pca9570: Add label property
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com, 
	git@xilinx.com, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Sungbo Eo <mans0n@gorani.run>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 1, 2024 at 11:24=E2=80=AFAM Michal Simek <michal.simek@amd.com>=
 wrote:
>
> Add a label property to allow a custom name to be used for identifying
> a device on the board. This is useful when multiple devices are present o=
n
> the same board. Similar change was done by commit ffae65fb1ae4
> ("dt-bindings: spi: spi-cadence: Add label property") or by commit
> a53faa6bfa3b ("dt-bindings: hwmon: ina2xx: Add label property").
>
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> ---
>
>  Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml b/D=
ocumentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> index 452f8972a965..6f73961001b7 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
> @@ -28,6 +28,9 @@ properties:
>      minItems: 4
>      maxItems: 8
>
> +  label:
> +    description: A descriptive name for this device.
> +
>  required:
>    - compatible
>    - reg
> --
> 2.36.1
>

Applied, thanks!

Bart

