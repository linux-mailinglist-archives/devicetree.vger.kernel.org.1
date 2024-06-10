Return-Path: <devicetree+bounces-74180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EB49023A6
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 16:09:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D19F01F2403B
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 14:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78D3213E03F;
	Mon, 10 Jun 2024 14:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nIRu0Olz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67285130AFC
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 14:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718028442; cv=none; b=sj4nvhaVOOPK2+m6XS96oVExAxnqbhyAyeYX09qOTwWWpacQTxt4YtrHNaGpu7PgJxX2j+iUJvEiVzUGR4DyXJYc0R8yFnFEddtYZpxAeJwBb7dZCbVF0UHm8D45S3YHNbxSgLtrk3RZQVvU4o18CBJ0JLilEAKAj4I2b6HwHn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718028442; c=relaxed/simple;
	bh=KJTo9yqBxdXCQ6jSMX21Mq8qnuooJPm4rNa/zh0tccs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g15EYJFS/iUjy/CMBbTTjhGrGX3VR5YhjYNQ/Qg8v4KgG4WgH96bkcoKXSp1przAuwdprVyVQbZdwGI/uVkPfOScQUHDooDYZjVfTJHBh2PIKaWmtwcXNGLgm/C3i5IFpEFfpbJT/VsjjZ2uHc+rNHNiFR3MpyP6x8FkQe+BTqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nIRu0Olz; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e724bc46c4so50975461fa.2
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 07:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718028439; x=1718633239; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IrfSjnwxqc0Uz7WM4Z+0VwCDyHj4O4ZPqDfD8wg1X5A=;
        b=nIRu0OlzefH1RUBwL2SpbvKvz6+6atsY5VNR+KoxsbhCLwi38buwQX4M049LLaooTV
         dFRNUM/GVy7HmnWLKDUGTp4wwAcyBNrPU/ZXoY4BLK2416OvslMnKFQIHO0UYUyFlOmy
         H4JrMFldz0J5nzS8So0WzeDNyJJNw7SR3wmh3L5bFau1on04yRgT1714MU+Lymud/zY5
         uROx6ni67BcBnks9+z5zTnMA5yfkdFwK4eHL6x9+POGTRFjKmoWPc9Aq3VysngEBl52h
         FfezpnzUW+arVQjjouyN/cIoLUcNWU4UFdBQ3sAIHCbd8HikVVsSAATp0UIEudOO2O9S
         PKVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718028439; x=1718633239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IrfSjnwxqc0Uz7WM4Z+0VwCDyHj4O4ZPqDfD8wg1X5A=;
        b=LJnncjZKhwUccm8zAU2OMmB18ki4sCSjKHKacmO7mwrPWAO95Ml8d5Qe64bHRou8R5
         Bq3sIef8P2xFHoxjFCoejuRhmJ2FvnBrLUQQSb/KmbCjgy5gWi+yUG8l4NXN0MUlDoSS
         5rbH65WUjBZjvwd1qXBwb7wDcjlC5skkrto26E7kB3BMWNOxx2k1tofkONijT8zLLTc6
         F3ZbwEIQhG/SXCVOj2VQzSWh37iSVgoL0UhrzVRhXTYDOeivjWfKssZ0vRMZKjtzJemf
         izvvPptpvJJ8P7iesVTucBD46x0RJwFZP5ieoKRdxFyCLRbKDQ2a3gUaxoGW2fqRuLYs
         EpNA==
X-Forwarded-Encrypted: i=1; AJvYcCUr3hRbO/M8UYDce/HFQ92tIBxRPE6jBGoxgWgQV6VKE1WeURaRwk5Pr0wO6VfXxca8kFNE6JWhGPgCi+S6zFf5l5GTUnlfXgM+PA==
X-Gm-Message-State: AOJu0YwJeyGfPXG/RJ/66rytl5Klq2bMRyBHYKtV2AA1oMoCD+Fyx3p8
	eiJVnPgGhoWLhYSNvtVSH2OIV2MQ3oRxHtk43gyLl0I+xfMYc4qnQaSSqrwgYktjumjf/alXkY4
	/10JzpqeVbxoc20vBskIs81o0UbH/H4bgASmMmg==
X-Google-Smtp-Source: AGHT+IGI1oMRglxlhhOgtO94XvGP6BEJ+a2XAStspIknp9a4KpTCltzqemXiZHzEYDdn4kYV/gJEn73/Q/CUPbWeTEE=
X-Received: by 2002:a2e:a601:0:b0:2ea:8174:231b with SMTP id
 38308e7fff4ca-2eadce1609cmr64703571fa.2.1718028438671; Mon, 10 Jun 2024
 07:07:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605123850.24857-1-brgl@bgdev.pl>
In-Reply-To: <20240605123850.24857-1-brgl@bgdev.pl>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 10 Jun 2024 16:07:07 +0200
Message-ID: <CAMRc=Mc0Ju6wJUsMw+ap__KUagmDW0pWiF5EzpkfSqdpqRNaig@mail.gmail.com>
Subject: Re: [PATCH v9 0/2] pwrseq: introduce the subsystem and first driver
To: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kalle Valo <kvalo@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Saravana Kannan <saravanak@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Amit Pundir <amit.pundir@linaro.org>, 
	Xilin Wu <wuxilin123@gmail.com>
