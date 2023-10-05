Return-Path: <devicetree+bounces-6082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 382997B9D38
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:12:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E18222819C1
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86AD41A265;
	Thu,  5 Oct 2023 13:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJYrUb2K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695D9125A3
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60A17C36AF1;
	Thu,  5 Oct 2023 13:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696511529;
	bh=0WS1XXB55RTeOyKZikpT+hiTItlnXgYlO78w1Qz1K40=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AJYrUb2K5mDzEGU373Qz1W8J7c7oD+4bIFGQ7AYRPKkwySrPrHL9XydweoIjzEziJ
	 iiP9qnHrlLaZowHJ1TQZRbejaEQdpqh1nV3kE5amFmjgnGDyPsyoPJiPexJEFmOeCc
	 CqOzRBt08AtMcGUulxq7kHhjlAPkpPmFvqTrUbNNdj6x55w08O1KtWw3j97SURhpGW
	 dCjTip6b8mrvkY8s917mh6Ps4xToG4nRLMHQqR5XeGUZOQXC1LPznwRACQzhKnKwtk
	 JzHR0Et+lqy++LfYrDcCOLLzJ+NSLa/qIsM5LzBIVjv95iQmtMD5rQ88lS+5obuL34
	 4yNXhJTvG0gag==
Message-ID: <2905cfc2-912f-4620-9455-2e91586a2839@kernel.org>
Date: Thu, 5 Oct 2023 16:12:04 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: linux-next: build warnings after merge of the ti tree
Content-Language: en-US
To: "Raghavendra, Vignesh" <vigneshr@ti.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Nishanth Menon <nm@ti.com>,
 Tero Kristo <kristo@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20231005141536.77538147@canb.auug.org.au>
 <f70dec2a-dbdf-479c-af5b-a70db02b27b4@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <f70dec2a-dbdf-479c-af5b-a70db02b27b4@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 05/10/2023 11:25, Raghavendra, Vignesh wrote:
> + Rob and DT list
> 
> Hi Stephen
> 
> On 10/5/2023 8:45 AM, Stephen Rothwell wrote:
>> Hi all,
>>
>> [I may have missed this yesterday, sorry]
>>
>> After merging the ti tree, today's linux-next build (arm64 defconfig)
>> produced these warnings:
>>
>> arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso:65.8-140.3: Warning (avoid_default_addr_size): /fragment@3/__overlay__: Relying on default #address-cells value
>> arch/arm64/boot/dts/ti/k3-am642-evm-nand.dtso:65.8-140.3: Warning (avoid_default_addr_size): /fragment@3/__overlay__: Relying on default #size-cells value
>>
>> Introduced by commit
>>
>>   45a0c06571e1 ("arm64: dts: ti: am642-evm: Add overlay for NAND expansion card")
>>
> 
> Thanks for the report. I will drop the offending comment.
> 
> Roger,
> 
> Sorry, this would need to be fixed in dtc or need exception from DT
> maintainers to ignore the warnings.

Please don't drop this patch as the issue is not with the patch but with
the dtc tool itself.

As this is a DT overlay there is no way to specify address-cells/size-cells
of parent here. This will be resolved only after merge with base tree.

This will be fixed in next dtc sync.
https://www.spinics.net/lists/devicetree-compiler/msg04036.html

See further discussion here
https://lore.kernel.org/all/CAL_JsqLmv904+_2EOmsQ__y1yLDvsT+_02i85phuh0cpe7X8NQ@mail.gmail.com/

-- 
cheers,
-roger

