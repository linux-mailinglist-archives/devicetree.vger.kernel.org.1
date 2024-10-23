Return-Path: <devicetree+bounces-114881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4629AD46A
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 21:02:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32188B2107F
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 19:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4BCE1AA787;
	Wed, 23 Oct 2024 19:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fiTTBrvO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CADD14AD20
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 19:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729710142; cv=none; b=riLX9iy3YMcKta5UvxsNfU9/bPuBqi3SV3Ywf2sNHXfuy9hvaacfnEei0x8x/YyIQcrIuzuEn8m4qMYaXvZk1Iuh9J7YW2ZQ5m6BMTm/le12epG5EWp7whxtMNx9JcWxoT+sgBotpHdS2+EZJgMhoe5n6rnwEZMW55zvA09hr+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729710142; c=relaxed/simple;
	bh=uFtI7F/Qs6GJxEpny9dYB80paYb1IKlSpQXJYGSHSjo=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K6DAgTO/2Ga+UczUqZoabKCJLnTojqjf1aTkb2cc5l4ZqbABakYFSl6hiRkjhDqQEU4vlPdE4T8M08gZ5sTBWcbFVa4iAZZnw+lZ3WWeqbEcDHIRJvcDNgDBZzNcisAV3B+2s2hFg4+6vdMZklFvVcg5czWZSeWhW3cxEAoCjl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fiTTBrvO; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-2887abeefbdso133349fac.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 12:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729710140; x=1730314940; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rdy7AbHrdibZ9InPm8yIrXzTxAu9C/oEPTb0YZD94xo=;
        b=fiTTBrvOFKQLXkdnI34daEUl4dBjUWiIQI0IEw24xHRw+dys+YwF09EJd7tfYNZHTq
         Q0/ta/MVOxrPF0H9oSOFNmasm1SbGLANeEsmKqr730raAHe8Y8Uys2GK5V9Q0ogoSG3j
         oCRmSJw3L3WzVWza2tj/DCdnxaqDoR+pER5N8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729710140; x=1730314940;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rdy7AbHrdibZ9InPm8yIrXzTxAu9C/oEPTb0YZD94xo=;
        b=EVq14J1S1dIVwl+TKL79Glh65hSjLA26c+5xtD2ZQU79Op51+TnnbutsQ/GykQpf9B
         r1SiAv52l74k7yEX51CcluMtgJhQ+D/FJxwVnhdbTLJfnoE5N0z88JnMD+M9tyZgamHp
         08GJez//PbiwPQn65Fw/LQFQZgIBNuuX9bmT6KTfCAuXhcdUALvjkV+TjVSsYpVSXeim
         i8HPZeym97DgitGdW8dPsfvJffDQ8FmjPSTO11QO01DB3qi+zIHJifko6tSjaFlnMf11
         IxYRNkOotZBYORqRyOkOJRttiIDXtWCOj+EMaPwpfnjxMwyWnho06NXisaE9zd7PT/qt
         WZbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUK4pxjG2b1f3e5nlIgPoB/Fu+TpucBqvPuX6z8SdPIOWeo5Ce/ywy5ul8w//R+fcE4viR3haKeAkCZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxjuwkOUdMBnJdM9e5bjWzzIYTP0QNvCf0grXH+wr6HtCkqWnY3
	8BoYgb45ouqw/FmU4oNt25/vx1M9eaLzRiDTOjY13wDLBLJtah37WXqb8q0DPbsEeFTrvdeWI2r
	lky6ce74KSsvVSxl04da4n7tNuWE2RLoxzUM2
X-Google-Smtp-Source: AGHT+IFYINQGLEbR2sm7FvSsNQwO1DKseiMVQJ/wPdU7mDzWulIqePkZvyFPajM+sGcM+ZTlwH4bMrwbRtYbYEfMP10=
X-Received: by 2002:a05:6870:b17:b0:277:ef0f:cde4 with SMTP id
 586e51a60fabf-28ccb68e27emr3295811fac.46.1729710140223; Wed, 23 Oct 2024
 12:02:20 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 23 Oct 2024 12:02:19 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20241023092251529-0700.eberman@hu-eberman-lv.qualcomm.com>
