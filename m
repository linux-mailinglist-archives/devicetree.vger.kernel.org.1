Return-Path: <devicetree+bounces-126500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0813C9E1BAD
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 890B4B2A708
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 10:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B8B11E25E8;
	Tue,  3 Dec 2024 10:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OiQ4EYKB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680AA1E0DEB
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 10:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733222258; cv=none; b=HRYWnKtyV1o2/pI0owMWpGqPYDV2A7bc/XzoyJARW6hd9094wikqWqlQcmrtyEfBE9VqwPKRgpUfVulGY5u7tL2MjKGeEYU3t36x4NG8RZVJOX0+jPRhStqbBaaIMP8goMWxkcpxAiyQdHBL8S9MH31eI5iKfLKW/gW1WvGKlzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733222258; c=relaxed/simple;
	bh=+R7vJwnPN7TZBrcDtH1Pjz7Gzm8FFyIULIy2HXvkRK4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LFtDSatwDrCPCOdrKXedCYyH3ssVKNn/AIBJfXNuKr0SZSIPlSAzcJFyzxqrsiCWkWKAzjNg1VmxdD5QPGC6XJfjEfriVBqqod2Z4eb/jw3pJstbWfPtvnJXrf+vO1Aqvau/xkrkfXYJvyvgkRpu5aXz8+VxVAR6ZglzIahbzHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OiQ4EYKB; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e3982e9278bso4207937276.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 02:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733222254; x=1733827054; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sPnwihfdsbfkm/uP14UR3jKNdvWL6NNpvOvZqmBYmGo=;
        b=OiQ4EYKBO06/1lE8xEkyaSRHsU5flCyEJToxmD7p2iClLZPHLvQjuARFuFEs+Q1KMz
         +NOSrnN9my4RbXhDsiiScwm2ynQ4uptLHz59T+5TF4g9NaUCgfFDaOVLamULxXEOjZ2t
         XhqrFqpF/fi8It823oV8jrg4iHmVE5PJnEnrKc+CuJ/IkfSx+CbL6iM+g8DFm5wJXA+x
         Y1EunYXL9ZCcdMSuXLnh2Rj+JhaEfz1zDZOtjlclIwseVI1qIrCuT4YoWNIUfJzfDhjp
         bAjRh42xpQBdO23QoagJrBO2FtcD680ojhX0qeanPTnbY8xwBezO57OPaIGPfnce7K9s
         JR0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733222254; x=1733827054;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sPnwihfdsbfkm/uP14UR3jKNdvWL6NNpvOvZqmBYmGo=;
        b=kZRCOQB3JVaoNiRrkyG0c6t8/1B0UmverYPB0E8C1V3tSOkzeI2pfUmJrQFX2HurxW
         1SAhOOFdTIpLJcw0Blmb0TlUN5Aguad9IswXvc9PQaq8QafukIewBnNSs+g37LA1YARA
         dxBGBDofrq2hPGv5+yt1A56GStjPLm+H19v8vt/4sp8M5FxPhcqvLBlw4A713sgQSuS6
         QZ2CoD+V29PuYb0AHDc5nFm0InwEjGkxowA+K4vpisdgSykjEmsHfxQDkgxJsqDMXII0
         n7IfSjzpF0ZXFdSqjQhDzqSWstfGmSXI7AQlLGpugZVUSncKR+u9TvuTMgnqv6LmpVnZ
         ebgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCsgOpTU1F/J5z/hp1A+H7MgAhfNFDQT2WPbNV/LJSj4y9pRYbo51ZL4fzxWPIDM9i0+Bik5Slnaaq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1jpwEzFVzP1y0Z/yc1M/S+bhUiBPuzwAANeG5/VkwRHEfnCMA
	gMNBY8qYTAxmBAuxlUwnk3jmqAi2e0/HlzuKuVun9h+LroxdUu5diF2adzk9D+rM17k6h+4rNcN
	LDDDRfk9BBBBtIHgDFf1/h07AEB9Fy5nkUSBhFRNzuT7tF2ASQec=
X-Gm-Gg: ASbGncvhFlhNAoJAeMsehQmmAB5PUBHw+nTfL3kR30nlQpQCzf5VOSzJ7FlHSIsFtBp
	TIWE+9x9iqjVvA5ZzCytP+xfiredm8K+W
