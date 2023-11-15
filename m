Return-Path: <devicetree+bounces-15813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB077EBED2
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 09:49:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 790B11C208A5
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 08:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730E82E838;
	Wed, 15 Nov 2023 08:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMzx3Ooe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533AA7E
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:49:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6A18C433C8;
	Wed, 15 Nov 2023 08:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700038179;
	bh=OuPjk+emTE9UpaDXpxTR2qXCGW+CArulEmPHaMPj4bA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=tMzx3OoeufNFnHcPm2vccBzmaOR9CI/LswpZ1a0O/7q6bd7TmS2suyLznB6y9RrzA
	 oZZDcr7qD6w20IH6UnlQ0TfRwp+5JWKmJ5igrfKzmCcqf/1uzqIqA7wSAC+Q9+03t9
	 f02TWQ/JBDhBZyh45o/Xp9wU3Yf3fVOWNxP3DmwvsiPOKADgPYGlaA6UAY0gNYc5UO
	 xgBiojyhlHAFXOXoZvW62D+rmWyjfmFBDkHULDADzE1sXZd/f0CwGqP4Ao5DpW2b/M
	 6ME9+xQ1/grSTFVGKawehQi9twHV0ddRWTYEecJBEt8vGT77DTMOTzg2wXa92HI5D8
	 MzYB1/83M5Pbw==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1r3Bab-00DFvg-0w;
	Wed, 15 Nov 2023 08:49:37 +0000
Date: Wed, 15 Nov 2023 08:49:36 +0000
Message-ID: <865y231jvj.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: David Dai <davidai@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
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
	Oliver Upton <oliver.upton@linux.dev>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Pavan Kondeti <quic_pkondeti@quicinc.com>,
	Gupta Pankaj <pankaj.gupta@amd.com>,
	Mel Gorman <mgorman@suse.de>,
	kernel-team@android.com,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: cpufreq: add virtual cpufreq device
In-Reply-To: <20231111014933.1934562-2-davidai@google.com>
References: <20231111014933.1934562-1-davidai@google.com>
	<20231111014933.1934562-2-davidai@google.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/29.1
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: davidai@google.com, rafael@kernel.org, viresh.kumar@linaro.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, sudeep.holla@arm.com, saravanak@google.com, qperret@google.com, mhiramat@google.com, will@kernel.org, peterz@infradead.org, vincent.guittot@linaro.org, oliver.upton@linux.dev, dietmar.eggemann@arm.com, quic_pkondeti@quicinc.com, pankaj.gupta@amd.com, mgorman@suse.de, kernel-team@android.com, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

On Sat, 11 Nov 2023 01:49:29 +0000,
David Dai <davidai@google.com> wrote:
> 
> Adding bindings to represent a virtual cpufreq device.
> 
> Virtual machines may expose MMIO regions for a virtual cpufreq device
> for guests to read frequency information or to request frequency
> selection. The virtual cpufreq device has an individual controller for
> each frequency domain.

I would really refrain form having absolute frequencies here. A
virtual machine can be migrated, and there are *zero* guarantees that
the target system has the same clock range as the source.

This really should be a relative number, much like the capacity. That,
at least, can be migrated across systems.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

