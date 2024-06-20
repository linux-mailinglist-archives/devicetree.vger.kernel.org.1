Return-Path: <devicetree+bounces-77989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 46385910988
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 17:15:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDD22B22901
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 15:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A1171B142A;
	Thu, 20 Jun 2024 15:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wu3boQu6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE7B1B0137
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 15:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718896509; cv=none; b=T0T5kSgWD5whRo5QdJ7gA78I0QFVFUsiORkL8TPQS8i5E7SWN9gcP9ctJgr97M5nezgipdG5R4NrTtmomySErC8wqX11tjhZx5mG27BHGjFeiPpMQQBnuMll9byNo0XdTNUkf4aelhN/I0Zu72YBGVlD8vNfn/gPTulFTzGFiPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718896509; c=relaxed/simple;
	bh=omKEA7183JIq4+qk4ktnB4723ZppBGp3RLv0v4fpWqI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n6FNdCv2QY+KXmVFMgaT2neY0IucEjOVYNbjtB449UV1yqE081yy7ofSw6ySRad5RX3MhOrOSiOI6er7YHwwDok/1qWbNzvh509WI3bbWju6cPXku+qPEnD8liFY8xNWCYWRu4YVOdmsQByF6w62xgd1Q9j2b1fupPSdXQfjdnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wu3boQu6; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-630daaec9c7so9476257b3.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 08:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718896505; x=1719501305; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B2n5KrLTZBvGu9gEb8O17y0tpUk8+ZpfDeRqP/uAfjQ=;
        b=wu3boQu68VI/klJgMzTutnkMF3/Qlh/iDrvPLlz3D/8gFSaFE3oTwzvrGYZQD6j4IT
         0ID06L98iNMODNoFbt1z+zV3dQUQ1DQiRvXRm2FhWEd/0l54Js8ZRNG1Q9RIoIr0ftdV
         IcoS5byFW0++Fl6T7kQyoDSzUJrnBorhTDwZuV/di53w9MWuUqpPQuOxmh9AACNuP9bz
         K/RWPFFGD5WsXWkWX9FD1kmj/v7RLVhN7Ba6vGbPS5PGdMWYLsRLNRNQQAntspWkzIMt
         KXMk49Ts0w8QvoMoqII7qghGOm8VJWd6DX3LETn8qnf1NNKLPRnDlrlSoYlaZmyXZfJg
         cb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718896505; x=1719501305;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B2n5KrLTZBvGu9gEb8O17y0tpUk8+ZpfDeRqP/uAfjQ=;
        b=Lgewmw9MAgFwKNpm8wvl0ce+W+OKMZaEHAJ51aulDD/kR/jeBVqOFxM66UL6b78WrD
         ue2TyIQirBONhoc26/2BzKmu6GAI5ik7DFcYMDYsFrci0O1Rucbvz0WfR9UgmRmIsvdZ
         7VvW5CVthjEu5FQwJYOFJAt6nHleE/ud2ul8vnNgKr66SLRjN1kKkqJJQ+MWDvDWbx9r
         g5JQWt4U2UmO3z67hhdz/yBleKIqgIzc4vB+v/Mbm5UStUn3vBy/KQ94E+K2TvJ6WXo9
         Qdkp8jii+V2i7Tvq9NluvI8CyETPzDXSL2fd0KwCOXKnlF8XKVcOMvKTLsuce1VS8GA8
         JQaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXivl/xUDEXsdzhTexHBu3KHWRBdNA5/ogsAhQEQrKz9Sziq6MAbc6BHb2KLQlxPo+zeps5AahZs5xGksU4HhT+TLM2TL0Vh5y6jA==
X-Gm-Message-State: AOJu0Ywskv/ta7482It3+WZ8GIPfYzb4TjyDN0JTi3AHYujvLQG1peBS
	GesWtHl5BCIXhL6WFeKEk01LjmTd2g/cRAHB6e6gC+AR/S2/qmGnFnirJKxeVJ1SIQvMRWUxAH0
	upEfcAu225yr3l4zIG8rJbE0I/Udeq5k0FTK7bL/lB9xwx48Q
X-Google-Smtp-Source: AGHT+IEgsR6Axacelg4a84hDNwZ/HxzbPZz6nBbHwPbmaUBauO4zOvR4vycjA+yQ+ptsu9Vsx+lvyO9aNTZ86xfQU+o=
X-Received: by 2002:a25:840c:0:b0:e02:b68d:b432 with SMTP id
 3f1490d57ef6-e02be17563cmr6316451276.37.1718896505132; Thu, 20 Jun 2024
 08:15:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240613-ls_waring_esdhc-v5-0-36644e2fe21c@nxp.com>
In-Reply-To: <20240613-ls_waring_esdhc-v5-0-36644e2fe21c@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 20 Jun 2024 17:14:28 +0200
Message-ID: <CAPDyKFrfQQu7GE2pHPHspKw3hkqf219kWCU2KwKMtTKQmKRbtA@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] arm64: dts: convert fsl,esdhc.txt to yaml and fix
 layerscape dts warning
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 13 Jun 2024 at 16:32, Frank Li <Frank.Li@nxp.com> wrote:
>
> Start from v4 because fsl.esdhc.txt to yaml already sent out as v3.
>
> Now only "bit-endian" proptery warning left.
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Changes in v5:
> - squash dts patches to one patch and fix typo.
> - move spi-slot-mmc to first patch.
> - add Krzysztof Kozlowski review tag for fsl,eshc patch
> - Link to v4: https://lore.kernel.org/r/20240611-ls_waring_esdhc-v4-0-d0d8a5b3f3cb@nxp.com
>
> Change from v3 to v4
> - Add dts warning fixes
> - Add mmc-spi-slot's voltage range fix, (not sure why it apply to
> layserscape's dts file.
> - clock-frequency is not required property
> - add dma-conherence: true in binding doc
>
> ---
> Frank Li (3):
>       dt-bindings: mmc: mmc-spi-slot: Change voltage-ranges to uint32-matrix
>       dt-bindings: mmc: Convert fsl-esdhc.txt to yaml
>       arm64: dts: layerscape: Change node name from 'esdhc' to 'mmc'
>
>  .../devicetree/bindings/mmc/fsl,esdhc.yaml         | 105 +++++++++++++++++++++
>  .../devicetree/bindings/mmc/fsl-esdhc.txt          |  52 ----------
>  .../devicetree/bindings/mmc/mmc-spi-slot.yaml      |  16 ++--
>  arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi     |   4 +-
>  arch/arm64/boot/dts/freescale/fsl-ls1043a.dtsi     |   2 +-
>  arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi     |   2 +-
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi     |   2 +-
>  arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi     |   2 +-
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |   8 +-
>  9 files changed, 124 insertions(+), 69 deletions(-)
> ---
> base-commit: d35b2284e966c0bef3e2182a5c5ea02177dd32e4
> change-id: 20240610-ls_waring_esdhc-93136a5dd794
>
> Best regards,
> ---
> Frank Li <Frank.Li@nxp.com>

Patch 1 and patch 2, applied for next, thanks!

Kind regards
Uffe

