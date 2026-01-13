Return-Path: <devicetree+bounces-254585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C6ED19996
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5A16304A99E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52EFB1D61BC;
	Tue, 13 Jan 2026 14:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yP8Wf6CE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627C526F2A0
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768315556; cv=none; b=K2PCY8uMDHO4NHfHKMeRgcaX0YmUrqc5anh0qpA5Nxm97KXjxVtmXG+EiRnEFyt+vsDbeK2B1l22R/tQStw1kqpRpxmwP3pcdPvopcFMp+TBdgS4lqv+b+L67UZBBHWbQWyHorgA+v92Pa5/u+4sISY8lxcGv42yaAgb6HmLefY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768315556; c=relaxed/simple;
	bh=CvzzAWEiZsyYGF0f9MjP42ia90jPhaMvKGX6vgo2wFA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n+PozGNKrklo1Atu4voU8FEkPzu5Vlc+K+t1BlpMOOWuNnR2DbWxfnOmg0fXpe2EP1xuT5YyVPFRLZXYFSrlGFjn0z5qPsrSloVZreNtZPZPw7XqFaeQpZI9KwMUMwXrIB+KHiTzqVAZG0rhx5D9whNJtUPlTfN6yV3kye/mLXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yP8Wf6CE; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-3e8819eda8bso2633095fac.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768315552; x=1768920352; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cW3MAOTqLMsCycw/4wFcgcK9b5ywvkdR/GMT+4PTdHQ=;
        b=yP8Wf6CED1l/0jzDDDj+gTyxR90lbjUOjvPGjaQYlrQZsdzruh7u13tsgvihOx+ZaB
         +FENn+0hzq7l4I7e/+hhztsdQr98PUSU7ssNZXxuC8kz8q2QjNaKMz8XfGHAj7WGgyr5
         N3w3DyX75QMoqeLODS0M8PMSRZQSdLWvR4qS4a0YiDSnTfr4BTXLJ2eirVncUk4p01j/
         odw2HFN6y11YmMQVGrGG95lw+jnRztigjj5sCQNpW/98e3aOK394b7kT9S1IgsrkJ8Df
         yVo/mkw5poSrqP4J2i095UYavRtuzyv6JfFM+z3aLsf+Up2pxZk7nP7OJbKJPied5wPq
         wqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768315552; x=1768920352;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cW3MAOTqLMsCycw/4wFcgcK9b5ywvkdR/GMT+4PTdHQ=;
        b=B6kYE0nVpmJ+3nPa8kSeMFsRQEiGDfbS4MtulXFEHxMNQJ/rTkQbsz781KJKD861NA
         RZoqrTKL5wuu+YtN1Sa/hTbRxJ+HG0trj0S2o5EH7idoHP9pM20/0pjQUmf/18ePg+Dh
         u9SroqGf59TsY02cNIVF/4E6AyzdFGj7CQMTEnZ1WZz3BW80759awAytF+Ihnebz84Wl
         BKv1sYIWGjBDwH8x/NcduE0XbemHizVeR+yz6FGUncU7oFaSa/FJ3F6Jl/5OHV3wbRHq
         JQr+paEd+qBKCbI/nggXBCwFVvAai9r04YxMhQMHcD253TpJixy+7YOhOlegxqzEI6rm
         ZKUw==
X-Forwarded-Encrypted: i=1; AJvYcCVMGai0cKznkztScc2JtUCywDRA9xUKQuDWl2RTHyMAI/KeAAewEQLPv0L9tlFqTeewZcgCbmCI6w5k@vger.kernel.org
X-Gm-Message-State: AOJu0YxnYHb4UKbloTAFAK3BCWQew+4yIhd3aHYjVN0AUCXr68GZ1o5Z
	QPM/u3hRMt/HAhBxi35dsg0uE11RGnJJeTCI9D4en0NktBo8cD6enpPTVWuh5vTTc9b9wVOTBD/
	dXK7PMOuQqqfLbwEH8SgNPN9jM7RYMWxJq/lAO+FoZg==
X-Gm-Gg: AY/fxX4qQ75fdCodB8DeqOStMhbkNuJRE8snph3i8sc8XrBuRx5M8qVO4vx0yR7I1fn
	/7kmT7dHnNRKVvkvfEKRkYlsKmf090hAdQWxshNaDzoMG1H0DNPPwTd2ZERM403zqGT5JNk0PNY
	lGNRuY/fTxcH8ij2mLvggeqfWrUIHCSlRenX7Gb28YxNU+KIFI1EIzMRfVhCvrS/vFTDag2jvtu
	Z1cNperZyQXFqdkEZcVMlZAyXRLsOl7TPTLTr3JW16A0oUf59Ph9ssTnJu7pu0FWJe3+MUTqFDm
	KefLTK2VokhWqWntFdrwV0vp6g==
