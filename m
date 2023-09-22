Return-Path: <devicetree+bounces-2464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FA77AAE75
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:44:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BB799282A2B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAE451E524;
	Fri, 22 Sep 2023 09:44:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451F01E518
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:44:07 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F32291A5
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 02:44:05 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-530ab2d9e89so2295449a12.2
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 02:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695375844; x=1695980644; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdRKYfkU2V6gOP1l0rl+gg/UKXzRcAR814PV9mfsZtg=;
        b=WxxeXc2+bUNQhb7b5kY1qmO9qTOIfjvGmebVyEYCVbDIEqzHj0/lEepeKkAwrGe1s4
         IrbP/2T/Nj2zBzZ7ugNveyeVxAQdu7D277NtjFtK2o3lWCWsukNZF6efnHMxJ66tBF8u
         nClw12vhYogjgi59VW5IyrT7ieL6Q3Wqalv02BX3HUFQBqCUgYeXPSRXdre+XZbC+mYP
         ZWdSsXq4oFUTwq/rIFMlqY7mAs8sdQ6y/z/9wI9ZhFXi9CRm5ybth1V+P63bT04kgR1V
         UELqLqoxLkbO44dkNBYIScrmnsxBdYloZwlMfFxtcqzFeNOMPb6Q1pVQU23PdFumBq2h
         nXoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695375844; x=1695980644;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XdRKYfkU2V6gOP1l0rl+gg/UKXzRcAR814PV9mfsZtg=;
        b=HPgbJmzU0YamxiHv64I10QR7A3RBDt43b8VdcCtfrfZROKOTT1BU064INoB9PMjL2w
         uO81v93IYF467mFdd2LlZ/TeHPRdfdfuvzpeoPTey9lp7o5YZnvberXYWTPbLsDI5mT5
         y3D/18yJ5H1x9TXueLDMxB+4J9gYvAV5CovlZWgzklzlSRSyGl+VRkKC+96DlfXX24yO
         Nx3Q/ZXZlrvH/zDYtGa3vqTW5tmBa5wCLHV4Ie5OvKuPRiYPr+MSKsWbP/Xi+LIVuzfy
         iBi66pXMaX9gv3SRZyskz6sg3Y1USG4CEWr/U01glSSxQU8oT/ba+t55JOpYivDBgnI5
         jjZg==
X-Gm-Message-State: AOJu0YyWrtTkJCAwXW18B14NxlkOiv7hy3T9N79+GWkjoWtqk9CNLY/b
	2Ltm+Dg87DV5F8mN1WRzEGuzxkBhfLa1IQRUclujUA==
X-Google-Smtp-Source: AGHT+IGzTDFs3N1XlqmSyonD0tr7m5R1VUvlIn3pnPNhs48aCfG9TawffgF5nbOhhiKcAhIFDyQ4MZdo5LcAry49Zos=
X-Received: by 2002:a17:906:304b:b0:9a1:af6f:e373 with SMTP id
 d11-20020a170906304b00b009a1af6fe373mr7142302ejd.42.1695375844005; Fri, 22
 Sep 2023 02:44:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919024943.3088916-1-tylor_yang@himax.corp-partner.google.com>
 <20230919024943.3088916-2-tylor_yang@himax.corp-partner.google.com>
 <20230919-70b2f1e368a8face73468dfa@fedora> <CAGD2q_anfBP78jck6AbMNtgAggjOgaB3P6dkmq9tONHP45adFA@mail.gmail.com>
 <20230919-cc4646dbfb953bd34e05658c@fedora> <CAGD2q_bkTpvXiomWb_yerNjQfMVKOctYgBqF_RBSo_jYqyyyxw@mail.gmail.com>
 <20230922-unclothed-bottom-5531329f9724@spud>
In-Reply-To: <20230922-unclothed-bottom-5531329f9724@spud>
From: yang tylor <tylor_yang@himax.corp-partner.google.com>
Date: Fri, 22 Sep 2023 17:43:54 +0800
Message-ID: <CAGD2q_YsFdDVhE4JCmQSGMWOdpe_yzG8-CdWYPXtjeZsManvgQ@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: input: Introduce Himax HID-over-SPI device
To: Conor Dooley <conor@kernel.org>
Cc: dmitry.torokhov@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.com, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	poyuan_chang@himax.corp-partner.google.com, hbarnor@chromium.org, 
	"jingyliang@chromium.org" <jingyliang@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 22, 2023 at 5:22=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Sep 22, 2023 at 03:56:25PM +0800, yang tylor wrote:
> > On Tue, Sep 19, 2023 at 7:09=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:
> > > On Tue, Sep 19, 2023 at 05:31:29PM +0800, yang tylor wrote:
>
> > > > The behavior of "himax,boot_time_fw_upgrade" seems not stable and
> > > > should be removed. "himax,fw_in_flash", I use the kernel config for
> > > > user to select.
> > >
> > > That seems like a bad idea, we want to be able to build one kernel th=
at
> > > works for all hardware at the same time.
> > >
> > I see, so I should take that back?
> > I'll explain more about it.
>
> Are there particular ICs where the firmware would always be in flash and
> others where it would never be? Or is this a choice made by the board or
> system designer?
>
Most cases it's about the system designer's decision. But some ICs may be f=
orced
to use flash because of its architecture(multiple IC inside, need to
load firmware to
multiple IC's sram by master IC). But if there is no limitation on
this part, most system
designers will prefer flashless.

> Thanks,
> Conor.

Thanks,
Tylor

