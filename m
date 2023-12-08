Return-Path: <devicetree+bounces-23359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCEF80AF38
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 22:57:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50095281A6C
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 21:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B22258ADE;
	Fri,  8 Dec 2023 21:57:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 40CCD210C
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 13:57:07 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41AAA106F;
	Fri,  8 Dec 2023 13:57:52 -0800 (PST)
Received: from [10.57.83.178] (unknown [10.57.83.178])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD0CD3F6C4;
	Fri,  8 Dec 2023 13:57:04 -0800 (PST)
Message-ID: <9136a4c3-4846-411f-8380-6bcb07c64c67@arm.com>
Date: Fri, 8 Dec 2023 21:56:37 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings/perf: Add Arm CoreSight PMU
To: Rob Herring <robh@kernel.org>
Cc: will@kernel.org, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 suzuki.poulose@arm.com, ilkka@os.amperecomputing.com, bwicaksono@nvidia.com,
 YWan@nvidia.com, rwiley@nvidia.com,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <cover.1701793996.git.robin.murphy@arm.com>
 <bbb4262065cfc906f98165cac074e86dce19599e.1701793996.git.robin.murphy@arm.com>
 <20231208193352.GA1865260-robh@kernel.org>
Content-Language: en-GB
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20231208193352.GA1865260-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2023-12-08 7:33 pm, Rob Herring wrote:
> On Tue, Dec 05, 2023 at 04:51:57PM +0000, Robin Murphy wrote:
>> Add a binding for implementations of the Arm CoreSight Performance
>> Monitoring Unit Architecture. Not to be confused with CoreSight debug
>> and trace, the PMU architecture defines a standard MMIO interface for
>> event counters similar to the CPU PMU architecture, where the
>> implementation and most of its features are discoverable through ID
>> registers.
> 
> The implementation is separate from the CPU PMU rather than an MMIO view
> of it. Not really clear in my quick read of the spec.

Yeah, the architecture seems to have aspirations of being able to 
describe the CPU PMU, but the main intent of this binding is to 
accommodate all of the arbitrary MMIO non-CPU things. However that's not 
to say it *couldn't* ever be used for the memory-mapped view of a CPU's 
PMU via its external debug interface, if it is suitably compatible. I 
concur that I'm rather light on description here, but that's mostly 
because the architecture itself isn't prescriptive - it really is pretty 
much just an interface to whatever PMU functionality can be made to fit 
it (and with plenty of imp-def leeway).

>> CC: Rob Herring <robh+dt@kernel.org>
>> CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> CC: Conor Dooley <conor+dt@kernel.org>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   .../bindings/perf/arm,coresight-pmu.yaml      | 39 +++++++++++++++++++
>>   1 file changed, 39 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
>> new file mode 100644
>> index 000000000000..12c7b28eee35
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/perf/arm,coresight-pmu.yaml
>> @@ -0,0 +1,39 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/perf/arm,coresight-pmu.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Arm Coresight Performance Monitoring Unit Architecture
>> +
>> +maintainers:
>> +  - Robin Murphy <robin.murphy@arm.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: arm,coresight-pmu
>> +
>> +  reg:
>> +    items:
>> +      - description: Register page 0
>> +      - description: Register page 1 (if dual-page extension implemented)
>> +    minItems: 1
>> +
>> +  interrupts:
>> +    items:
>> +      - description: Overflow interrupt
>> +
>> +  cpus:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> 
> Don't need a type. Already defined.

Ah, I hadn't noticed this was a common property now. Good to know, thanks.

>> +    minItems: 1
> 
> 1 is always the minimum.
> 
>> +    description: List of CPUs with which the PMU is associated, if applicable
> 
> When is it applicable? Presumably when it is associated with only a
> subset of CPUs?

Affinity to one CPU or some subset, for things like tightly coupled 
accelerators or cluster-level things like DSU, would want explicitly 
describing, but for interconnects, memory controllers and random other 
standalone devices usually no meaningful association will exist (either 
they can be considered affine to no CPUs, or to all of them in an 
implicit manner).

>> +
>> +  arm,64-bit-atomic:
>> +    type: boolean
>> +    description: Register accesses are single-copy atomic at doubleword granularity
> 
> As this is recommended, shouldn't the property be the inverse.

It may be recommended, but in practice I'm convinced it's going to 
remain the exception. It's mandatory (and thus assumable) for the 64-bit 
programmers model extension, and effectively moot if only 32-bit or 
smaller counters are implemented, so it's really only relevant to the 
in-between case of the standard "32-bit" programmers model with 64-bit 
(or at least >32-bit) counters, but even then I'd bet most folks are 
still going to implement those behind an APB interface that ends up with 
larger accesses split into 32-bit bursts if they're even accepted at 
all. I'm aware of 3 implementations so far; one I'm not sure how wide 
the counters are, while the other two have proven to be 64-bit *without* 
atomic access ;)

> Maybe the standard 'reg-io-width = <4>' would be sufficient here?

Oh, indeed I'd forgotten that was a thing - IIRC in common cases like 
UARTs it's used to represent a *minimum* access size, whereas here it 
would represent a maximum, but I imagine that ambiguity may well already 
exist via other bindings, so as long as that's OK I'm happy to go with 
it. As above I would still be inclined to make it default to 4 if 
absent, but permit either 4 or 8 to be specified.

Thanks,
Robin.

