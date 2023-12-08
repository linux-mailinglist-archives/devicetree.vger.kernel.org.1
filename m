Return-Path: <devicetree+bounces-22998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 500FB809DB6
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 08:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04AB7281618
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 07:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47247107B5;
	Fri,  8 Dec 2023 07:57:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 62BF81FF3;
	Thu,  7 Dec 2023 23:57:20 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5398911FB;
	Thu,  7 Dec 2023 23:58:05 -0800 (PST)
Received: from [10.57.3.19] (unknown [10.57.3.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2779F3F5A1;
	Thu,  7 Dec 2023 23:57:18 -0800 (PST)
Message-ID: <adf5cfa3-b38c-42b5-a98d-c8738c36737f@arm.com>
Date: Fri, 8 Dec 2023 07:58:19 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to
 rk3399 GPU
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>
Cc: daniel.lezcano@linaro.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
 <170198105573.18516.6264175947902125145.b4-ty@sntech.de>
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <170198105573.18516.6264175947902125145.b4-ty@sntech.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/7/23 20:30, Heiko Stuebner wrote:
> On Mon, 27 Nov 2023 08:15:11 +0000, Lukasz Luba wrote:
>> Add dynamic-power-coefficient to the GPU node. That will create Energy
>> Model for the GPU based on the coefficient and OPP table information.
>> It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
>> In similar way the Energy Model for CPUs in rk3399 is created, so both
>> are aligned in power scale. The maximum power used from this coefficient
>> is 1.5W at 600MHz.
>>
>> [...]
> 
> Applied, thanks!

Thank you Heiko!

> 
> [1/1] arm64: dts: rockchip: Add dynamic-power-coefficient to rk3399 GPU
>        commit: 381d48fbada9b5b39f5a811bb8fe76365d6bdd5c
> 
> Best regards,

