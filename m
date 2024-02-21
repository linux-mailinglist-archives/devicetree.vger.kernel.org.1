Return-Path: <devicetree+bounces-44142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEE785CE30
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:42:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37A751F21757
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 02:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7920E383BF;
	Wed, 21 Feb 2024 02:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="MGBi+ee9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FAD2BAE3
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 02:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708483305; cv=none; b=DPvuZ4TNtGKCvslJSWdeyGyEHdyvnNj/0XLEfRUT6uyQd+4962Y+jIh9tNwB0u9e9GT/qKgUqRxw2wny8GuX+omIHFKHiNyCGqFV2Ly3LShNyL21YmzGy2j6+roWtPJEaJiR9YK3VDz+Vb78FeKJpz6YcPKyEjp9Nf6uWIZZNao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708483305; c=relaxed/simple;
	bh=MQ5ZpMmlffngwzChP1jrn1j3ATSYiqKQ0sV/hlR9U5g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BhImzn42t8ECik2ZgAs+6YkWjLCfGfE4eYU8oF0c7Lq9sO/e3kt/UuQGjtLeJyA1AVyOfeDtDQxB3/xUnREdV+cJk1AVlb2FDByzs82liViSStspgEH4Uuy8qWX5AnOAa6rVwli8gF6wnxwS50y9ougMCE7EEz1yWuduIhSouMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=MGBi+ee9; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-428405a0205so114631cf.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 18:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708483301; x=1709088101; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dlaOAVUzvLSqTrdriYw3ZKjCNZqye24W7wyuPTRYiKQ=;
        b=MGBi+ee9IWuywT8RK1t9vLh2lRYUtDtbWW9Gu8Qm2vkluUyNdTRAMgDw+Ro5988jSW
         6pdtlgmFYbGaDXCMuvMxOo0317ieNYWhfBctGJAfPJjeRCRhrB03YM8XO0H6IPsbvtPh
         SGA3TfRxz8sqfDXeFB7GUkJqri0UTVP54RXXQUimrKC7ZrRhyCwH0k31m2IpcsCUKwcp
         6KFKckV39jduJF2Xmoq4p2BvEU0JfCFNlmDj+PsickBagMuSHE/KeSPaNxgq8jkDuSge
         8n6FA5OHNuN0Bg9Cwv4mDgR+pfF6Ve2Fbh9iKTUGYob8jH8EOfRhVeem9ugqhXhttTC3
         V/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708483301; x=1709088101;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dlaOAVUzvLSqTrdriYw3ZKjCNZqye24W7wyuPTRYiKQ=;
        b=ELRTrsKl28qFsOP0pGL0tK/YSBxHWlGzdo9YLagA0lFq/96Gszlp5qn9pYocQAzszd
         /rT0MNG/BJrZ7sLhY7P8z1PMQ3pPLJvhVnynbp3C5HH82+QF3kwiYJ7XaqbA9lmo2ErS
         UxiA8IIg49S64Va99l0eSzZaMkCnkF5Hja9iPqLVE6EHxdPDdQIsJ5yBEuGug7K+nbXw
         I1T4u/xloMbHfvzDTeuq03jXaD++lQjO6UrJWotQtCawnqnSM1HOxTBOvbo1VVBzmQR9
         LYNuYdOhaSZm2kpX+YvVcEigCSenygTne1FBqHcz4W91lZLPfQRloBkUrTvEf3VAyWOg
         b6Tw==
X-Forwarded-Encrypted: i=1; AJvYcCW6wVlKC5DedxnzK6HXLK+g/TBYWcW6gYCWFadPPW4i2WyGfXuQ6/zdb1WgGmYDdaFQFhIl80Di1uxxn1ieJyEAK7D4y63QIBSIcw==
X-Gm-Message-State: AOJu0Yydv4sgbYvR2yLUGT1Fx/ViCZ33fKooYdhKCFLtlD9vFME1pmIG
	u95htZVswSRYHzAAE1s4DCnXpABjnxL5NFxYn7cvRGoTWMy26B/U6XVrPcPMi5qmSw/Zvl+9rm0
	9Dok44jySRdFpg+jIM64VT2+rYq8Yex5o5Fus
X-Google-Smtp-Source: AGHT+IGoHaIkqV5TgAikVH+jfTnIiTonx9vk90IId4418PKx6X2reN3g2z+rKO58uIUY+TDNo51CiEKl/yEYHV7mK/M=
X-Received: by 2002:a05:622a:307:b0:42c:1aba:c8c4 with SMTP id
 q7-20020a05622a030700b0042c1abac8c4mr164699qtw.12.1708483301458; Tue, 20 Feb
 2024 18:41:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220111044.133776-1-herve.codina@bootlin.com> <20240220111044.133776-2-herve.codina@bootlin.com>
In-Reply-To: <20240220111044.133776-2-herve.codina@bootlin.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 20 Feb 2024 18:41:03 -0800
Message-ID: <CAGETcx-4RkuvsW5W5zPS4HMjSAGq5Yi9P2O0KPanA8HVJV0bvg@mail.gmail.com>
Subject: Re: [PATCH 1/2] driver core: Clear FWNODE_FLAG_NOT_DEVICE when a
 device is added
To: Herve Codina <herve.codina@bootlin.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Wolfram Sang <wsa@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, stable@vger.kernel.org, 
	Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 3:10=E2=80=AFAM Herve Codina <herve.codina@bootlin.=
com> wrote:
>
> Since commit 1a50d9403fb9 ("treewide: Fix probing of devices in DT
> overlays"), when using device-tree overlays, the FWNODE_FLAG_NOT_DEVICE
> is set on each overlay nodes.
> When an overlay contains a node related to a bus (i2c for instance)
> and its children nodes representing i2c devices, the flag is cleared for
> the bus node by the OF notifier but the "standard" probe sequence takes
> place (the same one is performed without an overlay) for the bus and
> children devices are created simply by walking the children DT nodes
> without clearing the FWNODE_FLAG_NOT_DEVICE flag for these devices.
>
> Clear the FWNODE_FLAG_NOT_DEVICE when the device is added, no matter if
> an overlay is used or not.
>
> Fixes: 1a50d9403fb9 ("treewide: Fix probing of devices in DT overlays")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/base/core.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index 14d46af40f9a..61d09ac57bfb 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -3619,6 +3619,7 @@ int device_add(struct device *dev)
>          */
>         if (dev->fwnode && !dev->fwnode->dev) {
>                 dev->fwnode->dev =3D dev;
> +               dev->fwnode->flags &=3D ~FWNODE_FLAG_NOT_DEVICE;
>                 fw_devlink_link_device(dev);
>         }

Temporary Nack on this. I think depending on how we address patch 2/2
this patch might not be necessary.

Also, I'd ideally prefer this gets cleared before the device is added,
but it's a position that I'd be willing to change.



-Saravana

