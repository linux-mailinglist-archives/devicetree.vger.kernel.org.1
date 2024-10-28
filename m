Return-Path: <devicetree+bounces-116726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF1F9B3C42
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 21:49:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AA7E2835DA
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 20:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE951E04B3;
	Mon, 28 Oct 2024 20:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="iKaBVGu5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6BE1E0DE1
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 20:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730148572; cv=none; b=A62k6/+WgFxHT8QncNg0ev6UjX7VpIZRGbogd+bhQX+OCZ4MvyxrKhjAt6ULhKvnby1ZoZShXqfyFn0zynN13vd87tv7dmpCI19FiNs8Q5fJfCtkIUEADubAiWdmL0uMVLfm9wgS11X3JZmnBnGgOqHeOAmMdIGHBKsi95do508=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730148572; c=relaxed/simple;
	bh=aLuBEiJPBxj9/k14pQaaCMrtX0N3hXEOOEB5Gxh1jm0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C1LKpgUSqGrg7PL2LSog9BKixI02TdfCOGq6TTzikZ6i/JnfS3WpCVanTrx1HjjGD8ZvZmvlnNMBmRfNyTHS1Mll7ZjJVWRFK1j2ZEsrCxFTEy1YE3OMsQJmWd7TjTM+wMqiGy2Toii+TI1boKpisYGi4j9+bqK8PvJhZhp0VMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=iKaBVGu5; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-4a47ec4ef2cso1221392137.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 13:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730148568; x=1730753368; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZcMSPFP35rnoHPkH2Rmi4auOQRj3DrSi6v1DpXGv5jY=;
        b=iKaBVGu5j+Ci460JSaqc6Xdgws6jrzDCAgeOJhY+/bWnLKiUROGWlJWBJvZ1WkfjGW
         +NUdFtWD6FMYdTOs7m1Oc4OmO/ioa3h1YSfV8+Ncn9qwp3Y42SdgcRXVEongUax9b4I/
         kE6bTnPR/OwE3KTPa2MX4/SVvNAW6rjGhaouQ8YY6kONr+tvTyAKdgZ+kC257Lta/ucJ
         v4M49SBEk+oadISf9ye9iXQeY5lJtbyWB85XK9Iwr3DkSA98510AuxiBmzSs9A49tW5W
         3aKWUC0UMy8ZlN0PcaQ8gQB+XijEeMD0LlEC2Qh7BmJLYPuqWp+T06yomVpLB/S5uQQ0
         2TNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730148568; x=1730753368;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZcMSPFP35rnoHPkH2Rmi4auOQRj3DrSi6v1DpXGv5jY=;
        b=cbAkR7ME9zSRVqTFhsN7gG/21C4K9KjHHzE+XxiOSqIJ1SAbte9Y+t1zyHQrT+Fjmh
         ONtevJklAYCubswd1MwOzLIdoPC4cvkjbNb/6s8IjvDlDmDZG/pA/hESBtZ3qcsLuGst
         +2GNw9SkSI5UMz++qo/o8Go6MJRZFjq8/UFNbZwAK7ITRQs7yU1o3LUpj+W5+pxrpQhy
         P/v2FeELfpWFV095S0qk2d3hQEc30DA7z6Aj9BnCscozZFPUPkKix5TMVfwDEvrweIB8
         NIgrPi/pTg6VNva34J9+sdDyor20cwT3+EeQcWywgMEojKouMXQqFJsNqIfM4p3Xb4cS
         A41A==
X-Forwarded-Encrypted: i=1; AJvYcCU2zyolfN7HfaNFl2uTrpfjT9bDRKeqIKO7/BKvQAQ2HEemft1O/WnVxZDBvhHGsgvcgaDdtvoP1B3S@vger.kernel.org
X-Gm-Message-State: AOJu0YwTZRMzFMQ2fCBNJ3Sp62OQhXCRf5PBsb1zNR60FAKplp3Swm+J
	Uk3ypahjGAMYfnuYw0wOgtDLUNIq9rNtZNJq6seEnkOKjanOEVL/LGBYy4ffpcMIoJmviD7W43/
	+yXWT7beHG3S2V/W5PnrOMiD79IQOpstq1TsU
