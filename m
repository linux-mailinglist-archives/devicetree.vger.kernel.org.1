Return-Path: <devicetree+bounces-101284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0C69712EC
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:05:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA0C71C2217C
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 09:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 322C31B29CF;
	Mon,  9 Sep 2024 09:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S9nIJuEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CDCD1B29C8
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 09:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725872737; cv=none; b=L09L2uCQ64ZngYP5Zq3GbM8UoAOPIzGre5SR53CRndvE+Xg1vGYnf5hN82pKYQEs9L+/F5aboEROLvkVUKkeOKp/f9Bbdfqvv0ax8NGuCc9Y0USSwS8svgqIM79zIua18p4NtZpS8/R7Gy47sR52sUh8J54z7v38fRUQf8flPXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725872737; c=relaxed/simple;
	bh=BB3/H5ySqRyu6/77CobU02zoSYGnRaT8/VTpD8q1nkM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mJ0w/nrufCn79pxNwkxb1bJWfMgEV9nIaBZSsngWn5MtbiwjOIBkS9QFViZBk5l+gqphJvQKHpYPzQ0PNi0Ey3SobRNjj8/vm9+aGzxFjiBXM4SQXMjrsfRi9CYRAtTLjQiCSRXXsQkBpNtJRsud5qIrVMy8XAnaWpb9AYbgH5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S9nIJuEM; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e1a90780f6dso4257287276.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 02:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725872734; x=1726477534; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j2t8R4xfnSC9w9Cn08xrD7PLm+PTwWMORf6NFYOH81c=;
        b=S9nIJuEMT4dVh0P4tUIwaCATrYrzoRETQ4/HdZTDqoglVs+gMU8OSXQPwyLkbDZ8BJ
         DmTUaLUaLnqXeY5BeTOfLsgqymqUAKYot214KfI3u7Vluk8m8vdg4b2VY6IeiqmHS9vq
         7g6ZxYs83syCWeaCd4phgJ/Wz/fwLrA5qioLfMdTDaZazgvkTHmuHzOjI6KiAoFlCGmC
         wpl8zLxamWt00ctZCTSq1F2p3bNkf1NaRcU0zqfWXTGmNFh1ADHCk1vECGL0vBeL5x0c
         wZetgMZpeRPTFq0Vhzk7k5ubgKOKWXTILIM5SMaqCu82fO0Ui4zLfel95u4k1AmEL0y1
         SdzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725872734; x=1726477534;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j2t8R4xfnSC9w9Cn08xrD7PLm+PTwWMORf6NFYOH81c=;
        b=awuDdRIi3/VFQaPkk62wmCiKHsvciLTaZ02vUWtNRavsquffsWyF9ffoCWhoP/ZcX2
         g4gGHYYB8lko+CBYovQcHEmTqeOXEfOgQn58Y0QSO+V6GEZ8y5PqoKiyIB2Es3/Ja8Px
         RI/j+BMLlWQFLFajDETSNrBbEhQkJgcIh3htZiXpUKH+pQ+GDlxpOrJbuy7ulOU2UPvy
         v+rXxtEYkQPx6Ext2Bqh+IVeDBG8SqK0r8cmxd3h36gbKx4C5hoKoVtbKHaisgUfDHuZ
         Mp9N6KEs76zXHb9+//xj25mRGLbOw6giU5ouLDncHOSP208MBNrXhBbEVLUw6aovsrs5
         FtNg==
X-Forwarded-Encrypted: i=1; AJvYcCUMnAktyUzy22be6fuSsFUDZOgt2bEWNLnLOGXSV9bMdtZwUlOP0qru2lL8DL80atMdAgxz/Gz579Y5@vger.kernel.org
X-Gm-Message-State: AOJu0YyfEEYaXcn89ndAxCtjLTN/sEleBq79y7atWQz3PJLugvrzcwCZ
	lNcwr75pkjj1KAARV/MtCNseTS1w7SZupqO1m1+49tkXTQMlAURLdBfLm9vn5lT+toykwENILg2
	TANkm4wglHcpZLHKvbwSyah1Ojp1CGKlJCKi/Xw==
