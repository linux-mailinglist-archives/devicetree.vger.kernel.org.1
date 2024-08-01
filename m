Return-Path: <devicetree+bounces-90271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 820889449EF
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 13:01:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B432B2890A
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 11:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F86187FE5;
	Thu,  1 Aug 2024 11:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UIPTLMv1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6729816DC03
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 11:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722510102; cv=none; b=NhdSOeuHx+IMu1IilF4PAWqzc7ia8PcEqMD71bfDtOUqfetPoRLTebxM0rr8sE8SIc7KBkSDEVIwEXURFjzwTMmB/ERQzSsUDNS2LReKFjZT8DOPUh77tbCJheSl43sBvsCtp6r2t8qStYZ2QBopxHptVZyneKgkhrzoG9byyII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722510102; c=relaxed/simple;
	bh=R05DKqS1w9uIVMFcvpKFDclE86k9lkrCoWmX9bfJe1Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OZo5ykUO0mtpGXMBEPyPjYMtgtquF+ZF9QN6qxnmrTpb5OwOTQBM0OCg7UorZKN17snErMpETHo6ns1wXpO5Wc+T9/vbuQtlxM2bnOhyWn6HDu5060i8yyPF3dKN1KGCQDkqoctzpPsOTHoQ3p4khd1IZ3aG73tbArOEWn56fkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UIPTLMv1; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e08a538bf7bso1575868276.1
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 04:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722510099; x=1723114899; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hvEVInb3XjDTInVG42ARV/26R6ebE2gUOo+RJ8/4wBc=;
        b=UIPTLMv13scF61MazmIeN3uyvRfzpFNDGGju0d60AEmK17qr3p+FZ8cSyN8+0/Ta6w
         fI4UwhdxfJCQNhPPPJQtescLMDR9j9TOPQv6H/SmoKQmuZm3JMaxUPSNiX8iJttEmIIq
         5ODOIePiPbxkEnoDknaA7awyC1J9z5Ri0P7e8RxAMnjZE0iUatwsEYr8J50nbAVzFZ2l
         DA7OK1xBJejpL04ovA11VxV4MvIQIixNKQGmAxG4gieH7+8MO8q7AkkWLf35zLiJKfdR
         PuNR5OUPKIOAj8pbDAEod0vWPe+q1MjXCuUi4Mr43uVMO3DeAB/db05QjIPJSAZdd2WJ
         oSRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722510099; x=1723114899;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hvEVInb3XjDTInVG42ARV/26R6ebE2gUOo+RJ8/4wBc=;
        b=po+dxUFYiJQQI26OJaX17mfpFcNyCgQt9FXj6eKdUSS3j8Eu7BYOWmkuj1vTefbnUM
         /wBwLuJ9ctYFZzf9R5bGtzCJtiJf2lNd1p8vYwPGiSxH1ZUqfGGi/K2LNSSTiyZK9dOc
         Yz+g/G6hZZWrJkfUOEqwTYh07W9u4ibtG7RsYx5ZxSQXUPiYHLXxtqY5kkzmvRqTI+Uz
         8TZHRUi2xJIUROM9DHlWu6qU9XuPdGsoihgv4hzfBTy7rG6+WbvteNwroMA3qMkn3dA9
         ktbTufxCLcIj40/FDH4MAfQvvluLKYMXtygsQS7DhNfGk+V6vnQkBXsSbwXUyUIyukul
         aBCA==
X-Forwarded-Encrypted: i=1; AJvYcCUfXK+UVH4ZRlcxghcmYsUmmBER8IXt+37t1vbzpxOzhcXVLddAFZHalN1NyjdMX3T1CNYjWEN+3X6gOFcPCuays9yU13+gdOyQlg==
X-Gm-Message-State: AOJu0Yze3Hdo3Oiga3k7foNxu47oqBvgApxo+yMS96l3WNBIiejhJ1Cz
	EOGRqswOgugfvzZQHPxMttulDhf7kiqxjyStMjQA96eX6fmlTlaXaJYaY0SKqRIPnMFLT2ZB3LO
	bZgjGHgiXp1RS2KLSdhT6UN8Dsw/0oIrM3HRfmQ==
