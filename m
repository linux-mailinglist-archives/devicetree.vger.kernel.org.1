Return-Path: <devicetree+bounces-123709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD2D9D5C19
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FAE6281674
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CB4C1DB54C;
	Fri, 22 Nov 2024 09:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="il48mVgP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA9E1D0143
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 09:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732268707; cv=none; b=Wmm1zqM9oSoNQ4YzzYDrJQRFXJVbcgAuUCcSbxnId053bdEcbqhngv3H262PU+tbya+tWuYDQeo9r/v0LM0MbE/2gNBNTGjQ4abpQStgrv0wY+zUqQkOaPndhLezyQtR6BONn1piZffmcJhE6NDTJHEx9gm2dOqabGihqcGd5vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732268707; c=relaxed/simple;
	bh=rh5y7iuvpjJm0tGzNzHX8c4j5Nqms78d7FpKWJ66heA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l1qiQhdZaBan5Wy7UmHXUtHi35oiDyylnX6FMtAGTinKxy8iFO2zTztQBhtXNkIOcldE5oh8SDpbnadgkn9uKQxFurLvUS4SA+RSerGGOLwRKJqiRJeTu4OjwK6lU9jjZ3THfzUqrUZGMjvyl6SkSebX+w648ci0XTYnoQFIqFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=il48mVgP; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a9f1c590ecdso329392566b.1
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 01:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732268703; x=1732873503; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1hd6q8zDhHex0K31D5UPVNO7yeK6NJNFYGAAxQqzFbc=;
        b=il48mVgP2n+QeKx8w4z/iKbOt+nDpj1cLMK0v+BnOPeUDQsepu56p97ams4e30dut7
         ilEVPdt+biqPvMkWKCDK2GzSMhEnMXnJw0+xop/PuFnT+Mmm4iuk37LnG0R06+AjFBm7
         F9WDcj/1l0PdM11J4Xbw3MSZxjZEQ+7ktTVW9gPahtwlw3Ld/G5R+O6sgFAbaJHwwD+p
         DLdyZytva7ncujd45j1za+V4Yko//mTLSwpjec8JLFWXzwLsXMdqTDc2G4XXCyspA1R0
         unY3LwKX990N8YiOeiqrcmfRDikskn/25jQLv7QTX/2AswdkunkA+ourjaj1UsEJev/n
         P5uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732268703; x=1732873503;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1hd6q8zDhHex0K31D5UPVNO7yeK6NJNFYGAAxQqzFbc=;
        b=C1KFnc8coPq43Jphf9t5KiFo3q9XR0zGqD73Cwh09Kl8EPGw1yJxqJybv8tw3tgmml
         BKdxu+s+gwhZfK5H7td5jfUPxqf2cEmNzDwO9ld6OJJ7K+Nl57/71TZ80IdS0bcI1K7T
         p+YU7ko6bUNcZsMgvgfciYomZoWSdbzAEPWyg8Q9AMc6FQ+gu9STZLD4tML9RvQjcFIU
         M9o+O9iCnr8ZZq24zJgU1ehUefVHLpZbf2JoIjFyjGiO/gkrx2rh8OrwFjBJYabVUJIN
         6tkJrs3uTdY3lYm3ucAkK5VLOEftck2d6l2dhBa0n73JC4P6V+3h1ZdW+3FTtZStSZpV
         4lCQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6M9RoxeX33Bg3L6Cdcyg4p9QZu77MwWdWJE86JuSzzY6Is4Zno99Pbhj1+89TKOcIV3L6JCeQkNYT@vger.kernel.org
X-Gm-Message-State: AOJu0YwfTgkwDJwc3/TbBrat+BZ0l3+Kctq/qwlxk2JQ7asqp/2IDGKm
	n7Mt21xsuVYdAtguwo/+H/1b23vXKdASr8OjTjO0sgCGYgy+pMg6DXBX4fZ3AcV+K4pL/T/4dYF
	BykXYVU+N/MIivxLCeNIROEfUc50S44CsOYANhg==
X-Gm-Gg: ASbGncssyixP9TZrYKuPbqbYQtwlL0h8NToFaE2im9oWbv9B4tVm1kUlCFdks2xrgVD
	hBGA4OjylfchUUJwB5GMfVCtjaHyYPA==
X-Google-Smtp-Source: AGHT+IF2siysXCL8AuQk/Zj9BKQZImmKFwTANKrD+H57DhSj6YZ4aXozWUBRbTyiMmt32yK0vwfP+uNoBA8OHC90tE4=
X-Received: by 2002:a17:906:310b:b0:aa5:2237:67af with SMTP id
 a640c23a62f3a-aa522376878mr15619866b.9.1732268703393; Fri, 22 Nov 2024
 01:45:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241121-add-mtk-isp-3-0-support-v7-0-b04dc9610619@baylibre.com>
 <20241121-add-mtk-isp-3-0-support-v7-4-b04dc9610619@baylibre.com> <b0af0ec1545b33fed81f34a866bc7b7222c78ad7.camel@mediatek.com>
In-Reply-To: <b0af0ec1545b33fed81f34a866bc7b7222c78ad7.camel@mediatek.com>
From: Julien Stephan <jstephan@baylibre.com>
Date: Fri, 22 Nov 2024 10:44:52 +0100
Message-ID: <CAEHHSvbFw+MC0R3w7isgrF15JAAfBWQmSkh1PoiU7y+P4O2psw@mail.gmail.com>
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

Le ven. 22 nov. 2024 =C3=A0 10:19, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) <ck.=
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
> > +static void mtk_cam_vb2_buf_queue(struct vb2_buffer *vb)
> > +{
> > +       struct mtk_cam_dev *cam =3D vb2_get_drv_priv(vb->vb2_queue);
> > +       struct mtk_cam_dev_buffer *buf =3D to_mtk_cam_dev_buffer(vb);
> > +       unsigned long flags;
> > +
> > +       /* Add the buffer into the tracking list */
> > +       spin_lock_irqsave(&cam->buf_list_lock, flags);
> > +       if (list_empty(&cam->buf_list))
> > +               (*cam->hw_functions->mtk_cam_update_buffers_add)(cam, b=
uf);
> > +
> > +       list_add_tail(&buf->list, &cam->buf_list);
> > +       (*cam->hw_functions->mtk_cam_fbc_inc)(cam);
>
> I think fbc_inc should together with update_buffers_add.
> After update_buffers_add then fbc_inc.
> So squash fbc_inc into update_buffers_add and drop fbc_inc function.
>

No, this is not true.
mtk_cam_update_buffers_add is used to indicate which buffer should be
used for dma write. This is the first entry in the buf list.
mtk_cam_fbc_inc is used to increase the number of available user space buff=
ers.

If the buffer list is not empty and user space calls buf_queue again,
we need to call mtk_cam_fbc_inc to increase the number of available
user buffers, but we don't want to change the buffer for DMA write.

mtk_camsv30_update_buffers_add is called on irq to update the address
to the next buffer (if available).

Maybe the name mtk_camsv30_update_buffers_add is confusing then?
What do you think about:
- mtk_camsv30_update_buffers_add -> mtk_camsv30_update_buffers_address
- mtk_cam_fbc_inc -> mtk_camsv30_buffer_add

Cheers
Julien

 > Regards,
> CK
>
> > +       spin_unlock_irqrestore(&cam->buf_list_lock, flags);
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

