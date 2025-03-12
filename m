Return-Path: <devicetree+bounces-156862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EC52DA5DB72
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C284A7A8AD2
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5441324061F;
	Wed, 12 Mar 2025 11:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pyTFDcuO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8785C245031
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778728; cv=none; b=Z1uxR8Up9Us1IAFZqueYUiWFpCd0lz+5wxCUY3EtdVCfnkIx+1pzwukZ0lDUX6CToU/sOSvNNqvSYY1VEssrSV1tdFOUoI/FoCchkGk4rpzYanCZPjACfcAqhjelOK0CmMTuI3uURvcfi9W6u3I7CGfW1LykMErDqDSH7vVpFas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778728; c=relaxed/simple;
	bh=gpg13+5lcJ27cyd2qIUlam+OyNduSaoZ/y+wkwR2QLI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GGPIR/LNoYkzW6sRCU+YSX1UIg0YblVwzJ8hRkHbT+qe8jYxwGcOGxrCx37QaGft9DpuEYE8BNIQVnvlENVJEeN6iUuEFELsBGzmpqUw5DqomRixcM4VQQz3GtAzfBxlzg40p5f1vsaODBHn3FYFJ2b3E9TgSot3bhYUnY0sk20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pyTFDcuO; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6feab7c5f96so54049057b3.3
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778725; x=1742383525; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qX0rkI4yHqqhFecDGUI0HeTVPb45T3mxEAw1sgnVvzo=;
        b=pyTFDcuOjGqrGbCblaf6Zhu1QWvBt/EMx8KTwk469YNZ+zr8Jq66+x5kMvh5/rQJri
         HLqF2WVBwrvtMDzUqEZ24lvRLkBALLHSi0p9jFCXTfw/c3z+8e07iBFcYVLdSm5KA9aE
         /tmlBUC1b3nb/JRDlq1qovmQnv5JM1jx/8dc+txHK/bBQLICnPD8yCRsojmemSPDUGiq
         BcK8O52ORdqEUcqcBj/GKsjf440eluXf30WbgMovrRFWwp+0TaVjwxLsUVbwp21thw43
         AWGf6Xs/UH6NJbyPzqrJlf99NZtA1e6OKHtqqFyxS6+8y76MtXdp0jYUM2XtTnREScJD
         qVOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778725; x=1742383525;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qX0rkI4yHqqhFecDGUI0HeTVPb45T3mxEAw1sgnVvzo=;
        b=GRl0sKGeov9w3AUvHPr8oocyNi0K68WuwhOGBdVcWjaovkRt9HMzMr4t/S33IOO+4y
         EHm5LcwfB/tBHpGpUhhlbJDm9hLfJShLIHqds5g+62Ad6cWjNaQPmw/1Kf7TYl+BHwsq
         sapUZWLZcaDbrayJhf5nlBEgZ3o8ore4N9LkpAPRZcB8QcosW+j2AQ6lSIBB5AmbNkyC
         yPhHZknxhHrI5NQyM/cg8IaXckYkUTUAcC+6J+BHLm8EEy8uhJlGz/6EC239oMcOQeHz
         QEsjOK1rDWiIrwu4x4U8NWY74FbO43pjADd1Boi8EkowhRVKMcbgx+SXnsbOqjWXhQjH
         COkw==
X-Forwarded-Encrypted: i=1; AJvYcCVQUhPSAlHHh5h6PlmIpwiM6c1VNGX4/IX4Lz+sRCAyGZWwU+dBXwzP58O063y2W55oq9Zr1TcTpRN+@vger.kernel.org
X-Gm-Message-State: AOJu0YwROqNNRArK+LvRhGewWayei0/UUuoXtaRg7sx3rRGzrwIlsLDl
	0jEBUToO9HhN9C9sgpBbFUWzYgQunP7rR3jhRLmb7Xbxuu1LO1QTlYHRreMtG8UQsyq2C5IDmvz
	8Fn1FjYUW8fH6kc90cyrte6qXb3l+ap1nT9bJQw==
X-Gm-Gg: ASbGnctFeaYokw21TT80B1rifcMMxqufOQOU+T59TpSzZyTaE+zJ6gZqZCYWu4NFjCe
	qRSGNeaRZnRV6KMnht39bRDcmUeBkfqxrqPL+ZzSozooZn/oLIpebOXeifh+iqQJJLe9f0/RDEq
	VJ08gOK/nn3JDjC9jqhx9w+X8uUbE=
