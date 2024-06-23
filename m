Return-Path: <devicetree+bounces-79022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 04681913E43
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 22:56:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54E36B211A0
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 20:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F0018508D;
	Sun, 23 Jun 2024 20:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PBqfq/4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06F51849C1
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 20:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719176195; cv=none; b=L1tAv2FxeaHfO33ghfpoBaXEaGnpML/mA9yAlZ86E4jtRb9RW6f+t+BudPdw6Jr+JRcEFogIXUIzl7OrADJdNTGsE4xRliujxiHT006ET+Ury2crMP8VoaM/mL5XVSRTYJg8JYh4jugsRW9qWsba7BQdvn3K9Euz7c5Rk0VJkfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719176195; c=relaxed/simple;
	bh=FGyi045iDwosI2H/u97J/9e8D6FQ3BTiUbSO/eIJy34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WnHzWtcg8f2XqtUOuKakfZG9J48sLAd7Y4I6l6y5hnEglpuT4tgUJ7m8tstu4ap8Pok/eyHc2F9jLZAOux86vJ0l4bxA/UOioerxCjdY530whdRNpS/oqP+BfGeER7R7CEB7dNI0OIhCLWMkYu3/Z+9xhAqMgGoXac4Z23Sejlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PBqfq/4Q; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52cdebf9f6fso1620947e87.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 13:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719176191; x=1719780991; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HMIjy1gK0TpUCo1LhjYc9489mlQhGsXBTfI3ZFcq2PQ=;
        b=PBqfq/4QeZxz/BIreZH67b+FxZOLEfHuncoqVtl46FlUFeISHiAXll3cCfhKdSs5ks
         Myi4gAqIAH1vYvEXHO6fslH2TAVOgSeLIph2uT88DFrfDAJbeWkI+DH5URqEE0PqRP55
         1a9rVBGN7RrJeQLWa2HXfP/EQpvWFNXkItnHajdtTJE8UT6qyrvSaX94jQkTISdNl6cE
         UaLRVhvznzVTn2fcV2EMZPRLg4uWsRYVNL7XogaRRZ1V0SIQvBAC5rHx/gbZmT6vFXGN
         XODjKeqgav7aZ13fzTVHIYeBA0M7RrhO57oECqqhpra2ghVExW85X1ND1tL94YrweGLE
         oB2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719176191; x=1719780991;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HMIjy1gK0TpUCo1LhjYc9489mlQhGsXBTfI3ZFcq2PQ=;
        b=vFnm9WfCEleriUaZT4G9v8XkI8gOdMmO3XVd8e7TJmkpa8wQ6szhQrgUrPANiPo8NB
         syBdod1VtKg5KC6CsBKvBYjFfk05CtqN17xIrYxZNp3Z7L7+QHUuzTb68rE8U7enaEo8
         Nvy9bl4AfxOxSR47xNPo9GtDqPegoWB5PKpT1kxb/Nc/X/Ht4XrM6Bm71qJfn6tXxt6j
         3qOJbeMmj26I2HQTl5IFqUkot1VR1EWE6XWv52jL5ha2A7Hf3XdTg9c9Vu72zzKPgNWK
         eDPNKSn+YTuomBTzvekcaqr82TzuCVnE+/W8fcjvlq/UTaPa7p5sbjxmgvGhx9QU17c5
         LM9w==
X-Forwarded-Encrypted: i=1; AJvYcCUukLkl/xBs/s2zBWCfiNxvV5ahllRm9Z4+QB2i8Y4SODrjHemQYsLJzNXejwQDnIcHEU/Bx9YNrAWsfScmS5sHKVSfqxkT5luRWQ==
X-Gm-Message-State: AOJu0YzXdXjgHU1S60wN4joUv3kpJIOWdQ354nOA/eLAJ4k1D8HiNiH5
	YMzU1yZHQjzKlK212FDcaaQpkVDAW89K1ws/LrJnSAE0fEVpobZcs2InXONUINU=
