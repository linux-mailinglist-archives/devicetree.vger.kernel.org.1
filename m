Return-Path: <devicetree+bounces-123711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F15E19D5C6C
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:52:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EAA11F2290B
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:52:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 556F31DE4D6;
	Fri, 22 Nov 2024 09:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pn26vLy9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA891DB54C
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 09:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732269072; cv=none; b=CCud2Y2ibVQYZV2b9SBvto0uVC7xolW0vqCs7o8MzTdmRP4W08jkhEXDvmZzaxgKZvhu/VfsSv2XQOOjbzEM6oHqlO09eJt0BLvfp1+nK6IGE5t6l9YcQTfq6uy0iUT3j16T/O+gNt7Bpj0k7ihBkvwfjih8QAozfOWOfztEXB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732269072; c=relaxed/simple;
	bh=VSxL2vXjFQHEkYh66t3x3efNNjrn4/60enBHM3LZn7c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LHNnJ5kywFMcB84dIBKIIl6ABKQBPTWbdQ59+xOer5ZQw66GNHvSzduuPUCze3FZm0FJv5Sl1pmRgRiQK9XQyBZgDFMdrUskSFadnY3eREJ7an7MWIr2vaHxgu7Rx3Sw2ApNmYN9xMKzWG90gwIa3PMrXmqeQv4mPoyyJSS6sDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pn26vLy9; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa51bf95ce1so44083466b.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 01:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732269068; x=1732873868; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8CB8WOobi0NsUlzpJw2qyuKbbHXDJo9rU7wn4TqR3oA=;
        b=pn26vLy9XBOnIcpepV3I0+JeF2xLrDbzCBagHxLQWhHWU1g2f0pnw9K0bCqPPdAyyf
         XS00YwbkH03Szi927+oNGwa7vAMTbK7nN05mRa6S3F9aqruLK2MfFqm4UGy4hVuoePGZ
         eJs5jVOqOZCE3sgJOWpfhh3DAdS1WRKjzmlj0oGCAS2pNIMFx16FbtH8MmllHaof4Kvb
         rXDi3+hrYRqz6Roguh5+3vDYJbsQFMjrWWwbKxLD1UuvMuoF022afCSOZQwAb+9U6qvi
         27FpIMC64HKOIQaB9mqzLQuzA5mnZ6Jx/b0Zcxrqs2kMWY5p8kKOdwb+KzeRj8JysPks
         qEPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732269068; x=1732873868;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8CB8WOobi0NsUlzpJw2qyuKbbHXDJo9rU7wn4TqR3oA=;
        b=X6tEdPfpp/NRoeau9FFPC3cV9MzukaAuOXnNkfYEIxGU8ZNCeHO4cmLv8KonD99FDv
         Iu/L/tG+DaQbQ+34mjT0EP4inNJ+bCdRVWEVrUF5pcgrGPMmpHK35hkdYxx64+C2/95/
         KS1/Y/xxiWCrjdyJe8sPgyLoV4QUL4jC/GoUD9dC/b1U9jX4zJo24SjmuhlaQtJMnvll
         3a3fgkJO26SSlTqX1PQvudtrK9vzokWf60ExJFHOULi23aivO4uMvNwj6YFVBjyfnzMx
         XS+EIlBsBhCphXbLhx9x2/ex3yzZlG+NDbo0PNp+7SkLQI0nlucgVLfVIPB8YidtxQC8
         G8+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWhULlqMzWr8paATQE03/E442Aurazb2rVRZ7aKi4LKz9yGg3Sa/BqFsJdqY1nSUQQZ5Zq1XaFQMwRE@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc3XFBiGUJU1nAHLGJDv6IJTztt2eQ47JWuaMZVJbEkpGf09Gy
	2IKDteX+H1fzr1KeJ+RyQlXd5iUVoadRlcz0LobgBtFRaOJpGnUDttBLrSF6pee2OqnYCX141w9
	woFFf4dieJVdUEd3EDOLFi+gOz6yQ8GgWkLdkZg==
X-Gm-Gg: ASbGncvV/nRWbviaTlgRdiyjvbpXouGTz/55UNc0W7qRl+sIrvftV/nJCoKn6fHcx12
	VQLZj/i9kEPltskPCOawI/cZd03pEHA==
