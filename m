Return-Path: <devicetree+bounces-63892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F21B8B6E63
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:33:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92C281C20A05
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 09:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6191127E25;
	Tue, 30 Apr 2024 09:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dZ4pdO1X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBE422618
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 09:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714469576; cv=none; b=mNpwNll9M9P1BOLgiDhza7M3WSXNLUaYcOpXVzXmT8dmE3uH83Igdv7ypxUy36oUVKqp8IsaxxWF0Aiaehg55Hb7RwRNc+isobgo+rj87K8LcFCsKwE7Woceb4/McqddV1Hft4YXsOfBjSKIxJ8cj/q0OvoVUSNJPKtJ9FZ8Q+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714469576; c=relaxed/simple;
	bh=6VlkZ94vfBaUMbJ4oTeQI2QukBnMnA4AUGq7pWtBJas=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HcL0bwZupunzL+YA62GQzjdEqPQJMRWdt2VAV6sS4uc4hLbhpULBDeXiZIyDZqILQ/KKsfXTzZbCfcmvDq7TW+ZkdmTwDAaJj17HPi74uo4V5FC1wDrx0SPiqsL6xOHjWkj7T+81TUg6/Sp53am2pjEN1ltBRNPu/RVam9FXECI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dZ4pdO1X; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-5d42e7ab8a9so2996318a12.3
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 02:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714469575; x=1715074375; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rZ1f3Q6BEnZTJT1SiGVBJeWSactvAosCQCCnwWRZCiM=;
        b=dZ4pdO1X3VrYtmBeozkPKcvwEKLLHpNOO1/jj6Gxv+CY88ZuCneIEcyhceSaRTb74U
         g1JDmpzT+For/q+DLSpyPALFLr4iZj+c2x69/MgfS5X7Wy0qRkvwdm7yE/QMjvVYcV7S
         CTfYB0k8gx+fVmMx5f31PIOoe/LQqL+9JT/F4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714469575; x=1715074375;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rZ1f3Q6BEnZTJT1SiGVBJeWSactvAosCQCCnwWRZCiM=;
        b=AIuYXu3ilDhd+xLwmd+J4X4eEPj2o6V+O0cjEme/ut0F9MVJ2L7sIyhYIlKgfywtks
         ut3Vz4vIYrwYCJjMtEqIWf2l7m6WJ0hDEgbl4jNiGJB45IcuysfJESPoxGq4P+LrV0jc
         8bPgla6aoUawb8Ms59MpwCphnznHBJo4//hqOdQDtqoDK+lZ2jo8BVfLa5wcx1sX3hda
         HHiF4iG4pVaOwNTLjFiyVoFuds5ivhIhXZzse6B9xmrx4SYweBwTBXnCV+6B4eGSr9cV
         I9HdthsqlsqMkimopRLmJ9DH2yldz/sXlzl29YgOkmWSewwD8GX7JgkDyF29Kbv6khFF
         eobQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHYCGrW3qVN+90UIv9W/7Ky26AZ6Q5U5/hBm05RjtFOwBFnvhTz5LN/vOW9Y9DyzDVcvDXZxDW6/bnB7l49v8HlKrGU51uL/qu8g==
X-Gm-Message-State: AOJu0YzyhTSgwwHbffRP2vGrHBhMS4VHiYpOhxincYp6aH63OyaE1bPe
	Zy+KUNzXlQZBx32r+5KicVKt17NSbC5b+mDPA3ET6wRbIeidw+oC7kjqCqjzTC0ld1OPtZRacwv
	5NJewPco3RI2vtxhcpanMPYO5P1H+TTqkj6tK
X-Google-Smtp-Source: AGHT+IHe4n3YPDXbWHUn5ncUC54LJGZHAP4fN5Liyf2K72GnMccBlNkfMj6dDGsch6IeTojaMR/TVjx0GT+KLwkPyEM=
X-Received: by 2002:a05:6a20:9c8f:b0:1ae:84b3:bb5c with SMTP id
 mj15-20020a056a209c8f00b001ae84b3bb5cmr12622020pzb.1.1714469574691; Tue, 30
 Apr 2024 02:32:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240429095333.3585438-1-treapking@chromium.org> <b3c69a78-78c9-4a15-829b-e4b36e16566a@collabora.com>
In-Reply-To: <b3c69a78-78c9-4a15-829b-e4b36e16566a@collabora.com>
From: Pin-yen Lin <treapking@chromium.org>
Date: Tue, 30 Apr 2024 17:32:43 +0800
Message-ID: <CAEXTbpf2HOQj_AxHGbsgOXVF_HyKttL=z7Mi8QStcmuOS+yN7g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8192-asurada: Add off-on-delay-us
 for pp3300_mipibrdg
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Mediatek SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	"open list:ARM/Mediatek SoC support" <linux-kernel@vger.kernel.org>, Hsin-Te Yuan <yuanhsinte@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Angelo,

On Tue, Apr 30, 2024 at 4:17=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 29/04/24 11:53, Pin-yen Lin ha scritto:
> > Set off-on-delay-us to 500000 us for pp3300_mipibrdg to make sure it
> > complies with the panel sequence. Explicit configuration on the
> > regulator node is required because mt8192-asurada uses the same power
> > supply for the panel and the anx7625 DP bridge. So powering on/off the
> > DP bridge could break the power sequence requirement for the panel.
> >
> > Fixes: f9f00b1f6b9b ("arm64: dts: mediatek: asurada: Add display regula=
tors")
> > Signed-off-by: Pin-yen Lin <treapking@chromium.org>
> >
>
> Uhm, there might be more to it - I don't think that this should ever happ=
en.
>
> The regulator is refcounted, so...
>   * Bridge on: panel goes off, but regulator doesn't turn off (refcount=
=3D1)
>     * Panel resume -> sequence respected (refcount=3D2 -> wait -> more vr=
egs, etc)
>   * Bridge off: panel is already off (refcount=3D0)
>     * Bridge resume -> refcount=3D1, no panel commands yet

The off-on-delay could be violated because the bridge driver does not
check the delay.

>     * Panel resume -> refcount=3D2, wait -> more vregs, etc
>
> Can you please describe the issue that you're getting?

The symptom we observed is that the device has a small chance to
reboot to a black panel, and we think the panel's unprepare delay (the
time to power down completely) might not be satisfied because the
bridge doesn't check that when it enables the regulator. Even if the
regulator is enabled by the panel driver, the delay can also be
violated in the following sequence:

* t=3D0ms, bridge on: panel goes off, but regulator doesn't turn off
(refcount=3D1). The .unprepared_time in panel_edp is updated
* t=3D300ms, bridge off, regulator goes off (refcount=3D0)
* t=3D600ms, panel on, the panel driver thinks the unprepare delay
(500ms) is satisfied, but the regulator was disabled 300ms ago.

Did I miss anything here? Or should I add more detail to the commit message=
?

>
> Cheers,
> Angelo
>
Regards,
Pin-yen

> > ---
> >
> >   arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/ar=
m64/boot/dts/mediatek/mt8192-asurada.dtsi
> > index 7a704246678f..08d71ddf3668 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> > @@ -147,6 +147,7 @@ pp3300_mipibrdg: regulator-3v3-mipibrdg {
> >               regulator-boot-on;
> >               gpio =3D <&pio 127 GPIO_ACTIVE_HIGH>;
> >               vin-supply =3D <&pp3300_g>;
> > +             off-on-delay-us =3D <500000>;
> >       };
> >
> >       /* separately switched 3.3V power rail */
>

