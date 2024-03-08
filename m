Return-Path: <devicetree+bounces-49535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDC1876D1F
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 23:30:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DB8F282FB5
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 22:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9230322F11;
	Fri,  8 Mar 2024 22:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RMXM/1Z4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A31081DA52
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 22:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709937012; cv=none; b=O2/qglEe2nTj3EgcxX2LOVNf/mOPyB6B/8DFyCUtS3o6kTahKOmTl/dyyQMX99Tv5+TEGXHMCM+t8UnQzzMkq+MRLVblDK5CWhlrvtvd7SbgcPLMYiU4n6zc4UVx0JoPnloxpUbfuSd7KNUj/OyqAl/LD0NNVjZMfFeQW0am9wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709937012; c=relaxed/simple;
	bh=9Yb0tKGCphHgv9gug9eNGiabFxNTTgVWrqYM7xEelTY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jAaNoDCxxszrWXSfSd2lAEXtuQLz6iem/H/S3KIXx60Llq/NWulO8hicO9gQVH8GCX0hZ0s89dAoffkqPi+86ZYOoUImddYugjaky9KdODBosHFgi6LUgaR7bKtss+HxqECHlUfuUmeOXaS5F6GlqXOYADCrjAsAXhbpaxxc//Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RMXM/1Z4; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-566b160f6eeso1361a12.1
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 14:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709937009; x=1710541809; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dw6aI2U8iMgTI80Vy6Cngmp1NxQFU6KchYrZWU57JZc=;
        b=RMXM/1Z4z5WvK1JBUjmaCvSsev/xeWI2Y2teE4rFz/rEKRW/r0YFPSBW/aXBucH1cE
         iFyEb7Fssk+641d7jiffEHsZHdtPdTxeMYoClieH1WxNhendz8/UdDxR9+sHGXd98Vvf
         50wvLL9xNv39nBbwDUtJvKTELb9xhh0/mht+xFdSTlxyBdCkDWoDVq1/95a7XNZx2sAx
         Kqy8LeV1GBxOUM7VLT4Ge7bbTh630AdGFxkkPszwHftl/XUiJDJCMX49j1F+O9X/QVp1
         NBrx+SHZG9Tvmr1PXDhzr2399poNHtiwX1mym+Epe7qQhbrBT/iJ8ohO/Qem4wbD0PbI
         JTow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709937009; x=1710541809;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dw6aI2U8iMgTI80Vy6Cngmp1NxQFU6KchYrZWU57JZc=;
        b=jvaJNzpny0QC4tSPGIxUy2Y1Bsufj49L+Pe77xDjVYF6+ceG7gnXLOglLnLrqQn87t
         aqdrLCijA4aoL+9mHDK1uqlMcQ7yPssewpVmruKVmH53Jy021SEB7qVQgaf/gFaK3mqc
         ZBaFJ8m6vBFKWb5nZ1Z3LSZoBOpw2pQQwY+No5ishBGx2P1oB/pHmdfXdupSuEQ1yGsg
         kCMsIJC4XchR5GZlRRSK9tnm9vsahznvDZM+TI7ES89PMzpUtn8X94IyOXQj+ctPktnf
         qVXNYYb1Rn5WDhfaGg70SnyC0Ytnvd3SH4dl0/vkhStpEzgShBaJMzg3TpA0coP5x80W
         YAbA==
X-Forwarded-Encrypted: i=1; AJvYcCV4G/UUazjK7ENR3thoSor9G2Fc6f167GuMz7noo3ol8dp/27ZxUZsE+Hp5wypu03+mjDQdB+hvsiM+kklSR7GhX+2h6MHWL8E7Vg==
X-Gm-Message-State: AOJu0YweugVuhW+X0470eT35R18wvCMa7JC+0GS9XV+hpfiLTivKHZRj
	QwLGsGF6r6/vp3IP1G5Er2Gc8+otmM5Z9trc/E6sZ/vzaOP/U+ZPuOV1/syso4BYWaxMSSCsgWi
	gSaHTvFMQxgnaAWUfCv2X4g1iu+HUEecupzDF
X-Google-Smtp-Source: AGHT+IHV6AhGANFiDyy15Fvo+rk4aBbO1T6U/3zon3JNMNdRpPazffwprxZD+YxrWfXDE4hr5wZomo/QG8sng4bDeRU=
X-Received: by 2002:a05:6402:190d:b0:567:6314:c894 with SMTP id
 e13-20020a056402190d00b005676314c894mr721781edz.2.1709937008675; Fri, 08 Mar
 2024 14:30:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240307111036.225007-1-herve.codina@bootlin.com> <20240308200548.GA1189199-robh@kernel.org>
