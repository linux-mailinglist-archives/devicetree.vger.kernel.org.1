Return-Path: <devicetree+bounces-43969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DDE85C0BC
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:08:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3F181F21B4D
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5A9762F4;
	Tue, 20 Feb 2024 16:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PuM0BO5A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746997602A
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708445285; cv=none; b=K92UgxS6uBZeJeUxY1nIVzEwwWx7Zsu8/GTi1W5tANpt54MWA7ypz067u/Ozg1gWYVAsIcK7MA1ZF3/uiccImQls1GGynCksanoMXPnVPZ8GRLjomu5Yp0IG+Pv7Rb+MzpV6zFDpHQlDRgT01eMJYiE4hMSoAvUiKvnk45i3VEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708445285; c=relaxed/simple;
	bh=XOOhU5Oo0Q3ddvrt/Ag3LFXa4StC8YdgGVtnxwJ4qkM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VGOMwTIboi7mY0GwYfPjsORZTo8EDEopMqYVqvcD+R9TsFdpSeyBZLB5PlbBFAyHI8cv5pFeRbG4oZn8Z6VJFk34FN0lTlnPUtSG9LMQbkt9pAZ4goHgWVd9h++RzZTpYQD49V/qH6i8SI9u+brw6EHP3V510AQVOsR1v6fswJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PuM0BO5A; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc6d8bd618eso5385585276.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 08:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708445282; x=1709050082; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QPNuR0RFE8pSD1DrnvdZhM1blj+nttBa3INihpwmSHQ=;
        b=PuM0BO5AyE1gl/Filw3oa4I4TgxT+2eNDfm2Fd/+rwrwoOH039U56OedsGtVr9NFKV
         DSbmMBM7UCkIsSKRY2zt20lBaHgc+HrEJo8XanTXqAGlrnGdm0q5i8H71Kb8VUYeFRTh
         uz2E20IFzpdLp2IMAiJiSaViin2Z5deF/bhQ45j2uCtnrcnpOGHf+hCxf7mFKIufhfl+
         rJiljaWIh5SJi5vmUbDMoUIz6IOlyYpq4fVY4q9ORwS1HrL7P1TFhdMkanKGyTVbMimp
         tEEaVVkj6aFUiv1URtkAN3DKpGT4G1eQ+yqEj0+7q7dci86oMJoHtEC5QfyE3AdLrSNi
         voJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708445282; x=1709050082;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QPNuR0RFE8pSD1DrnvdZhM1blj+nttBa3INihpwmSHQ=;
        b=o+Brn7PSXoM/KTvz492keDHMuJYVqW4pcoZOW1qE4vjShAXt+oWqkkLwj9whcpYof8
         XgMZ+Px6wFodNjndiowzZvLejEkctGZmf+X5BeJ596ZIM0yzMxxPVZbXjnWV+wzzRIRe
         B0rzmhYZei96q9H2WZM+Lh4SVTv6+ptqjEHwu2TlCs2mwrirIe52nRw3DR2zdezJmhbK
         f5uSOop8hzruxsi3SgE2S62p0nzY2JtgORG5hgu2qvGrn4P4YbZA5UFEstThRc7cuX5I
         Pto8QfHq6/1C3vncs5l1uXQoA4YfellhiwWNiPOA8QMCUWWa2zwSU29f+JeC3H0wGz9n
         CRkg==
X-Forwarded-Encrypted: i=1; AJvYcCWv6YtNh/cXgV5hN8MDpNdwSNY8Wl4ynlJiHUm0kzLi4fWY45vOGg798y9l0ADwVnQpxYxLG6ONC+XpR6E+wrlWR0lTEZCgg95OEQ==
X-Gm-Message-State: AOJu0YzLqyhCc1oKBH8wp1BaBqp6hMv5PtfQN0Ujd+mRpsaG2gtTpaXW
	f86MzKCoDj1twxi72FfmVNvx/mMK3W9D97iuHwZZRKaoYcRB/PvDhLYTdH1DUxHMvbj3ELgWgBL
	5ynuzyM56eQnWciZ7HrDk3kZji+uPyLR+Mn3OaA==
X-Google-Smtp-Source: AGHT+IGJIf6HNRopOaK1bB1PZ46D49gYGhby9upA9L6LnRT4P9HNoY6jS/xmcQevNc/ziwC9Osd+/ubjfDFEw3XqTOc=
X-Received: by 2002:a25:aaa4:0:b0:dcc:b719:4e50 with SMTP id
 t33-20020a25aaa4000000b00dccb7194e50mr13951440ybi.41.1708445282330; Tue, 20
 Feb 2024 08:08:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240215134856.1313239-1-quic_mdalam@quicinc.com>
 <20240215134856.1313239-3-quic_mdalam@quicinc.com> <CAA8EJpquDwDg+OrZKeJrTWEtokCF7uyHMyzCFK2etSsDip8_6Q@mail.gmail.com>
 <c574c9ab-0a47-2dc8-9ddd-c08f1b770d7e@quicinc.com>
