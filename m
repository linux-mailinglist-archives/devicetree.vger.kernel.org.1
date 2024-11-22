Return-Path: <devicetree+bounces-123701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F03EB9D5BDF
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 773551F22020
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B91B189BBA;
	Fri, 22 Nov 2024 09:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0VltoJIc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0D1176AB6
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 09:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732267553; cv=none; b=CjGHMaovkZYOWLj+8eGXgbvQYDe/VHd64nmS6lJR41cMT0lHydLu87Mq+EKxnVdOGUbAvFGVlNCpyEBgxgWMPHO1mlQwkUvZOu5VHePD6ybMeAjuAiB/Nn6GA001WqHyGMlpLHpJeXfvkFm0USOMP9b/ileUF/spUvxevsixixM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732267553; c=relaxed/simple;
	bh=yc0fJubc64CpPPPO5rh39xdgkeVNt62XS7Y+a6w3kRw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lZQkzvkjfEdHjLAdYByxcQ/GFfL7InRmajQm3JPdqvjAgZPoYTlIi3yCy5jX83K0ScqzbB0keYPAbOPELnxu8rO5fphHC3bu/HslZZsfYyeZZf3QDye4Rj/Y0KCMcmzM1RFILsu2PGN1QuTASW5+fPwqOw3M3qcUy32D54Yp5wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0VltoJIc; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a9ec267b879so304835166b.2
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 01:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732267550; x=1732872350; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8kGVIObe0vVdWgPVNKUPs0E9cZC3gBnTEl6g/zCTMjk=;
        b=0VltoJIc8irbMu1L8+SU00irK/xc6YJXfFgUWctDq9jEA0BST5Qh5romhDMHGnV08u
         pbe2DQY9/Lkegu9b/S6vcIP07haf93v2VkOvOYlA18PRN4A8JUyTuGMDWkJqJmv0+NxV
         eLF8B9RcQ3TLLRuaDr+36xprpXBNk26KcsDbF74Dvs87P8eDivxkGQqDE4UTnuM66Qjr
         HkGZ9tOBq4tptjCgQlaBWPcin8R5dM238NRI36f6WpKlKE40s+HNJU40iHcToraR41Tw
         pxHAbHkLkc+HCWGyLMvZYMD5TqZdpGOM8PM8mxw6a1g+HOI1mtT1mzqUUOBjACWF9s3T
         WBLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732267550; x=1732872350;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8kGVIObe0vVdWgPVNKUPs0E9cZC3gBnTEl6g/zCTMjk=;
        b=MP/CF8kwkznc7fhMj/hoTofRsURmFKEqdOYa8hArvfUpl945EamyQ512QvryTlDW4a
         1YYGFq9jVZdJtzZFEMtWititDQekm0BDZOCOJpGQOtVObCzwpMUWblQxpz7hP2TA6nmb
         hCTh0lfMe3lPKJwhy6irVfm89LR6HRIHrSoS/gN7sqKuZxyX5L/AILcXBzIM5ZHR1l0W
         rQH4ZRiq1K0WrKr1xR0ooa5aAEBfK64uSUQqKzQfhluMGY+C8wB5WSlcww3NlYP3UseM
         Q1woKUtTMSWXS0InImUpUKlOuab2CVwVapzO3WK86V3W3DjctMFZAU/QI/2qAZLCAS2m
         ZkLA==
X-Forwarded-Encrypted: i=1; AJvYcCVB0rhnJq/7FcMQiFkkj20hguJSKALkkiGntQ4BrZ/8Feeiv0WglLJSAs4Erl4PGFRPhBwFDSqNAN8S@vger.kernel.org
X-Gm-Message-State: AOJu0Yz03dQoFINaWj7K1VgfxaCdRQBnPInF3vZxbogEPzTn9vb0S1U+
	eXk/wrqqnMyK5vkAetfhZMCVSpASi9lGCSqeg9bE6mSusn2uSCcNlf2XMwLTrnPEnOSAVPe1Ydw
	YZLwc8hj1U4YO5Jlr9Xbo6NJxHBWH35Fw9Ey/d/G53fnqMaiwLlM=
X-Gm-Gg: ASbGncuGc1rlCl/061ye/Bfx8uZtNALqaOLXamTAbua4N+fsnQ40bk0Lm58GsIlKPt4
	fK6tb5CEiQM36CXiGo5rFob7e9b4inQ==
