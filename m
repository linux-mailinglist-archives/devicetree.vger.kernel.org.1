Return-Path: <devicetree+bounces-22510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D09807F10
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 04:09:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D9691F213A8
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 03:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0969F1877;
	Thu,  7 Dec 2023 03:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="UPAsSRh1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE36519E
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 19:09:46 -0800 (PST)
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-4258b6df295so159201cf.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 19:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701918585; x=1702523385; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8KonfnbxwpH3x3CnjOO6Ekc8vtvdBCrnjbKjN44bF6c=;
        b=UPAsSRh1vo8nGHfs9k024dfH2iM8PMgAA03+Se8jTuMMMUpTHs+/a9vU6g1cA+6gKM
         L7/g5rCZA8WO2Xn3fgYyhVIsJRUHHLcWJHtvOm+JeoDZF4F1IucuTCArQnFk1aAd/hwE
         9oyqWJR0H5NQNPUjHE5eMR1T5z4DkHEODUOPk/KPzLT7Kyb03jLzV9WZQ1GSYieJpFH3
         NrakQKA70/AX3B33RTtjb23YhVecsO0sd+AaNfnIf5tszxDXM8aWaUVDDYZQy8S+6Imp
         c7SsrELIcCkpB/Ct9g+cZad8r9bMXUySU0QRwVVmW+f4+SirvQmodEyzpU1frZH8T/Ot
         wwrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701918585; x=1702523385;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8KonfnbxwpH3x3CnjOO6Ekc8vtvdBCrnjbKjN44bF6c=;
        b=UEq/nYEF8Ypete5RjVRYMcHM3oxublu6+GEaikhRCm8BeP6SOq3cUnvl/Kn0NYSe88
         Yo1pUGi567lhVBJWnvYoX7QXDied6AvsJCf9Li4k54OwoEXC2w0MK2j1sRw0mS6frFXh
         ZmkuxRtQRS3WEVzFETdoKnlQmum0JVc6VbFZiTPKMj1R4duJMXOVpfPQJGBgZ12hBtJz
         pigyN3UchyY8kqLYvTIe1kxJ8tZdrA3ItAIa/pMb36/QxQNiaetGI58H2SyETYJ8EMUn
         8fsNZmz7TOoiROin/xEXC7FK+72cJjeOWal306SP5YmpPM0MXcHQnsAlZqGzD6TLbJ25
         bRYw==
X-Gm-Message-State: AOJu0YwTmi8E4JhIIIdYBYybVjc6ghQaC/ceKtqgEwotRdaoyC2qWeOi
	hE7Mjf1u4Yg9KkqFibpSJkx0tDI596ZUYdI1nqPbmw==
X-Google-Smtp-Source: AGHT+IHmC2Uvlc1PpPCCKnWzQ2+wlWdVLitp/t35SGYTLb9vq9VLkXz76RklY+9U+4ePYTBrzENcbeKOcDj5pVG/+xQ=
X-Received: by 2002:ac8:4255:0:b0:425:75cf:90e9 with SMTP id
 r21-20020ac84255000000b0042575cf90e9mr398357qtm.22.1701918585052; Wed, 06 Dec
 2023 19:09:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130174126.688486-1-herve.codina@bootlin.com> <20231206171540.GA2697853-robh@kernel.org>
In-Reply-To: <20231206171540.GA2697853-robh@kernel.org>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 6 Dec 2023 19:09:06 -0800
Message-ID: <CAGETcx-F8G3dcN-VTMrbya_=19zXP=S2ORA_qZqy+yND7S41_Q@mail.gmail.com>
Subject: Re: [PATCH 0/2] Synchronize DT overlay removal with devlink removals
To: Rob Herring <robh@kernel.org>
Cc: Herve Codina <herve.codina@bootlin.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Lizhi Hou <lizhi.hou@amd.com>, Max Zhen <max.zhen@amd.com>, 
	Sonal Santan <sonal.santan@amd.com>, Stefano Stabellini <stefano.stabellini@xilinx.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Allan Nielsen <allan.nielsen@microchip.com>, 
	Horatiu Vultur <horatiu.vultur@microchip.com>, 
	Steen Hegelund <steen.hegelund@microchip.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 6, 2023 at 9:15=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Nov 30, 2023 at 06:41:07PM +0100, Herve Codina wrote:
> > Hi,
>
> +Saravana for comment

I'll respond to this within a week -- very swamped at the moment. The
main thing I want to make sure is that we don't cause an indirect
deadlock with this wait(). I'll go back and look at why we added the
work queue and then check for device/devlink locking issues.

-Saravana

>
> Looks okay to me though.
>
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
> > Best regards,
> > Herv=C3=A9
> >
> > Herve Codina (2):
> >   driver core: Introduce device_link_wait_removal()
> >   of: overlay: Synchronize of_overlay_remove() with the devlink removal=
s
> >
> >  drivers/base/core.c    | 26 +++++++++++++++++++++++---
> >  drivers/of/overlay.c   |  6 ++++++
> >  include/linux/device.h |  1 +
> >  3 files changed, 30 insertions(+), 3 deletions(-)
> >
> > --
> > 2.42.0
> >

