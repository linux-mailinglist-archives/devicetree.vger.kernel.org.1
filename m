Return-Path: <devicetree+bounces-123695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AFA9D5BBA
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:19:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08021B223E1
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AC8018A6C8;
	Fri, 22 Nov 2024 09:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qFCbMxfi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E040A1386D7
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 09:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732266993; cv=none; b=f10KtIjAxX/fkge7kZfrkCcJJ511T8P21Y6+91UmABAy1Q8u/LA5v8B9xVGCUDDeF6xXFKns+roj0uTU2rqPXgqiRmuRVPKPE7d61suBjrmzXnFtVw+lvKMtHPaEu/htUbfxliTUvZPKZf9RYpCtFpVFqqHqYTNxksVb0H7zVjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732266993; c=relaxed/simple;
	bh=o90CHZRpVvcY6X6OVN0QN/QQm/8RXj3aSZTwO4Uj74k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cyqsoJcchMw6KFJU/XxBfaCr4xVs55T26r3x2DQ3PsoSzZw2gkLugAFAyEP+Wi83V02ACD/MLwNQDbYWMkxg4/UQiGP1lvJH/bDEl7CiwGwXJV0/e12w5fwSW9ceFMfHf84un5XY77aE6bYOyOLdLBCm9HnQ8mbNsL8coXkkOFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qFCbMxfi; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a9ed7d8c86cso317442166b.2
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 01:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732266989; x=1732871789; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cONwVFe9h3jPRUrTJqjZ38mmUsRgHE6KH95XCIxtkE=;
        b=qFCbMxfipICqZznjHJJTi3JPVwQM1+rUoG1RoLhWVto/t6rg4iPOzxP7L/qE/ow0RG
         20cknoJWApFdholFhQDMU5W74uQbR8BzA45Ncoz/xBMAZirzt7eNMKC0WgLl5kR6mkkM
         Tc3gR09pi5IMce91UX3+psDpvWyG3WXBmQvz0kFIGdZm2JaWiR1v4Y1qOMuHuLf2ZX7a
         FnOTeGUx8r0wvpFZNQit8M/otlCiu+o8TBERIT/n6lqKu5viH2YYs2qgQPl5nMRXxapi
         kHvy+LGGSxoXFC+1b20VX0MDtXLAwmDIiIGx0CATQ0c2FzZth8xkCQXRRh7Lh00wekuY
         4pIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732266989; x=1732871789;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+cONwVFe9h3jPRUrTJqjZ38mmUsRgHE6KH95XCIxtkE=;
        b=ojrQ4Sbop2pvYV7+MTj9tMCnFEhJ2GTwVHF3JqwvpKNMVDWSgCL59pg6hJGCaoimZg
         hfNqKxQIZaQH7eSQZbVbAfZKDbh9JaKLW+ppNWkmf0gjozbKBuBZasvdsTgUn+mMZvqp
         GrccnCzc8kvNqufNcNMUmND1cGo/tPWhBlcdYSEJGvrJzrmrU1Zr9/V3cx0drqDrFcNB
         avESKPl97YrRNQIkjMXp4yaKcLr3WafMsyF59M27efsDDzKwWNyG9ty30wF1btmRwLj9
         hBl1lCV6qd6E0epyVgElA+GczWR/fEr2Sbe2Qy/dxtCZ7Fnf1ZPhZ9ADmk+SaQPZN2KT
         v5FQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFh+TeJD44R0nDfGyK3A5T1jpR6Tz8P2yRDuemGdhNaHmLWY8XR8SYCKlReb2AIQL+jrtGD8XoE07A@vger.kernel.org
X-Gm-Message-State: AOJu0Yx76k6gTOHHrI+z61pjTkJx0KYajz6HYXcmzyk+lXNvXPhdteDE
	BlzyI1n9PSEnGV1FdbepePM50DTy+FOxauFO3cuYgKnJaOBLfJbRsei9WBP7y+TNiVzHgPKeVo9
	pEqAJm1luO/vZvpJgBOZnIKwxgvdGvFkV2WgtNQ==
X-Gm-Gg: ASbGncsCwX++GHHy4N3R0tNhcTgfjhTYnmAusBWS2qOnCLT4RprIngp2ram+rh94gqL
	GLTf0KB4mAFGMDcCaTWBTm+OjBcwlyQ==