X-Google-Smtp-Source: AGHT+IGS32+wqYOKVKL+g25yiVlOhar5polgyd9O9jIAFQ6UlSG/aUYOwExxSV/oXR7UsFYYnIZhWGgQQRhWf+zVjMU=
X-Received: by 2002:a05:690c:700d:b0:6f9:97f7:a5c3 with SMTP id
 00721157ae682-6febf319c11mr300683207b3.18.1741778725134; Wed, 12 Mar 2025
 04:25:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250305092958.21865-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20250305092958.21865-1-biju.das.jz@bp.renesas.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:49 +0100
X-Gm-Features: AQ5f1JqiZN6BAY0C9sURqoDIHUzj-6UfGLeCT0-XEkkgIzTP6keEfXSAu2YKu7Y
Message-ID: <CAPDyKFrX5gD0HeRNggyhCZvdMQqLffhjMtkky2_2RdoVQvbyMQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] Add RZ/G3E SDHI support
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Biju Das <biju.das.au@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 5 Mar 2025 at 10:30, Biju Das <biju.das.jz@bp.renesas.com> wrote:
>
> The SD/MMC block on the RZ/G3E ("R9A09G047") SoC is similar to that
> of the RZ/V2H, but the SD0 channel has only dedicated pins, so we must
> use SD_STATUS register to control voltage and power enable (internal
> regulator).
>
> For SD1 and SD2 channel we can either use gpio regulator or internal
> regulator (using SD_STATUS register) for voltage switching.
>
> For SD0, fixed voltage(eMMC) uses fixed regulator and non-fixed voltage
> (SD) uses internal regulator.
>
> v5->v6:
>  * Added const for renesas_sdhi_vqmmc_regulator.
>  * Added Rb tag from Wolfram for driver changes.
> v4->v5:
>  * Collected tag from Wolfram Sang.
>  * Dropped redundant struct renesas_sdhi_vqmmc_regulator initialization.
>  * Added one space before '=' in the struct initializer.
> v3->v4:
>  * Dropped dts patches as it is deferred for queuing.
>  * Arranged variables of same types close to each other in probe() and
>    dropped patch#2.
>  * Added sd_ctrl_read32().
>  * Replaced sd_ctrl_read32_rep()->sd_ctrl_read32().
> v2->v3:
>  * Collected tags
>  * Renamed internal regulator labels vqmmc_sdhi{0..2}->sdhi{0..2}_vqmmc.
>  * Updated regulator phandles on SoM/Board dts.
>  * Dropped renaming the gpio regulator label vqmmc_sdhi1->vqmmc_sdhi1_gpio.
>  * Renamed node sd0emmc->sd0-emmc
>  * Renamed sd0-emmc-{ctrl,data,rst}->sd0-{ctrl,data,rst}
>  * Moved header file gpio.h from patch#6 to patch#8.
>  * Dropped overriding internal regulator name.
>  * Dropped #if guard in pinctrl node for SDHI0
>  * Renamed the label/node sdhi0_pins: sd0->sdhi0_usd_pins: sd0-usd.
> v1->v2:
>  * Collected tags.
>  * Documented internal regulator as optional property for both RZ/G3E and
>    RZ/V2H SoCs.
>  * Updated commit description for regulator used in SD0 fixed and
>    non-fixed voltage case in patch#3.
>  * As the node enabling of internal regulator is controlled through status,
>    added a check for device availability.
>  * Status of internal regulator is disabled in the SoC .dtsi. Override
>    the status in the board DTS when needed.
>  * Added support for enabling SDHI internal regulator in RZ/V2H
>  * Added missing header file gpio.h
>  * Used fixed regulator for eMMC on SD0 and dropped sd0-iovs pins for
>    eMMC.
>  * Sorted pinctrl nodes for sd2
>  * Enabled internal regulator for SD2.
>  * Added support for enabling SD on SDHI0
>  * Replaced the regulator usd_vdd_3p3v->reg_3p3v.
>  * Renamed the gpio-hog node sd1-pwr-en->sd1-pwr-en-hog.
>  * Sorted sd1 pin ctrl nodes.
>
> Biju Das (2):
>   dt-bindings: mmc: renesas,sdhi: Document RZ/G3E support
>   mmc: renesas_sdhi: Add support for RZ/G3E SoC
>
>  .../devicetree/bindings/mmc/renesas,sdhi.yaml |  16 +++
>  drivers/mmc/host/renesas_sdhi.h               |   1 +
>  drivers/mmc/host/renesas_sdhi_core.c          | 130 ++++++++++++++++++
>  drivers/mmc/host/tmio_mmc.h                   |  10 ++
>  4 files changed, 157 insertions(+)
>

Applied for next, thanks!

Kind regards
Uffe

