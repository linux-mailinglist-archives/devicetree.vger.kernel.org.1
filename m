Return-Path: <devicetree+bounces-237161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF92C4D8C8
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:59:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4DFB94F3CB5
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CCDF346E67;
	Tue, 11 Nov 2025 11:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EZxl9dPV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525122F7479
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762861854; cv=none; b=BFmq+FgqPsP2khPrTBR+MBSyQKCmtKnQJDU/I+iNzpRifHjxN5M422RcV7d21aTs+K/KTp0RYAZ99b1wzwyTNgbwmPkM07m6RDi18xoqmJpJwbTmRg3rmd1M+Ki/GX1WpLSX+F0UCbMeFYPItQgbD02ohTsu7/Bcpawu6aX1Yi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762861854; c=relaxed/simple;
	bh=+XIJiU4GwN4u7iXICtBpRcSFrGSAAupuGFVPE5WJPKc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mka7Tn9OAzXfgWNOs2JMpNa1b2egmvRD7u3XxfGpbKqSB/XoZo3+7lwaBFGvqy2r1hz29jgJ+TEiAFFpjIAas6lrahpXv4RqgDtyWqxgieCASx7wMqkA/i4inhgSrma7wU0RvE6kTV9i0PD7y+Svj429nTICLB5Z00SoxCeisrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EZxl9dPV; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5942bac322dso3481662e87.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 03:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762861851; x=1763466651; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mv5b/xw8gYFcuSk4kaCj42BkeJNohwR9re6S4f8Ipq0=;
        b=EZxl9dPVlm2kv09762BKbSZm/R8zgUcIsc1Xy6DM4iMBCK+HhOKiESw8DHuirsy24G
         tO6YwOjr3Vt+yIA0tXpYAp/B7sEOSIP8tMaAjn4ZSenczhrhETDEko8rRPrwYsN685Ar
         bXxEncumeZrxktTgIkPm3zFvHojLADg2E3oplH3KiIGcJVHU9+c6q2GdvA4OVKtQmMth
         6o2pVKZS32goC3MR1AfxMFtiSORDRvF3z8bwrc9r/NqtTyeeBCcMcubmT0gKZ/xXcG9p
         bTDJu0UYJjduB9fOw/tYTZ+yWnihZq8AW+ff/MIk0dqad5wYAQaonZ7mI3w0fDwJXcaF
         k10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762861851; x=1763466651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mv5b/xw8gYFcuSk4kaCj42BkeJNohwR9re6S4f8Ipq0=;
        b=nQCNBU7/dc6qOnjhyHL8OEM4GEJVuwKMIL7CiAH5kQIZjOhDIKXJK04e8U3+qhG1nH
         5jAOqb6c32nouK+V81qC79PJnzFqkIK+eunGY4btcG7mvf8PEXoI3yRmRAVQJAcALsqg
         vKRZX25mTwEb34HKM7ITYptf8Ad204wyH+ks5rfkEH8dy/qKWdFBDcoj2PFghj81Emr9
         KZI3fvwv26z4YYjaUac/tsQa8keUQw9LELip1jrJyN2SoVoNIgiLDSrBq2zxktd/1a6P
         BMErOxNHVQl2hFiupGXOAXA0EQ8RgNcf7etUpsRWP7n5gUQ+TJeFZbLrKMNyrB0hSvov
         //+w==
X-Forwarded-Encrypted: i=1; AJvYcCWUQ+Qjjii7AGEJunMn4DBWrQkRVDOn5+oxZT+hZ8flUuB779qm+2SGokICsTZhV6VELutHSXhGTI7w@vger.kernel.org
X-Gm-Message-State: AOJu0YwOMO9X6bOMvUrGaylqkYHckLXWV7cgr8gTgAaYNDU+9FsgaCKW
	mZcB2NmRXd/T8jViRIHKXlCgtZAXvRIURVcj0mepDBx/xGjx0EhM0hZxW/YIIY1PO7qWfG8KJ58
	+zI1wHJRZ36DtV81tcnvrLY7HQMUUYaw=
X-Gm-Gg: ASbGncs0FZ+DDreJF+R3jZsLt+ktZjYb1vuKFOpjKChj2H8hsxHBMqGPaKZq/lf63+x
	gF3EVkGioSL20kA9doMIMK/t6dcdj633kQJtWKaHxbu33HRTh23Ygv2cPy1lY0TLQwxfnpA6umb
	ZlYlMr2Z8cx60+chF8HzPUvVZxXcZVluRofP17qH5Eky1k7tzRIvHY+pZsTAbkTibdAzC3n7PB9
	evW27xINuutmispB2eFHnvzNPVVs3o5LJGDmnuCERwgrnjBKrPJd+zQ9wRZE/faNQ7Q8vyhCaci
	jEWdfSPpevYtm31I
