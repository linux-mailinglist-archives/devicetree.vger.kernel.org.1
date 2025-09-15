Return-Path: <devicetree+bounces-217545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA0DB5825A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:44:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6603F4C1F2E
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 16:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADF1727B33B;
	Mon, 15 Sep 2025 16:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TuJtUjmk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2B22773F2
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757954663; cv=none; b=ZpZI0PIcBfml5+Z7a2vmJjbWoyJG7oU9n5NY2WJVV4sd3Ls47kuQBUCdb8xU5fgXeEqCh/f3p3bNZiBB+dA+rxfTogXU9YfjtWfJkyfTxaw3AvGTdjv4xYEFgIVmIa5kC0wZI+g+/qzVHaK6AziqT844tA85gITYKj0Jaf5puYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757954663; c=relaxed/simple;
	bh=7oaaM2nlvzIe/XbIx5/DF/QaG1r9iG6feaXWMZzulMo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QMgE/Ne3T5myNsGkXM+9IqLyv3tA2952msHYLq4ELxFDcbsDn9NF+hWjICawpe1YUogkppYqHPd+IyI5EKopxevK+jc+X1+opqcaKWXTSoCbytUW5AtV1HSeLIONzpeBYF3yxheLuuKAm5FV/P+gw3ZVLI85MxHHv2Vioxb+BWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TuJtUjmk; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b04770a25f2so611908366b.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757954659; x=1758559459; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fxAhSsMDGNnMgBD5McDp4/uZmqqHc3OE6kQMHu7kZTE=;
        b=TuJtUjmk+zfhFS9qZQJHt+kZ/UdCfgAfeSkazDSPxbA53JWiIJyfS7/cBcawctI0yc
         poCm9lhjwH/ygPkZtEHv9hIFUTHmbc+v6ko+0g0OhsHSpYUnthe7qWn45G7d6djvGhF5
         RB8DWAQn/h7OTq6pzcHfaRwDMBKTEbJHqztcyWPzqI+576xVikwJgo10Fdw6KWnzsc+n
         C1GfcYLK7tfipjKHnjzZ2fxsoNxqaOjWj298tagVxBpgMNky0MAPZ+8g01Q8L+BxzwhI
         3/UuZpxanglu/y+RUK90BInVrY0zz9dnMamKRM5sw6J1oqth2DrImRNJuEWb3Ia8/F0y
         Wqew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757954659; x=1758559459;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fxAhSsMDGNnMgBD5McDp4/uZmqqHc3OE6kQMHu7kZTE=;
        b=DyAEV/n6yFAUThvsGMDoIhwV6vJMic8gH50JVNaTGtSjahrNptfNmHuCZYh08+I5fX
         +EeKv5FZHQ8ZaYXv+erUNHTp0zCciq32AbnetjaWkT/9ucJVVxAP46e02/lmQuzfZkda
         Epgj0k37a72BQyTT4ZVvcKhDYNCosqcnrUiOPXkx9m+RI//TVGD4R9kPkR+4zZTf/7Gz
         G/IpyJjaQltdLnLBJftrtSFbawVkpnmVQXNrEFkuybKD7YNrQMHObzc5GgyZePYWNHTu
         dWwA2HO4dUNZL9H8+ts/Bl8aWd50GrWqs16+q8nPuLQKLxIpih9FLC6fRBtfoMHYoJCl
         KJEA==
X-Forwarded-Encrypted: i=1; AJvYcCX6jrE5W8iBlAHFlmoT4K83XJCwiR+YsbGhP0NYLBGOmtbb4fVSS/1rRBn/WozRba1/OCP32/AtgZHO@vger.kernel.org
X-Gm-Message-State: AOJu0YyiVxQ1TAe9axF8f5NRFQuS88g3rlZyRGkUSnOwGdlcYwB0+qQY
	suiR/rYHsTIWsf6iYdyJ7DYiHc0IZw5EKw/0LqCQVuK67URmCXL7Mp3fpIbAUNAYeWhoaZS/U5U
	/bqhXzSI2l5QvsrmVEhyfOFDYQMOGW2lxdMUJy30d1A==
X-Gm-Gg: ASbGncsEiwyCbs7hUWFihOAonaaqDKu6ZnaLmCb+fZSnhii46jt5xwZtfLW6+//jYeF
	jrNWcbDMitJImv15zXHRKbvfxSfBn0c/DSh74SlIioh/SVY9RsCcPolZ79MekPCZaHcj2YucK93
	cwD9SRRtdHfQm+WT27XFZs+2F08voWgTEYTvvK/oWWygwVoHOuPrpIlF2fLjXIbTbbvGcavyLr3
	0SPdowfj3A5ZVpiqgsCG1OB8jvmTHc6Cj0UmXLzI8sc4VoAKT6DVyk/7Hn12423VQ2DBx1m7YJ2
	ltDU7jIQShvWwZCt8XvcJdvE2trMo13s/Cwj1J+2wrmOkfMUmQ==
X-Google-Smtp-Source: AGHT+IGf97ggS/MfiEI88/iSLTqU3Qf0DD2i0f3tt8LPvU4vPPl8/glKU6zOH4FCiUjaVG28MlFFNsrhziUP+FCI8y8=
X-Received: by 2002:a17:907:60d0:b0:b04:48c5:340 with SMTP id
 a640c23a62f3a-b07c354e86bmr1171558466b.9.1757954659264; Mon, 15 Sep 2025
 09:44:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250625094028.758016-1-arnaud.pouliquen@foss.st.com> <cc53b15e-f0a4-413d-95cb-174996344d64@foss.st.com>