X-Google-Smtp-Source: AGHT+IGBIJn2l6iW1Ximwej5Nomk1X6Bfwt6JsYUR9VUOC3nDn5WmX59qNhA/dgRca4VNr6bv6dLyhB1J1APS3de4mI=
X-Received: by 2002:a17:906:3101:b0:a9a:dc3:c86e with SMTP id
 a640c23a62f3a-aa50990b1aamr172667166b.11.1732266989281; Fri, 22 Nov 2024
 01:16:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241121-add-mtk-isp-3-0-support-v7-0-b04dc9610619@baylibre.com>
 <20241121-add-mtk-isp-3-0-support-v7-4-b04dc9610619@baylibre.com> <85ab1984c04b1eddbea71006ab5d95cb4333d838.camel@mediatek.com>
In-Reply-To: <85ab1984c04b1eddbea71006ab5d95cb4333d838.camel@mediatek.com>
From: Julien Stephan <jstephan@baylibre.com>
Date: Fri, 22 Nov 2024 10:16:18 +0100
Message-ID: <CAEHHSvaEzCGZt3GpKBNDGUphetR7JWfJ7SZfvAU=O-3M4WZY7w@mail.gmail.com>
Subject: Re: [PATCH v7 4/5] media: platform: mediatek: isp: add mediatek
 ISP3.0 camsv
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Cc: "mchehab@kernel.org" <mchehab@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"robh@kernel.org" <robh@kernel.org>, =?UTF-8?B?QW5keSBIc2llaCAo6Kyd5pm655qTKQ==?= <Andy.Hsieh@mediatek.com>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	"laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"paul.elder@ideasonboard.com" <paul.elder@ideasonboard.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"fsylvestre@baylibre.com" <fsylvestre@baylibre.com>, "pnguyen@baylibre.com" <pnguyen@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 22 nov. 2024 =C3=A0 08:54, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) <ck.=
hu@mediatek.com> a =C3=A9crit :
>
> Hi, Julien:
>
> On Thu, 2024-11-21 at 09:53 +0100, Julien Stephan wrote:
> > External email : Please do not click links or open attachments until yo=
u have verified the sender or the content.
> >
> >
> > From: Phi-bang Nguyen <pnguyen@baylibre.com>
> >
> > This driver provides a path to bypass the SoC ISP so that image data
> > coming from the SENINF can go directly into memory without any image
> > processing. This allows the use of an external ISP.
> >
> > Signed-off-by: Phi-bang Nguyen <pnguyen@baylibre.com>
> > Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
> > [Paul Elder fix irq locking]
> > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > Co-developed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Co-developed-by: Julien Stephan <jstephan@baylibre.com>
> > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> > ---
>
> [snip]
>
> > +static void mtk_cam_cmos_vf_enable(struct mtk_cam_dev *cam_dev,
> > +                                  bool enable, bool pak_en)
> > +{
> > +       if (enable)
> > +               cam_dev->hw_functions->mtk_cam_cmos_vf_hw_enable(cam_de=
v);
>
> Directly call mtk_camsv30_cmos_vf_hw_enable().
> This has discussed in previous version [1].
>
> [1] https://patchwork.kernel.org/project/linux-mediatek/patch/20240729-ad=
d-mtk-isp-3-0-support-v6-4-c374c9e0c672@baylibre.com/#25966327
>

Hi CK,

I forgot about that discussion sorry :/
I guess you want me to completely remove the  mtk_cam_hw_functions struct?
In that case, what do you prefer:
- keep mtk_camsv30_hw.c and put signatures in mtkcamsv30_hw.h and
include mtk_camsv30_hw.h in mtk_camsv_video.c
- rename mtk_camsv30_hw.c to mtk_camsv_hw.c (and all functions) and
put signatures in mtk_camsv_hw.h

Cheers
Julien

> Regards,
> CK
>
> > +       else
> > +               cam_dev->hw_functions->mtk_cam_cmos_vf_hw_disable(cam_d=
ev);
> > +}
> > +
>
> >
>
> ************* MEDIATEK Confidentiality Notice ********************
> The information contained in this e-mail message (including any
> attachments) may be confidential, proprietary, privileged, or otherwise
> exempt from disclosure under applicable laws. It is intended to be
> conveyed only to the designated recipient(s). Any use, dissemination,
> distribution, printing, retaining or copying of this e-mail (including it=
s
> attachments) by unintended recipient(s) is strictly prohibited and may
> be unlawful. If you are not an intended recipient of this e-mail, or beli=
eve
> that you have received this e-mail in error, please notify the sender
> immediately (by replying to this e-mail), delete any and all copies of
> this e-mail (including any attachments) from your system, and do not
> disclose the content of this e-mail to any other person. Thank you!