X-Google-Smtp-Source: AGHT+IEMWWDuLSCLxVuVMb2OSeIqnvFCckIeIsKnFAFjoQOPspTTLeiCkBU/fF7EcmInj8+0rp1IhGoCa55ZCvPHsDo=
X-Received: by 2002:a25:90f:0:b0:e0b:bc8f:293 with SMTP id 3f1490d57ef6-e0bd5420f5bmr615793276.0.1722510099291;
 Thu, 01 Aug 2024 04:01:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240716004527.20378-1-shanchun1218@gmail.com>
In-Reply-To: <20240716004527.20378-1-shanchun1218@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 1 Aug 2024 13:01:03 +0200
Message-ID: <CAPDyKFreG39wJ85Mz=9MnkG-u=hDFCppsgfmv_mzpPbT3rxpmw@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Add support for Nuvoton MA35D1 SDHCI
To: Shan-Chun Hung <shanchun1218@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	adrian.hunter@intel.com, p.zabel@pengutronix.de, pbrobinson@gmail.com, 
	serghox@gmail.com, mcgrof@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	forbidden405@outlook.com, tmaimon77@gmail.com, andy.shevchenko@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ychuang3@nuvoton.com, schung@nuvoton.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Jul 2024 at 02:45, Shan-Chun Hung <shanchun1218@gmail.com> wrote:
>
> This patch adds the SDHCI driver and DT binding documentation
> for the Nuvoton MA35D1 platform.
>
> This MA35D1 SDHCI driver has been tested on the MA35D1 SOM board with
> Linux 6.10
>
> v5:
>   - Update to nuvoton,ma35d1-sdhci.yaml
>     - Fixing the same orders as in the list of properties.
>   - Update ma35d1 sdhci driver
>     - Fixing the error path syntax to err = dev_err_probe().
>
> v4:
>   - Update to nuvoton,ma35d1-sdhci.yaml
>     - Fixing overlooked issues.
>
> v3:
>   - Update ma35d1 sdhci driver
>     - Fixing "Alignment" and "spaces preferred around".
>     - Fixing style for multi-line comments.
>     - Fixing double call to sdhci_pltfm_free().
>
> v2:
>   - Update to nuvoton,ma35d1-sdhci.yaml
>     - Remove some redundant descriptions.
>     - Replace 'minitem' with 'maxitem' in the clock settings.
>     - Make corrections to nuvoton,sys description.
>     - Add sdhci-common.yaml.
>     - Remove '|' except where necessary to be preserved.
>     - Keeping one example is sufficient.
>     - Add regulators in the example.
>   - Update ma35d1 sdhci driver
>     - Refer to 'include what you use' to modify included header files.
>     - Replace the number 8 with sizeof(u8), and similarly for others.
>     - Use "dev" instead of "&pdev->dev".
>     - Use the min() macro to improve the code.
>     - Use dev_err_probe() instead of dev_err().
>     - Implement an error reset check mechanism.
>     - Add devm_add_action_or_reset() to help with sdhci_pltfm_free().
>     - Use devm_reset_control_get_exclusive() instead of devm_reset_control_get().
>
> Shan-Chun Hung (2):
>   dt-bindings: mmc: nuvoton,ma35d1-sdhci: Document MA35D1 SDHCI
>     controller
>   mmc: sdhci-of-ma35d1: Add Nuvoton MA35D1 SDHCI driver
>
>  .../bindings/mmc/nuvoton,ma35d1-sdhci.yaml    |  87 +++++
>  drivers/mmc/host/Kconfig                      |  12 +
>  drivers/mmc/host/Makefile                     |   1 +
>  drivers/mmc/host/sdhci-of-ma35d1.c            | 314 ++++++++++++++++++
>  4 files changed, 414 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/nuvoton,ma35d1-sdhci.yaml
>  create mode 100644 drivers/mmc/host/sdhci-of-ma35d1.c
>
> --
> 2.25.1

Applied for next, thanks!

Kind regards
Uffe