X-Google-Smtp-Source: AGHT+IGMsKCWhXxncysaNn43dYmEYyDwcJaO6TjEgdKAgRTiQWieHjD3rHZkyoBEsAcvj9cD16CSqGEscd62IkICycg=
X-Received: by 2002:a05:6870:55c7:b0:34b:cc55:9e85 with SMTP id
 586e51a60fabf-3ffc0954865mr9095150fac.13.1768315552149; Tue, 13 Jan 2026
 06:45:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109-debug_bus-v1-0-8f2142b5a738@foss.st.com> <20260109-debug_bus-v1-5-8f2142b5a738@foss.st.com>
In-Reply-To: <20260109-debug_bus-v1-5-8f2142b5a738@foss.st.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 13 Jan 2026 15:45:40 +0100
X-Gm-Features: AZwV_QiARd5ZYYBrSjJNdNCpX-7fBluIYLJTcntaG_DMT6Vl6m6kjiymZLCqUpY
Message-ID: <CAHUa44Gc+q0qJ0XJ8Y-OMT2t9o0W_WeDMHg_S0HPC5i2Zmxhiw@mail.gmail.com>
Subject: Re: [PATCH 05/11] drivers: bus: add the stm32 debug bus driver
To: Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@linaro.org>, 
	James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Leo Yan <leo.yan@linux.dev>, 
	=?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
	Linus Walleij <linusw@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jan 9, 2026 at 11:57=E2=80=AFAM Gatien Chevallier
<gatien.chevallier@foss.st.com> wrote:
>
> Add the stm32 debug bus driver that is responsible of checking the
> debug subsystem accessibility before probing the related peripheral
> drivers.
>
> This driver is OP-TEE dependent and relies on the STM32 debug access
> PTA.
>
> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> ---
>  MAINTAINERS                 |   1 +
>  drivers/bus/Kconfig         |  10 ++
>  drivers/bus/Makefile        |   1 +
>  drivers/bus/stm32_dbg_bus.c | 285 ++++++++++++++++++++++++++++++++++++++=
++++++
>  4 files changed, 297 insertions(+)
>

[snip]

> +
> +static const struct tee_client_device_id optee_dbg_bus_id_table[] =3D {
> +       {UUID_INIT(0xdd05bc8b, 0x9f3b, 0x49f0,
> +                  0xb6, 0x49, 0x01, 0xaa, 0x10, 0xc1, 0xc2, 0x10)},
> +       {}
> +};
> +
> +static struct tee_client_driver stm32_optee_dbg_bus_driver =3D {
> +       .id_table =3D optee_dbg_bus_id_table,
> +       .driver =3D {
> +               .name =3D "optee_dbg_bus",
> +               .bus =3D &tee_bus_type,
> +               .probe =3D stm32_dbg_bus_probe,
> +               .remove =3D stm32_dbg_bus_remove,
> +       },
> +};

Just a heads up. With
https://lore.kernel.org/op-tee/cover.1765791463.git.u.kleine-koenig@baylibr=
e.com/
we're switching to use bus methods instead of device_driver callbacks.
That plan is to merge that patch set in the next merge window.

Cheers,
Jens

> +
> +static int __init optee_dbg_bus_mod_init(void)
> +{
> +       int ret;
> +
> +       ret =3D driver_register(&stm32_optee_dbg_bus_driver.driver);
> +       if (ret)
> +               return ret;
> +
> +       ret =3D platform_driver_register(&stm32_dbg_bus_driver);
> +       if (ret)
> +               driver_unregister(&stm32_optee_dbg_bus_driver.driver);
> +
> +       return ret;
> +}
> +
> +static void __exit optee_dbg_bus_mod_exit(void)
> +{
> +       platform_driver_unregister(&stm32_dbg_bus_driver);
> +       driver_unregister(&stm32_optee_dbg_bus_driver.driver);
> +}
> +
> +module_init(optee_dbg_bus_mod_init);
> +module_exit(optee_dbg_bus_mod_exit);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Gatien Chevallier <gatien.chevallier@foss.st.com>");
> +MODULE_DESCRIPTION("OP-TEE based STM32 debug access bus driver");
>
> --
> 2.43.0
>
>

