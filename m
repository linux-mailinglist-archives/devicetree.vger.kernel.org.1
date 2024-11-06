Return-Path: <devicetree+bounces-119298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 056819BDEDF
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 07:31:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28B1C1C21C60
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 06:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7EE5191494;
	Wed,  6 Nov 2024 06:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q8QYx89D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0466617A924
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 06:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730874691; cv=none; b=lyfk+rR6d0GjYIFFbCiN1GyNlD2pSMSCjr/wj9z0W860oXZdUIGttAqAniEYLMfBrSQm79iX96xFS8ffA2xwLddp2LATdB/jJMpv+kqSiJ4FfBbt2Zxlf/n7C/l+7vcEFFcUaXEPDITJNNMnIvM1Emxz5syWfI+LwzQvVTWQZBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730874691; c=relaxed/simple;
	bh=sE9pBy95toFx4muSE0fET583MXc33k6vo6rGPz322Po=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j5hwkq5VGNceDtYkvV9iZ25TllIe0imo5Ncjvyh48OjKOLzZ9zlxj75rwXulOtwjamTMO9YUzNIQNzYgryhDQWi6vBG6uBPY7SWQWurZD25T6X5WV6W4v9RGSEyQKTjoEmAZ3tVNLXFUzvq2JtlzFaDXm+aUcauI9FTaZGi3ZEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q8QYx89D; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-84fd50f2117so2277233241.1
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 22:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730874689; x=1731479489; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mba6U/dT9znvEMNh8rko7R6epkDmG/m28ZS6cZzb6Nc=;
        b=Q8QYx89D8AlwUyKBAHVHMbJErbCS9Cdo8yMXMKqzC70q5orFrGSZnZcbRHzhdRF51T
         m1aRuspefAdWB+x5bMVFz2Ouk9erQnuh9fesdtSVi65BBJwJbIKmQPHMOUqeWwTn4lE2
         IQpbvhxgFy/f8oYPN96mHKnPt+6K1iwitl81A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730874689; x=1731479489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mba6U/dT9znvEMNh8rko7R6epkDmG/m28ZS6cZzb6Nc=;
        b=iKP5F9fGR9BqhrH1SzbI6IcgBtOZJuqbGj5p1wN74pvZuOZXgnDLRmFigdm2RPBj7i
         2I+6dZVerVuvTsqAATMeDqLjSh1/32DWQtt/gOqSkE+AHKkpMRJVNJ7Xn85jqxdaw0/k
         1U+FxBXvWWlYC+mm4+syC3yRunGRMaccxxGCx6VC43F+1cMsLdZj5HishitNDfVr7428
         rNdh7zFHMw0paf/U8snnWwBEFsoOtDpUV9+s2QacvM5A1/SPYrWDczCFiWXa/xfBRf11
         uP+3DqPkT5lYCxmdjKgiFRlGFXeGNe5SfJ6ZCs797Pzug92APpAnMrbATQYgMVjiB0xw
         FWVg==
X-Forwarded-Encrypted: i=1; AJvYcCXG6lHa1nr6XnP5iGVY+uJFAqHkJDENy37uAN8wWVixX2vMhorvtSgC9UYEysfXrDh35tCdUSlu/0fR@vger.kernel.org
X-Gm-Message-State: AOJu0YzFYBvcA5klALn5Nl1GYy4igrE+S8PRc0kUxHOAahEVSSQW7lKi
	/38juvxATcxq58f88OdpEKOR24MocSj9NonVXPxwsvbTuw7DsnPZ82XN2W9qNXQQhKARZ3S2v9M
	pNQ==
