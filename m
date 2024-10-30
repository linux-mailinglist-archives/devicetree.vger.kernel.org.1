Return-Path: <devicetree+bounces-117543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AC59B6D9E
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 21:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7496E1F22880
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 20:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B036214406;
	Wed, 30 Oct 2024 20:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LxhEv9OV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EB621313F
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 20:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730319932; cv=none; b=ORMitXrXeeB+DkgGf/vFpDgHgePLJPv9M4bCG1l4BOh2bQoYjRAap0O8YAgRkAkcD4DUERjkRmxuaCe3OO9dAq3gt90lpsfs53ghxy+DEJ7SOfND6xcy+pqS+XRdQrcKMiEkVvHCod8lp8iAPojdAkwWp4LvSet9E3+RjlTgsmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730319932; c=relaxed/simple;
	bh=QY++2T5Pmvk5qxvLJOnmGVWyC+H/BZK5a9m+PghPWtY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JBAI9gtbX6pMwo2ehgeUgHpR2UqyOWiBX/kx+rulYqISPvjPLoXRee2j4gejAa4ydvuJu4eegBxHn+N4Y/S0esRGS8cY41hAhnokQG25NlzuqhgE+NjnR/QLQuROQwhPXfqlWb7cGbfzqJm8EaMGXA7dWHyzC3T+CG7MKKhlW+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LxhEv9OV; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2e5a0177531so169385a91.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 13:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730319930; x=1730924730; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hf9QiAwNrV2BP9liwrqvOCTzPddJpArs0uDNj2mNkZU=;
        b=LxhEv9OVLhfmWk3gji/6qFJVJQxOceqt/tnJPC3kvjEdoOo7WrGYVx36fGSL4e6c6N
         Om5m6X8Tma2Q5rsTL5u9RY07BThu4pde0sv/qTYqvRBhUP/58aQ6zxG92/xP/IFlr5fD
         XvunsxubPMK4V10ZSMWzFJaqyXMhMw8SJZVTcLfzTbpxlt8YjGnsz7Crnh+f1+x5ntbL
         I/XmZo6sZqR+KYcBGF66WBKxyxxg9LGv83vMbIa1KJWuiRAWqzeyND8rl655sTKA/8uQ
         eZTg6nzIU7/WCeZ6/3ZE3XS/WkuIAynz4oF8eQUtKgvoudajFvCNCCa5VIinnkcH5cwl
         UKVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730319930; x=1730924730;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hf9QiAwNrV2BP9liwrqvOCTzPddJpArs0uDNj2mNkZU=;
        b=MqFQK/jyOzveouTPq0XZ7gk1H33KSD8yBCy315KdJl58Txspb16tkJO2BsrXJMWA0L
         oRbLRdKL940wZuGbteRdojaJrlUAkivunYtQbz/2Dngwb9OGkAj++KijNyoxaZPzf0UB
         6s4w4DEU5yDYZRxdtoQGp50pwx17+YgFh71S6quMT0sJu7mliWTdf3wWD1rE5dVwSlWS
         LakJpxGJwwj1OrR7PUY5E2x1U5GsnsTBtZb0YuRoep/+P16cTJL1+xJ+5zdKZ5yzz6Y7
         Xeyi99tGs0UwWSCff36MwtMfqHh5/mhGJPO2xNWNWNGBMwQIxe81/yXnbFFevlTpBhGP
         s7lg==
X-Forwarded-Encrypted: i=1; AJvYcCVceDr78C32ncO1Ek2hro6dCxH0C8OJ73wYswbOQiO6Cn3FwESnRUFJJ8D9USt6uh3+03DlOgcqa12W@vger.kernel.org
X-Gm-Message-State: AOJu0YzYCMaDYlXgCmw7AWmMOu7zWcRiaUikQje9PKyKace9taeB6sdg
	nrBhGwe5WW1fQ3h7B33FlSN9ZPAEqYwG44XR3lnWhPzIgB9c5poe0llgkVyHdUyiWSO9dQc5PA8
	vs4qy5KJRHnJSvNBI50Buj0sXkQ+esgZg0Vfy
X-Google-Smtp-Source: AGHT+IFcyE/KPe7uayYNSJipFWHsVewf9X2YceDhvbkhjs8fCYkrVXSd7t9GwXHmvjDuSYHx2yHuNwmPaxSxhZDWSbY=
X-Received: by 2002:a17:90a:b111:b0:2e2:d16e:8769 with SMTP id
 98e67ed59e1d1-2e8f106926emr18302577a91.15.1730319930212; Wed, 30 Oct 2024
 13:25:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240919000837.1004642-1-davidai@google.com> <20241029063626.haz6b77vbw6pp756@vireshk-i7>
In-Reply-To: <20241029063626.haz6b77vbw6pp756@vireshk-i7>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 30 Oct 2024 13:24:50 -0700
Message-ID: <CAGETcx_vZkA8sCBFJ=wJPbTaTKKMg0DEPox5aoED1iVewqBkXA@mail.gmail.com>
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

On Mon, Oct 28, 2024 at 11:36=E2=80=AFPM Viresh Kumar <viresh.kumar@linaro.=
org> wrote:
>
> On 18-09-24, 17:08, David Dai wrote:
> > v6 -> v7:
> > -Updated .exit and .remove function type from int to void to match
> >  required types
> > -Added Reviewed-by tag from Rob on dt-bindings patch
> > -Dropped "depends on OF" as the driver doesn't depend on it
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
> Applied for v6.13. Thanks.

Thanks!

-Saravana

