Return-Path: <devicetree+bounces-7601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2BF7C4D30
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:32:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF37B1C20CF5
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A98DA6AD9;
	Wed, 11 Oct 2023 08:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=jms.id.au header.i=@jms.id.au header.b="OC949d7v"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFDC1A70F
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 08:32:06 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BE8D92;
	Wed, 11 Oct 2023 01:32:02 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9b9ad5760b9so1101128966b.3;
        Wed, 11 Oct 2023 01:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google; t=1697013121; x=1697617921; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qIaZVRAI+DjRQ6RtkRDpXSpOk0GxsoNaCYn+DGwB1ho=;
        b=OC949d7vg7Y5LTMa7L8gg7LNdfC03sbP2qb8m4y+PBEJM9BzmyF5GOwZMFD8v0jMSU
         BsQiX4U9hy5fVetKZQjzoaw5AWOrBRqJ08p1hphaQKTtxIP0Z4hoDIGfDXg5ig7+d5+P
         R0wqS8LmgvkseM4/kEvpZa5eowNNMFYbSw6GE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697013121; x=1697617921;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qIaZVRAI+DjRQ6RtkRDpXSpOk0GxsoNaCYn+DGwB1ho=;
        b=X6QT8bxldNP4k82W1RuzycvQwSE8PYEYvLdXO0m7p2kf4ZeQums7k1Tna0/kEk9FcU
         bZBwAawbav2tNhaQtlCaOd0Pv2DT0WnVBLYFXIwBkkal6BNziHiTvao06a8ivRC4vcOF
         +BvdjEOgnSCAr7qj5aYTCHPT2MWqTXgoB4ya7GrQju01hAGmHX0HwcA5BGs5c+9jLf1n
         VL4E957B09P9Qv4NIqSrZptW9rMe89c7C64tc18MKYW1Tw3VDRDbF6ZBJdVCYlMVkmhZ
         mO1ZEzoVDd3RqU7SotaGLyXk62VPUbWYwrZYsgZfvocic0E9PnFPvZL+krriWtiMZsEY
         iDVA==
X-Gm-Message-State: AOJu0Yw9MjNVYZ182qeIQ+s+H+/gbHUSRa03o3ikdcMTgBvumQbBjx9+
	mPvZCLvAhEk1sm3NLIuw7ZkogcloYD4gGxqOSEo=
X-Google-Smtp-Source: AGHT+IEaktyNzbJKL4tDSSV2zr0hGoNDOpPJDTfcpmFWKu45gT5I05ODaiOG7w6mqPsi4F00Ud9+kIKb6hszgyGInHU=
X-Received: by 2002:a17:906:55:b0:9ae:68bf:bec with SMTP id
 21-20020a170906005500b009ae68bf0becmr19406519ejg.75.1697013120493; Wed, 11
 Oct 2023 01:32:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005035525.19036-1-chanh@os.amperecomputing.com>
In-Reply-To: <20231005035525.19036-1-chanh@os.amperecomputing.com>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 11 Oct 2023 19:01:48 +1030
Message-ID: <CACPK8Xeo+7hTmfYR-eR9H4teUFqs5vOcSRm_VvDoVOqP4D6+NQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] Update the device tree for Ampere's BMC platform
To: Chanh Nguyen <chanh@os.amperecomputing.com>
Cc: OpenBMC Maillist <openbmc@lists.ozlabs.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, 5 Oct 2023 at 14:26, Chanh Nguyen <chanh@os.amperecomputing.com> wrote:
>
> Updates the device tree to support some features on Ampere's
> Mt.Mitchell BMC and Ampere's Mt.Jade BMC.
>
> Chanh Nguyen (7):
>   ARM: dts: aspeed: mtjade, mtmitchell: Update gpio-line-names
>   ARM: dts: aspeed: mtjade, mtmitchell: Add new gpio-line-names
>   ARM: dts: aspeed: mtjade: Add the gpio-hog
>   ARM: dts: aspeed: mtmitchell: Add LEDs
>   ARM: dts: aspeed: mtmitchell: Add inlet temperature sensor
>   ARM: dts: aspeed: mtmitchell: Remove redundant ADC configurations
>   ARM: dts: aspeed: mtmitchell: Add I2C NVMe alias port

I'll merge all patches except patch 4. Please resend that on its own
once you've added names.

We should consider creating openbmc documenatiton on recommended LED
names. Would you be able to help with that?

Cheers,

Joel


>
>  .../dts/aspeed/aspeed-bmc-ampere-mtjade.dts   |  66 ++--
>  .../aspeed/aspeed-bmc-ampere-mtmitchell.dts   | 315 ++++++++++++++++--
>  2 files changed, 334 insertions(+), 47 deletions(-)
>
> --
> 2.17.1
>

