Return-Path: <devicetree+bounces-135225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 54042A00372
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 05:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4364C3A2C3C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 04:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB0A1AF0DB;
	Fri,  3 Jan 2025 04:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G6I163qk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDA417B402;
	Fri,  3 Jan 2025 04:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735878643; cv=none; b=q5JDh7kH7DXv9xHB/2Uv1UNxJPa6HfBCL+ogVAGNjjBPMqyw/Vwg8bnIuCAWojXoopTDbwXGtp209hImBydK7e69Tbnb3Qmwf00ef9HnrtAdl6S/F7ZKBsThb7xDZmEaB5nxSQzpzQBP0J7j0MjR3EffHU/h4pl81fGpvGereV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735878643; c=relaxed/simple;
	bh=NU13mAX3depzgMbGBdhJxyR2keLU3OW1HN5aBM0dCyw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cltzI2okm7ZCyqTXT6JmxFfze1p+GOz7E9rcsDB6rMU9R7N9PRpGBm6ADdxvhDnP7oIi1e5bz3Fl7kKRDfb4O3IBl+M3laPapLE3UyOOHM6R2Zu2zVq1jpGxAHZRBrcJ+ptANiXSfiH8on/2IwVomW30XW501Z5dDf7PD5zLKH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G6I163qk; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-29ff5c75c21so6530368fac.0;
        Thu, 02 Jan 2025 20:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735878639; x=1736483439; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1TLY1yVc6WLt3Hso+aVTpCqq+oLf99tR9IdiOAqJLOM=;
        b=G6I163qkFFbE2lI8orOEfi+2Yt82hs/2/cJfsdeODfLPz2PnYZbAsfZgVuVvCvpSLA
         i0Mt/SBNUSF8reNzHKGlBGvuh56ahG6N/CMYOzeXNw0X+GqjoLs3uK91UvKHyATikTKE
         Jej2LM/38cTlJi7KqdqVFXHIoVT94dzZ7STGk6T1ni+UicE33Mcp+8PNyNB7YXvVgXbT
         51NVHeh/iV3bPdAnsLgmZmAXcvTPlX30VGbZr7523C3tXAdBWEivOhUTgRc01LxkOv7M
         PPwdglZCvUNVzaZluXQbqbObTOrV455WbNASU35/e8DkpfwMoySUB1l5AURZnFByp3ho
         SbXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735878639; x=1736483439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1TLY1yVc6WLt3Hso+aVTpCqq+oLf99tR9IdiOAqJLOM=;
        b=aH8xnHY3Jf94gUPYvAKTmnWx0QyDWUu+kPRwpysTbHEXEDpeeqTdETfGeMmToWcb2e
         hw/O9asigVKbgznZ9lLfQHkvLOHkxibRJh6itq1T98xTXKt5EzUbA1K3eNRsEvu60cYp
         /Nk50ckf6WGCPevTfQm4rZ+zQIRe1MHyg+pQmCndXx5ckZfDQ5DbEsp1YJi80O1yXvx3
         lhhFCtJq+xoVhacQrRL5mRwbIZ8H6jfly/m0Bik+M1LmRjAzYM1QGVM1t2zvst44zFMX
         j5aI+r7rtNkKUpFKMVbUYQszTHrdZaS+JvRPGY0ulMOtyWTQHiv092KUi+foydW7BA3D
         QA6g==
X-Forwarded-Encrypted: i=1; AJvYcCUf8iBaxeWYhM6laXoiZgCYjL/vzncKhWxi/qnAaP/5aWyujC2tSJVgFjqWKMJ6qgV0MmxIIwJQK+gBo6zv@vger.kernel.org, AJvYcCX7uSJ4468jRnnzOcYO2RQLpnxXSJwKRHGDvJ+cC/MzuJM2EYm6hpiJsfV1imu29hincAEqtuPUA5pd@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzm7uigX2n4OoA8iR7Jt6uj0ouSQFTW1gl9qfzAS6qaewGUWal
	krsXyNWpuSlXVGX2rPi3xbbHsXAM6ZxBJq61qdWk5hzvAjQ4pHi+TKVCVzdpMcpz62YtpIzgw+J
	EJNPT2NMYx1jSxCdxNFk9SB3uJzM=
X-Gm-Gg: ASbGncvRCHB41WBG+soAomgOwOyFYkeViI36xwLtQ0Up0F2bjzGEAudJWhtXU5DxbbJ
	Et430khIsIpVaPDH9V/GOqhaCQXcxBM7l6xxq+1Y=
X-Google-Smtp-Source: AGHT+IHD4HDTmkCQq7enHlSc2zkR/V/x6UpQNChtul2dv09FLkLwf6kP1R8r6OsOYbnl7YhPEKXFIGpy/6P7DXB//mc=
X-Received: by 2002:a05:6871:89:b0:29d:ecd6:cee9 with SMTP id
 586e51a60fabf-2a7fcab93a4mr25354779fac.5.1735878639313; Thu, 02 Jan 2025
 20:30:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241230034446.1195728-1-karl.li@mediatek.com> <20241230034446.1195728-4-karl.li@mediatek.com>
In-Reply-To: <20241230034446.1195728-4-karl.li@mediatek.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 2 Jan 2025 22:30:28 -0600
Message-ID: <CABb+yY2G1C7rvsha9qm7mRSk1e_xBahshzHCs39=DzTCUGrsuQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mailbox: mediatek: Add mtk-apu-mailbox driver
To: "Karl.Li" <karl.li@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Chungying Lu <chungying.lu@mediatek.com>, 
	Chien-Chih Tseng <Chien-Chih.Tseng@mediatek.com>, Andy Teng <Andy.Teng@mediatek.com>, 
	Chen-Yu Tsai <wenst@chromium.org>, Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 29, 2024 at 9:46=E2=80=AFPM Karl.Li <karl.li@mediatek.com> wrot=
e:
....
> +
> +static irqreturn_t mtk_apu_mailbox_irq(int irq, void *data)
> +{
> +       struct mbox_chan *chan =3D data;
> +       struct mtk_apu_mailbox *apu_mbox =3D get_mtk_apu_mailbox(chan->mb=
ox);
> +       struct mbox_chan *link =3D &apu_mbox->mbox.chans[0];
> +       u8 data_cnt =3D fls(readl(apu_mbox->regs + MTK_APU_MBOX_OUTBOX_IR=
Q));
> +
> +       memcpy_fromio(apu_mbox->msgs.data, apu_mbox->regs + MTK_APU_MBOX_=
OUTBOX,
> +                     sizeof(*apu_mbox->msgs.data) * data_cnt);
> +
> +       mbox_chan_received_data(link, apu_mbox->msgs.data);
> +
> +       return IRQ_WAKE_THREAD;
> +}
> +
You don't seem to do anything that 'ack' the irq line. So if you merge
this into mtk_apu_mailbox_irq_thread() and do
 devm_request_threaded_irq(dev, irq,   NULL,
mtk_apu_mailbox_irq_thread,  IRQF_ONESHOT,  ...);
you can avoid adding a new api and keep your client code simple.
mbox_chan_received_data() is strictly between the client and
controller driver. If it is not called from an atomic context, feel
free to do memcpy() from it.

Cheers!
Jassi

