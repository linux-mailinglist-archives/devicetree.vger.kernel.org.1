Return-Path: <devicetree+bounces-126499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D6F9E1B4C
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:51:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C6AFB23B73
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 10:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D266A1E22E8;
	Tue,  3 Dec 2024 10:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JEox6NxT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281131E0DEB
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 10:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733222046; cv=none; b=ZFqMGtPX9C2tVqiGd4Jem8qFs4rynMXmrOzLOYqeqgjMzNCJ4DsNpXuCsCd/SJJKmnrCIa1Esbvr3dj+8WE6qu7mIj8illyYEgQeLT5Wb6h5TfW8ndO0atLTiJhr1bm71xwhdFpDsBVQV7lS5sGvmtf4PUnenf669TQVx/LF9I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733222046; c=relaxed/simple;
	bh=oiqw8XoND2FmbU2/4SsQo7fLmzHerYiYCF+7G5GlT3A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NaMELJ3u5FB0xGCoh6QbBZMGpykeqSfLhDfCZ8edYO70Yu4hqUaqupfWIBMSPl3JiKYBktPNY2Pd7qm1m0t5gB4fS2FAji0jNvWOeABrxFzIKQxFQ8c9MyoCxqQKMSEv6m9YhOCP3tsNP1ldB1g4n9niip0sQsJfJFnNRfU32oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JEox6NxT; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e3989d27ba3so2711347276.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 02:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733222044; x=1733826844; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jQK7ar67JKwYglynwKxJGbvJNteSxjk5U1jE75IemO4=;
        b=JEox6NxTHnYjaLK+eOr9J+k2YtFECZ+G33+qyikQV0sVsLqC1wDtKEbrsmsy0Jvtrb
         d/ZKmXpCC4iIzS//ApZBBKY4vGp611ogWZR8iEKXyEIs3qZUNcP1suErdsAmQOT9aohS
         RQhp0337oXp8CUlU0nxPRcBOubcKHeWzqfKuRlxpv9eHN/jLTv8nppa/NSurnFOWkMqc
         ZR1j/5k7bdb0yG+eO3+YJKTd+FrqMzbCx395bexF0wiOVU330FbMlYPKVzZbr2wuWrU7
         cvPRA+Q6isbW0SBcPsEQpiTVuuFrKzUS+O/SQuttIE/EOjbL59VQXbQ6+vz73JR2nwpX
         fKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733222044; x=1733826844;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jQK7ar67JKwYglynwKxJGbvJNteSxjk5U1jE75IemO4=;
        b=HTAn66XUWdgcZa+SnC1po4nYIlpwiqqS8uodvJAAMa/mnc8JCbUT+buAOIWS+71I9f
         vFdZVpOnQuKl0aDTcXXu0qEYzPtdJfuTms7gy+0Uj9GQAjlu/YWHLQJCfJvx7ay3Qs3W
         m5ZV/I8J1bvndhBaqnE5vd9kqqt90gLK6uZ3MSN9yYpMOgmqmWZFSSlXfJD7xAEXMqNV
         h6XVZpoUcZsPeg3367LSvP87OiN1MIlazXJuctfOBK20pJDAd6LmOeWSbb/aDI2Nj0Si
         +mWlpCXpp6AKKdRHtTz5Vjtutbg59alyVQGQlCbLwBR44fKVJv2wuzVSaJb9kEwMmpM4
         ZpcA==
X-Forwarded-Encrypted: i=1; AJvYcCX/Rd/2IwjSr5Z6y7VU9yI+xuzC2SW75uxGAgorvjEo3cuPsU2zlKMvbWHrtSEl7lcKbkouS63x+ZVN@vger.kernel.org
X-Gm-Message-State: AOJu0YyBlmH5Z3mki0jalOW5sehp4uwGqkAccVzxauygM+1EiFu+1EaD
	ojyx3y29YVkILYZG9yob6x492P0AcxkhOAeUcqesQhNHoGhTiismWQCgYQoxel3ZniogPjU5I2X
	XyRY0iTN2kLjZHdopkNDO0Nitsc3DAIXUFMYwZA==
X-Gm-Gg: ASbGncsGrUBR29l0WQbwwUq8XQg0nbgo1HuAJhHrZJte9jf+h7V7jpGvxsSIR3aHU4Z
	87trZ/8QA30TMRt+jduyWWptF6GxGbIux
