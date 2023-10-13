Return-Path: <devicetree+bounces-8353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DD29B7C7CDD
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 07:02:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78679B20923
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 05:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24A33D021;
	Fri, 13 Oct 2023 05:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="h16R2k5q"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512B73D017
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 05:01:56 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47A2FB8;
	Thu, 12 Oct 2023 22:01:54 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39D51d5j022894;
	Fri, 13 Oct 2023 00:01:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697173299;
	bh=k/1BewO6gMFDlpw/lBXv/G/PwDfjQ2xPqWrgU06MEqI=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=h16R2k5qpIey7HLJgf3NTOjaF10d5/wQfTLBe/Gn1lIkfDtsneAikVLiDwJV4sIiD
	 HDGsOJD6jhUtJu/xcAR88lC2kXiyfbSYHBLtfKeMPV3/Osgdq16lytV39SJrH38Hub
	 LTCuKi2MOffqZPoqwl8KM7LyDC52V1z0yGQLqPb4=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39D51cNq023075
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 13 Oct 2023 00:01:38 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 13
 Oct 2023 00:01:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 13 Oct 2023 00:01:38 -0500
Received: from [172.24.227.94] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39D51XFP022976;
	Fri, 13 Oct 2023 00:01:33 -0500
Message-ID: <f8d0f807-a7b1-4f17-a3d3-c9ef694da238@ti.com>
Date: Fri, 13 Oct 2023 10:31:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v11 0/5] Enable Display for J784S4 and AM69-SK
 platform
Content-Language: en-US
To: Jayesh Choudhary <j-choudhary@ti.com>, <nm@ti.com>, <a-bhatia1@ti.com>
CC: <afd@ti.com>, <rogerq@kernel.org>, <s-vadapalli@ti.com>,
        <conor+dt@kernel.org>, <r-ravikumar@ti.com>, <sabiya.d@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20231005132732.7462-1-j-choudhary@ti.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
In-Reply-To: <20231005132732.7462-1-j-choudhary@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 05/10/23 18:57, Jayesh Choudhary wrote:
> This series adds support for:
> - DisplayPort for J784S4-EVM
> - Displayport and HDMI for AM69-SK platform
> 
> NOTE: Patch 4/5 introduces the following dtc warning which can be ignored
> since its behind W=1 check:
> Warning (graph_child_address): /bus@100000/dss@4a00000/ports: graph node
> has single child node 'port@0', #address-cells/#size-cells are not
> necessary
>> (This is more accurate description for port and the dtc check should not
> differentiate between port@0 and port@1.[0])
> 

Sorry, don't want to more warnings to the file while we are working
constantly to reduce warnings on the other side. There are 3 options

a) Propose fix to dtc
b) Minimally describe second port (DSI) and it keep disabled as its
unusable currently (this more closely describes the HW and the reason
why port indexing is needed in first place)
c) Go back to v9 and describe second port once DSI supported is added in
future,

[...]

-- 
Regards
Vignesh