X-Google-Smtp-Source: AGHT+IF88z5at8UsnN1rJmg2IhGaaNFuSng3Rlf9evtFG8rtfKiEGAp8AmRAUYBfUbuGiUayIKhWFzPcbtLj8c4U6/A=
X-Received: by 2002:a05:6512:3b06:b0:594:4e03:2be2 with SMTP id
 2adb3069b0e04-5945f19c023mr3782490e87.14.1762861851172; Tue, 11 Nov 2025
 03:50:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251109214515.121742-1-rpimentel.silva@gmail.com>
 <20251109214515.121742-2-rpimentel.silva@gmail.com> <9d48a54c-0585-4524-b9d5-30696f5ecc8b@kernel.org>
 <CAEnQRZCvpXzGt=7NGv7-s+y0gvOg7Jx4OqbfbW3uv8jDp-jroQ@mail.gmail.com>
In-Reply-To: <CAEnQRZCvpXzGt=7NGv7-s+y0gvOg7Jx4OqbfbW3uv8jDp-jroQ@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 11 Nov 2025 08:50:39 -0300
X-Gm-Features: AWmQ_blgZMv3waf3DojzBGgJUKYe7alAx5RXa_SxBDQp7LxHHOXCa8N82h9a1G8
Message-ID: <CAOMZO5CU09fcBB8oUOO=qC=Du3Q9gnJOQacK=6v+pnSQViex3g@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: add support for NXP i.MX8MP FRDM board
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rogerio Pimentel <rpimentel.silva@gmail.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, 
	alexander.stein@ew.tq-group.com, dario.binacchi@amarulasolutions.com, 
	marex@denx.de, Markus.Niebel@tq-group.com, y.moog@phytec.de, 
	joao.goncalves@toradex.com, frieder.schrempf@kontron.de, josua@solid-run.com, 
	francesco.dolcini@toradex.com, primoz.fiser@norik.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xiaofeng Wei <xiaofeng.wei@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

On Tue, Nov 11, 2025 at 5:45=E2=80=AFAM Daniel Baluta <daniel.baluta@gmail.=
com> wrote:

> In addition to that, Rogerio please read:
>
> https://docs.kernel.org/process/submitting-patches.html
>
> At this moment I think you should keep the original author of the
> patch.

Right, but NXP makes a total mess with authorship.

Please see this version from February that states the original author
as Xiaofeng Wei <xiaofeng.wei@nxp.com>:

https://github.com/nxp-imx-support/meta-imx-frdm/blob/lf-6.6.36-2.1.0/meta-=
imx-bsp/recipes-kernel/linux/linux-imx/0023-arm64-dts-Add-i.MX8MP-FRDM-boar=
d-support.patch

Then this one from July states the original author as Joseph Guo
<qijian.guo@nxp.com> and it also has:

Signed-off-by: Steven Yang <steven.yang@nxp.com>
Signed-off-by: Lei Xu <lei.xu@nxp.com>

https://github.com/nxp-imx/linux-imx/commit/fd8010b46bb00344fa519c73b643fad=
71da5887b

How are we supposed to know the correct authorship tags from the NXP
commit, then?

> Then mark your contribution as follows. If you just picked the patches
> tested them and made minor modifictions only add your S-o-b
>
> e.g
>
> Signed-off-by: Xiaofeng Wei <xiaofeng.wei@nxp.com>
> Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
>
> If you made significant changes add your C-d-b like this:
>
> Signed-off-by: Xiaofeng Wei <xiaofeng.wei@nxp.com>
> Co-developed-by: Rogerio Pimentel <rpimentel.silva@gmail.com>
> Signed-off-by: Rogerio Pimentel <rpimentel.silva@gmail.com>

Rogerio's changes are significant as the dt-schema passes now.

The NXP commit has all the dt-schema warnings found in downstream BSPs.

For example, it makes the old mistake of describing:

 spidev1: spi@0 {
   reg =3D <0>;
    compatible =3D "lwn,bk4";
    spi-max-frequency =3D <1000000>;
 };

Which is totally wrong.

