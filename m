Return-Path: <devicetree+bounces-123765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A2E9D5E8B
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 13:06:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 415ABB21DE2
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 12:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C5EE1DDC39;
	Fri, 22 Nov 2024 12:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XsHpgckC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162AF2AE96
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 12:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732277154; cv=none; b=iNK6nherdwfFGjOLusj94fDhhtJUx5lKyIB+DAPgMnLRs1j7t165kHm096jvtadPHg+kFJsib6B+I8qTkMdMO5uLaYAcoskNiGbEzfTb838ap85qmO65+L+lCgHegc+EusruH4RiwzlfGZfqkXqKG9dstHllY+xzM2B67xum9GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732277154; c=relaxed/simple;
	bh=nC70DHI6JmN62v3WH0A1S5saG1XNJEDFSGcxO9nNAxI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R309osaqvNiqXAfEKerjpjGrx505vOw4Xq+M4OD4Y6mv5VQ6sfRsb9yHvww+lmfXRdI8ZINn8nNKfQQ/Jl6MamiTTV0JCSxG97H+oKLnaz0IG+s9JfeV5f9RypbmDfuvi8WsjfLpgseuVXwyQRPTqFEKRr/ABP69EQY4cJHiKlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XsHpgckC; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5cfcb7183deso5365453a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 04:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732277150; x=1732881950; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4awdIKHOc9tiTWW/sGRWFK525oUkjPltfSOQCltNHK8=;
        b=XsHpgckC9ayV3m8IcvUikWCo/CJPrgJxchusfeo6lrP2n9Ny/4MlLx8Ri5aStbg6ii
         EPEeGnRwhnzEt6X9YJ0U5HPpf/gd1yXhJ+NuaFqY5nVMJgA5uid01kdYcblyCd5gY9jq
         mqePOrKIH2Po0uS6FCaL844jm0ShXf4G1NSKfJFaHySTjxr0DhCD8LjQmZHaDnfHMevh
         YyUitV+5CACSXZeq84uIMmNxZpYRuP7IDSyLwACLWGITVZ6NcWkEXsr2TMLxIrUpwMGG
         bz49J3w6sF4UutUTANJwxjhrwMU8QsMGMJIq0i5B3IE54rBINA/g++iEL6xdPGq6O+bs
         WWKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732277150; x=1732881950;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4awdIKHOc9tiTWW/sGRWFK525oUkjPltfSOQCltNHK8=;
        b=MnaM4Pscq1zHJSuvZrA1L+T28ysgKo/9d6qI+4Nm4VjlqqKK5dCJgogdqA/OY0He5X
         wBTo0AXojNj5lmvLyprekh1gvHd8s+S0y6wlmDGq6JPZDnkcahreOW5YGkHJr2rrd5EQ
         axdc+GCc/waLsKQ6e2He6M9qYO/ELzcc3/Ak4mkdxNLnccdSxQgmlR30ba7hK6w/0Dgs
         vESjj84tSeuolj0ToQvQy4HV85Dy6HG3By68WulgiMEJnm71lSLT47ZOv/jo7oQ6jEAZ
         sVvvsdksUD59PUeqfMZvDL9C4vnw2ZLO8jbOdAKwdlFzyh/Kys15HR4JpCiXadSD6+NA
         6PIw==
X-Forwarded-Encrypted: i=1; AJvYcCVWeGXEr2gya4OeZ6qfISgQyfevziC/jPLAOb+SDcK7ijkmcOpyMe/FtC2kBoIxNI8fLCcgH2Aq6rMf@vger.kernel.org
X-Gm-Message-State: AOJu0YyT4PLJWRcjVgp5TwYemQ+tDmRPgvLusGjSr+3Qnzjsl5JEYqau
	rccsmhwYpVYx0MCpSx3x/KVpSy+Gn36ZINvX+NKhzAK/l01KIu5MWbf4Najn6yo0Ug3ru8nLf+U
	83NOF5R9Ztudb7whhpIYC7c8eF84yZxzJk/mZwQ==
X-Gm-Gg: ASbGncvLs7yP3Tmz87iHST3eG5rV8RZE+RsApuom2Ccsr3+AGuazDH9LBJIGHaKSezV
	IZ465muPFyitWlA7Ny5rkbuFnQ4/v/Q==
