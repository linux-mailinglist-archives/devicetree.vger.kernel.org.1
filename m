Return-Path: <devicetree+bounces-8412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0738C7C816E
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96814B207D9
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 09:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22BC510976;
	Fri, 13 Oct 2023 09:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Mh3Ihs+T"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931C010974
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 09:08:53 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9725BDE;
	Fri, 13 Oct 2023 02:08:51 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39D98dDi099617;
	Fri, 13 Oct 2023 04:08:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697188119;
	bh=Y41yCTdbiYTT+zv2sI1u1rgezzJelM32derRG7Jsxgc=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=Mh3Ihs+TujT0SMFOofXVpSZgg0M5kuD7IMwKLx3w5A2IlaR2pyda3XwuGC+RXRvCk
	 iiNLKEj5JF04iH19jaCTmdgMAwPFsFG9MYRwrqvM9fhqlOJrp4hNFqRYN4TOEi9K/3
	 Io1yFmggYtYf+nz8roEOMIGJ4JjGOjn9SU7RG9wY=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39D98dSm052310
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 13 Oct 2023 04:08:39 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 13
 Oct 2023 04:08:38 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 13 Oct 2023 04:08:38 -0500
Received: from [10.249.131.75] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39D98UMR071644;
	Fri, 13 Oct 2023 04:08:31 -0500
Message-ID: <063395d4-16e5-8a56-1da3-5a04af3cdbce@ti.com>
Date: Fri, 13 Oct 2023 14:38:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH RESEND v11 0/5] Enable Display for J784S4 and AM69-SK
 platform
To: Vignesh Raghavendra <vigneshr@ti.com>,
        Jayesh Choudhary
	<j-choudhary@ti.com>, <nm@ti.com>
CC: <afd@ti.com>, <rogerq@kernel.org>, <s-vadapalli@ti.com>,
        <conor+dt@kernel.org>, <r-ravikumar@ti.com>, <sabiya.d@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20231005132732.7462-1-j-choudhary@ti.com>
 <f8d0f807-a7b1-4f17-a3d3-c9ef694da238@ti.com>
Content-Language: en-US
From: Aradhya Bhatia <a-bhatia1@ti.com>
In-Reply-To: <f8d0f807-a7b1-4f17-a3d3-c9ef694da238@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 13/10/23 10:31, Vignesh Raghavendra wrote:
> 
> 
> On 05/10/23 18:57, Jayesh Choudhary wrote:
>> This series adds support for:
>> - DisplayPort for J784S4-EVM
>> - Displayport and HDMI for AM69-SK platform
>>
>> NOTE: Patch 4/5 introduces the following dtc warning which can be ignored
>> since its behind W=1 check:
>> Warning (graph_child_address): /bus@100000/dss@4a00000/ports: graph node
>> has single child node 'port@0', #address-cells/#size-cells are not
>> necessary
>>> (This is more accurate description for port and the dtc check should not
>> differentiate between port@0 and port@1.[0])
>>
> 
> Sorry, don't want to more warnings to the file while we are working
> constantly to reduce warnings on the other side. There are 3 options
> 
> a) Propose fix to dtc
> b) Minimally describe second port (DSI) and it keep disabled as its
> unusable currently (this more closely describes the HW and the reason
> why port indexing is needed in first place)
> c) Go back to v9 and describe second port once DSI supported is added in
> future,
> 
> [...]
> 

Posted a fix for the warning here,

https://lore.kernel.org/all/20231013085424.7137-1-a-bhatia1@ti.com/

Regards
Aradhya