References: <20241018-arm-psci-system_reset2-vendor-reboots-v6-0-50cbe88b0a24@quicinc.com>
 <20241018-arm-psci-system_reset2-vendor-reboots-v6-3-50cbe88b0a24@quicinc.com>
 <CAE-0n515sUkmTWptgY8pOaMDBPfDp5pZBy9Nby+4cMdMAnAZfA@mail.gmail.com> <20241023092251529-0700.eberman@hu-eberman-lv.qualcomm.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 23 Oct 2024 12:02:19 -0700
Message-ID: <CAE-0n50s1gUt7jOWLEjDzi7ABVRLmAr1kG-6V6YjTZnPD2EMQw@mail.gmail.com>
Subject: Re: [PATCH v6 3/5] firmware: psci: Read and use vendor reset types
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Andy Yan <andy.yan@rock-chips.com>, Arnd Bergmann <arnd@arndb.de>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Olof Johansson <olof@lixom.net>, Rob Herring <robh@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Will Deacon <will@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Melody Olvera <quic_molvera@quicinc.com>, 
	Shivendra Pratap <quic_spratap@quicinc.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, linux-pm@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Elliot Berman (2024-10-23 09:30:21)
> On Fri, Oct 18, 2024 at 10:42:46PM -0700, Stephen Boyd wrote:
> > Quoting Elliot Berman (2024-10-18 12:39:48)
> > > diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> > > index 2328ca58bba6..60bc285622ce 100644
> > > --- a/drivers/firmware/psci/psci.c
> > > +++ b/drivers/firmware/psci/psci.c
> > > @@ -305,9 +315,29 @@ static int get_set_conduit_method(const struct device_node *np)
> > >         return 0;
> > >  }
> > >
> > > +static void psci_vendor_sys_reset2(unsigned long action, void *data)
> > > +{
> > > +       const char *cmd = data;
> > > +       unsigned long ret;
> > > +       size_t i;
> > > +
> > > +       for (i = 0; i < num_psci_reset_params; i++) {
> > > +               if (!strcmp(psci_reset_params[i].mode, cmd)) {
> > > +                       ret = invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2),
> > > +                                            psci_reset_params[i].reset_type,
> > > +                                            psci_reset_params[i].cookie, 0);
> > > +                       pr_err("failed to perform reset \"%s\": %ld\n",
> > > +                               cmd, (long)ret);
> >
> > Do this intentionally return? Should it be some other function that's
> > __noreturn instead and a while (1) if the firmware returns back to the
> > kernel?
> >
>
> Yes, I think it's best to make sure we fall back to the architectural
> reset (whether it's the SYSTEM_RESET or architectural SYSTEM_RESET2)
> since device would reboot then.

Ok. Please add a comment in the code so we know that it's intentional.

>
> > > +               }
> > > +       }
> > > +}
> > > +
> > >  static int psci_sys_reset(struct notifier_block *nb, unsigned long action,
> > >                           void *data)
> > >  {
> > > +       if (data && num_psci_reset_params)
> > > +               psci_vendor_sys_reset2(action, data);
> > > +

I'd add a comment here as well indicating that a fallback is used.

> > >         if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
> > >             psci_system_reset2_supported) {
> > >                 /*
> > > @@ -750,6 +780,68 @@ static const struct of_device_id psci_of_match[] __initconst = {
> > >         {},
[...]
> > > +                       continue;
> > > +
> > > +               num = of_property_read_variable_u32_array(np, prop->name, magic, 1, 2);
> >
> > ARRAY_SIZE(magic)?
> >
> > > +               if (num < 0) {
> >
> > Should this be less than 1?
> >
>
> of_property_read_variable_u32_array should return -EOVERFLOW (or maybe
> -ENODATA) if the array is empty. I don't see it's possible for
> of_property_read_variable_u32_array() to return a non-negative value
> that's not 1 or 2.

I think you're saying a return value of 0 is impossible? Ok. I was
mostly looking at the usage of the return value later on in this patch
and trying to understand why 0 would be allowed as a possible return
value without looking at the details of
of_property_read_variable_u32_array(). I guess the 1, 2 are the min/max
though so it's fine.

