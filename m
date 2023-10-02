Return-Path: <devicetree+bounces-5125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 647797B555B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:41:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 149932825A6
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7121A271;
	Mon,  2 Oct 2023 14:41:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEAE19BCF
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 14:41:12 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id A95E9BD;
	Mon,  2 Oct 2023 07:41:10 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD35CC15;
	Mon,  2 Oct 2023 07:41:48 -0700 (PDT)
Received: from [10.57.1.112] (unknown [10.57.1.112])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0CD773F762;
	Mon,  2 Oct 2023 07:41:07 -0700 (PDT)
Message-ID: <8de7702c-797f-9aa8-0ca3-bd8d6b7f39db@arm.com>
Date: Mon, 2 Oct 2023 15:41:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/7] coresight: tmc-etr: Add support to use reserved trace
 memory
Content-Language: en-US
From: James Clark <james.clark@arm.com>
To: Linu Cherian <lcherian@marvell.com>
Cc: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, sgoutham@marvell.com, gcherian@marvell.com,
 Anil Kumar Reddy <areddy3@marvell.com>, mike.leach@linaro.org
References: <20230929133754.857678-1-lcherian@marvell.com>
 <20230929133754.857678-3-lcherian@marvell.com>
 <7e5e1007-1f6c-f212-8f3d-a5f640614055@arm.com>
In-Reply-To: <7e5e1007-1f6c-f212-8f3d-a5f640614055@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 02/10/2023 15:28, James Clark wrote:
> 
> 
> On 29/09/2023 14:37, Linu Cherian wrote:
>> Add support to use reserved memory for coresight ETR trace buffer.
>>
>> Introduce a new ETR buffer mode called ETR_MODE_RESRV, which
>> becomes available when ETR device tree node is supplied with a valid
>> reserved memory region.
>>
>> ETR_MODE_RESRV can be selected only by explicit user request.
>>
>> $ echo resrv >/sys/bus/coresight/devices/tmc_etr<N>/buf_mode_preferred
>>
>> Signed-off-by: Anil Kumar Reddy <areddy3@marvell.com>
>> Signed-off-by: Linu Cherian <lcherian@marvell.com>
>> ---
>>  .../hwtracing/coresight/coresight-tmc-core.c  | 51 +++++++++++
>>  .../hwtracing/coresight/coresight-tmc-etr.c   | 87 ++++++++++++++++++-
>>  drivers/hwtracing/coresight/coresight-tmc.h   | 24 +++++
>>  3 files changed, 161 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
>> index 7ec5365e2b64..1e94215ac148 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-core.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
> 
> [...]
> 
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> index 834674feb6b4..fca82eaf073f 100644
> 
> Hi Linu,
> 
> I think this version of coresight-tmc-etr.c isn't in the tree and it
> makes it hard to apply the set. Do you have local changes? Or if it
> requires other patches it might be best to host the full set on your own
> repo and link to it:
> 
>   $ git show 834674feb6b4
>   fatal: ambiguous argument '834674feb6b4': unknown revision or path not
>   in the working tree.
>   Use '--' to separate paths from revisions, like this:
>   'git <command> [<revision>...] -- [<file>...]'
> 
> Thanks
> James

Sorry just saw the note at the top of the cover letter about the other
patches.

> _______________________________________________
> CoreSight mailing list -- coresight@lists.linaro.org
> To unsubscribe send an email to coresight-leave@lists.linaro.org

