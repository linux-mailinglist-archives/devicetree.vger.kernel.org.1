Return-Path: <devicetree+bounces-115893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 811289B128A
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 00:26:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31B6B1F2118E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 22:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED7D20EA2F;
	Fri, 25 Oct 2024 22:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="W0QcgkVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1C2217F30
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 22:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729895161; cv=none; b=oZrwHORZMGPAdQzRB/4KT6iz4qrU2GvvwbQ7XkCBngjbjd4wRdwI3VwjRADEb/GReYzShVrAauQx6b/J9VRNNBu7tRIs8qK22Oa00CxroFi2bgCBHz9utqw8b1wZckiXOKmAaF9g6JN0x2dLRo0RCs92HAOnSMJXDT5/6rl2yUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729895161; c=relaxed/simple;
	bh=iEHk5Ta4phb4cptYASkNbTGv77etjCbTBmGJXO0C01s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gVTcAts0zzBfKfT9d8CO0UOswiXcwSOwdOtqcTvqJy1JrRUTk5EAWnjivDYrj+zEM+Llx2hKr80piIMZs0n4HoBCGyhMXpkOzB6LFiqGwv1038voVPsXGLsHzBVFqosIawoJE+6kBbCsvjTYPPDWYYwVPhrilUtRcDONzrBF050=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=W0QcgkVS; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7203c431f93so1989566b3a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 15:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729895159; x=1730499959; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lwRrmapI/txMqNn3ixRKI9VZY2NYrfTNrvsL9ny9Phg=;
        b=W0QcgkVSi8/qpFLW3pZr6Ne4c6tRLW8I2ydGmT0Il26vI7FDRV8VFlpIsSnOyiMu+I
         zDIsf3YY+wGqWuOZGCXoAYK3keoiLRvR2E3Bnp3Qegw6d6bRNJReEFMFl5sksy9E1VLJ
         SVfCzFbdejFH1uK0+dBv8FkHKUTt/8an1ZqOwgTr7Abq1LX16mNCAIFA6afT9bVy0f9u
         W0vj0t/BgB0G3QmFkwFsZTwu8+iyy+7uHdwF4JR2bBe/DRE6bnyFK+c8Uz9lBcINNCpG
         uzgBf/Doc4NIWxxvUd2RM66ovQC7JHfkxdAU9qHiebx6843Ok7GL2WrMvkMOatsOlRnY
         lU7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729895159; x=1730499959;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lwRrmapI/txMqNn3ixRKI9VZY2NYrfTNrvsL9ny9Phg=;
        b=dG+K5CJg7FKsoxEG2d3uCqmvjCGuI8hpcwUPznQ/3OBw2xiHLFrmnEwrTOa97EyuCi
         V5vw+p0O/1AYBEYgwDINx68s4wriJ/4vIKDIKS+ank22zVFex7MtIqUsZpqIIDwJo6YN
         StD+FpXGbKP8sEPxZ78yVHpHI3n4FAQSyWsoqfyK7GXLpkVVAtCNZms49TKsQdBs5EMj
         RPbncldFeWTGi5GzdczW1LFawnORRa7p5nONxu5pumC/wYZNfFxA83QUllbyMXoueLDD
         jKTFhn62ErZaL3qLTQKKsxb30Y7fsrqKTPwPmfTWPeE38hVayf8rapn0gvi3KFHoAjOX
         SZWw==
X-Forwarded-Encrypted: i=1; AJvYcCWWh4V6xNpCdWVL8QIGwB7U+gDYR9rT3Thr5/5K/usEnUIQ4ynttMF0vTEOvNoDcKPMeYY91ZESwNO8@vger.kernel.org
X-Gm-Message-State: AOJu0Yzda0H75j/IMgDg5yZpXSG2/g82udKwhcXEDVyipYP4PMER5ScN
	YaThIX7Tj3q3/Fs5Mbv6r82uMdq6jdfkRY5KCuZtWkC8ztuPeEjdQbPxdZZWfQ067lwk9m8SbnL
	jKmBKr3Ds27SUWmW0EGqMqzf4x9em12bN5CXP
X-Google-Smtp-Source: AGHT+IGX8MDtucdFqCHFcQA61gmD7H5jVN4y1wegzvDHItkpHjN6au3Qg7GBheJFWL49G4c5etcrSDOh0YRCUmkszFU=
X-Received: by 2002:a05:6a00:3d4f:b0:71e:581f:7d7e with SMTP id
 d2e1a72fcca58-72062fd92c4mr1505841b3a.15.1729895159155; Fri, 25 Oct 2024
 15:25:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240919000837.1004642-1-davidai@google.com> <20241001092544.2tlydouyyc7jwuja@vireshk-i7>
In-Reply-To: <20241001092544.2tlydouyyc7jwuja@vireshk-i7>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 25 Oct 2024 15:25:19 -0700
Message-ID: <CAGETcx8GomM0znaYKsS412dRvnUQd7_78pKuV82t2b14VBvKVQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/2] Improve VM CPUfreq and task placement behavior
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: David Dai <davidai@google.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
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

On Tue, Oct 1, 2024 at 2:25=E2=80=AFAM Viresh Kumar <viresh.kumar@linaro.or=
g> wrote:
>
> On 18-09-24, 17:08, David Dai wrote:
> > Hi,
> >
> > This patch series is a continuation of the talk Saravana gave at LPC 20=
22
> > titled "CPUfreq/sched and VM guest workload problems" [1][2][3]. The gi=
st
> > of the talk is that workloads running in a guest VM get terrible task
> > placement and CPUfreq behavior when compared to running the same worklo=
ad
> > in the host. Effectively, no EAS(Energy Aware Scheduling) for threads
> > inside VMs. This would make power and performance terrible just by runn=
ing
> > the workload in a VM even if we assume there is zero virtualization
> > overhead.
>
> > David Dai (2):
> >   dt-bindings: cpufreq: add virtual cpufreq device
> >   cpufreq: add virtual-cpufreq driver
> >
> >  .../cpufreq/qemu,virtual-cpufreq.yaml         |  48 +++
> >  drivers/cpufreq/Kconfig                       |  14 +
> >  drivers/cpufreq/Makefile                      |   1 +
> >  drivers/cpufreq/virtual-cpufreq.c             | 333 ++++++++++++++++++
> >  include/linux/arch_topology.h                 |   1 +
> >  5 files changed, 397 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/cpufreq/qemu,virt=
ual-cpufreq.yaml
> >  create mode 100644 drivers/cpufreq/virtual-cpufreq.c
>
> LGTM.
>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

Rafael/Viresh,

Nudge... Any chance this will get pulled into 6.12?

Thanks,
Saravana

