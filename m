Return-Path: <devicetree+bounces-43852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3111A85BAE1
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 12:47:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 641EF1C24257
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 11:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 615C367A07;
	Tue, 20 Feb 2024 11:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="RXRUoodM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413C867735
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 11:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708429633; cv=none; b=O1vAsP6PEPD4Z6q2uLgqvWEQlnksPdm2vvrAo9byVwEjuOsITWhGvPPllqMSyQL/IrZzvKFJ7+7MVuOUxHKexcR0ACFFdLgbMWYCIWJDLFx4ea745ER16+2zNjUSq97BKeaYKRj/7zfTHFfZioQ3fcMn1+/v7DQ1H8yheRM1Fbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708429633; c=relaxed/simple;
	bh=sfltWzyTzAdCakZmDcZEIFogRIcduk+6sj+HuSfY4kg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dem1VROtTGj/Bulxo1pg2qbaL3wuVmSFES6G0FKhfPhUDidFQgVXaJZQoHKvMXEKxrfwgFn1RofqUerGv56Vk8ynajnIbgdJIrdLT/Hk2+olWwdDDNpzR1EZiSekT5c6XJqKRwqK/ZMa3FFhjPovfhXL6HBNRbqVHWM81ewpZDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=RXRUoodM; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-4cf641a0b0cso161533e0c.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 03:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708429630; x=1709034430; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B6RqJSPI71QVegWMkFBgsdGc3en2Z5VC7xej49dSawM=;
        b=RXRUoodMky/46TA3ifI9m4cdmmubkLMUjbVt2j1BjP3NydDmcwDriYWaAQO0/xJxaE
         eipxOt/F4vWi6S73gHgoZJ0cfvp6A+YIVF75POt8gIGNWmny64YWVeVtkDaT1Z+5cqOn
         OcJATRpmXHneqTp9ddVzHjYXaAEHlxup8teven9V6hntjFo5XNRLItF4nvVD01sMg+Br
         kapR9HptbOe6EY6jzMv07MZPvDhje50RO2zmENwocN8JXH9OCLsPbBt0hoEeaIvDav70
         rxLSsDfdlWG0SAHFZ5rgX04391zqsBRgtkPmhHNoqE3s7HJ0BcubGGd8+jBgyhrUuU9m
         1dsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708429630; x=1709034430;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B6RqJSPI71QVegWMkFBgsdGc3en2Z5VC7xej49dSawM=;
        b=LNUaTcMbAMacnsfiASy4QdyBZiArGJzU9NhdrXHmlMyHdEUZh07j4kUxbzMdtZgaQx
         /tkMBgZa8E/RQAj8U2FqvV141vxG0HS6EsX59xRQJBx36onnWYoXC6ErvgQfTX3nUsSZ
         KHxRwl0JpwvZy+fvILleyqoJrv05PBsUtcPB361uTi+0WIRNjyd5HCtq3X5PH6ws2Aky
         Yh9FfQwjQuDGa3NBVF/gk+PecBwA3cRFlrG5mTIAn/qOAA2NW1cpieuurBiAI8/DsBUk
         QLzCevB0SdLUQM5sew/mhjOip1o0PrgijHVJLHoQD4hdxMItXKBHxD+X8Zhg6MoNGOsw
         lDyw==
X-Forwarded-Encrypted: i=1; AJvYcCWqlAMOP3ByvQV8vLuRizN8hEOb4rA9EVNJvx1nbGnuI97K0fmI9ixm3BHrftuh3FZV3r/pHhuAJoK2zyb/FKA+YB4Bol3PYT4JXA==
X-Gm-Message-State: AOJu0YxlwcD/OYOVmFfdTzJ8MRcRIVBLYNtSvCeF0smGyME3AzZBtaX/
	Zqgu9YDEJdJ3SIr9KIXo10+aGSwVbhVRjDMHah4kRpH2nzo0455J1w+0+B9EKjrVNK4+MTQXGWe
	/AbFXMRFliOMgBCnKorvu5MG2ZhUr/PDZHTXx9Q==
X-Google-Smtp-Source: AGHT+IGyaajNwux1BxoocFGntAKIhbXCIQZpJVCgvuYjClY4ijqOqxgST9Zp7zbc8nri052IfntLGRfd+b6JFHGT8Iw=
X-Received: by 2002:a1f:eb02:0:b0:4c7:b048:bb9c with SMTP id
 j2-20020a1feb02000000b004c7b048bb9cmr4873813vkh.15.1708429630233; Tue, 20 Feb
 2024 03:47:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240219202325.4095816-1-swboyd@chromium.org> <20240219202325.4095816-2-swboyd@chromium.org>
In-Reply-To: <20240219202325.4095816-2-swboyd@chromium.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 20 Feb 2024 12:46:59 +0100
Message-ID: <CAMRc=Mft4R83NSknze0BMMvJd7Yz3yNGqaBSRVBePgh_S3QU1g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: cros-ec: Add properties for GPIO controller
To: Stephen Boyd <swboyd@chromium.org>
Cc: Lee Jones <lee@kernel.org>, linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
	devicetree@vger.kernel.org, chrome-platform@lists.linux.dev, 
	Douglas Anderson <dianders@chromium.org>, Pin-yen Lin <treapking@chromium.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 19, 2024 at 9:23=E2=80=AFPM Stephen Boyd <swboyd@chromium.org> =
wrote:
>
> The ChromeOS embedded controller (EC) supports setting the state of
> GPIOs when the system is unlocked, and getting the state of GPIOs in all
> cases. The GPIOs are on the EC itself, so the EC acts similar to a GPIO
> expander. Add the #gpio-cells and gpio-controller properties to the
> cros-ec binding so that other devices described in DT can get the GPIOs
> on the EC.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Lee Jones <lee@kernel.org>
> Cc: Benson Leung <bleung@chromium.org>
> Cc: Guenter Roeck <groeck@chromium.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: <chrome-platform@lists.linux.dev>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/=
Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index e1ca4f297c6d..aac8819bd00b 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -93,6 +93,11 @@ properties:
>    '#size-cells':
>      const: 0
>
> +  '#gpio-cells':
> +    const: 2
> +
> +  gpio-controller: true
> +
>    typec:
>      $ref: /schemas/chrome/google,cros-ec-typec.yaml#
>
> @@ -275,6 +280,8 @@ examples:
>              interrupts =3D <99 0>;
>              interrupt-parent =3D <&gpio7>;
>              spi-max-frequency =3D <5000000>;
> +            #gpio-cells =3D <2>;
> +            gpio-controller;
>
>              proximity {
>                  compatible =3D "google,cros-ec-mkbp-proximity";
> --
> https://chromeos.dev
>

Applied, thanks!

Bart