Cc: linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-wireless@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-pm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 5, 2024 at 2:39=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl> =
wrote:
>
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
> Hi!
>
> These are the power sequencing patches sent separately after some
> improvements suggested by Bjorn Helgaas. I intend to pick them up into a
> new branch and maintain the subsystem from now on. I then plan to
> provide an immutable tag to the Bluetooth and PCI subsystems so that the
> rest of the C changes can be applied. This new branch will then be
> directly sent to Linus Torvalds for the next merge window.
>
> Changelog:
>
> Since v8:
> - split the pwrseq patches out into their own series
> - rename incref/decref functions to get/put for consistency
> - fix typos
> - make it very explicit in docs that arrays of targets and units must be
>   NULL-terminated
> - Link to v8: https://lore.kernel.org/r/20240528-pwrseq-v8-0-d354d52b763c=
@linaro.org
>
> Since v7:
> - added DTS changes for sm8650-hdk
> - added circular dependency detection for pwrseq units
> - fixed a KASAN reported use-after-free error in remove path
> - improve Kconfig descriptions
> - fix typos in bindings and Kconfig
> - fixed issues reported by smatch
> - fix the unbind path in PCI pwrctl
> - lots of minor improvements to the pwrseq core
>
> Since v6:
> - kernel doc fixes
> - drop myself from the DT bindings maintainers list for ath12k
> - wait until the PCI bridge device is fully added before creating the
>   PCI pwrctl platform devices for its sub-nodes, otherwise we may see
>   sysfs and procfs attribute failures (due to duplication, we're
>   basically trying to probe the same device twice at the same time)
> - I kept the regulators for QCA6390's ath11k as required as they only
>   apply to this specific Qualcomm package
>
> Since v5:
> - unify the approach to modelling the WCN WLAN/BT chips by always exposin=
g
>   the PMU node on the device tree and making the WLAN and BT nodes become
>   consumers of its power outputs; this includes a major rework of the DT
>   sources, bindings and driver code; there's no more a separate PCI
>   pwrctl driver for WCN7850, instead its power-up sequence was moved
>   into the pwrseq driver common for all WCN chips
> - don't set load_uA from new regulator consumers
> - fix reported kerneldoc issues
> - drop voltage ranges for PMU outputs from DT
> - many minor tweaks and reworks
>
> v1: Original RFC:
>
> https://lore.kernel.org/lkml/20240104130123.37115-1-brgl@bgdev.pl/T/
>
> v2: First real patch series (should have been PATCH v2) adding what I
>     referred to back then as PCI power sequencing:
>
> https://lore.kernel.org/linux-arm-kernel/2024021413-grumbling-unlivable-c=
145@gregkh/T/
>
> v3: RFC for the DT representation of the PMU supplying the WLAN and BT
>     modules inside the QCA6391 package (was largely separate from the
>     series but probably should have been called PATCH or RFC v3):
>
> https://lore.kernel.org/all/CAMRc=3DMc+GNoi57eTQg71DXkQKjdaoAmCpB=3Dh2ndE=
pGnmdhVV-Q@mail.gmail.com/T/
>
> v4: Second attempt at the full series with changed scope (introduction of
>     the pwrseq subsystem, should have been RFC v4)
>
> https://lore.kernel.org/lkml/20240201155532.49707-1-brgl@bgdev.pl/T/
>
> v5: Two different ways of handling QCA6390 and WCN7850:
>
> https://lore.kernel.org/lkml/20240216203215.40870-1-brgl@bgdev.pl/
>
> Bartosz Golaszewski (2):
>   power: sequencing: implement the pwrseq core
>   power: pwrseq: add a driver for the PMU module on the QCom WCN
>     chipsets
>
>  MAINTAINERS                                |    8 +
>  drivers/power/Kconfig                      |    1 +
>  drivers/power/Makefile                     |    1 +
>  drivers/power/sequencing/Kconfig           |   29 +
>  drivers/power/sequencing/Makefile          |    6 +
>  drivers/power/sequencing/core.c            | 1105 ++++++++++++++++++++
>  drivers/power/sequencing/pwrseq-qcom-wcn.c |  336 ++++++
>  include/linux/pwrseq/consumer.h            |   56 +
>  include/linux/pwrseq/provider.h            |   75 ++
>  9 files changed, 1617 insertions(+)
>  create mode 100644 drivers/power/sequencing/Kconfig
>  create mode 100644 drivers/power/sequencing/Makefile
>  create mode 100644 drivers/power/sequencing/core.c
>  create mode 100644 drivers/power/sequencing/pwrseq-qcom-wcn.c
>  create mode 100644 include/linux/pwrseq/consumer.h
>  create mode 100644 include/linux/pwrseq/provider.h
>
> --
> 2.40.1
>

With no objections, I plan to pick it up into its own pwrseq branch on
Wednesday.

Review and Ack tags are welcome.

Bartosz

