Return-Path: <devicetree+bounces-240113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A21C6D839
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:49:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 09D644FA2C0
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A0432ABF6;
	Wed, 19 Nov 2025 08:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jxUpE0Xu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FCA32E13C
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 08:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763541698; cv=none; b=lP3Z3zNfBF4H6z3ieuNU2sRNeP9Tlsjxqvlvv+dZU/qSMlD9qbgyIrZNWJIFA4iJhUeWy4WEnGrVPRey3EUxHPjdLPgc/zM3JYzqmrMSXmzKfKytFpduVzJks8lqE2sZhEAjeN/JJofuyx9I+CW/XM6TbgiTfhFs9EYhzFQfUvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763541698; c=relaxed/simple;
	bh=/pVHjvT3P2IN9665epAkr/46e5YpKQpDV1MCGY4SeX0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VRTgP/MTp8/YiDU9eFecMT1GtRUzOe+gncsf82+WnjEXiRUEstUCUPuUEiRf7AX8u6w/kKGUUDDegCmdfw1bbJlG7ZhrRgaSH87Ix4H/e4c7BTUmFTVc79m6g2IREV0RGXRgrXlfj0U7/ZQABdsnQt458Wk592e1tEtKY6iIsQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jxUpE0Xu; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-594270ec7f9so5876218e87.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 00:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1763541694; x=1764146494; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5j+PVmz1ThbmMU8zEKanJG/8MyZ6W6XB53wlJvy8v2E=;
        b=jxUpE0XuakgkibVSlQzk7lOoNzdrxGxc5mmanHFB9Cn6JxhPG/I61zJRwHt7jBGM8r
         2WTNJVzkJSFixvIVFxKfAH9qbBfnG39pE23GyWXqyBbKnqEHnGduYf2Vgb41W7oQlDeA
         SDYz7lpAEfYuNYM1UNh0tYvAE8S0kGG0iQkFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541694; x=1764146494;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5j+PVmz1ThbmMU8zEKanJG/8MyZ6W6XB53wlJvy8v2E=;
        b=cn0AP9z3yXiy/qgxbXPJD8UOs1X9j3rNk+93cWmaTWsRAGdzl+7CtcWrSOlJC+zY6O
         jOs9gwdxcdUlSeTvqiNnPjpmc/wo4f9UsF5hrai/WK+d77ADmgbW3+M5L7Ad+0IH2Iie
         HpQFOUkVlHDSQgjOrhsGvMzZSPdL/YiVC84JnCKAOfsAzXXadR/xJoDd3008KxunwPz6
         NWK8afYMS3lf74vJ+V/WSlEqpglIDLSbvkvTVbcEsRa+TrWyWISrav42GS2jkoOAk5f0
         Scg4spITg337ls4cxX63CCEWNVvIRlFj09zSgJR/RzjYdficYfjZagUP2SlFGwvZqTNv
         7vSA==
X-Forwarded-Encrypted: i=1; AJvYcCWhy0Y5m2WVkhGAeNLq7Nkc6f0fZUZILdEHfCvEAUac9y9Pzt4hWDOUemUEUJSD5/7nxkBGasLhsJHj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8RKkP3nzJdVTIdS6KWjdp66hRe4AMEKr4RRgAsbOJdkIY7dBc
	ipEKLsK7MfikNC+Tt4hqsMw7hUlRsLWfIwc22zWbqVlVFkb44JsmfW26OVeulcLYugRo9RumNN8
	wTJindm1Gq74A5n6F9hSS+J2PMboohdVpFnY7cQZ2
X-Gm-Gg: ASbGncth8veHxcVcb6tzVDaZYYSZhTRDba/AGU/7wNNTccYtwQN+u4GcHLWLqXKixnG
	sJJxjwU6BAHOFtpL4/1FVeCxgkwevkeZ8/5XtuTff8PcQyUpaKfyxCTmfoZfBP2KGIZjyVebl8b
	AAkmTVV0uguqXCwidGLLyVdtSnI3iZt4fW9dFFWGJkeVP+Rd3a4zW0F1fUvsT5ilav/WWFjDnye
	rHjVomhis2fGgUoUOOUPQIvNraMOxTs3iOhl2xicDOJ65x4yE1dSNWwjw+Ab/k/B2UwQYsqnb8A
	UfehuvDzVSa8M60WcaIBoOxawO4q4wtAjw8Mu084PoNOwaQ=
X-Google-Smtp-Source: AGHT+IFQrP/i43BRhijnwjgkcRa7OAPKQ47ycdJ6Y9winLF07YK7XNLrMlityx7sOAiSK2CbDbRJMbbPsGbnrHHqS5w=
X-Received: by 2002:a05:6512:3b22:b0:595:76aa:8e with SMTP id
 2adb3069b0e04-595841f7d84mr6219364e87.38.1763541693273; Wed, 19 Nov 2025
 00:41:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119070230.1716418-1-wenst@chromium.org> <66693e69-7ad8-4067-9bd3-ef1454e3ec18@collabora.com>
In-Reply-To: <66693e69-7ad8-4067-9bd3-ef1454e3ec18@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 19 Nov 2025 16:41:21 +0800
X-Gm-Features: AWmQ_bkZdxwhlKh-aCeAiAApl_fYKJMVFMF18ypbY25Gza-xyZhDFbzK5dIIIps
Message-ID: <CAGXv+5HOrP=hj8qxZmjq+ozeppXrzFKh=kq2Cb+QqWEx9n83Bw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8188-geralt: drop firmware-name
 from first SCP core
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 19, 2025 at 4:31=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 19/11/25 08:02, Chen-Yu Tsai ha scritto:
> > Arnd pointed out that having firmware-name in the device tree is wrong.
> > Drop it.
> >
> > Fixes: e36be19823f0 ("arm64: dts: mediatek: mt8188-geralt: Enable first=
 SCP core")
>
> Fixes here is .. well, right, but wrong - as if you "fix" that in previou=
s kernel
> releases, you will create regressions :-)

This is a fix because the commit in question was merged in v6.18-rc1
and v6.18 hasn't been released yet. So you should pick it now for
v6.18.

> For all of the currently supported boards, I was planning to temporarily =
leave the
> firmware-name properties in place for one kernel version (v6.19) and remo=
ve it from
> all of them at once, for kernel v6.20.

OK. So I guess the plan is to have MT8188 SCP working in v6.18 based
on the current name then?

> I'd be okay if you send a commit or a series removing firmware-name from =
all of
> them, without any Fixes tag and without any "fix" word (so that we avoid =
autosel
> backports at all costs!), but keep in mind that I'd pick that in the next=
 merge
> window, and not right now.

We can avoid autosel with:

     Cc: <stable+noautosel@kernel.org> # reason goes here, and must be pres=
ent

(See stable-kernel-rules for the whole paragraph.)

After the blobs in the firmware repo have been renamed, we then explicitly
backport the change to stable. I think that works out better? And the only
one that needs to be timed is the MT8188 change anyway.

How does that sound?


ChenYu

> Thanks!
> Angelo
>
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >   arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi | 1 -
> >   1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm=
64/boot/dts/mediatek/mt8188-geralt.dtsi
> > index 7fedbacdac44..8e423504ec05 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> > @@ -1166,7 +1166,6 @@ &scp_cluster {
> >   &scp_c0 {
> >       pinctrl-names =3D "default";
> >       pinctrl-0 =3D <&scp_pins>;
> > -     firmware-name =3D "mediatek/mt8188/scp.img";
> >       memory-region =3D <&scp_mem_reserved>;
> >       status =3D "okay";
> >   };
>
>

