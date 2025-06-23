Return-Path: <devicetree+bounces-188509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E34CEAE3E9E
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:54:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7DD271893FD7
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 11:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09A05242D9D;
	Mon, 23 Jun 2025 11:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TqhPuCML"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51146246BB8
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 11:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750679620; cv=none; b=rHemxAlpiB9NqbxGI2rJqwt+zDFH+sSIgChqA68tVeZ1zhB76E+ecuSB+D97N6KqVQRg6GmKcpcIKu8/gJ+KNLmWGhCJLNF6l053GhdaRP/0AbMyqhWzorO08SqpauX8eA7lALynQWV3+bFDOpxlPjoWeZ4F49hGErTitV0KPLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750679620; c=relaxed/simple;
	bh=RDI8cBCzVZwn53XlfucxBuC50lClvnDZ28m1ys46gaU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=shSR7tWst9R497pseT6ChchLOzKGXRCQ1qnK8C0Q9aHFIKPZ8GlApZKjPGCPbS7Ew03jXusg732/ANBGEIS8wbjH7L3vqKqn6nAHy9aEuY6Rc59whvWIishKhzvaCUOKjiXynnCMYJTacEc8Swi4AwBnsli/9v3lkGRql5CRH7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TqhPuCML; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e81f8679957so3245401276.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 04:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750679618; x=1751284418; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZaYyZl4DS0u6LRC5+ULPLhB5YslLRXaRQhUnx/sEOs=;
        b=TqhPuCMLGlWs9C41COiwUMSqTwb3R2dlCdU0LAKvismv63CX3NNoQXbHuTzwFf2iXH
         PS8MG6PsQ136QbW9NCtK2J077lA00SM0odAxMVV3HboA73SA9hlN/bN5l/5rblPmjF63
         4m1wUKXPjMMe2AZGM+GIiCW1Nu/ekW/QdYQekypghsm2UcZ6v20XD+/PO9d+KaMC+Z38
         5TyqH8BatqlR/N5YIYBR8l2vK4eCHJLyHjLUuX2GLKBzH2V/f4Aoj8L8PwN3TeUjt2Cd
         9qt4VEliSHBmV5vEdjls6JiHeg79+stsAvwr1LGntoJoZmycvM7H4SSvpf7WRrxwkMsS
         tZBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750679618; x=1751284418;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YZaYyZl4DS0u6LRC5+ULPLhB5YslLRXaRQhUnx/sEOs=;
        b=wpMnLBFlX+k6ljXVX+umdmZIhgbozopNiigSbrX25NikRtZBAFbOADaOy0xZomH08q
         FfIW6ZhbKQBSxJj4MixQvzy+d7NI8EabT8Axo956b+mB5NbRqaJ7FNfZyOm/3f/1QkXx
         AHajiRgsFs/26VHj+FYF9GgswYj97NoxS3aP7ZByPrIPoA5oMPyVhPJL9SN+QpPKMraX
         4wuSK7Un2oHeawuKSVwHL1FKPiMNHoIF4xJCn1r1XhecQAlQwl43zgRp1dYulNP5ATca
         gkEU3WdEa1y3IGREN3uOTzyzSJZfe+lxo9scXeXQWzw2hyCcKmABzqsrS78QKrV3G+dh
         588w==
X-Forwarded-Encrypted: i=1; AJvYcCXt1S7GBtduXEJ5OkiV/Y6QkVQnDXfONjjwVsYu+Z9F7AkhR2upqRBYjlZuAVMGDjj0otruopkINCl2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7kgHyFe3WiaNcILsKqoT6Zz+psD137tgfyG+T5ecFG1VPWyoJ
	Q0qrtVbq1MDttIvNr2keWGjv2nqFKqk4eMnVLVJAw4+HJ7fJmHZSeiDbNmhQGN0oNc3gSDRGN98
	xcbn/wfSUCtV3rXRHeL8LAdI5W2HBQbWx1nxsmfUvGuvKoGov+rqA
X-Gm-Gg: ASbGncuE1HEbaNs4Cpq6+viPc2/6ZB89EoxVuYqefFnIKJfheqAmJguqFDC3wprCQto
	8X13APVkTyP8iNhKO5UQahnxVR2IVIMg3JVM73ImNLI8XpcMjmwyDUtVCRi+9Tt8+7UaF29Bb/G
	GLV0Jjvl6IGu0MxuvSudJ93Yo/BASzcuu0xRAuekTbFWf3
X-Google-Smtp-Source: AGHT+IE8T8YQqjuX2RPIqOvp84NFBEnBd2nf0HMGfblzPzNNFCpE1rQMJhmR6YAjwyaBmt1T2phZME3iCUpiJakAinM=
X-Received: by 2002:a05:6902:230d:b0:e81:78f7:5532 with SMTP id
 3f1490d57ef6-e842bd1787emr15542569276.46.1750679618337; Mon, 23 Jun 2025
 04:53:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1750156323.git.benoit.monin@bootlin.com>
In-Reply-To: <cover.1750156323.git.benoit.monin@bootlin.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 23 Jun 2025 13:53:02 +0200
X-Gm-Features: AX0GCFvg50-pG60deTth1xrFtJ6E3jTjfDgX9C52hAY0wmcdIa--eh2NYl1Ihyo
Message-ID: <CAPDyKFqy54LpU2HxKX75HUKNcis06C5aMC8NUOW37ws0QiTOdg@mail.gmail.com>
Subject: Re: [PATCH 0/6] Add MMC support for Mobileye EyeQ5 and EyeQ6 SoCs
To: =?UTF-8?Q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Gregory CLEMENT <gregory.clement@bootlin.com>, =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Adrian Hunter <adrian.hunter@intel.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mips@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 17 Jun 2025 at 15:26, Beno=C3=AEt Monin <benoit.monin@bootlin.com> =
wrote:
>
> The MMC/SDHCI controller found in Mobileye EyeQ5 and EyeQ6 SoCs is
> based on Cadence cdns sd4hc IP. It supports up to HS400HS mode. The
> only peculiarity of the hardware is that it needs the preset value
> quirk to configure the clock properly at speed slower than HS200.
>
> This patchset adds a compatible device tree binding to cdns sdhci for
> mobileye then uses it in the sdhci-cadence driver.
>
> It also adds an emmc entry in the dtsi of each SoC and the config
> options in each defconfig to allow using an eMMC for the rootfs.
>
> Beno=C3=AEt Monin (6):
>   dt-bindings: mmc: cdns: add Mobileye EyeQ MMC/SDHCI controller
>   mmc: sdhci-cadence: add Mobileye eyeQ support
>   MIPS: mobileye: dts: eyeq6h: add the emmc controller
>   MIPS: eyeq6_defconfig: add cadence MMC/SDHCI driver
>   MIPS: mobileye: dts: eyeq5: add the emmc controller
>   MIPS: eyeq5_defconfig: add cadence MMC/SDHCI driver
>
>  .../devicetree/bindings/mmc/cdns,sdhci.yaml   |  1 +
>  arch/mips/boot/dts/mobileye/eyeq5.dtsi        | 22 +++++++++++++++++++
>  arch/mips/boot/dts/mobileye/eyeq6h.dtsi       | 22 +++++++++++++++++++
>  arch/mips/configs/eyeq5_defconfig             |  2 ++
>  arch/mips/configs/eyeq6_defconfig             |  2 ++
>  drivers/mmc/host/sdhci-cadence.c              | 11 ++++++++++
>  6 files changed, 60 insertions(+)
>

Patch1 and patch2 applied for next, thanks!

Kind regards
Uffe