X-Google-Smtp-Source: AGHT+IG0rmU+PJ1sUsI9xaYzlyO0fuHlZgEClWUHvIo++2qG8J7dLhkan6PH1kB/kHCDTDrPTR3yTt3ldtPN97UpiV0=
X-Received: by 2002:a05:690c:d1a:b0:6db:2753:cd9c with SMTP id
 00721157ae682-6db45273f36mr119317517b3.44.1725872734530; Mon, 09 Sep 2024
 02:05:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <692cfe9a-8c05-4ce4-813e-82b3f310019a@gmail.com>
 <CACMJSes4cnCNUHiZUr4CF-K2c8-1VYzuh=T8JDi_erqfShkuZA@mail.gmail.com>
 <1f889bba-0c89-45db-b360-b21d6bba7772@gmail.com> <68b0476f-dfa1-44cb-a01a-f4afbaaa98e5@gmail.com>
 <vtdrxh57zxpu6xktzehcpx7hkaqclg5kya5jojrbkmo76yswxx@libmc5evobkb>
In-Reply-To: <vtdrxh57zxpu6xktzehcpx7hkaqclg5kya5jojrbkmo76yswxx@libmc5evobkb>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Mon, 9 Sep 2024 11:05:23 +0200
Message-ID: <CACMJSeuONLsWy3rQnLsOxm-Qqgcmd67XNhCMPvTd=UtgYoPfzg@mail.gmail.com>
Subject: Re: [REGRESSION] firmware: qcom: scm: smc: switch to using the SCM allocator
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rudraksha Gupta <guptarud@gmail.com>, regressions@lists.linux.dev, brgl@bgdev.pl, 
	andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, robimarko@gmail.com, 
	quic_gurus@quicinc.com, luzmaximilian@gmail.com, catalin.marinas@arm.com, 
	will@kernel.org, srinivas.kandagatla@linaro.org, arnd@arndb.de, 
	quic_eberman@quicinc.com, elder@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@quicinc.com, ahalaney@redhat.com, 
	quic_djaggi@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Sat, 7 Sept 2024 at 11:57, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sat, Sep 07, 2024 at 01:49:02AM GMT, Rudraksha Gupta wrote:
> > > Looks like qcom_scm_get_tzmem_pool() returns NULL. Not sure how this
> > > happens. Can you confirm that the QCom SCM driver probed correctly?
> >
> > Thanks for looking into this! Please let me know how I can help!
> >
> >
> > I've been building the driver into the kernel I believe. Here's the relevant
> > line in the config:
> >
> > $ rg -i "scm"
> > samsung/expressatt/linux.defconfig
> > 1615:# CONFIG_ARM_SCMI_PROTOCOL is not set
> > 1627:CONFIG_QCOM_SCM=y
> > 1628:# CONFIG_QCOM_SCM_DOWNLOAD_MODE_DEFAULT is not set
> >
> >
> > It seems like the scm driver is being probed:
> >
> > ~ # dmesg | grep scm
> > [    0.066438] qcom_scm: convention: smc legacy
> > [    0.362543] bus: 'platform': add driver qcom_scm
>
> The scm driver is added, but it is not probed as there is no SCM node in
> DT. I'll send and RFT patch to add it. However the issue still persists:
> the driver should not crash if there is no SCM device on a system.
> qcom_scm_*_alloc should fall back if there is no SCM.
>

Ugh, so some SCM calls seem to expect that they can get called without
the SCM driver. It's not very intuitive, I would expect that the
driver must be up for SCM to work at all.

I think we should fall back to using kzalloc() in such cases as
there's no struct device to use with the DMA alloc APIs. I'll prepare
a patch.

Bart

