Return-Path: <devicetree+bounces-124359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A78629D88F0
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 16:15:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F431B336DE
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 14:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63B351B0F30;
	Mon, 25 Nov 2024 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WYPZNpiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8661B0F25
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 14:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732545634; cv=none; b=kGv3/XSndVD8QjJyhac4e1U5n6oQZkMGNFnZTP4DLGrDBDXD6Z7oz13eM68IohRf2khd8asheV/NENrSDlGHaTqD5o2cUyCLTRfer55k2o9V7vuGBXiRg4eKEofyWxy4eal0oa1ZBCtZqnuiao4/KyNLLjWzCjXrMutjGhGZXnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732545634; c=relaxed/simple;
	bh=QuFr33PxWwiOkN1ep41/1P8oQdyw21yNSIU94tRsxqc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YpTMUOkqrKuMCkyxDS1U296F1bcXWc9RoqF6TEGuYQBhub8mmBLckV+zJgO2lG0Ddx4Mu1m8unjvzWHRlXX8GLA+RF7a0Fp3WsckfwZHA0h42+0rDCeDz7yQotPgPoMj9tH2n/eGZpcvuOj4y/mXBT5Lw6kcj7Jt2ow+hUEAc4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WYPZNpiO; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2fb4af0b6beso71490501fa.3
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 06:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732545630; x=1733150430; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wkpi3C3Erb5LcuJAqMaLXJb2wxyVOmfXm6CfHhPKV4Y=;
        b=WYPZNpiOhpKZysKRFs2kaAnvnxiecQhipbKPwliqXu5LnV/UPbeW6V81X4j5xP7BqQ
         BAjFMO6EVE0JuxkkYdpakLONI+8No4YWGbhl0y9yoeSXqspvO57u+lutwJa0XHxK5wS4
         a9vCEYUIQFaMwWbOoD0X8fpG1HibedNIYTQImfIOMdiE6btVMzBAYqJ4FmELG11nw734
         7adxlQu5uLkiotruDX+nAVwmNaNW1spA9LHECceHN7Su4SQrs1FIFdc/ruIH1M8jEvXo
         iw3DOU/5Os/GUjGXSQX5Uo5nnS2GTqsRQvoxQB/4JYCa35eGwliwfWPnHxvBUuIkS5XO
         PTlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732545630; x=1733150430;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wkpi3C3Erb5LcuJAqMaLXJb2wxyVOmfXm6CfHhPKV4Y=;
        b=RFfnq+3okVfE9iJ+AK56NTAW0ysEJ9eqqlqU79ciGIXflgQcneoBqUU3slCuPg4diy
         CDGeVsFXyWajTbH0HROcDOFeDBfcn/3iRBEfXmmxGk9zpxVwOp711rBzcZXxZkViOwwd
         ibBggc3GJTkgnaxc3m3REd38z7gMXShN+6N0KUwj4rOhLaVsP6EJEb7TXlhkuMmx769C
         ONij0HmLYKY8xzfzbJQj/VhK+2UQDrCdFMmplWWQO4LVDukYw2RuSQp8i5vYyhG9b60W
         KBHtTgRTSiwbLc/QOiYRfbtM3G3lmT9v10Aq/K2T40BwuQ3QB9YxpWGfzyWvKN+zxf7Q
         EhvA==
X-Forwarded-Encrypted: i=1; AJvYcCUOGLH3wh/5R24a4Cqf8hRrpM5ChluoQ23oEKlaLKLh7iWqVKM9FknGCSJgABwepWPRpaLttzVHCB35@vger.kernel.org
X-Gm-Message-State: AOJu0YwLbBFHjlKsRkKXomcvjN7Mta9y/dobbFhLIhKNJ88vkkLBuSwH
	ARlFyy7RzGeCunLKB5/Z0TQ/0DtUqSMUvoujjSaCROXyfIBshjTXGkqIbj3y/70fuNHDE7aMCBo
	/Gx4zR/67BuyTJ4GkS/2Jl2OJyYBimRaIyuJS7A==