X-Google-Smtp-Source: AGHT+IGViI67XLM8BWYnb/2YmEN+YOcUWj6uYqIAkCRp5t3vBkLVarPI5QSmSgBI5cdS64l+gqm38g==
X-Received: by 2002:a05:6102:4a05:b0:4a8:ff13:39c with SMTP id ada2fe7eead31-4a8ff130c5bmr20267470137.17.1730874688777;
        Tue, 05 Nov 2024 22:31:28 -0800 (PST)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4a978b3c855sm1570369137.25.2024.11.05.22.31.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2024 22:31:28 -0800 (PST)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-84fd057a973so2131964241.3
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 22:31:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWjksUf/RYGpdCuY/wc51MgmkgHs92jOI20FxZDwsk29BXuGQ7dF8GN890+13N4zNY281TtEYPzaBNF@vger.kernel.org
X-Received: by 2002:a05:6102:6c9:b0:497:6bb5:398a with SMTP id
 ada2fe7eead31-4a8cfb5d0c6mr33880066137.7.1730874687401; Tue, 05 Nov 2024
 22:31:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241105093222.4055774-1-fshao@chromium.org> <173081219726.3053098.16931220466079803577.robh@kernel.org>
In-Reply-To: <173081219726.3053098.16931220466079803577.robh@kernel.org>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 6 Nov 2024 14:30:51 +0800
X-Gmail-Original-Message-ID: <CAC=S1ngYUYeZpbjDh1a6ssftMN8rDgrinHJ4NCmzXJRyWx1DgA@mail.gmail.com>
Message-ID: <CAC=S1ngYUYeZpbjDh1a6ssftMN8rDgrinHJ4NCmzXJRyWx1DgA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add device tree for MT8188-based Chromebook "Ciri"
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	"Rob Herring (Arm)" <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 5, 2024 at 9:11=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org> =
wrote:
>
> On Tue, 05 Nov 2024 17:30:11 +0800, Fei Shao wrote:
[...]
> > Note that there are some known dtbs_check warnings:
> > - sound: Unevaluated 'mediatek,adsp' property
> >     >> see [1] for the fix
> > - amplifier: '#sound-dai-cells' does not match any of the regexes
> >     >> see [2] for the fix
> > - dp-tx: '#sound-dai-cells' does not match any of the regexes
> >     >> see [3] for the fix
> > - audio-codec: 'interrupts-extended' does not match any of the regexes
> >     >> see [4] for the fix
> > - pmic: 'compatible' is a required property; 'adc', 'mt6359codec',
> >   'mt6359rtc' do not match any of the regexes
> >     >> see [5] for the fix
> > - amplifier@4f: reg:0:0: 79 is greater than the maximum of 63
> >     >> ti,tas2781 binding specifies that ti,tas2563 register range is
> >        0x4c-0x4f. The DT follows what the binding literally suggests.
> >        I tried changing the binding locally but didn't help.
> >
> > [1]:
> > https://lore.kernel.org/all/20241105091246.3944946-1-fshao@chromium.org=
/
> > [2]:
> > https://lore.kernel.org/all/20241105091513.3963102-1-fshao@chromium.org=
/
> > [3]:
> > https://lore.kernel.org/all/20241105090207.3892242-1-fshao@chromium.org=
/
> > [4]:
> > https://lore.kernel.org/all/20241105091910.3984381-1-fshao@chromium.org=
/
> > [5]:
> > https://lore.kernel.org/all/20241004030148.13366-2-macpaul.lin@mediatek=
.com/
> >
[...]
> >
> My bot found new DTB warnings on the .dts files added or changed in this
> series.

[...]
As for the following warnings that were not mentioned above:

> arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtb: power-controlle=
r: power-domain@15:power-domain@16:power-domain@29:power-domain@30: Unevalu=
ated properties are not allowed ('power-domain@31', 'power-domain@32' were =
unexpected)
>         from schema $id: http://devicetree.org/schemas/power/mediatek,pow=
er-controller.yaml#

https://lore.kernel.org/all/20241001113052.3124869-2-fshao@chromium.org/

> arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtb: mailbox@1032000=
0: 'clock-names' is a required property
>         from schema $id: http://devicetree.org/schemas/mailbox/mediatek,g=
ce-mailbox.yaml#

https://lore.kernel.org/all/20240911104327.123602-1-angelogioacchino.delreg=
no@collabora.com/

> arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dtb: jpeg-decoder@1a=
040000: iommus: [[141, 685], [141, 686], [141, 690], [141, 691], [141, 692]=
, [141, 693]] is too long
>         from schema $id: http://devicetree.org/schemas/media/mediatek-jpe=
g-decoder.yaml#

https://lore.kernel.org/all/20241001113052.3124869-4-fshao@chromium.org/