X-Google-Smtp-Source: AGHT+IEuXd8WWnOuecjW0sjT9QmBmiw0iQ8Vi8NvjkJfFJ74SjLxYkdIlq/BXl1u5IWs6g/xDYQryQ==
X-Received: by 2002:ac2:5505:0:b0:52c:dee0:9f6e with SMTP id 2adb3069b0e04-52ce183b1f2mr1620174e87.38.1719176190747;
        Sun, 23 Jun 2024 13:56:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ce729cb07sm88694e87.234.2024.06.23.13.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 13:56:30 -0700 (PDT)
Date: Sun, 23 Jun 2024 23:56:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "rfoss@kernel.org" <rfoss@kernel.org>, 
	"Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, 
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "airlied@gmail.com" <airlied@gmail.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"hjc@rock-chips.com" <hjc@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>, 
	"andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, Xingyu Wu <xingyu.wu@starfivetech.com>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, Jack Zhu <jack.zhu@starfivetech.com>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 07/10] drm/vs: add ctrc fun
Message-ID: <73pee4uoo5fq3rgqrrs77zavz7727766sw5pb7zszoqk6a6yd2@roxrcdgwxfcq>
References: <20240521105817.3301-1-keith.zhao@starfivetech.com>
 <20240521105817.3301-8-keith.zhao@starfivetech.com>
 <zevlkgeiezpi77uiiobmtzhaps7qkm7bur2kltlrqmbucrk4ad@af6lulqqllyj>
 <NTZPR01MB1050C59A5A8D3A2F790F557CEECB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <NTZPR01MB1050C59A5A8D3A2F790F557CEECB2@NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn>

On Sun, Jun 23, 2024 at 07:17:04AM GMT, Keith Zhao wrote:
> > On Tue, May 21, 2024 at 06:58:14PM +0800, keith wrote:
> > > add crtc funs and helper funs
> > >
> > > Signed-off-by: keith <keith.zhao@starfivetech.com>
> > > ---
> > >  drivers/gpu/drm/verisilicon/Makefile  |   3 +-
> > >  drivers/gpu/drm/verisilicon/vs_crtc.c | 241
> > > ++++++++++++++++++++++++++  drivers/gpu/drm/verisilicon/vs_crtc.h |
> > > 17 ++
> > >  3 files changed, 260 insertions(+), 1 deletion(-)  create mode 100644
> > > drivers/gpu/drm/verisilicon/vs_crtc.c
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
> > >

> > > diff --git a/drivers/gpu/drm/verisilicon/vs_crtc.h
> > > b/drivers/gpu/drm/verisilicon/vs_crtc.h
> > > new file mode 100644
> > > index 000000000000..b1e588bb780d
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/verisilicon/vs_crtc.h
> > > @@ -0,0 +1,17 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +/*
> > > + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> > > + */
> > > +
> > > +#ifndef __VS_CRTC_H__
> > > +#define __VS_CRTC_H__
> > > +
> > > +#include <drm/drm_crtc.h>
> > > +#include <drm/drm_crtc_helper.h>
> > 
> > Do you really need to include them here?
> > 
> The location of include can be optimized
> Delete #include <drm/drm_crtc.h>
> Move drm_crtc_helper.h to vs_crtc.c

Yes, please.

> 
> > > +
> > > +#include "vs_drv.h"
> > > +
> > > +struct vs_crtc *vs_crtc_create(struct drm_device *drm_dev,
> > > +			       struct vs_dc_info *info);

This prototype needs #include <drm_device.h>, not drm_crtc*.
Or even better drop the include completely and just formward-declare the
structure:

struct drm_device;
struct vs_crtc *vs_crtc_create(struct drm_device *drm_dev, struct
			       vs_dc_info *info);

> > > +
> > > +#endif /* __VS_CRTC_H__ */
> > > --
> > > 2.27.0
> > >
> > 
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

