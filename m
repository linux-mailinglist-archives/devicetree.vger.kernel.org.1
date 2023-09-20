Return-Path: <devicetree+bounces-1815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE4D7A87FB
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:14:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65AC11C21342
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 073E53B782;
	Wed, 20 Sep 2023 15:14:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA72A29A1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:14:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56E69C433C7;
	Wed, 20 Sep 2023 15:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695222863;
	bh=US0SAylhHjSsU0gUBHB9ewTD8IhR8dxZrCpzZnZdmLY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oNh/bV0QG0mjI0qPwdgdG2wlEXxpspFr4gZxZepZPL3s5/gVDLewwq2zb2YtxjM73
	 wktaPVc0X3GTV+jRb8HsYAVQrPFu2o2dAkQlpWRsWW4gzK8Q52Z56U9F9lj4dTHJxw
	 aAnN9i+8o1JQ1bJKHuuwNK1W3t4bjUtYD9RhSsmoM2SjQVNfZTtMCpxJTw29olNrP4
	 xhJSnJ0KePDsKyB09ZW1JmuDfuoT7/8WDHoSSje2WXnJP7+HC5MqGYfhvMIKTbZJob
	 HEX/EU+t815piZPlN1Tpo+8diWtYyGlq9TkAaNhVrRXCpi/c/WfI5EU5eiHVNZrrxL
	 SntHls165iiNg==
Message-ID: <2c179d6e-7427-46a1-ae31-d0a48b0c2723@kernel.org>
Date: Wed, 20 Sep 2023 18:14:18 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: ti: Enable support for overlays for
 relevant boards
To: Nishanth Menon <nm@ti.com>
Cc: vigneshr@ti.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, srk@ti.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230920133450.54226-1-rogerq@kernel.org>
 <20230920133450.54226-2-rogerq@kernel.org>
 <20230920135722.tl2yupwpffa3ryfy@jaunt>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230920135722.tl2yupwpffa3ryfy@jaunt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 20/09/2023 16:57, Nishanth Menon wrote:
> On 16:34-20230920, Roger Quadros wrote:
>> Enable __symbols__ in board DT files for which we expect
>> overlays to be supported.
>>
>> Signed-off-by: Roger Quadros <rogerq@kernel.org>
>> ---
>>  arch/arm64/boot/dts/ti/Makefile | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
>> index e7b8e2e7f083..06d6f264f292 100644
>> --- a/arch/arm64/boot/dts/ti/Makefile
>> +++ b/arch/arm64/boot/dts/ti/Makefile
>> @@ -72,8 +72,16 @@ dtb-$(CONFIG_ARCH_K3) += k3-am69-sk.dtb
>>  dtb-$(CONFIG_ARCH_K3) += k3-j784s4-evm.dtb
>>  
>>  # Enable support for device-tree overlays
>> +DTC_FLAGS_k3-am625-beagleplay += -@
>>  DTC_FLAGS_k3-am625-sk += -@
>>  DTC_FLAGS_k3-am62-lp-sk += -@
>> +DTC_FLAGS_k3-am62a7-sk += -@
>> +DTC_FLAGS_k3-am642-evm += -@
>> +DTC_FLAGS_k3-am654-base-board += -@
>>  DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
>> +DTC_FLAGS_k3-am68-sk-base-board += -@
>> +DTC_FLAGS_k3-am69-sk += -@
>>  DTC_FLAGS_k3-j721e-common-proc-board += -@
>> +DTC_FLAGS_k3-j721e-sk += -@
>>  DTC_FLAGS_k3-j721s2-common-proc-board += -@
>> +DTC_FLAGS_k3-j784s4-evm += -@
> 
> is'nt it better to do it in context of the changes introduced?
> 

Do you mean I should just add for the particular platform when
adding an overlay for that platform?

-- 
cheers,
-roger

