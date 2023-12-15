Return-Path: <devicetree+bounces-25894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEB9814FD3
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 19:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8520286E86
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 18:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9702D78A;
	Fri, 15 Dec 2023 18:39:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 588703EA71
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 18:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E26B3C15;
	Fri, 15 Dec 2023 10:40:33 -0800 (PST)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 248863F738;
	Fri, 15 Dec 2023 10:39:47 -0800 (PST)
Message-ID: <2b8414e5-61d5-4c3e-9613-6d9487ae84a8@arm.com>
Date: Fri, 15 Dec 2023 18:39:39 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] dt-bindings/perf: Add Arm CoreSight PMU
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, will@kernel.org
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, suzuki.poulose@arm.com,
 ilkka@os.amperecomputing.com, bwicaksono@nvidia.com, YWan@nvidia.com,
 rwiley@nvidia.com, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <cover.1702571292.git.robin.murphy@arm.com>
 <3c2dd41b585efe44d361f41fcea0181ff2a9c9c5.1702571292.git.robin.murphy@arm.com>
 <8f583a00-8e9c-4875-936c-ed196d1dae56@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <8f583a00-8e9c-4875-936c-ed196d1dae56@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/12/2023 9:44 am, Krzysztof Kozlowski wrote:
> On 14/12/2023 17:31, Robin Murphy wrote:
>> +
>> +  reg:
>> +    items:
>> +      - description: Register page 0
>> +      - description: Register page 1, if the PMU implements the dual-page extension
>> +    minItems: 1
>> +
>> +  interrupts:
>> +    items:
>> +      - description: Overflow interrupt
>> +
>> +  cpus:
>> +    description: If the PMU is associated with a particular CPU or subset of CPUs, array of phandles to those CPUs
>> +
>> +  reg-io-width:
>> +    description: Granularity at which PMU register accesses are single-copy atomic
>> +    default: 4
>> +    enum: [4, 8]
>> +
>> +
> 
> If there is going to be new posting: just one blank line

Ack, I've fixed that up locally along with the linewrap (since Will's 
already winding down for holidays, I'm assuming I'll resend this for 6.9 
in the new year now).

>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +additionalProperties: false
> 
> Why no example to validate the binding?

IMO for such a trivial binding built out of common properties, an 
equally trivial example isn't going to add any value, since it won't do 
anything more than re-state the individual property definitions above. 
In bindings where we have conditional relationships between properties, 
or complex encodings where a practical example can help explain a 
definition (e.g. a map/mask pair for a set of input values), then 
absolutely, an example can add something more to help the author and/or 
users. But otherwise, the thing I've really grown to like about schema 
is how thoroughly self-describing the definitions themselves can now be.

Thanks,
Robin.

