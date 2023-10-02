Return-Path: <devicetree+bounces-5133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0237B55FA
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4706D281A6E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 15:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D601A72D;
	Mon,  2 Oct 2023 15:03:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B91718E30
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 15:03:52 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id D731C139;
	Mon,  2 Oct 2023 08:03:43 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 119F9C15;
	Mon,  2 Oct 2023 08:04:22 -0700 (PDT)
Received: from [10.57.1.112] (unknown [10.57.1.112])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C75D93F762;
	Mon,  2 Oct 2023 08:03:41 -0700 (PDT)
Message-ID: <0f3ac22f-59c9-6e04-c824-dd486c20bf37@arm.com>
Date: Mon, 2 Oct 2023 16:03:40 +0100
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
To: Linu Cherian <lcherian@marvell.com>
Cc: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, sgoutham@marvell.com, gcherian@marvell.com,
 Anil Kumar Reddy <areddy3@marvell.com>, suzuki.poulose@arm.com,
 mike.leach@linaro.org, leo.yan@linaro.org
References: <20230929133754.857678-1-lcherian@marvell.com>
 <20230929133754.857678-3-lcherian@marvell.com>
From: James Clark <james.clark@arm.com>
In-Reply-To: <20230929133754.857678-3-lcherian@marvell.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 29/09/2023 14:37, Linu Cherian wrote:
> Add support to use reserved memory for coresight ETR trace buffer.
> 
> Introduce a new ETR buffer mode called ETR_MODE_RESRV, which
> becomes available when ETR device tree node is supplied with a valid
> reserved memory region.
> 
> ETR_MODE_RESRV can be selected only by explicit user request.
> 
> $ echo resrv >/sys/bus/coresight/devices/tmc_etr<N>/buf_mode_preferred
> 
> Signed-off-by: Anil Kumar Reddy <areddy3@marvell.com>
> Signed-off-by: Linu Cherian <lcherian@marvell.com>
> ---
>  .../hwtracing/coresight/coresight-tmc-core.c  | 51 +++++++++++
>  .../hwtracing/coresight/coresight-tmc-etr.c   | 87 ++++++++++++++++++-
>  drivers/hwtracing/coresight/coresight-tmc.h   | 24 +++++
>  3 files changed, 161 insertions(+), 1 deletion(-)

[...]

> 
> +static void tmc_get_reserved_region(struct device *parent)
> +{
> +	struct tmc_drvdata *drvdata = dev_get_drvdata(parent);
> +	struct device_node *node;
> +	struct resource res;
> +	int rc;
> +
> +	node = tmc_get_region_byname(parent->of_node, "tracedata-mem");

Is this a typo? The DT commit says the region is called "trace-mem". And
"metadata-mem" for the other region, but that one matches the other call
to tmc_get_region_byname() added in the later commit.

> +	if (IS_ERR_OR_NULL(node)) {
> +		dev_dbg(parent, "No reserved trace buffer specified\n");
> +		goto out;
> +	}
> +

