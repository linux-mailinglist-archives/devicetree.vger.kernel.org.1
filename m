Return-Path: <devicetree+bounces-59706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FEA8A6BCE
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 15:07:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 769331C219AC
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 13:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF46712BF29;
	Tue, 16 Apr 2024 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DWmgPb0N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CD712BF30
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 13:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713272843; cv=none; b=p9/gcuQiOqg5HXZ9+BtgZFDvdsGAwH/jkQzmeWEz3epLX6yCBJ+dppsUE/za3cTfKfUlV0kYSqEWYQ+W1hQIoRIYjspay0R59yLzwDVpEHQljq54nmwZyka8j7VWCcHAdmxcy/PRH86Y4nyoa6eftLxO+XSSB2qZ2NVCEkWdmo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713272843; c=relaxed/simple;
	bh=HmvXI03R5pI/zAKZJlsrVo2+wK/0GPdxyq1DQa8OqhE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vEV9kvXQuorwD6bA/bi4GXxqoRa52DI5e8nVExX37b6/VF3mn1UAzq+dkAVwGF2G9CJ/56aEf9m0fhfpSNLNIDVRMrUKaQI66tsio9U/Ho8tJB8tKa2xe/290LFReL7L5hu2Pz5BKCbfyKnq3Mnos/ofQ7WwC2WtKARmBl12qQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DWmgPb0N; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-61804067da0so44114077b3.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 06:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713272841; x=1713877641; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t1wZ4RlxPXvTNTt155bxNVqHJ65kss0cZ6zzPcL8MBU=;
        b=DWmgPb0NmQOrd4jA1gi3TbyCJ67dSQiZf07YA1YuXkzXtF9tln+KzWyrsngwt+NHB1
         tjIFhiZIOrAqFDnjtDKyM2hyIuRhCVd9P55wFy16augpprdz47xpdgMaDuC/KXZ/1CpK
         PKM2JakGzGJe+OjDGiu+hbQqNVv9W1ygBtYdKlo9Vbhau/f8XPS2rjzSGgynHVd1yteo
         iq5oBzROFj8r3kC3JNBpk7c/7FQ+QopXkckH3hLN7XoTwci7E3SMgRPSxS/vEQFxMYJM
         MoyZqSKQGJdGhJgQJN4ymEZ0TLRZO0UYh6+Nbz6nzx2obqw2XnpvClZlRMXMpUNtpZEW
         8qnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713272841; x=1713877641;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t1wZ4RlxPXvTNTt155bxNVqHJ65kss0cZ6zzPcL8MBU=;
        b=FPO2qCnIodfdST/K2t4BwTR/on/VaLH0hApK1SPmIBK1WO7taPvkUN6WZBqAWPXa6x
         wdELH81yPokUQNy0OMd7XSB0p4hsx18i89RZtICqh42criCIdWnG9JZy+qsKHdqymbf+
         pmxGCnaW/1tDRcw2aL5YzpMd86qXFV4l//G7KGMX5mbwN9Gw4wxtsEj9RIYpAb8fgAKa
         skWPvZJBabRP6oojg5mYZqpPhF/BZMdqToQYYIzbGNgMs+rgfUE2CgO83PPDlynBI9hg
         cmpcPO/lqnjkPrQfDMwP8q4O6Ayl4fcpuRlKD+X6WqSqTEcshR97nMNR1kL3AzR3hC7M
         lcsg==
X-Forwarded-Encrypted: i=1; AJvYcCXPE8RA1wuLAkhp0KZ8IhSLh8by82IrhVAbIekcbEKLss2UiMZ62V0Oikc9HLXRj5xTJ6PEIA7zPEgUEWEwNlMvzqw7/l2rz0d77Q==
X-Gm-Message-State: AOJu0YyEdyO/o4dH8OqBlsqdL3p/KNN0us6T+ofx9Vgw333OZHwy4Lb5
	fYwkydqVrm9Q2r6t8IsPRGYadA3FF7MNyIKUBdX9IUv27DQd+nWCFfHyvfqbkxcBoROgjziHeQ3
	WYXnhjicM8l72DZwZ76zF4Axx+46N6/+48hlDsg==
X-Google-Smtp-Source: AGHT+IHb8YezJrIKOfLoMoc7uIpD4dtBShh3owNc8+qLs30nvSoLDk2eI9a8QHBtTaFEE0X5MmFpb8tz5c6JqPQMdjY=
X-Received: by 2002:a81:7e06:0:b0:618:517b:9dcf with SMTP id
 o6-20020a817e06000000b00618517b9dcfmr11136789ywn.22.1713272840743; Tue, 16
 Apr 2024 06:07:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1713036964.git.andrea.porta@suse.com> <8fb5dde9404875777587c867e7bdb4f691ab83f2.1713036964.git.andrea.porta@suse.com>
In-Reply-To: <8fb5dde9404875777587c867e7bdb4f691ab83f2.1713036964.git.andrea.porta@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 16 Apr 2024 15:07:09 +0200
Message-ID: <CACRpkdYmfEz-eM_R3ifGnbu6saL4Fd60D2ksyCr0SW0X6M_1VQ@mail.gmail.com>
Subject: Re: [PATCH 4/6] pinctrl: bcm: Add pinconf/pinmux controller driver
 for BCM2712
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Kamal Dasu <kamal.dasu@broadcom.com>, 
	Al Cooper <alcooperx@gmail.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Jonathan Bell <jonathan@raspberrypi.com>, 
	Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrea,

thanks for your patch!

Some comments apart from was said already.

On Sun, Apr 14, 2024 at 12:14=E2=80=AFAM Andrea della Porta
<andrea.porta@suse.com> wrote:

> +#include <linux/pinctrl/consumer.h>
> +#include <linux/pinctrl/machine.h>

Really? Why?

> +#include <linux/pinctrl/pinconf.h>
> +#include <linux/pinctrl/pinctrl.h>
> +#include <linux/pinctrl/pinmux.h>
> +#include <linux/pinctrl/pinconf-generic.h>

I would just expect these.

> +static int bcm2712_pinctrl_probe(struct platform_device *pdev)
> +{
> +       struct device *dev =3D &pdev->dev;
> +       //struct device_node *np =3D dev->of_node;
> +       const struct bcm_plat_data *pdata;
> +       //const struct of_device_id *match;

I don't know if others commented on it but drop all commented-out code
or make use of it.

Yours,
Linus Walleij