X-Google-Smtp-Source: AGHT+IGJ789O8/cpiMDOtqTDu0XCjDmHvNriEyJZhkhHYK5mnMb8D1j8jF1kXltIWk7q4f/dmnhwdEP46Xk2IGin9MI=
X-Received: by 2002:a05:6902:1023:b0:e33:1492:cd63 with SMTP id
 3f1490d57ef6-e39d39e657bmr1297740276.8.1733222044243; Tue, 03 Dec 2024
 02:34:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202151228.32609-1-ansuelsmth@gmail.com> <CAPDyKFqrY7uLD8ATqH0LghmkHgApQSsGtvGkOTd8UVazGu0_uA@mail.gmail.com>
 <674dd60f.7b0a0220.2ba255.7b7a@mx.google.com> <20241202205738.GA3149730-robh@kernel.org>
In-Reply-To: <20241202205738.GA3149730-robh@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Dec 2024 11:33:28 +0100
Message-ID: <CAPDyKFo6j__CoReyAbeLJkA8JJQhJVc=umNesQRZKm-RxFHCwA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: cpufreq: Document support for Airoha
 EN7581 CPUFreq
To: Rob Herring <robh@kernel.org>
Cc: Christian Marangi <ansuelsmth@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, upstream@airoha.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 2 Dec 2024 at 21:57, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Dec 02, 2024 at 04:45:17PM +0100, Christian Marangi wrote:
> > On Mon, Dec 02, 2024 at 04:42:33PM +0100, Ulf Hansson wrote:
> > > On Mon, 2 Dec 2024 at 16:20, Christian Marangi <ansuelsmth@gmail.com> wrote:
> > > >
> > > > Document required property for Airoha EN7581 CPUFreq .
> > > >
> > > > On newer Airoha SoC, CPU Frequency is scaled indirectly with SMCCC commands
> > > > to ATF and no clocks are exposed to the OS.
> > > >
> > > > The SoC have performance state described by ID for each OPP, for this a
> > > > Power Domain is used that sets the performance state ID according to the
> > > > required OPPs defined in the CPU OPP tables.
> > > >
> > > > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > > > ---
> > > > Changes v4:
> > > > - Add this patch
> > > >
> > > >  .../cpufreq/airoha,en7581-cpufreq.yaml        | 259 ++++++++++++++++++
> > > >  1 file changed, 259 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml b/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> > > > new file mode 100644
> > > > index 000000000000..a5bdea7f34b5
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> > >
> > > [...]
> > >
> > > > +examples:
> > > > +  - |
> > > > +    / {
> > > > +        #address-cells = <2>;
> > > > +       #size-cells = <2>;
> > > > +
> > > > +        cpus {
> > > > +            #address-cells = <1>;
> > > > +            #size-cells = <0>;
> > > > +
> > > > +            cpu0: cpu@0 {
> > > > +                device_type = "cpu";
> > > > +                compatible = "arm,cortex-a53";
> > > > +                reg = <0x0>;
> > > > +                operating-points-v2 = <&cpu_opp_table>;
> > > > +                enable-method = "psci";
> > > > +                clocks = <&cpufreq>;
> > > > +                clock-names = "cpu";
> > > > +                power-domains = <&cpufreq>;
> > > > +                power-domain-names = "cpu_pd";
> > >
> > > Nitpick: Perhaps clarify the name to be "perf" or "cpu_perf", to
> > > indicate it's a power-domain with performance scaling support.
> > >
> >
> > Will change to cpu_perf. Thanks a lot for the review!
>
> Is that defined in arm/cpus.yaml? No.
>
> The current choices are perf or psci though those aren't enforced (yet).
> Or nothing which is my preference if there is only 1 power domain.

Right. It's not really clear in arm/cpus.yaml what name to use for a
perf domain, except for "perf" for SCMI.

If we want to move towards some alignment, perhaps we should update
the DT doc to make "perf" the common suggestion? I can send a patch if
you think it makes sense?

Even if there is only 1 power-domain at this point, we never know if
another one turns up later, for whatever reasons. That said, isn't it
better to be specific about a name, already at this point?

Kind regards
Uffe

