Return-Path: <devicetree+bounces-93379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6AE950B3A
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 19:11:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D5049B20BD3
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 17:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E97B1A01C5;
	Tue, 13 Aug 2024 17:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="TQZrSouc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1003D38E
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 17:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723569056; cv=none; b=d5qLJ84MWT2pYWo3OvX3coUUY3K1sbbDGK4kZwTDFDztyZOgMijYjG/suiy/qmNLFDy9u7EC7/+vpVcfnakf7vskqCm595ber3Bs4bO6gwZTcUfNnooEILWFlp7jqScYqcGjcTeYOFYVmwo5s1CoDlroo5OnagWBiCPe0hxlq+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723569056; c=relaxed/simple;
	bh=7ympOJZpNt6WSAnm/Uh1NWzgl3X3DNcEPRJW0FlCpH4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a3UBshIlfUlc6pW9vc3F3dmf9oExav+rh/SHMokeZP06AFHwMr97bbJlQDeRV50YOFka8JhVFTZ3Mli2T8Vur+6J5iF7jHgAV2KzL+BxUkOL3AJV7AiPocAnvvGr7WPowagRY7dbf76AK9iyj0B+TW6BoqX5TXZeUhBFFQuOgpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=TQZrSouc; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a83597ce5beso9951466b.1
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 10:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1723569053; x=1724173853; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OhtBUgLnrDhhdGzlxz/BjFJWhCixCkk0gwuIiyZNKtA=;
        b=TQZrSoucQrjeY7jtGNp4htRYvEgfiZVuQ0YjK4seJ4LfWF+D2gkZgqek7FFuBnQ9Oi
         joQHyot/0WW3CQSmVyFAwnSTPo5aIIzmGXoX6RLydCbP/ZgmYBhzKSogH+kplaFKcPML
         CW0vGLgpZZwqKH4Se8x4KmXvPTmlGpw/jMJOT+wssNoUN/F/2RKzy1KAPLDqu5vnJP7x
         m7tMuPJhu5Gk6RTTU8iTfioav52Nu85EHYcEPvG9UmKIqqbYVShGv5wiuIh7rtAG0aRa
         X2ej4zvW7klyFSaCv1zDCPocen8aY2iUBlAOJ+b7qDWDS0aLFN+c/mVJ35vGksQb5K2O
         7Mcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723569053; x=1724173853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OhtBUgLnrDhhdGzlxz/BjFJWhCixCkk0gwuIiyZNKtA=;
        b=hv8PZ7Jt7/lfzlY9hoE+M0N0lXsZDzvK8Eb4eOKa8+Af6LN3JE46dpFTaRlN2jbUWh
         O/Jxw+FCVDMNGWoyEzzFTES576CU9rZYdYgCKT8FOkyPdu34+9hgjPa9yFBs9OslvXAG
         ic1WgVbJLc/vXPijpJ8VlNBmkSH6xKrdl5twZnTNMa/AtmkHeylGqTI7JXUxR8lw4Btl
         23Q0rN7PbCX/apOOg/e4GyNuRB55p78p6jxCNABCb6X/izX8WMHokQ3lQYzrqmC0o5s9
         y7vbBZsUKW8ofFWEMKdaHqgTY2V9LmBTvv2wS6RBPxzExa7HJqS2sGuZm/95uLS9mgh4
         zrYg==
X-Forwarded-Encrypted: i=1; AJvYcCUtYtnXKdo/xkgF4JMsbnfQlP2EFVntwg3q5DuhUbbGMI8PNt6sqlcXUYVRhJLdcC5HP4gsXqPNN2mG05U3u4bQrzfHvmUFbgEkgw==
X-Gm-Message-State: AOJu0Yzi9RBYBZkEfN7yKXI/1Vp5PlSopHP6P2vgHY7ds5AFrOPyLAvg
	6rSOdqjp6q7oKIGbLVja6+/aCzCelgyDs47ad4QcjKdBk9ssab7DuMmI+6NXaPuUQaq8Ymt8hud
	U2+6BLBDF1pRRCgqhFBqR7Pnx/Ff8usYv50Th3g==
X-Google-Smtp-Source: AGHT+IHfrLoNeAHUzX9iSp5yG/DmHNHyvEWlECdWd2S20k6QEuCIF2JQ1mr7dl/AjYpPPWLrA6gS9nYLsHONqns987s=
X-Received: by 2002:a17:907:f729:b0:a7d:c352:c502 with SMTP id
 a640c23a62f3a-a8362d64c1emr33673666b.30.1723569052201; Tue, 13 Aug 2024
 10:10:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240522215043.3747651-1-tharvey@gateworks.com>
 <CAL_JsqKtc_65tDMFWT0WroNPmW2R0Dd-4Jw101PnyJcPb=7tJA@mail.gmail.com>
 <CAJ+vNU0LBEET=y40BT4OE0zWsu6DxT-SYOrx7qD-h=HH2zENzA@mail.gmail.com> <4faa6881-8828-44de-92fd-6e55495cefb2@linaro.org>
In-Reply-To: <4faa6881-8828-44de-92fd-6e55495cefb2@linaro.org>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 13 Aug 2024 10:10:40 -0700
Message-ID: <CAJ+vNU1ff0c=wJoVTENGSV5Y3Yh_w5mTU-xoA9XgOX-x744=EQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: rename gw7905 to gw75xx
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Shawn Guo <shawnguo@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 13, 2024 at 9:34=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 13/08/2024 18:22, Tim Harvey wrote:
> > On Fri, May 31, 2024 at 7:13=E2=80=AFAM Rob Herring <robh@kernel.org> w=
rote:
> >>
> >> On Wed, May 22, 2024 at 4:50=E2=80=AFPM Tim Harvey <tharvey@gateworks.=
com> wrote:
> >>>
> >>> The GW7905 was renamed to GW7500 before production release.
> >>
> >> Maybe some summary of the discussion and how this changed from one-off
> >> to wider availability.
> >>
> >>>
> >>> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> >>> ---
> >>>  Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++--
> >>>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > Hi Rob,
> >
> > What is the status of this patch? I'm not clear what tree the
> > Documentation/devicetree/bindings go through.
>
> Always via given subsystem. Which subsystem is here? Maintainers should
> tell you - ARM Freescale/NXP.
>
> See also:
> https://elixir.bootlin.com/linux/v6.11-rc3/source/Documentation/devicetre=
e/bindings/submitting-patches.rst#L79
>
> Best regards,
> Krzysztof
>

Krzysztof, thanks - that makes sense.

Shawn, what is the status of this series [1]

Best Regards,

Tim
1 - https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=3D85=
5146&state=3D%2A&archive=3Dboth

