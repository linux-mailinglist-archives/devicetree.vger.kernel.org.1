Return-Path: <devicetree+bounces-15803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4467EBD15
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 07:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDF991F25347
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 06:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91F8623D9;
	Wed, 15 Nov 2023 06:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BrLPsIcb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D967E
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:29:38 +0000 (UTC)
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC330E9
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:29:35 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-5c184b3bbc4so2556194a12.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700029775; x=1700634575; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ijWgB/n7wQWOhBbaV1md72p8BCrVtoBj2gz5Jm1idO0=;
        b=BrLPsIcbbxEeDIlp/W6DNYnO7aFe9v/lWyJ9wXQfaHy54r50+uLkAZfeeY9P1lAhBn
         S9+G2/jnK2ZaDjho2gMvEYxlniqc2qT9Ty9VMUVgBfSGerEly11jSY/0TU5+MnsNl0yT
         S0256uC4zYisWcT10Z+uz2XW/xpZkSwONPhZCxcqKDwrrMeDa4ujhK5USuhTvmjdtTuH
         D/LeRBeHntStjb63XuvRPQdyLYXJ1soFFSjvD+iNnfVwkviglGfkPQhnHZWIc2wUeECM
         Uhj4VPju1NxAF4lVVrxgpvmHRdjndMyFdGtnBOiHbYJFj4ogEi61KuA7KkWb0gWTo/Qi
         JsnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700029775; x=1700634575;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ijWgB/n7wQWOhBbaV1md72p8BCrVtoBj2gz5Jm1idO0=;
        b=K7ZZ0pHV90Bkjjbd2ktxxRlloU6x3PletBNoxnqZMRmpcwV/7fKZ0ontQxr5nH3P06
         xV9DbGAkkQuuEZCwld9QSeuNaEEVo2KDUPmg6uGomoNf3aVQTyDhRkMhtbv/05FiX2Ct
         hTwNiOh2hdTgfrny6Hd9KYvrqw15P/7Uum+wAbXWCU7TWHpQgpy6aHyqr2bR+9+N/+ii
         3/VV9VBvYX0tufvbzJ1pg3HxkrBP11SGqh5iwkraoD3aqdgmvuz4rCwGTHhX1WSACpx9
         2pFxhnnQLSNGVU052NrfEvO+WyM2uki95//DojoRst/WgRD7dKZw+OuI4MuXhMSGrfaH
         0HRA==
X-Gm-Message-State: AOJu0YxQe41jezQNcx/p+iN4YAkKg7tXs/VFUXRWaTGC4oFuseZqRTqO
	uJK5Wk8xLVQnzjUQiMFyzukoAw==
X-Google-Smtp-Source: AGHT+IHNQoS9uDAn0ReyTwQP6t3z0RVvRg7vMQN4mCOr0kGFtghMcGt9yzA+q1gHzzOarfaJd1+BRw==
X-Received: by 2002:a05:6a20:244e:b0:15e:d84:1c5e with SMTP id t14-20020a056a20244e00b0015e0d841c5emr15202326pzc.38.1700029775212;
        Tue, 14 Nov 2023 22:29:35 -0800 (PST)
Received: from localhost ([122.172.82.6])
        by smtp.gmail.com with ESMTPSA id oo3-20020a17090b1c8300b0028328057c67sm5810344pjb.45.2023.11.14.22.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 22:29:34 -0800 (PST)
Date: Wed, 15 Nov 2023 11:59:32 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: David Dai <davidai@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Saravana Kannan <saravanak@google.com>,
	Quentin Perret <qperret@google.com>,
	Masami Hiramatsu <mhiramat@google.com>,
	Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Oliver Upton <oliver.upton@linux.dev>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Pavan Kondeti <quic_pkondeti@quicinc.com>,
	Gupta Pankaj <pankaj.gupta@amd.com>, Mel Gorman <mgorman@suse.de>,
	kernel-team@android.com, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] cpufreq: add virtual-cpufreq driver
Message-ID: <20231115062932.vz2tyg6wgux5lx6t@vireshk-i7>
References: <20231111014933.1934562-1-davidai@google.com>
 <20231111014933.1934562-3-davidai@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231111014933.1934562-3-davidai@google.com>

On 10-11-23, 17:49, David Dai wrote:
> diff --git a/drivers/cpufreq/virtual-cpufreq.c b/drivers/cpufreq/virtual-cpufreq.c
> +static unsigned int virt_cpufreq_set_perf(struct cpufreq_policy *policy)
> +{
> +	writel_relaxed(policy->cached_target_freq,

Drivers shouldn't be using the cached_target_freq directly. Use the target freq
or index passed from cpufreq core.

> +static int virt_cpufreq_cpu_exit(struct cpufreq_policy *policy)
> +{
> +	topology_clear_scale_freq_source(SCALE_FREQ_SOURCE_VIRT, policy->related_cpus);
> +	kfree(policy->freq_table);
> +	policy->freq_table = NULL;

No need of doing this. Also the order of above two calls is wrong anyway.

-- 
viresh