X-Gm-Gg: ASbGncu2QVZgYQ7sjYhYKA9+XCCe7IXtHtHVLUxRUkMFvxyGvon1PYlIryPUAj5NmSV
	LWaSkT8/xfD4OuWz+jHR9bqq2Eymc8Q==
X-Google-Smtp-Source: AGHT+IGylk1WBc/171m1MnIZm+s014KvRI8FCTVhJrxpcS9ekQI1Zx3waN0H0Og4c/z7YunW3cfM693tp/5+vZLQ61k=
X-Received: by 2002:a2e:87d0:0:b0:2ff:bc48:a0d0 with SMTP id
 38308e7fff4ca-2ffbc48a360mr28445671fa.6.1732545629740; Mon, 25 Nov 2024
 06:40:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241121-add-mtk-isp-3-0-support-v7-0-b04dc9610619@baylibre.com>
 <20241121-add-mtk-isp-3-0-support-v7-4-b04dc9610619@baylibre.com> <d17dfb29f60bfa1889aa554ef16c9ddec272520d.camel@mediatek.com>
In-Reply-To: <d17dfb29f60bfa1889aa554ef16c9ddec272520d.camel@mediatek.com>
From: Julien Stephan <jstephan@baylibre.com>
Date: Mon, 25 Nov 2024 15:40:18 +0100
Message-ID: <CAEHHSvbScBhn=6rSOApQ=K9JEpwL6JPpJnJy929mLXHhxQ=3FQ@mail.gmail.com>
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

Le lun. 25 nov. 2024 =C3=A0 09:14, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) <ck.=
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
> > +static void mtk_camsv30_update_buffers_add(struct mtk_cam_dev *cam_dev=
,
> > +                                          struct mtk_cam_dev_buffer *b=
uf)
> > +{
> > +       mtk_camsv30_img0_write(cam_dev, CAMSV_IMGO_SV_BASE_ADDR, buf->d=
addr);
> > +}
> > +
>
> [snip]
>
> > +static void mtk_camsv30_fbc_inc(struct mtk_cam_dev *cam_dev)
> > +{
> > +       unsigned int fbc_val;
> > +
> > +       if (pm_runtime_resume_and_get(cam_dev->dev) < 0) {
>
> I think this pm_runtime_resume_and_get() is not necessary.
> mtk_camsv30_fbc_inc() is called only in mtk_cam_vb2_buf_queue().
> But when buf_list is empty, mtk_camsv30_update_buffers_add() is called be=
fore this function.
> But mtk_camsv30_update_buffers_add() does not call pm_runtime_resume_and_=
get() and it works normally.
> So this function is not necessary to call pm_runtime_resume_and_get().

Hi CK,

This one is actually needed because .buf_queue can be called before
.start_streaming in case a user requests to prepare buffers before
streaming.
But you are right, if a user requests to alloc buffer before streaming
mtk_camsv_update_buffers_address will be called without pm. Streaming
still works because in start streaming we call
mtk_camsv_update_buffers_address again.
So maybe I should put the pm stuff in mtk_cam_vb2_buf_queue ?

Cheers
Julien


>
> In other register setting function, please also check this pm function is=
 necessary or not.
>
> Regards,
> CK
>
> > +               dev_err(cam_dev->dev, "failed to get pm_runtime\n");
> > +               return;
> > +       }
> > +
> > +       fbc_val =3D mtk_camsv30_read(cam_dev, CAMSV_IMGO_FBC);
> > +       fbc_val |=3D CAMSV_IMGO_FBC_RCNT_INC;
> > +       mtk_camsv30_write(cam_dev, CAMSV_IMGO_FBC, fbc_val);
> > +       fbc_val &=3D ~CAMSV_IMGO_FBC_RCNT_INC;
> > +       mtk_camsv30_write(cam_dev, CAMSV_IMGO_FBC, fbc_val);
> > +
> > +       pm_runtime_put_autosuspend(cam_dev->dev);
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