In-Reply-To: <c574c9ab-0a47-2dc8-9ddd-c08f1b770d7e@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 18:07:50 +0200
Message-ID: <CAA8EJprkwv0QstJTveM+06DbMjgBCEVBRhBb5i2QM6LxmmCQug@mail.gmail.com>
Subject: Re: [PATCH 2/5] drivers: mtd: nand: Add qpic_common API file
To: Md Sadre Alam <quic_mdalam@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, broonie@kernel.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, 
	manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org, 
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org, 
	quic_srichara@quicinc.com, quic_varada@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 20 Feb 2024 at 17:59, Md Sadre Alam <quic_mdalam@quicinc.com> wrote:
>
>
>
> On 2/15/2024 8:30 PM, Dmitry Baryshkov wrote:
> > On Thu, 15 Feb 2024 at 15:53, Md Sadre Alam <quic_mdalam@quicinc.com> wrote:
> >>
> >> Add qpic_common.c file which hold all the common
> >> qpic APIs which will be used by both qpic raw nand
> >> driver and qpic spi nand driver.
> >>
> >> Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> >> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> >> Co-developed-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> >> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> >> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> >> ---
> >>   drivers/mtd/nand/Makefile            |    1 +
> >>   drivers/mtd/nand/qpic_common.c       |  786 +++++++++++++++++
> >>   drivers/mtd/nand/raw/qcom_nandc.c    | 1226 +-------------------------
> >>   include/linux/mtd/nand-qpic-common.h |  488 ++++++++++
> >>   4 files changed, 1291 insertions(+), 1210 deletions(-)
> >>   create mode 100644 drivers/mtd/nand/qpic_common.c
> >>   create mode 100644 include/linux/mtd/nand-qpic-common.h
> >>
> >> diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
> >> index 19e1291ac4d5..131707a41293 100644
> >> --- a/drivers/mtd/nand/Makefile
> >> +++ b/drivers/mtd/nand/Makefile
> >> @@ -12,3 +12,4 @@ nandcore-$(CONFIG_MTD_NAND_ECC) += ecc.o
> >>   nandcore-$(CONFIG_MTD_NAND_ECC_SW_HAMMING) += ecc-sw-hamming.o
> >>   nandcore-$(CONFIG_MTD_NAND_ECC_SW_BCH) += ecc-sw-bch.o
> >>   nandcore-$(CONFIG_MTD_NAND_ECC_MXIC) += ecc-mxic.o
> >> +obj-y += qpic_common.o
> >> diff --git a/drivers/mtd/nand/qpic_common.c b/drivers/mtd/nand/qpic_common.c
> >> new file mode 100644
> >> index 000000000000..4d74ba888028
> >> --- /dev/null
> >> +++ b/drivers/mtd/nand/qpic_common.c
> >> @@ -0,0 +1,786 @@
> >> +// SPDX-License-Identifier: GPL-2.0
> >> +/*
> >> + * QPIC Controller common API file.
> >> + * Copyright (C) 2023  Qualcomm Inc.
> >> + * Authors:    Md sadre Alam           <quic_mdalam@quicinc.com>
> >> + *             Sricharan R             <quic_srichara@quicinc.com>
> >> + *             Varadarajan Narayanan   <quic_varada@quicinc.com>
> >
> > This is a bit of an exaggeration. You are moving code, not writing new
> > code. Please retain the existing copyrights for the moved code.
> Ok
> >
> >> + *
> >> + */
> >> +
> >> +#include <linux/mtd/nand-qpic-common.h>
> >> +
> >> +struct qcom_nand_controller *
> >> +get_qcom_nand_controller(struct nand_chip *chip)
> >> +{
> >> +       return container_of(chip->controller, struct qcom_nand_controller,
> >> +                           controller);
> >> +}
> >> +EXPORT_SYMBOL(get_qcom_nand_controller);
> >
> > NAK for adding functions to the global export namespace without a
> > proper driver-specific prefix.
> Ok, will fix in next patch
> >
> > Also, a bunch of the code here seems not so well thought. It was fine
> > for an internal interface, but it doesn't look so good as a common
> > wrapper. Please consider defining a sensible common code module
> > interface instead.
>
>   QPIC controller will support both raw NAND as well Serial nand interface.
>   This common API file was the part of raw NAND driver , since for serial
>   nand most of the APIs from raw nand driver will be re-used that's why i
>   have created this common API file, so that QPIC serial nand driver
>   drivers/spi/spi-qpic-snand.c and QPIC raw NAND driver
>   drivers/mtd/nand/raw/qcom_nandc.c can used these common APIs.
>
>   Could you please suggest how I should handle this in batter way.

Yes. Start by designing common accessor functions that form a
sufficient and complete API to access the hardware functionality. A
set of functions blindly moved from the existing driver usually do not
make such an API, because usually nobody cares enough about the driver
internals. It should be something that external user (NAND, SPI, etc)
can use without looking into the actual implementation of these
functions.

-- 
With best wishes
Dmitry