X-Google-Smtp-Source: AGHT+IFWFYdsVIpAWJgT1gtIynsJvUXbIXbPCzIef0ApS6AMShnnTq5vw0bsEUMO1YOnSWNsqqmfLQ4iMDl5v7PuDGo=
X-Received: by 2002:a17:907:31c5:b0:a9a:e0b8:5bac with SMTP id
 a640c23a62f3a-aa4efe2a1f6mr606014366b.23.1732277150378; Fri, 22 Nov 2024
 04:05:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241121-add-mtk-isp-3-0-support-v7-0-b04dc9610619@baylibre.com>
 <20241121-add-mtk-isp-3-0-support-v7-4-b04dc9610619@baylibre.com>
 <767085562b5efb43f248e8528bb154a6c30d3999.camel@mediatek.com>
 <CAEHHSvaePj2MUg+zgmkpZF4HTj_F9ED0RxuzQr2oOAUJgOieng@mail.gmail.com>
 <bd73658d8ceac0ce236f08f31065350123056724.camel@mediatek.com>
 <CAEHHSvZLx3MqzK_qheiXm1UsB=i=8f2QbGTpXPkdU2aqUJtvww@mail.gmail.com> <b234ccf388cfc933d7941cbe94ce6ae590ad17e1.camel@mediatek.com>
In-Reply-To: <b234ccf388cfc933d7941cbe94ce6ae590ad17e1.camel@mediatek.com>
From: Julien Stephan <jstephan@baylibre.com>
Date: Fri, 22 Nov 2024 13:05:38 +0100
Message-ID: <CAEHHSvbGKOV6x8B9Hr_8_-UJD_AoR3aX9acAtwg4Nkgjsf0yow@mail.gmail.com>
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

Le ven. 22 nov. 2024 =C3=A0 11:01, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) <ck.=
hu@mediatek.com> a =C3=A9crit :
>
> On Fri, 2024-11-22 at 10:50 +0100, Julien Stephan wrote:
> > External email : Please do not click links or open attachments until yo=
u have verified the sender or the content.
> >
> >
> > Le ven. 22 nov. 2024 =C3=A0 10:49, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) =
<ck.hu@mediatek.com> a =C3=A9crit :
> > >
> > > On Fri, 2024-11-22 at 10:25 +0100, Julien Stephan wrote:
> > > > External email : Please do not click links or open attachments unti=
l you have verified the sender or the content.
> > > >
> > > >
> > > > Le ven. 22 nov. 2024 =C3=A0 09:41, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=
=89) <ck.hu@mediatek.com> a =C3=A9crit :
> > > > >
> > > > > Hi, Julien:
> > > > >
> > > > > On Thu, 2024-11-21 at 09:53 +0100, Julien Stephan wrote:
> > > > > > External email : Please do not click links or open attachments =
until you have verified the sender or the content.
> > > > > >
> > > > > >
> > > > > > From: Phi-bang Nguyen <pnguyen@baylibre.com>
> > > > > >
> > > > > > This driver provides a path to bypass the SoC ISP so that image=
 data