X-Google-Smtp-Source: AGHT+IEkU0Mn40THI/AVHurhKWm5N7rlSNrjj7ZiLosKeFVer5SPt3gDYvZssurTE0nVTHMxqmXqPCZcZcDt8ABysRo=
X-Received: by 2002:a17:907:771a:b0:a9a:5cf8:9e40 with SMTP id
 a640c23a62f3a-aa5099fb9f6mr154285266b.24.1732269068577; Fri, 22 Nov 2024
 01:51:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241121-add-mtk-isp-3-0-support-v7-0-b04dc9610619@baylibre.com>
 <20241121-add-mtk-isp-3-0-support-v7-4-b04dc9610619@baylibre.com>
 <767085562b5efb43f248e8528bb154a6c30d3999.camel@mediatek.com>
 <CAEHHSvaePj2MUg+zgmkpZF4HTj_F9ED0RxuzQr2oOAUJgOieng@mail.gmail.com> <bd73658d8ceac0ce236f08f31065350123056724.camel@mediatek.com>
In-Reply-To: <bd73658d8ceac0ce236f08f31065350123056724.camel@mediatek.com>
From: Julien Stephan <jstephan@baylibre.com>
Date: Fri, 22 Nov 2024 10:50:57 +0100
Message-ID: <CAEHHSvZLx3MqzK_qheiXm1UsB=i=8f2QbGTpXPkdU2aqUJtvww@mail.gmail.com>
Subject: Re: [PATCH v7 4/5] media: platform: mediatek: isp: add mediatek
 ISP3.0 camsv
