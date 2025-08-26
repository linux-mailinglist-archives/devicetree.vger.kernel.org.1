Return-Path: <devicetree+bounces-209321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6977BB359A4
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 11:58:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24A407C26C7
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 09:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD9C318156;
	Tue, 26 Aug 2025 09:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Pu8tE7UN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541E22FAC0A
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756202282; cv=none; b=Mmr5ieRQ5szrvD2LzenSFCTsbNE87ScA23ShTHz0w/n4q95ouR2f0NyGvHsCtwAA0F6O121Wl8TfMQzoeyXtwnEMyHqcdRhTjcfdnk9NSef5Zhc5uauEbFiw+KSDIZxkDjtemMlwyxyl96eRb1QdcnY2nIuf+giTvOKEFvEBHjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756202282; c=relaxed/simple;
	bh=Rt1wBuOibWYMf11azApMmPxWPuGaXVXsAWpTctmwPog=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LHhaEGsHRHihDrw+OeQEK0xflOPjAXc3ck5A2QiqxcGAV2iW1Bhc67qDV/97mYx0oPjcWCQlwDpSfYeI8HWakNZxS6lPFWA8CKZF4eWE8atQusbydIdXVlvNETdqE8IRmgWIbBeNQFbont0PePTP6uh/duWCiGp5QAXU1povKCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Pu8tE7UN; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-55f49f96f42so1629304e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 02:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1756202279; x=1756807079; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uOUXkb1uF8zQdB/sKiLIuRwWdep4Dp9YFQhPpYg7e7o=;
        b=Pu8tE7UNSPb/mSu8D8XVNJ1m+w/gr9winhNLMNf5oNNhDIbwDbeoNasGh3h562/Z8G
         mCXFe1I8ZZxoJtKns/bQCKXoSXmIVoJtI5E19heex3sjrcGxaQU2kfr9wHdob98rL0Jn
         ly8fbX+5vAcNPWrQMMpcRo7UtVYluLIUCe3bwgfEp8uui5ohvG8u/Pe8Aq4aY9/+AuDM
         iVaw2BMpWe7M6WpsyOqJyY10Mo9VshFCDvsccyDqpIXKA43ZTVsStftFBfiRih1ZaMsw
         jGaf0yyIbgu+iiiE0pxmkgHTqTXZmDOFZ98vubSvsTAtcZf13nFmFU/HgXzYBVwJEear
         JFPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756202279; x=1756807079;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uOUXkb1uF8zQdB/sKiLIuRwWdep4Dp9YFQhPpYg7e7o=;
        b=flhBP2lf32LWWhAXkzSrvbPFhu0GG9Sa8OkmYYivlcLy+AayKC9HyVthcgTVjzGp4A
         /vEMokjVDs9u5XN7F80zOT1NnnjsQgFRJ5eFKvGhDidX+zkR1EVs0+vbIX91b1e/ueHr
         ySZ0mG76eWRltMrchB9Z8XWn+ErEmOsAwb5UVn+JS7AJ8oa1QUjMy+TtG5bTrbbUHblF
         aJ4dSunVpe0BiJTXXM23soUCEhb7bPRwReW9oGL4vvAFsImaQkuoXW7yuk1ZyTqd3DMo
         RaFEMoAJ6gxjMMfL0bjAQLhu6qcSuUZ0bx2lVP/b3NrSwKPFuaRTi781ahLaEaQgWDaV
         jSzg==
X-Forwarded-Encrypted: i=1; AJvYcCVm0mA1on3H2aD6Qp3aMY7MP/ATHgOQdBun7LAg2YwwETsiZ/Tlxv4AFI9msLthxP7u9lrljowF5jWT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz89h4eDt348BrzCpudOA+x6ADR5UB2KQZvjtzQ2HnwUnUW+A0F
	Lmg0L/OhEMwsdQ7UtAcdMa7JywCw69vRiLffiGoLw4fKCQKtpYP/5K0PFEK2vvAqCXXFSGG+FrV
	WissEANe+dtZXeWdVZ+twLaHtuJC6YQU8RQ7fgpxOyw==
X-Gm-Gg: ASbGnctllZfAgWgZokeIJf5oxOYo9eYDI4ez9zPqNmkhUAijlLy0N9jo8thxHHqCjNV
	YI1aBHopOCEsw67PXmcRPA9uDvv5wnNDF1ygZrjYTJ6CWDY2gDlfuZUBdJgxWGbdoh4TG6tFFd0
	9/ibDomdSaWWFc3zQ9gt27WZ73MQ6qsir0vi56ineWu8IcxGbWy2D/sGJl2/OeoF+92wLhQQi6D
	jzB0X7q9nzlBMTAxepd+Hj+BXRaEMqObBmw3cUuLzi5KSoEeg==
X-Google-Smtp-Source: AGHT+IHZlig7uTIvb1Hm0+VQCqd18Uy1yI/ilX78XfwZSj12J+ieVVBnbFx5cn43CrziQFS1Bp5XyB1Kt9NlfkCCxzM=
X-Received: by 2002:a05:6512:440e:b0:55f:42ca:cc03 with SMTP id
 2adb3069b0e04-55f42cacd56mr3019395e87.56.1756202279297; Tue, 26 Aug 2025
 02:57:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <372550a2633586d2f98b077d3f520f3262ca0e2a.1756104334.git.christophe.leroy@csgroup.eu>
 <ac7c79b3491cb48ef7c193420b9a9e4614b88436.1756197502.git.christophe.leroy@csgroup.eu>
In-Reply-To: <ac7c79b3491cb48ef7c193420b9a9e4614b88436.1756197502.git.christophe.leroy@csgroup.eu>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 26 Aug 2025 11:57:47 +0200
X-Gm-Features: Ac12FXy4Ibm7fbO9KiNfYE73-dyWntHoWbLgchN6hbkj2Va2bGEIGeT9v8x9Fxc
Message-ID: <CAMRc=MchS5d3RHjtpc-fAVzKyhMchdUhvZCgTNsJ94u5Cc5FWw@mail.gmail.com>
Subject: Re: [PATCH v4] soc: fsl: qe: Add support of IRQ in QE GPIO
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Qiang Zhao <qiang.zhao@nxp.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 26, 2025 at 10:41=E2=80=AFAM Christophe Leroy
<christophe.leroy@csgroup.eu> wrote:
>
> In the QE, a few GPIOs are IRQ capable. Similarly to
> commit 726bd223105c ("powerpc/8xx: Adding support of IRQ in MPC8xx
> GPIO"), add IRQ support to QE GPIO.
>
> Add property 'fsl,qe-gpio-irq-mask' similar to
> 'fsl,cpm1-gpio-irq-mask' that define which of the GPIOs have IRQs.
>
> Here is an exemple for port B of mpc8323 which has IRQs for
> GPIOs PB7, PB9, PB25 and PB27.
>
>         qe_pio_b: gpio-controller@1418 {
>                 compatible =3D "fsl,mpc8323-qe-pario-bank";
>                 reg =3D <0x1418 0x18>;
>                 interrupts =3D <4 5 6 7>;
>                 interrupt-parent =3D <&qepic>;
>                 gpio-controller;
>                 #gpio-cells =3D <2>;
>                 fsl,qe-gpio-irq-mask =3D <0x01400050>;
>         };
>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

