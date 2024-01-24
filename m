Return-Path: <devicetree+bounces-34605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C624A83A4DB
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:05:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F5FC1F22BEC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CBBB17981;
	Wed, 24 Jan 2024 09:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WcIIr6q1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BA517BB5
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706087117; cv=none; b=LW9zCz4uE8gjcMoHzC+dgvXwUa6KFMXtBw5oVDhQb1yVs0Y4cM9oyiigI76CNPvaOur+0ticY+FGoEWq6FZ/Yd5mtQKuSegzON3IP/gAQm6YT9A8zTA7ZbLaE2Ks4Q2BLcwdMPFFGOKVEW421qihtvhWjYANXIGecIJGE7sCZCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706087117; c=relaxed/simple;
	bh=bYGjWyfNDuuEy/uhJ2BsahwEeQkQmwNi/I2B366Ra5w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ckuqldGufjeFFoejXmixmbkFu7Ts3bjgt/FsnmmeLlJAvg/NVdM+9av6XqQyiNXIPM44NQ18jnxkWQs8erxj2n2Qsju6QIEtPk2VqYhDDSo+DqVL/QgMLv9IFhz2uPJIKQ0sPde1O3rPQtrYSDuq0fEdaQDGq2n+MuRQIxCcVzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=WcIIr6q1; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a26fa294e56so524138966b.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 01:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706087113; x=1706691913; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9TdYwfAa3Kb++bbinJAM8F6n7j06tuxaI+2yyckzaPc=;
        b=WcIIr6q1JjNbUJ44GICbccxKaSJ2iIJ7tzpKtG9ffIPrtoR5l0+qXYJ6/qWg4ucD6A
         PrgDTdSXKxI5o3hLlWT+OGXXqCiJNaSaeRUjObAT6VSMyuVpvUXuqLgyCPnAjPYkx7oi
         LJBozvVgB8INR5E6l303x/Ypyv66yvXwfAswQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706087113; x=1706691913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9TdYwfAa3Kb++bbinJAM8F6n7j06tuxaI+2yyckzaPc=;
        b=aISDN0zqTBPdiiA6vIf9d3WV1lYONcP7dQLhB0XWay7ta+YiLAKWWKfbF5aMcMyUIj
         ZtbcK6F1DLCe6HieWt5VCWdcvz2xJkeXpEqcMa1QppfWC/zFI+oDAGVvjQODYzKr+2Pr
         w1+YQFNZvDmoGm9m+dVYdBu5ZG02BT8ztmqCSu4YXxOWqX3X+TYM+u1McDgrNp34hzxM
         rOf2JNXyKuR5kAu4fWwjJf8DjmfZ1mXkw/o6mCXsVJo/unPe5dXNmKUoLZ4Iw/PRqvTy
         S0ZN2F0DV4mqncC5igybk2C9TqyyAgqyJ50tHvkVfV1TzYsjnx+5ZftAwWDg7JYxzlue
         PNxw==
X-Gm-Message-State: AOJu0Yxb3t+ft0ik9fpWHUPTJ3MCjBM/xiybvSlo5q4JX0lU9LybBxui
	6BDvYcPXW0Mgsg5fTMbwmFsy33ZhKUJeXuVuXdbjyMi4ASlfka6mSQey9SIj5OtUnrRTW7CG0yL
	mDt8ci44=
X-Google-Smtp-Source: AGHT+IGYwJ7rES5nCq/A3/9PzmH6jkbEGKpluuiAodXg7uc84kdCHLcJTyutByQzcKhwx7a+wXGyGQ==
X-Received: by 2002:a17:906:b811:b0:a30:d7b8:a827 with SMTP id dv17-20020a170906b81100b00a30d7b8a827mr645637ejb.150.1706087112986;
        Wed, 24 Jan 2024 01:05:12 -0800 (PST)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com. [209.85.218.49])
        by smtp.gmail.com with ESMTPSA id t15-20020a17090605cf00b00a28aa4871c7sm15063087ejt.205.2024.01.24.01.05.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 01:05:12 -0800 (PST)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a2f79e79f0cso515744666b.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 01:05:12 -0800 (PST)
X-Received: by 2002:a17:906:1756:b0:a30:cc71:7340 with SMTP id
 d22-20020a170906175600b00a30cc717340mr560441eje.120.1706087112019; Wed, 24
 Jan 2024 01:05:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240124-send-upstream-v3-1-5097c9862a73@chromium.org> <786c85c7-7b38-4a2a-85ec-282196de7b5e@collabora.com>
In-Reply-To: <786c85c7-7b38-4a2a-85ec-282196de7b5e@collabora.com>
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 24 Jan 2024 17:04:35 +0800
X-Gmail-Original-Message-ID: <CAHc4DNKXOb54v7qJZJ2EsVP1KkMq7WnSJJLWhb2SzuhW_=qnxQ@mail.gmail.com>
Message-ID: <CAHc4DNKXOb54v7qJZJ2EsVP1KkMq7WnSJJLWhb2SzuhW_=qnxQ@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: mt8195-cherry-tomato: change watchdog
 reset boot flow
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Te Yuan <yuanhsinte@chromium.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi AngeloGioacchino,

This bug can be triggered by stopping watchdog daemon and running
`sleep 60 > /dev/watchdog`.

Regards,
Hsin-Te



On Wed, Jan 24, 2024 at 4:27=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 24/01/24 08:51, Hsin-Te Yuan ha scritto:
> > From: Hsin-Te Yuan <yuanhsinte@google.com>
> >
> > The external output reset signal was originally disabled and sent from
> > firmware. However, an unfixed bug in the firmware on tomato prevents
> > the signal from being sent, causing the device to fail to boot. To fix
> > this, enable external output reset signal to allow the device to reboot
> > normally.
> >
> > Fixes: 5eb2e303ec6b ("arm64: dts: mediatek: Introduce MT8195 Cherry pla=
tform's Tomato")
> > Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
>
> Can't trigger the bug, but also this commit gives no side effects, so:
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>
>
> > ---
> > Changes in v3:
> > - Add Fixes tag
> >
> > Changes in v2:
> > - Limit the effect only on tomato.
> > ---
> >   arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts | 4 ++++
> >   arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts | 4 ++++
> >   arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts | 4 ++++
> >   3 files changed, 12 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts b=
/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> > index 2d5e8f371b6de..a82d716f10d44 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> > +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> > @@ -23,3 +23,7 @@ &sound {
> >   &ts_10 {
> >       status =3D "okay";
> >   };
> > +
> > +&watchdog {
> > +     /delete-property/ mediatek,disable-extrst;
> > +};
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts b=
/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
> > index 2586c32ce6e6f..2fe20e0dad836 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
> > +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
> > @@ -43,3 +43,7 @@ &sound {
> >   &ts_10 {
> >       status =3D "okay";
> >   };
> > +
> > +&watchdog {
> > +     /delete-property/ mediatek,disable-extrst;
> > +};
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts b=
/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
> > index f54f9477b99da..dd294ca98194c 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
> > +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
> > @@ -44,3 +44,7 @@ &sound {
> >   &ts_10 {
> >       status =3D "okay";
> >   };
> > +
> > +&watchdog {
> > +     /delete-property/ mediatek,disable-extrst;
> > +};
> >
> > ---
> > base-commit: 64b50fcb03649ca7f0d762a50e7a3484cfc1d586
> > change-id: 20230818-send-upstream-e91e615a893c
> >
> > Best regards,
>

