Return-Path: <devicetree+bounces-8071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A897C69A3
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:28:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C43931C20C2D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C82A82134E;
	Thu, 12 Oct 2023 09:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="11HgZ/vS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D610E21340
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 09:28:38 +0000 (UTC)
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55991D6
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 02:28:36 -0700 (PDT)
Received: by mail-vs1-xe29.google.com with SMTP id ada2fe7eead31-4547428694dso337437137.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 02:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1697102915; x=1697707715; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPoEb3ZWhKptqBufHgqJF6DwlTaRME6oIYkV5Ei+Oto=;
        b=11HgZ/vSn3OFJ+gB0kFG+q9zH1gtVj4mqZxP/BB0Hwqv2c8ldZDUnakj6Sqy5IyyKn
         txGukZc3qi9yBx15OEZ0w4aGbAJAtJiNtoa3oKu7xYR1Dnwck8tbMOEeJLWV7BBnGnur
         yAzsoa/RRx7TRhhfbp5uYeACLuy7g4QqdRVyQcWsCKxc2B7SO2oh0w2yhoSb0SaqzWiJ
         TKDdxC6aCg6SYIBcCxl1cbXrqVOLfSifLHd+u10+9bHNOWeCeqgrnINjFeLJeVeCv9WT
         gmU6/tq/ocwzPADvdPJbgyXcVcQ34bHtDYtC9c/X18+w5a24h1ILBLQJxEcEHSk4G/WP
         KYjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697102915; x=1697707715;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mPoEb3ZWhKptqBufHgqJF6DwlTaRME6oIYkV5Ei+Oto=;
        b=Mmlcf/ysf2ZcwTzW600jsJM2o/EmbADo1+xnSTZDHf3dLJA/CcQxC0MR9FMa+kZvuE
         ACvxC7+OboWtYgYxC5P4DhEWmF4M+yif564UQL3Y0dkpg4LWr0VBxViRrnIwvHy3vm0D
         nJLTVA5QTJy5aeqdeBxl0OeTOOAhTmKlbHadHGdHiJHZQ0ePTZKqe9Vrrd0YJ3S/5LNn
         TqyZuj8av/Orubw7nDYcBxRzSA6QD8o9C6tTEPk8bsTqSI6bangaeACTOdF1Evz2LOat
         FURitcMox9mKjYOWtS2CwyEcCaSwU1PNqM3/aZUK/jHMo0wNghbg0A/GxrnWn/uQwi7a
         pGLQ==
X-Gm-Message-State: AOJu0YyWcQSPMg4n43ceX8QTyLGL+NnWm5e1nRujMN2ajrAwJWxwDoxz
	d5V0isRD545E70pcUafFYPzUktZOWXtUMi4zH/9c3hyJL7dQ3mHD
X-Google-Smtp-Source: AGHT+IFcfMbHsu+GNN/6kKQ3OpoIaoqld103wObO/o8fbf0/XgqpcvtczhpKxTYGlq9F5Amvzn2zKUPhUZNSBgzGq5Q=
X-Received: by 2002:a67:f64e:0:b0:44d:4a41:893f with SMTP id
 u14-20020a67f64e000000b0044d4a41893fmr24222343vso.9.1697102915394; Thu, 12
 Oct 2023 02:28:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010190926.57674-1-marex@denx.de>
In-Reply-To: <20231010190926.57674-1-marex@denx.de>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 12 Oct 2023 11:28:24 +0200
Message-ID: <CAMRc=Mc3q4bc60UTru2h5+Mz7qPSs4=wTvu7=sjphL6ArFg11w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24C32-D Additional Write
 lockable page
To: Marek Vasut <marex@denx.de>
Cc: linux-i2c@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 10, 2023 at 9:09=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> The ST M24C32-D behaves as a regular M24C32, except for the -D variant
> which uses up another I2C address for Additional Write lockable page.
> This page is 32 Bytes long and can contain additional data. Document
> compatible string for it, so users can describe that page in DT. Note
> that users still have to describe the main M24C32 area separately as
> that is on separate I2C address from this page.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-i2c@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/eeprom/at24.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documen=
tation/devicetree/bindings/eeprom/at24.yaml
> index 98139489d4b5c..7be127e9b2507 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -67,6 +67,8 @@ properties:
>                    pattern: cs16$
>                - items:
>                    pattern: c32$
> +              - items:
> +                  pattern: c32d-wl$
>                - items:
>                    pattern: cs32$
>                - items:
> --
> 2.40.1
>

Applied, thanks!

Bart