X-Google-Smtp-Source: AGHT+IGelwCxgal9/XHOQ4gQV2eBA2tvjKzser7OohWcveCSBW6AFI6GvR8S/BH009DfNRCjqG5gbgXZGS6L6ZzyHyQ=
X-Received: by 2002:a17:906:3101:b0:a99:5f16:3539 with SMTP id
 a640c23a62f3a-aa509694028mr173072766b.0.1732267550340; Fri, 22 Nov 2024
 01:25:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241121-add-mtk-isp-3-0-support-v7-0-b04dc9610619@baylibre.com>
 <20241121-add-mtk-isp-3-0-support-v7-4-b04dc9610619@baylibre.com> <767085562b5efb43f248e8528bb154a6c30d3999.camel@mediatek.com>
In-Reply-To: <767085562b5efb43f248e8528bb154a6c30d3999.camel@mediatek.com>
From: Julien Stephan <jstephan@baylibre.com>
Date: Fri, 22 Nov 2024 10:25:39 +0100
Message-ID: <CAEHHSvaePj2MUg+zgmkpZF4HTj_F9ED0RxuzQr2oOAUJgOieng@mail.gmail.com>
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

Le ven. 22 nov. 2024 =C3=A0 09:41, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) <ck.=
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
> > +static irqreturn_t isp_irq_camsv30(int irq, void *data)
> > +{
> > +       struct mtk_cam_dev *cam_dev =3D (struct mtk_cam_dev *)data;
> > +       struct mtk_cam_dev_buffer *buf;
> > +       unsigned int irq_status;
> > +
> > +       spin_lock(&cam_dev->buf_list_lock);
> > +
> > +       irq_status =3D mtk_camsv30_read(cam_dev, CAMSV_INT_STATUS);
> > +
> > +       if (irq_status & INT_ST_MASK_CAMSV_ERR)
> > +               dev_err(cam_dev->dev, "irq error 0x%lx\n",
> > +                       irq_status & INT_ST_MASK_CAMSV_ERR);
> > +
> > +       /* De-queue frame */
> > +       if (irq_status & CAMSV_IRQ_PASS1_DON) {
> > +               cam_dev->sequence++;
> > +
> > +               buf =3D list_first_entry_or_null(&cam_dev->buf_list,
> > +                                              struct mtk_cam_dev_buffe=
r,
> > +                                              list);
> > +               if (buf) {
> > +                       buf->v4l2_buf.sequence =3D cam_dev->sequence;
> > +                       buf->v4l2_buf.vb2_buf.timestamp =3D
> > +                               ktime_get_ns();
> > +                       vb2_buffer_done(&buf->v4l2_buf.vb2_buf,
> > +                                       VB2_BUF_STATE_DONE);
> > +                       list_del(&buf->list);
> > +               }
> > +
> > +               buf =3D list_first_entry_or_null(&cam_dev->buf_list,
> > +                                              struct mtk_cam_dev_buffe=
r,
> > +                                              list);
> > +               if (buf)
> > +                       mtk_camsv30_update_buffers_add(cam_dev, buf);
>
> If buf =3D=3D NULL, so hardware would automatically stop DMA?
> I don't know how this hardware work.
> Below is my imagine about this hardware.
>
> 1. Software use CAMSV_IMGO_FBC_RCNT_INC to increase software buffer index=
.
> 2. Hardware has a hardware buffer index. After hardware finish one frame,=
 hardware buffer index increase.
> 3. After software buffer index increase, hardware start DMA.
> 4. When hardware buffer index is equal to software buffer index, hardware=
 automatically stop DMA.
>
> Does the hardware work as my imagine?
> If hardware could automatically stop DMA, add comment to describe.
> If hardware could not automatically stop DMA, software should do somethin=
g to stop DMA when buf =3D=3D NULL.
>

You are right except that dma is not stopped but frames are
automatically dropped by hardware until a new buffer is enqueued and
software uses CAMSV_IMGO_FBC_RCNT_INC to increase the software buffer
index.

What about adding the following comment:

/*
* If there is no user buffer available, hardware will drop automatically
* frames until buf_queue is called
*/

Let me know if that works for you

Cheers
Julien

> Regards,
> CK
>
> > +       }
> > +
> > +       spin_unlock(&cam_dev->buf_list_lock);
> > +
> > +       return IRQ_HANDLED;
> > +}
> > +
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