In-Reply-To: <cc53b15e-f0a4-413d-95cb-174996344d64@foss.st.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 15 Sep 2025 10:44:08 -0600
X-Gm-Features: AS18NWCkJjz9GpcWFh1g-R-tsFUtCptD3QVQYJIYkkqkmvYcRqIFsZ3xDtRRAdE
Message-ID: <CANLsYkyLBSbb=LUs9TOPx=cXXon5a_SS1DXmAve_5_7EwwD09g@mail.gmail.com>
Subject: Re: [PATCH v19 0/6] Introduction of a remoteproc tee to load signed firmware
To: Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>, sumit.garg@kernel.org, 
	Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Jens Wiklander <jens.wiklander@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, op-tee@lists.trustedfirmware.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Sept 2025 at 10:04, Arnaud POULIQUEN
<arnaud.pouliquen@foss.st.com> wrote:
>
> Hello BJorn, Mathieu,
>
> Do you think, you could find time to review this series before the
> next merge window.
>
> Regarding the discussion between Harshal and Sumit, I did not notice any
> comments requesting immediate updates; the conversation focused more
> on potential future extensions for FF-A.
>

I would like to get an RB from Sumit and Harshal before moving forward
with this patchset.


> Thanks and Regards,
> Arnaud.
>
> On 6/25/25 11:40, Arnaud Pouliquen wrote:
> > Main updates from version V18[2]:
> > - rework documentation for the release_fw ops
> > - rework function documentation in remoteproc_tee.c
> > - replace spinlock by mutex and generalize usage in remoteproc_tee.c
> >
> >
> > Main updates from version V17[1]:
> > - Fix:  warning: EXPORT_SYMBOL() is used, but #include <linux/export.h>
> >    is missing
> >
> > More details are available in each patch commit message.
> >
> > [1]https://lore.kernel.org/linux-remoteproc/20250613091650.2337411-1-arnaud.pouliquen@foss.st.com/
> > [2]https://lore.kernel.org/linux-remoteproc/20250616075530.4106090-1-arnaud.pouliquen@foss.st.com/
> >
> > Tested-on: commit 19272b37aa4f ("Linux 6.16-rc1")
> >
> > Description of the feature:
> > --------------------------
> > This series proposes the implementation of a remoteproc tee driver to
> > communicate with a TEE trusted application responsible for authenticating
> > and loading the remoteproc firmware image in an Arm secure context.
> >
> > 1) Principle:
> >
> > The remoteproc tee driver provides services to communicate with the OP-TEE
> > trusted application running on the Trusted Execution Context (TEE).
> > The trusted application in TEE manages the remote processor lifecycle:
> >
> > - authenticating and loading firmware images,
> > - isolating and securing the remote processor memories,
> > - supporting multi-firmware (e.g., TF-M + Zephyr on a Cortex-M33),
> > - managing the start and stop of the firmware by the TEE.
> >
> > 2) Format of the signed image:
> >
> > Refer to:
> > https://github.com/OP-TEE/optee_os/blob/master/ta/remoteproc/src/remoteproc_core.c#L18-L57
> >
> > 3) OP-TEE trusted application API:
> >
> > Refer to:
> > https://github.com/OP-TEE/optee_os/blob/master/ta/remoteproc/include/ta_remoteproc.h
> >
> > 4) OP-TEE signature script
> >
> > Refer to:
> > https://github.com/OP-TEE/optee_os/blob/master/scripts/sign_rproc_fw.py
> >
> > Example of usage:
> > sign_rproc_fw.py --in <fw1.elf> --in <fw2.elf> --out <signed_fw.sign> --key ${OP-TEE_PATH}/keys/default.pem
> >
> >
> > 5) Impact on User space Application
> >
> > No sysfs impact. The user only needs to provide the signed firmware image
> > instead of the ELF image.
> >
> >
> > For more information about the implementation, a presentation is available here
> > (note that the format of the signed image has evolved between the presentation
> > and the integration in OP-TEE).
> >
> > https://resources.linaro.org/en/resource/6c5bGvZwUAjX56fvxthxds
> >
> > Arnaud Pouliquen (6):
> >    remoteproc: core: Introduce rproc_pa_to_va helper
> >    remoteproc: Add TEE support
> >    remoteproc: Introduce optional release_fw operation
> >    dt-bindings: remoteproc: Add compatibility for TEE support
> >    remoteproc: stm32: Create sub-functions to request shutdown and
> >      release
> >    remoteproc: stm32: Add support of an OP-TEE TA to load the firmware
> >
> >   .../bindings/remoteproc/st,stm32-rproc.yaml   |  58 +-
> >   drivers/remoteproc/Kconfig                    |  10 +
> >   drivers/remoteproc/Makefile                   |   1 +
> >   drivers/remoteproc/remoteproc_core.c          |  52 ++
> >   drivers/remoteproc/remoteproc_internal.h      |   6 +
> >   drivers/remoteproc/remoteproc_tee.c           | 708 ++++++++++++++++++
> >   drivers/remoteproc/stm32_rproc.c              | 139 +++-
> >   include/linux/remoteproc.h                    |   6 +
> >   include/linux/remoteproc_tee.h                |  87 +++
> >   9 files changed, 1023 insertions(+), 44 deletions(-)
> >   create mode 100644 drivers/remoteproc/remoteproc_tee.c
> >   create mode 100644 include/linux/remoteproc_tee.h
> >
> >
> > base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
>

