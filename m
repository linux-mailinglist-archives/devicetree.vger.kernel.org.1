Return-Path: <devicetree+bounces-49827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B322A877F2F
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:40:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA7F61C2147B
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E2253B2BE;
	Mon, 11 Mar 2024 11:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="M8LR92PT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CDF3A1CD
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710157248; cv=none; b=ID9BxfIEG0TLyX5F4td1DQHDrcha3qPFi/nYhlUp6kvp4xBHe1RWJNYruyTKp1iJToKhaEZcyJWz7H6y+MBamw/ISRYQgWvJ1397GsuCTJxIp2JQHszE/IoiA3fYj2CgJTy2wt5JJmPKQlW43KqCh/UylInmf+xzeJedoVbWmis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710157248; c=relaxed/simple;
	bh=kiSPAvLuBmKLwnLz0szwtesbk3eIGqsOaJTrvrVAQog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U8+cwAPnEU3YNmXyHAPXrdZCeEViU389A1KbiIiSptrPhvozYXjGxEHSCfE1WmGXuiS2rdj7doZk8RUDQekZ8Ejs/V3gyf9GzpgvET7OaHjISAoeRXLETJze3/jJcA8Q57vV+6Lfh5NGJuNKjaTUv/XbplBD5x0V4x2oBLRPyN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=M8LR92PT; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a45f257b81fso329663866b.0
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1710157245; x=1710762045; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SkjzeE4dZ9o2SQlL4u86zxDCBSGbNgJrdX2fu89HmnA=;
        b=M8LR92PTl1nKoEAFkOa/pPA6Qn6d4AuMXrJ51bSy5FQD5l7nx/YFX7doFHrxEcCotg
         SC85tsPlYoZwzROsyX3AIW0bm5ySmSuJd8FkFWdkqdXsgm9PEq1a1juxoocnSyzsGWI7
         Spcti+cYPBdJ7mPtLyqbsoXSHLtH0C8Ij1DJtFuPCBFXpTWh3Ot8be0PhN8tB+zvgrV5
         Ty7kYE3w31aaAyYaG6E1tHPcML8/Y/tuzKMzRuzR4/x+O/ueiOKtADpAjSnKnY8kbmyv
         rmc5utuOnx+TqFnARz52yZu9Yb4HhloSYJHOi6Et1NRmMlJ/EFQ84g0DXFYkj/Glu7rO
         lbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710157245; x=1710762045;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SkjzeE4dZ9o2SQlL4u86zxDCBSGbNgJrdX2fu89HmnA=;
        b=nNfb3J8RYt/Jh4XJcfR0nFJTkr+xXz4kxGaH5xPm0dr2B9b0l+Nkh55vfSmGMtjgyc
         ucdjgtHRxJCmPnJql3aX9+XlRDcArQTJsVidclYYAdqgVeRYycu2RPtFDeA79AewKlnI
         c/sTdY2GwlEjC5/UhcdDsH1+DMT0P7Ci9sE1aPPLiTLJeegqWlEWh83sI9TPTTexWv5R
         Cwk3hy2Ytm8m7YQE8fAzGwtp5gCRyXfoznvDQMJg/bY/OFundHX3cXAT1+0FQ3vKGXxS
         Zwz+UgIopxIflUG3XYTj0hi3rl64c4/lme69ZUtxHDerHH+tX13kYgE0mc4bJ1pkVsiD
         CL6Q==
X-Forwarded-Encrypted: i=1; AJvYcCW0lnbghj5Ugt72lDuMXWEMNSLu1TDLTU8ikuuBS1mdQi6XsXEP6jKImu6Nfpo5X0JJAf6G6oAih3hRqUG20m/2eK+ExujE88xcRg==
X-Gm-Message-State: AOJu0Yw5tbj2gqRtGE+Zo7gHpVh/i2zr4UqfMqPb4sYRErQYQFsPVm5Q
	gQL6l3fNrs48qg9lMbEOoA8Xi/YKSSs1DIM7H5b949OqmJBD4LZEtYSjx9u8AA==