X-Google-Smtp-Source: AGHT+IGsG8YQ1ggZzCdJnuPl8QhAuveUqLW8ajO21T6RKY94XRehmhGe1lb+y5bziuBa+IeNh+8txdT/gnk+MIJW+FM=
X-Received: by 2002:a05:6902:2d45:b0:e39:9749:bb2b with SMTP id
 3f1490d57ef6-e39d3e1c5f4mr1383026276.29.1733222254485; Tue, 03 Dec 2024
 02:37:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202151228.32609-1-ansuelsmth@gmail.com> <CAPDyKFqrY7uLD8ATqH0LghmkHgApQSsGtvGkOTd8UVazGu0_uA@mail.gmail.com>
 <674dd60f.7b0a0220.2ba255.7b7a@mx.google.com> <20241202205738.GA3149730-robh@kernel.org>
 <674e1fc4.050a0220.a615a.6ff9@mx.google.com>
In-Reply-To: <674e1fc4.050a0220.a615a.6ff9@mx.google.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Dec 2024 11:36:58 +0100
Message-ID: <CAPDyKFrb4-oJT2TMgw0SU035S2nO8LZZEOrQOz2mN+pFgZcYDA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: cpufreq: Document support for Airoha
 EN7581 CPUFreq
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Rob Herring <robh@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, upstream@airoha.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 2 Dec 2024 at 21:59, Christian Marangi <ansuelsmth@gmail.com> wrote:
>
> On Mon, Dec 02, 2024 at 02:57:38PM -0600, Rob Herring wrote:
> > On Mon, Dec 02, 2024 at 04:45:17PM +0100, Christian Marangi wrote:
> > > On Mon, Dec 02, 2024 at 04:42:33PM +0100, Ulf Hansson wrote:
> > > > On Mon, 2 Dec 2024 at 16:20, Christian Marangi <ansuelsmth@gmail.com> wrote:
> > > > >
> > > > > Document required property for Airoha EN7581 CPUFreq .
> > > > >
> > > > > On newer Airoha SoC, CPU Frequency is scaled indirectly with SMCCC commands
> > > > > to ATF and no clocks are exposed to the OS.
> > > > >
> > > > > The SoC have performance state described by ID for each OPP, for this a
> > > > > Power Domain is used that sets the performance state ID according to the
> > > > > required OPPs defined in the CPU OPP tables.
> > > > >
> > > > > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > > > > ---
> > > > > Changes v4:
> > > > > - Add this patch
> > > > >
> > > > >  .../cpufreq/airoha,en7581-cpufreq.yaml        | 259 ++++++++++++++++++
> > > > >  1 file changed, 259 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml b/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> > > > > new file mode 100644
> > > > > index 000000000000..a5bdea7f34b5
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> > > >
> > > > [...]
> > > >
> > > > > +examples:
> > > > > +  - |
> > > > > +    / {
> > > > > +        #address-cells = <2>;
> > > > > +       #size-cells = <2>;
> > > > > +
> > > > > +        cpus {
> > > > > +            #address-cells = <1>;
> > > > > +            #size-cells = <0>;
> > > > > +
> > > > > +            cpu0: cpu@0 {
> > > > > +                device_type = "cpu";
> > > > > +                compatible = "arm,cortex-a53";
> > > > > +                reg = <0x0>;
> > > > > +                operating-points-v2 = <&cpu_opp_table>;
> > > > > +                enable-method = "psci";
> > > > > +                clocks = <&cpufreq>;
> > > > > +                clock-names = "cpu";
> > > > > +                power-domains = <&cpufreq>;
> > > > > +                power-domain-names = "cpu_pd";
> > > >
> > > > Nitpick: Perhaps clarify the name to be "perf" or "cpu_perf", to
> > > > indicate it's a power-domain with performance scaling support.
> > > >
> > >
> > > Will change to cpu_perf. Thanks a lot for the review!
> >
> > Is that defined in arm/cpus.yaml? No.
> >
> > The current choices are perf or psci though those aren't enforced (yet).
> > Or nothing which is my preference if there is only 1 power domain.
> >
>
> I would also prefer not having to define the names property but I guess
> that is mandatory for the PD APIs? Maybe Ulf can confirm.

No, that's not needed.

dev_pm_domain_attach() attaches a single PM domain, without requiring a name.

But as stated in the other thread, to be future proof, I would suggest
using a name already at this point. Even if it's not required.

Kind regards
Uffe

