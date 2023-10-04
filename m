Return-Path: <devicetree+bounces-5789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B030A7B7E41
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:34:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 62EAD281517
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE9612B8B;
	Wed,  4 Oct 2023 11:34:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D1C11190
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:34:01 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99F0CB0;
	Wed,  4 Oct 2023 04:34:00 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 394BXoIB020720;
	Wed, 4 Oct 2023 06:33:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696419230;
	bh=gvkfpYUXSs08HkjljItKTkfyHQ5gojnXFO0RRMu0sM4=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=Qb0M+4lh0hDfw7tMXaqsM0+/AUTmeuazCOtXyvkPfG2KziBJtNjLq8IKpNfxFCEUx
	 kfvP5ERQD4etfnnrnePG13REiv61N/tSqELdJx2F4LDoj+1TeQszD503mGGnAx/0Oi
	 DN7IYFeqzw0wzTZiTNxcRpeET1F8e4SOd767hGmg=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 394BXoZ9004246
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 4 Oct 2023 06:33:50 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 4
 Oct 2023 06:33:49 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 4 Oct 2023 06:33:49 -0500
Received: from [10.250.135.44] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 394BXgrt040139;
	Wed, 4 Oct 2023 06:33:44 -0500
Message-ID: <238c71c9-98cd-bb1d-65d6-316678759333@ti.com>
Date: Wed, 4 Oct 2023 14:33:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 2/3] arm64: dts: ti: Add overlay for NAND daughter card
Content-Language: en-US
To: Nitin Yadav <n-yadav@ti.com>, <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20231004111238.3968984-1-n-yadav@ti.com>
 <20231004111238.3968984-3-n-yadav@ti.com>
From: Roger Quadros <rogerq@ti.com>
In-Reply-To: <20231004111238.3968984-3-n-yadav@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 4.10.2023 14.12, Nitin Yadav wrote:
> Introduce k3-am62-lp-sk-nand.dtso overlay file to support
> the X8 NAND EXPANSION BOARD card (PROC143E1) for AM62x LP SK
> board. NAND has partitions for different boot components as
> below:
> 
> 0x000000000000-0x000000200000 : "NAND.tiboot3
> 0x000000200000-0x000000400000 : "NAND.tispl
> 0x000000400000-0x000000600000 : "NAND.tiboot3.backup
> 0x000000600000-0x000000a00000 : "NAND.u-boot
> 0x000000a00000-0x000000a40000 : "NAND.u-boot-env
> 0x000000a40000-0x000000a80000 : "NAND.u-boot-env.backup
> 0x000000a80000-0x000040000000 : "NAND.file-system
> 
> Disable mcasp1 node in DT to avoid pinmux conflict. Update
> Makefile to include k3-am62-lp-sk-nand.dtso.
> 
> Signed-off-by: Nitin Yadav <n-yadav@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