X-Google-Smtp-Source: AGHT+IFvD3eTrXBRLNqxixAkOQniNH0dO7QajxVi2chqo/onElzZKCzE2Xbnm3EEkgu3u6XSOdsOrQ==
X-Received: by 2002:a17:907:a805:b0:a45:ed7f:266a with SMTP id vo5-20020a170907a80500b00a45ed7f266amr3709882ejc.0.1710157245065;
        Mon, 11 Mar 2024 04:40:45 -0700 (PDT)
Received: from google.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id d4-20020a1709064c4400b00a44dca5f9c1sm2770444ejw.100.2024.03.11.04.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:40:44 -0700 (PDT)
Date: Mon, 11 Mar 2024 11:40:41 +0000
From: Quentin Perret <qperret@google.com>
To: Marc Zyngier <maz@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
	David Dai <davidai@google.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Masami Hiramatsu <mhiramat@google.com>,
	Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Oliver Upton <oliver.upton@linux.dev>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Pavan Kondeti <quic_pkondeti@quicinc.com>,
	Gupta Pankaj <pankaj.gupta@amd.com>, Mel Gorman <mgorman@suse.de>,
	kernel-team@android.com, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: cpufreq: add virtual cpufreq device
Message-ID: <Ze7tuWsJJMaBLNcf@google.com>
References: <20240127004321.1902477-1-davidai@google.com>
 <20240127004321.1902477-2-davidai@google.com>
 <20240131170608.GA1441369-robh@kernel.org>
 <CAGETcx8S0oS67oMZsPKk6_MGAtygoHEf_LN1gbcNDEBqRJ4PPg@mail.gmail.com>
 <20240202155352.GA37864-robh@kernel.org>
 <86a5og7cl7.wl-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86a5og7cl7.wl-maz@kernel.org>

On Sunday 04 Feb 2024 at 10:23:00 (+0000), Marc Zyngier wrote:
> Well, I've said it before, and I'll say it again: the use of
> *frequencies* makes no sense. It is a lie (it doesn't describe any
> hardware, physical nor virtual), and doesn't reflect the way the
> emulated cpufreq controller behaves either (since it scales everything
> back to what the host can potentially do)
> 
> The closest abstraction we have to this is the unit-less capacity. And
> *that* reflects the way the emulated cpufreq controller works while
> avoiding lying to the guest about some arbitrary frequency.
> 
> In practice, this changes nothing to either the code or the behaviour.
> But it changes the binding.

Apologies all for jumping late into this, but for what it's worth,
regardless of the unit of the binding, Linux will shove that into
cpufreq's 'frequency table' anyway, which as the name suggests is very
much assuming frequencies :/ -- see how struct cpufreq_frequency_table
explicitely requires KHz. The worst part is that this even ends up
being reported to _userspace_ as frequencies in sysfs via cpufreq's
scaling_available_frequencies file, even when they're really not...

In the case of SCMI for example, IIRC the firmware can optionally (and
in practice I think it does for all older implementations of the spec
least) report unit-less operating points to the driver, which will then
happily pretend these are KHz values when reporting that into PM_OPP and
cpufreq -- see how scmi_dvfs_device_opps_add() simply multiplies the
level's 'perf' member by 1000 when populating PM_OPP (which is then
propagated to cpufreq's freq_table'). And a small extract from the SCMI
spec:

    "Certain platforms use IMPLEMENTATION DEFINED indices to identify
     performance levels. Level Indexing Mode is used to describe such
     platform behavior. The level indices associated with performance
     levels are neither guaranteed to be contiguous nor required to be
     on a linear scale."

Not nice, but unfortunately the core cpufreq framework has way too much
historical dependencies on things being frequencies to really change it
now, so we're pretty much stuck with that :(

So, while I do agree with the sentiment that this is a non-ideal place
to be, 'faking' frequencies is how we've addressed this so far in Linux,
so I'm personally not too fussed about David's usage of a freq-based DT
binding in this particular instance. On the plus side that allows to
re-use all of PM_OPP and cpufreq infrastructure as-is, so that's cool.

I guess we could make the argument that Linux's approach to handling
frequencies shouldn't influence this given that the binding should be OS
agnostic, but I can easily see how another OS could still make use of
that binding (and in fact requiring that this other OS can deal with
unitless frequencies is most likely going to be a bigger problem), so
I'd be inclined to think this isn't a major problem either.

Thanks,
Quentin

