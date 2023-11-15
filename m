Return-Path: <devicetree+bounces-15345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F607E9C08
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 263A7B20984
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 12:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8EA91D555;
	Mon, 13 Nov 2023 12:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A7E1D692
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:20:34 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id ABA481715;
	Mon, 13 Nov 2023 04:20:33 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C50AEFEC;
	Mon, 13 Nov 2023 04:21:18 -0800 (PST)
Received: from [10.57.3.103] (unknown [10.57.3.103])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F1233F6C4;
	Mon, 13 Nov 2023 04:20:28 -0800 (PST)
Message-ID: <438c96fd-bcb0-4699-b81b-40f800cedca0@arm.com>
Date: Mon, 13 Nov 2023 12:20:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Improve VM CPUfreq and task placement behavior
To: David Dai <davidai@google.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Saravana Kannan <saravanak@google.com>
Cc: Quentin Perret <qperret@google.com>,
 Masami Hiramatsu <mhiramat@google.com>, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Vincent Guittot <vincent.guittot@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Oliver Upton <oliver.upton@linux.dev>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Pavan Kondeti <quic_pkondeti@quicinc.com>,
 Gupta Pankaj <pankaj.gupta@amd.com>, Mel Gorman <mgorman@suse.de>,
 kernel-team@android.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231111014933.1934562-1-davidai@google.com>
Content-Language: en-US
From: Hongyan Xia <hongyan.xia2@arm.com>
In-Reply-To: <20231111014933.1934562-1-davidai@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi David,

On 11/11/2023 01:49, David Dai wrote:
> Hi,
> 
> This patch series is a continuation of the talk Saravana gave at LPC 2022
> titled "CPUfreq/sched and VM guest workload problems" [1][2][3]. The gist
> of the talk is that workloads running in a guest VM get terrible task
> placement and CPUfreq behavior when compared to running the same workload
> in the host. Effectively, no EAS(Energy Aware Scheduling) for threads
> inside VMs. This would make power and performance terrible just by running
> the workload in a VM even if we assume there is zero virtualization
> overhead.
> 
> With this series, a workload running in a VM gets the same task placement
> and CPUfreq behavior as it would when running in the host.
> 
> The idea is to improve VM CPUfreq/sched behavior by:
> - Having guest kernel do accurate load tracking by taking host CPU
>    arch/type and frequency into account.
> - Sharing vCPU frequency requirements with the host so that the
>    host can do proper frequency scaling and task placement on the host side.
> 
> Based on feedback from RFC v1 proposal[4], we've revised our
> implementation to using MMIO reads and writes to pass information
> from/to host instead of using hypercalls. In our example, the
> VMM(Virtual Machine Manager) translates the frequency requests into
> Uclamp_min and applies it to the vCPU thread as a hint to the host
> kernel.

Sorry for not noticing this series until now.

The problem you are having with uclamp is actually the same as what
I'm tackling right now. Basically my conclusion so far is that uclamp
max aggregation faces quite many problems, which can be easily solved by
sum aggregation (summing up the clamped utilization values instead of
applying the max uclamp value to the whole rq):

https://lore.kernel.org/all/cover.1696345700.git.Hongyan.Xia2@arm.com/

What you described as util_guest sounds to me as exactly what uclamp_min
under sum aggregation does. I'm really tempted to ask you to apply my
series and see if the new uclamp_min does what you want, instead of
introducing a new util_guest signal. If you have no time for this I can
try to replicate your setup and do the experiments myself.

Also, my knowledge with KVM is limited. May I know where the vCPU fork
happens? Can't you just set the p->sched_reset_on_fork flag on fork to
not carry forward the uclamp values?

> 
> [...]
Hongyan