In-Reply-To: <20240308200548.GA1189199-robh@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 8 Mar 2024 14:29:28 -0800
Message-ID: <CAGETcx8ReCH2z64_PGhmbqdH_ge3B_xOqTOP-yanRf3T8TkzLg@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Synchronize DT overlay removal with devlink removals
To: Rob Herring <robh@kernel.org>
Cc: Herve Codina <herve.codina@bootlin.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Lizhi Hou <lizhi.hou@amd.com>, Max Zhen <max.zhen@amd.com>, 
	Sonal Santan <sonal.santan@amd.com>, Stefano Stabellini <stefano.stabellini@xilinx.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Allan Nielsen <allan.nielsen@microchip.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nuno Sa <nuno.sa@analog.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 8, 2024 at 12:05=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Mar 07, 2024 at 12:09:59PM +0100, Herve Codina wrote:
> > Hi,
> >
> > In the following sequence:
> >   of_platform_depopulate(); /* Remove devices from a DT overlay node */
> >   of_overlay_remove(); /* Remove the DT overlay node itself */
> >
> > Some warnings are raised by __of_changeset_entry_destroy() which  was
> > called from of_overlay_remove():
> >   ERROR: memory leak, expected refcount 1 instead of 2 ...
> >
> > The issue is that, during the device devlink removals triggered from th=
e
> > of_platform_depopulate(), jobs are put in a workqueue.
> > These jobs drop the reference to the devices. When a device is no more
> > referenced (refcount =3D=3D 0), it is released and the reference to its
> > of_node is dropped by a call to of_node_put().
> > These operations are fully correct except that, because of the
> > workqueue, they are done asynchronously with respect to function calls.
> >
> > In the sequence provided, the jobs are run too late, after the call to
> > __of_changeset_entry_destroy() and so a missing of_node_put() call is
> > detected by __of_changeset_entry_destroy().
> >
> > This series fixes this issue introducing device_link_wait_removal() in
> > order to wait for the end of jobs execution (patch 1) and using this
> > function to synchronize the overlay removal with the end of jobs
> > execution (patch 2).
> >
> > Compared to the previous iteration:
> >   https://lore.kernel.org/linux-kernel/20240306085007.169771-1-herve.co=
dina@bootlin.com/
> > this v5 series:
> > - Remove a 'Fixes' tag
> > - Update a comment
> > - Add 'Tested-by' and ''Reviewed-by' tags
> >
> > This series handles cases reported by Luca [1] and Nuno [2].
> >   [1]: https://lore.kernel.org/all/20231220181627.341e8789@booty/
> >   [2]: https://lore.kernel.org/all/20240205-fix-device-links-overlays-v=
2-2-5344f8c79d57@analog.com/
> >
> > Best regards,
> > Herv=C3=A9
> >
> > Changes v4 -> v5
> >   - Patch 1
> >     Remove the 'Fixes' tag
> >     Add 'Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>'
> >     Add 'Reviewed-by: Nuno Sa <nuno.sa@analog.com>'
> >
> >   - Patch 2
> >     Update comment as suggested
> >     Add 'Reviewed-by: Saravana Kannan <saravanak@google.com>'
> >     Add 'Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>'
> >     Add 'Reviewed-by: Nuno Sa <nuno.sa@analog.com>'
> >
> > Changes v3 -> v4
> >   - Patch 1
> >     Uses flush_workqueue() instead of drain_workqueue().
> >
> >   - Patch 2
> >     Remove unlock/re-lock when calling device_link_wait_removal()
> >     Move device_link_wait_removal() call to of_changeset_destroy()
> >     Update commit log
> >
> > Changes v2 -> v3
> >   - Patch 1
> >     No changes
> >
> >   - Patch 2
> >     Add missing device.h
> >
> > Changes v1 -> v2
> >   - Patch 1
> >     Rename the workqueue to 'device_link_wq'
> >     Add 'Fixes' tag and Cc stable
> >
> >   - Patch 2
> >     Add device.h inclusion.
> >     Call device_link_wait_removal() later in the overlay removal
> >     sequence (i.e. in free_overlay_changeset() function).
> >     Drop of_mutex lock while calling device_link_wait_removal().
> >     Add       'Fixes' tag and Cc stable
> >
> > Herve Codina (2):
> >   driver core: Introduce device_link_wait_removal()
> >   of: dynamic: Synchronize of_changeset_destroy() with the devlink
> >     removals
> >
> >  drivers/base/core.c    | 26 +++++++++++++++++++++++---
> >  drivers/of/dynamic.c   | 12 ++++++++++++
> >  include/linux/device.h |  1 +
> >  3 files changed, 36 insertions(+), 3 deletions(-)
>
> This looks good to me. I can take this given the user is DT. Looking for
> a R-by from Saravana and Ack from Greg. A R-by from Rafael would be
> great too.

Reviewed-by: Saravana Kannan <saravanak@google.com>

-Saravana

