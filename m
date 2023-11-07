Return-Path: <devicetree+bounces-14297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3637E36DB
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 09:42:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67E751C20942
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 08:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE0C128F7;
	Tue,  7 Nov 2023 08:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="FugN5u5/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1B3DDAB
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 08:42:00 +0000 (UTC)
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF557FA
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 00:41:59 -0800 (PST)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5b499b18b28so65004777b3.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 00:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699346519; x=1699951319; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AgcG69wJMEDlOfrcrB66xf1fY68L8Md1TPpoFiOhk6k=;
        b=FugN5u5/kAvVccscnoxEISxUkdlB/sKuLn7alZS8Op/F5uJX1S4U13SK+5txUYbMkp
         pZXRW5B8IFt1pOGhE5HHXrDq2vGlSTWanqLgROBNLJSF3zxC9+a8WP0hQbLaoKK+dl+B
         ApRDM4odTmKOjvpLx35CkJx6uhKn62hnndLgl+NRGu1/BjCBp2mfe04LpRQmlfwgSFfl
         0/YdZpdn5GjCW7lb/1vPzwI/rgEuRetjgrkrJo2Bt/g76RyjwclMRw9hiMjfFUTwoVce
         NISzoyaX8oaEYkCv4u4gxIGnoMRyLdVw9KSiS/gUjrmh+PdQ/rZcnGClqMxdtl7opw31
         Hxbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699346519; x=1699951319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AgcG69wJMEDlOfrcrB66xf1fY68L8Md1TPpoFiOhk6k=;
        b=QRjTz31XEMzKIS3ZVIwQv4zVnY6xUDmrqHZzqBtfcKzG5zm5RpoVfl5QQnhZhXq47E
         G4V/r7vGy5R7+0AViq4XfzVVfMOQ85rNXIPGn0hh1b7PWf2BOLtpW13GiUuUwPlCD7yA
         msTfjrOOCpxwg2t7zefEolRUkCEL5DW7Jt4D7PiVFtn7SSLOUEWhlRv+FACy6B5BYtmc
         mE9Q7Xr53m+6YW1tLUjJONejn6P2S1DW+a30Iy0c3itVE7hbY2lP6GJxtaekIJR3JPgQ
         ZpWGnR9qALUXnAOLWiqzbAN9IxAOnYF1IqG28unkFT95vNtVH1tgj2a01QQCrmaWbKCe
         XV6Q==
X-Gm-Message-State: AOJu0YySmonHsRD0RnYj87pV2atLg0mAqFety9u0f8WsbblU6l1MV+ex
	Iby2igRrCc3iGGwrZ9NBYH/Ci5nb9ZvpXyhx04Uh/w==
X-Google-Smtp-Source: AGHT+IGTVLSK2gIuDQoj91G4Z5EOP3fL2U7X4Gbhes4gsZRCMWuotzcvgO+u0q61BWJdtvv7b5AciiQd74DIbK0k3Gg=
X-Received: by 2002:a25:6911:0:b0:d9a:41a0:54be with SMTP id
 e17-20020a256911000000b00d9a41a054bemr31068358ybc.25.1699346519090; Tue, 07
 Nov 2023 00:41:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231107031442.2768765-1-zhourui@huaqin.corp-partner.google.com>
 <20231107031442.2768765-4-zhourui@huaqin.corp-partner.google.com> <9a30463b-3581-4738-9eea-b45e0c9a1d7a@collabora.com>
In-Reply-To: <9a30463b-3581-4738-9eea-b45e0c9a1d7a@collabora.com>
From: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
Date: Tue, 7 Nov 2023 16:41:48 +0800
Message-ID: <CABRjgzu4gRAyizik9ND7tDRpyJyZCBnhdAAWLarXJ_dXKXFghA@mail.gmail.com>
Subject: Re: [v1 3/3] ASoC: mediatek: mt8188-mt6359: add two amps support
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	perex@perex.cz, allen-kh.cheng@mediatek.com, kuninori.morimoto.gx@renesas.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK, I'll revise it as soon as possible.

On Tue, Nov 7, 2023 at 4:31=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 07/11/23 04:14, Rui Zhou ha scritto:
> > Support codec rt5682 using two amps.
> >
> > Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>
>
> Can you please change the commit description so that it's clear that you'=
re adding
> the two amps support to the RT5682s variant? As it is right now, it reads=
 like you
> are adding that globally.
>
> ASoC: mediatek: mt8188-mt6359: Enable dual amp for mt8188_rt5682s
>
> After which:
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>
> > ---
> >   sound/soc/mediatek/mt8188/mt8188-mt6359.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/sound/soc/mediatek/mt8188/mt8188-mt6359.c b/sound/soc/medi=
atek/mt8188/mt8188-mt6359.c
> > index e994faa3556b..917640939621 100644
> > --- a/sound/soc/mediatek/mt8188/mt8188-mt6359.c
> > +++ b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
> > @@ -1549,7 +1549,7 @@ static struct mt8188_card_data mt8188_nau8825_car=
d =3D {
> >
> >   static struct mt8188_card_data mt8188_rt5682s_card =3D {
> >       .name =3D "mt8188_rt5682s",
> > -     .quirk =3D RT5682S_HS_PRESENT,
> > +     .quirk =3D RT5682S_HS_PRESENT | MAX98390_TWO_AMP,
> >   };
> >
> >   static struct mt8188_card_data mt8188_es8326_card =3D {
>
>

