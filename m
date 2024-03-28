Return-Path: <devicetree+bounces-54392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 11575890DDE
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 23:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F70A1C22A72
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 22:55:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D0E84EB5C;
	Thu, 28 Mar 2024 22:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X+vxlnDs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5A61D68F
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 22:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711666522; cv=none; b=rZYa1/EBiNvefiJxstSMvBCR9QndOG5W/oLf4n7pIT6w99Jl+Wu3vDrA9+IX/6xlJYEdLZnK41Z6kCAyQo0yT/Dq4RBcq8ZZusHexKIcmHIwd4ZYsPyQDXYK3xhNHz/rVXjYZPqMwy1BgMX6KQL1/p4U3KO1jU0lqxJ37uiIuZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711666522; c=relaxed/simple;
	bh=a6BhrS87z3pko3toIAAUOX3mE9FhwdlWfA9c7yQ+vjE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WPTjYpL6VqERwseC0H6aB5kwTULnJe7K0FLmg3fVF76nBqJIhSy5NGazqgf7/ucXnI9El7bQIBxmQYUnPPMnWcYZux44/6B26DRMfUZ0h4/DhfQY7VTjMd3O5A8YRI+aSvfhkSzi29Hh/3jTf4q/pkXoxQFGKVBvvz/ZdNKuQKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X+vxlnDs; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2a1f8308532so288571a91.1
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 15:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711666520; x=1712271320; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5nq4+R8+Nhyb9idDvKsWt+ny8JkXRRmqWQXDfRxdxZ4=;
        b=X+vxlnDseuma0GrPx2Z6T6MkjMqXgUlXKCM8+xhnnpdR0KBLTQoZ2ZwpT1F1GxvxYL
         rRo+lZHmF+NETLyG7+JoP/MLDCW5kt7gN+s4/GM5/ldp1p6+WO+3RpCwIeYDrHHpGhRH
         TmFhca69Bkp60Zriibc93OTV2/Zs3J7yFGdD6SneEmGpEdkEmtlixrexbicDDO9aLqSW
         2RYoz8ddgnSEfbW0Etgt8+ZCcySWupYyi9MYpaL1WyFfT2uoAiAYH0Rc4hh9T+lEl8Eq
         7R9RQASwZMUDIHe43Uy/b+gjQUQybhfl90vMzcPUe8dT2ujcYCITMCf96T/DpYNy82Dd
         YZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711666520; x=1712271320;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5nq4+R8+Nhyb9idDvKsWt+ny8JkXRRmqWQXDfRxdxZ4=;
        b=ih/CZ1Rwx6roLjJX48m/ZHfoJkC3KVqFUM+F/8lQ+X775Ma2CvCpfIC0yhAoN0pBD8
         vm7H1rQE8BIBCiJU8WtmgyVSXZQYATaWDeefEf29DtEj/KzGQrlZ9LCVC7JWWJW9dMeR
         G2VW6JsjkG1LpKrwN22XbHFK2NQ26X36EMprI5Rums8CnU5zHFndwnrCY+Zdr0r6ooqj
         uxHMTYxn4Yu5dqXeq9aqM9JjkzRY5TgytDQX/d3Exsqtk6VDLEInJhEpffjIY/a4++s5
         Muu6YTi6jKHod4XqpJYFtaxpit2ssB9tkdPG02NjCS8cvQfRSZ0++5umedWRd/0tU0eZ
         E51A==
X-Gm-Message-State: AOJu0YwL/7l7fQH0Lyfh2uaUzrfvSp9Cd/VPfDdcndgnyWXbxPNIs0k5
	s72sQp0Bg/HmwIVM9+y/uQwiSkCgpbKjtZfEM8T2+gDHXf+d8/zScH3OwSDmmZknn3xGxRnIqhn
	FlEJmOpS9TNsIBFkfVsVUxZj5xNpmeEGg
X-Google-Smtp-Source: AGHT+IHa2EEFf+ie1eVHL+gVjuuYVi07LYMkuv7wkDhnss2E3v6sB+pmWDJIrUJ26p+DRfMCtkU3FphvfAu0WDWhNNE=
X-Received: by 2002:a17:90a:bd8b:b0:29f:718b:16b2 with SMTP id
 z11-20020a17090abd8b00b0029f718b16b2mr929263pjr.0.1711666520377; Thu, 28 Mar
 2024 15:55:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240328202320.187596-1-gilles.talis@gmail.com> <20240328202320.187596-4-gilles.talis@gmail.com>
In-Reply-To: <20240328202320.187596-4-gilles.talis@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 28 Mar 2024 19:55:08 -0300
Message-ID: <CAOMZO5D7QG3sbtCe_Y3h1i0b1VaLXCftLSCkjSuXcso+dKij9Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: freescale: Add device tree for Emcraft
 Systems NavQ+ Kit
To: Gilles Talis <gilles.talis@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, robh@kernel.org, shawnguo@kernel.org, 
	alex@voxelbotics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 28, 2024 at 5:23=E2=80=AFPM Gilles Talis <gilles.talis@gmail.co=
m> wrote:

> +       pinctrl_i2c6: i2c6grp {
> +               fsl,pins =3D <
> +                       MX8MP_IOMUXC_UART4_RXD__I2C6_SCL                 =
               0x400001c3
> +                       MX8MP_IOMUXC_UART4_TXD__I2C6_SDA                 =
               0x400001c3

If i2c6 is not used, you can drop its pinctrl entry.

