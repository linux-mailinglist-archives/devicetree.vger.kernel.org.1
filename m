Return-Path: <devicetree+bounces-11914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D347D6FCA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:53:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EA3D1C2080C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6710C28DAB;
	Wed, 25 Oct 2023 14:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="L2zx2ZDU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C89C8EA
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:53:23 +0000 (UTC)
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6543010E0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:52:13 -0700 (PDT)
Received: by mail-vs1-xe29.google.com with SMTP id ada2fe7eead31-4587f9051e3so2335616137.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1698245531; x=1698850331; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QLjdKZ5k0mXVbD8bW7euvhzE58el0xEiaStx/smEM9o=;
        b=L2zx2ZDUTUcNhjd/kQhBfl0X6zLoWnqtZftN5bvJLKV8MKaeH+LxAIiuNlaXBauLFe
         olCtDxbH+t09Olwjiuwif1Oxm6GktIiG4Rwm3z6Gr/OnLSQAOE2T2K8QWLk/Bql4yTZ1
         vEDW9Rc6LSkY2q7TqlAgLV5mvnni0yfndg8EZEkDGBsNVZAAm/67qXPnX4r21w9+r5s7
         AMmr/QdCizQRiu51ynVZB0L+RecCDYSjd9/5pxqfrL9+4yPhG1kpfnrszGLdga3CA/uM
         RDPeD+zQTRJxoaWGcdr2iodOWpIE65JKHQvoPhU5HCa6SIevFw7DlYjCirKVdqmJTHr/
         yuUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698245531; x=1698850331;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QLjdKZ5k0mXVbD8bW7euvhzE58el0xEiaStx/smEM9o=;
        b=GTPnFutcQyeOfrEQizyOXGfKFe2LC3fAv4innc6lJivofB3/d4scwr2D7AkJWfbq+c
         JIxOHyl5vX4zEywEexIr6qvSelyiA5d0oNZa5c36YfmP++ljv0moFK0jZJRNEadvFTtU
         FZjGb2GZupIAZgRVuBKgsUntHmR349w680rhnCcMKJPIxjdr6Vjs5WH2IS/bFGtsNAC3
         vPNWx/+c7bYI2FgWuZhiliVQZIx5AAUQNfH5I5l+NjSFIEmYjQbRqNLbUclA6jRiqatH
         Q3x8sj4LJ6mmqgfJWORdBNJf4QhayBzf9r5WiKpbcnzDiz14BYIY/1Sc6QjsdHPOqGDw
         rZlA==
X-Gm-Message-State: AOJu0YwGjdzWYXLdvfWZFCfHSdrZ5PDett5GLNCy+6qkmBaExY26OY8b
	+yQWDR5RGEL9N934PL7CLbAybohc0A1iUX/jm+sM0w==
X-Google-Smtp-Source: AGHT+IH9eZcIeh5TypMu2DrELpqy3iFXVc5K2Hl5mUVraJmb0uVk6Ut6VGVvmn/692Isw5J2GiM90b5hEhQWssWFL90=
X-Received: by 2002:a67:c295:0:b0:458:47e6:70e4 with SMTP id
 k21-20020a67c295000000b0045847e670e4mr15925625vsj.19.1698245531279; Wed, 25
 Oct 2023 07:52:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024171253.19976-1-zajec5@gmail.com> <20231024171253.19976-2-zajec5@gmail.com>
In-Reply-To: <20231024171253.19976-2-zajec5@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 25 Oct 2023 16:52:00 +0200
Message-ID: <CAMRc=Mdb7mjOLQSVVka4XTCuziB1DNj9kpgB=sE=fcJKvpk0_A@mail.gmail.com>
Subject: Re: [PATCH 6.7 fix 2/2] dt-bindings: eeprom: at24: allow NVMEM cells
 based on old syntax
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 7:13=E2=80=AFPM Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:
>
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> This binding supported NVMEM cells as subnodes and that syntax is used
> by few in-kenel DTS files. Modify binding to allow it.
>
> Reported-by: Rob Herring <robh@kernel.org>
> Fixes: c5330723d5a0 ("dt-bindings: nvmem: move deprecated cells binding t=
o its own file")
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
>  Documentation/devicetree/bindings/eeprom/at24.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documen=
tation/devicetree/bindings/eeprom/at24.yaml
> index 6385b05a1e62..b6864d0ee81e 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -12,6 +12,7 @@ maintainers:
>
>  allOf:
>    - $ref: /schemas/nvmem/nvmem.yaml
> +  - $ref: /schemas/nvmem/nvmem-deprecated-cells.yaml
>
>  select:
>    properties:
> --
> 2.35.3
>

Do you want it to go through the at24 and subsequently i2c tree?

Otherwise if someone else will pick it up:

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