To: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"paul.elder@ideasonboard.com" <paul.elder@ideasonboard.com>, "mchehab@kernel.org" <mchehab@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	=?UTF-8?B?QW5keSBIc2llaCAo6Kyd5pm655qTKQ==?= <Andy.Hsieh@mediatek.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	"laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "fsylvestre@baylibre.com" <fsylvestre@baylibre.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"pnguyen@baylibre.com" <pnguyen@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 22 nov. 2024 =C3=A0 10:49, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) <ck.=
hu@mediatek.com> a =C3=A9crit :
>
> On Fri, 2024-11-22 at 10:25 +0100, Julien Stephan wrote:
> > External email : Please do not click links or open attachments until yo=
u have verified the sender or the content.
> >
> >
> > Le ven. 22 nov. 2024 =C3=A0 09:41, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) =
<ck.hu@mediatek.com> a =C3=A9crit :
> > >
> > > Hi, Julien:
> > >
> > > On Thu, 2024-11-21 at 09:53 +0100, Julien Stephan wrote:
> > > > External email : Please do not click links or open attachments unti=
l you have verified the sender or the content.
> > > >
> > > >
> > > > From: Phi-bang Nguyen <pnguyen@baylibre.com>
> > > >
> > > > This driver provides a path to bypass the SoC ISP so that image dat=
a
> > > > coming from the SENINF can go directly into memory without any imag=
e
> > > > processing. This allows the use of an external ISP.
> > > >
> > > > Signed-off-by: Phi-bang Nguyen <pnguyen@baylibre.com>
> > > > Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
> > > > [Paul Elder fix irq locking]
> > > > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > > > Co-developed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.co=
m>
> > > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > > Co-developed-by: Julien Stephan <jstephan@baylibre.com>
> > > > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> > > > ---
> > >
> > > [snip]
> > >
> > > > +static irqreturn_t isp_irq_camsv30(int irq, void *data)
> > > > +{
> > > > +       struct mtk_cam_dev *cam_dev =3D (struct mtk_cam_dev *)data;
> > > > +       struct mtk_cam_dev_buffer *buf;
> > > > +       unsigned int irq_status;
> > > > +
> > > > +       spin_lock(&cam_dev->buf_list_lock);
> > > > +
> > > > +       irq_status =3D mtk_camsv30_read(cam_dev, CAMSV_INT_STATUS);
> > > > +
> > > > +       if (irq_status & INT_ST_MASK_CAMSV_ERR)
> > > > +               dev_err(cam_dev->dev, "irq error 0x%lx\n",
> > > > +                       irq_status & INT_ST_MASK_CAMSV_ERR);
> > > > +
> > > > +       /* De-queue frame */
> > > > +       if (irq_status & CAMSV_IRQ_PASS1_DON) {
> > > > +               cam_dev->sequence++;
> > > > +
> > > > +               buf =3D list_first_entry_or_null(&cam_dev->buf_list=
,
> > > > +                                              struct mtk_cam_dev_b=
uffer,
> > > > +                                              list);
> > > > +               if (buf) {
> > > > +                       buf->v4l2_buf.sequence =3D cam_dev->sequenc=
e;
> > > > +                       buf->v4l2_buf.vb2_buf.timestamp =3D
> > > > +                               ktime_get_ns();
> > > > +                       vb2_buffer_done(&buf->v4l2_buf.vb2_buf,
> > > > +                                       VB2_BUF_STATE_DONE);
> > > > +                       list_del(&buf->list);
> > > > +               }
> > > > +
> > > > +               buf =3D list_first_entry_or_null(&cam_dev->buf_list=
,
> > > > +                                              struct mtk_cam_dev_b=
uffer,
> > > > +                                              list);
> > > > +               if (buf)
> > > > +                       mtk_camsv30_update_buffers_add(cam_dev, buf=
);
> > >
> > > If buf =3D=3D NULL, so hardware would automatically stop DMA?
> > > I don't know how this hardware work.
> > > Below is my imagine about this hardware.
> > >
> > > 1. Software use CAMSV_IMGO_FBC_RCNT_INC to increase software buffer i=
ndex.
> > > 2. Hardware has a hardware buffer index. After hardware finish one fr=
ame, hardware buffer index increase.
> > > 3. After software buffer index increase, hardware start DMA.
> > > 4. When hardware buffer index is equal to software buffer index, hard=
ware automatically stop DMA.
> > >
> > > Does the hardware work as my imagine?
> > > If hardware could automatically stop DMA, add comment to describe.
> > > If hardware could not automatically stop DMA, software should do some=
thing to stop DMA when buf =3D=3D NULL.
> > >
> >
> > You are right except that dma is not stopped but frames are
> > automatically dropped by hardware until a new buffer is enqueued and
> > software uses CAMSV_IMGO_FBC_RCNT_INC to increase the software buffer
> > index.
> >
> > What about adding the following comment:
> >
> > /*
> > * If there is no user buffer available, hardware will drop automaticall=
y
> > * frames until buf_queue is called
> > */
>
> You say DMA is not stopped. Do you mean hardware still write data into la=
test buffer which would be dequeued to user space?
> I think hardware should not write data into the buffer which has been tak=
e away by user space.
> I think software should do something to stop DMA. Maybe use mtk_camsv30_c=
mos_vf_hw_disable() to stop DMA.
>

No, I said frame is dropped.. It does not write any data.

> Regards,
> CK
>
> >
> > Let me know if that works for you
> >
> > Cheers
> > Julien
> >
> > > Regards,
> > > CK
> > >
> > > > +       }
> > > > +
> > > > +       spin_unlock(&cam_dev->buf_list_lock);
> > > > +
> > > > +       return IRQ_HANDLED;
> > > > +}
> > > > +
> > >
> > > ************* MEDIATEK Confidentiality Notice ********************
> > > The information contained in this e-mail message (including any
> > > attachments) may be confidential, proprietary, privileged, or otherwi=
se
> > > exempt from disclosure under applicable laws. It is intended to be
> > > conveyed only to the designated recipient(s). Any use, dissemination,
> > > distribution, printing, retaining or copying of this e-mail (includin=
g its
> > > attachments) by unintended recipient(s) is strictly prohibited and ma=
y
> > > be unlawful. If you are not an intended recipient of this e-mail, or =
believe
> > > that you have received this e-mail in error, please notify the sender
> > > immediately (by replying to this e-mail), delete any and all copies o=
f
> > > this e-mail (including any attachments) from your system, and do not
> > > disclose the content of this e-mail to any other person. Thank you!
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