X-Google-Smtp-Source: AGHT+IFxz2QVEIfWKKWQ2P+lU2zz9bdJdNZRnl1s3FGvMGZsAUE0+hrRn/zQ9i2suMEVBM4mPNcV8wOBfUby9sJw1Rs=
X-Received: by 2002:a05:6102:6c5:b0:4a3:ba8c:879 with SMTP id
 ada2fe7eead31-4a8cfb40b19mr8165946137.2.1730148567508; Mon, 28 Oct 2024
 13:49:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240919000837.1004642-1-davidai@google.com> <20241001092544.2tlydouyyc7jwuja@vireshk-i7>
 <CAGETcx8GomM0znaYKsS412dRvnUQd7_78pKuV82t2b14VBvKVQ@mail.gmail.com> <CAJZ5v0iTLX9NAT0PN804QahQ7D=+=D1uJ7PVnZfk5UrpP5uXpg@mail.gmail.com>
In-Reply-To: <CAJZ5v0iTLX9NAT0PN804QahQ7D=+=D1uJ7PVnZfk5UrpP5uXpg@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 28 Oct 2024 13:48:46 -0700
Message-ID: <CAGETcx-dYERAbW4mTrSFi9j6wt1OQ3UKyxHiw-+40_VoKSdxag@mail.gmail.com>
Subject: Re: [PATCH v7 0/2] Improve VM CPUfreq and task placement behavior
To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, David Dai <davidai@google.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Quentin Perret <qperret@google.com>, 
	Masami Hiramatsu <mhiramat@google.com>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Vincent Guittot <vincent.guittot@linaro.org>, 
	Marc Zyngier <maz@kernel.org>, Oliver Upton <oliver.upton@linux.dev>, 
	Dietmar Eggemann <dietmar.eggemann@arm.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, 
	Gupta Pankaj <pankaj.gupta@amd.com>, Mel Gorman <mgorman@suse.de>, kernel-team@android.com, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 4:39=E2=80=AFAM Rafael J. Wysocki <rafael@kernel.or=
g> wrote:
>
> On Sat, Oct 26, 2024 at 12:26=E2=80=AFAM Saravana Kannan <saravanak@googl=
e.com> wrote:
> >
> > On Tue, Oct 1, 2024 at 2:25=E2=80=AFAM Viresh Kumar <viresh.kumar@linar=
o.org> wrote:
> > >
> > > On 18-09-24, 17:08, David Dai wrote:
> > > > Hi,
> > > >
> > > > This patch series is a continuation of the talk Saravana gave at LP=
C 2022
> > > > titled "CPUfreq/sched and VM guest workload problems" [1][2][3]. Th=
e gist
> > > > of the talk is that workloads running in a guest VM get terrible ta=
sk
> > > > placement and CPUfreq behavior when compared to running the same wo=
rkload
> > > > in the host. Effectively, no EAS(Energy Aware Scheduling) for threa=
ds
> > > > inside VMs. This would make power and performance terrible just by =
running
> > > > the workload in a VM even if we assume there is zero virtualization
> > > > overhead.
> > >
> > > > David Dai (2):
> > > >   dt-bindings: cpufreq: add virtual cpufreq device
> > > >   cpufreq: add virtual-cpufreq driver
> > > >
> > > >  .../cpufreq/qemu,virtual-cpufreq.yaml         |  48 +++
> > > >  drivers/cpufreq/Kconfig                       |  14 +
> > > >  drivers/cpufreq/Makefile                      |   1 +
> > > >  drivers/cpufreq/virtual-cpufreq.c             | 333 ++++++++++++++=
++++
> > > >  include/linux/arch_topology.h                 |   1 +
> > > >  5 files changed, 397 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/cpufreq/qemu,=
virtual-cpufreq.yaml
> > > >  create mode 100644 drivers/cpufreq/virtual-cpufreq.c
> > >
> > > LGTM.
> > >
> > > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> >
> > Rafael/Viresh,
> >
> > Nudge... Any chance this will get pulled into 6.12?
>
> This is not a fix AFAICS, so 6.12 is out of the question.
>
> As for 6.13, Viresh thinks that this change is a good idea (or he
> wouldn't have ACKed it), so it's up to him.  I'm still not convinced
> that it will work on x86 or anything that doesn't use DT.

IIUC, we sent this patch before the 6.12 merge window closed. That's
why I was checking if we can get this into 6.12 :) And this is a new
driver, so the chances of this breaking anything in 6.12 is close to
zero.

> Viresh, I think that this falls into your bucket.

Anyway, 6.13 is fine, but would appreciate 6.12 (so we get it into LTS).

Thanks,
Saravana