> > > > > > coming from the SENINF can go directly into memory without any =
image
> > > > > > processing. This allows the use of an external ISP.
> > > > > >
> > > > > > Signed-off-by: Phi-bang Nguyen <pnguyen@baylibre.com>
> > > > > > Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
> > > > > > [Paul Elder fix irq locking]
> > > > > > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > > > > > Co-developed-by: Laurent Pinchart <laurent.pinchart@ideasonboar=
d.com>
> > > > > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.=
com>
> > > > > > Co-developed-by: Julien Stephan <jstephan@baylibre.com>
> > > > > > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> > > > > > ---
> > > > >
> > > > > [snip]
> > > > >
> > > > > > +static irqreturn_t isp_irq_camsv30(int irq, void *data)
> > > > > > +{
> > > > > > +       struct mtk_cam_dev *cam_dev =3D (struct mtk_cam_dev *)d=
ata;
> > > > > > +       struct mtk_cam_dev_buffer *buf;
> > > > > > +       unsigned int irq_status;
> > > > > > +
> > > > > > +       spin_lock(&cam_dev->buf_list_lock);
> > > > > > +
> > > > > > +       irq_status =3D mtk_camsv30_read(cam_dev, CAMSV_INT_STAT=
US);
> > > > > > +
> > > > > > +       if (irq_status & INT_ST_MASK_CAMSV_ERR)
> > > > > > +               dev_err(cam_dev->dev, "irq error 0x%lx\n",
> > > > > > +                       irq_status & INT_ST_MASK_CAMSV_ERR);
> > > > > > +
> > > > > > +       /* De-queue frame */
> > > > > > +       if (irq_status & CAMSV_IRQ_PASS1_DON) {
> > > > > > +               cam_dev->sequence++;
> > > > > > +
> > > > > > +               buf =3D list_first_entry_or_null(&cam_dev->buf_=
list,
> > > > > > +                                              struct mtk_cam_d=
ev_buffer,
> > > > > > +                                              list);
> > > > > > +               if (buf) {
> > > > > > +                       buf->v4l2_buf.sequence =3D cam_dev->seq=
uence;
> > > > > > +                       buf->v4l2_buf.vb2_buf.timestamp =3D
> > > > > > +                               ktime_get_ns();
> > > > > > +                       vb2_buffer_done(&buf->v4l2_buf.vb2_buf,
> > > > > > +                                       VB2_BUF_STATE_DONE);
> > > > > > +                       list_del(&buf->list);
> > > > > > +               }
> > > > > > +
> > > > > > +               buf =3D list_first_entry_or_null(&cam_dev->buf_=
list,
> > > > > > +                                              struct mtk_cam_d=
ev_buffer,
> > > > > > +                                              list);
> > > > > > +               if (buf)
> > > > > > +                       mtk_camsv30_update_buffers_add(cam_dev,=
 buf);
> > > > >
> > > > > If buf =3D=3D NULL, so hardware would automatically stop DMA?
> > > > > I don't know how this hardware work.
> > > > > Below is my imagine about this hardware.
> > > > >
> > > > > 1. Software use CAMSV_IMGO_FBC_RCNT_INC to increase software buff=
er index.
> > > > > 2. Hardware has a hardware buffer index. After hardware finish on=
e frame, hardware buffer index increase.
> > > > > 3. After software buffer index increase, hardware start DMA.
> > > > > 4. When hardware buffer index is equal to software buffer index, =
hardware automatically stop DMA.
> > > > >
> > > > > Does the hardware work as my imagine?
> > > > > If hardware could automatically stop DMA, add comment to describe=
.
> > > > > If hardware could not automatically stop DMA, software should do =
something to stop DMA when buf =3D=3D NULL.
> > > > >
> > > >
> > > > You are right except that dma is not stopped but frames are
> > > > automatically dropped by hardware until a new buffer is enqueued an=
d
> > > > software uses CAMSV_IMGO_FBC_RCNT_INC to increase the software buff=
er
> > > > index.
> > > >
> > > > What about adding the following comment:
> > > >
> > > > /*
> > > > * If there is no user buffer available, hardware will drop automati=
cally
> > > > * frames until buf_queue is called
> > > > */
> > >
> > > You say DMA is not stopped. Do you mean hardware still write data int=
o latest buffer which would be dequeued to user space?
> > > I think hardware should not write data into the buffer which has been=
 take away by user space.
> > > I think software should do something to stop DMA. Maybe use mtk_camsv=
30_cmos_vf_hw_disable() to stop DMA.
> > >
> >
> > No, I said frame is dropped.. It does not write any data.
>
> OK, for me, DMA mean memory access. Not writing any data is equal to stop=
 DMA for me.
> The comment is OK for me now. But it may change after we discuss fbc_inc.
>

OK, sorry for confusion!
Did you notice my previous reply about fbc_inc?

Cheers
Julien

> Regards,
> CK
>
> >
> > > Regards,
> > > CK
> > >
> > > >
> > > > Let me know if that works for you
> > > >
> > > > Cheers
> > > > Julien
> > > >
> > > > > Regards,
> > > > > CK
> > > > >
> > > > > > +       }
> > > > > > +
> > > > > > +       spin_unlock(&cam_dev->buf_list_lock);
> > > > > > +
> > > > > > +       return IRQ_HANDLED;
> > > > > > +}
> > > > > > +
> > > > >
> > > > > ************* MEDIATEK Confidentiality Notice *******************=
*
> > > > > The information contained in this e-mail message (including any
> > > > > attachments) may be confidential, proprietary, privileged, or oth=
erwise
> > > > > exempt from disclosure under applicable laws. It is intended to b=
e
> > > > > conveyed only to the designated recipient(s). Any use, disseminat=
ion,
> > > > > distribution, printing, retaining or copying of this e-mail (incl=
uding its
> > > > > attachments) by unintended recipient(s) is strictly prohibited an=
d may
> > > > > be unlawful. If you are not an intended recipient of this e-mail,=
 or believe
> > > > > that you have received this e-mail in error, please notify the se=
nder
> > > > > immediately (by replying to this e-mail), delete any and all copi=
es of
> > > > > this e-mail (including any attachments) from your system, and do =
not
> > > > > disclose the content of this e-mail to any other person. Thank yo=
u!
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
> >
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

