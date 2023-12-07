Return-Path: <devicetree+bounces-22675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F0D80865E
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 12:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92A972813FD
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 11:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBFFD374E7;
	Thu,  7 Dec 2023 11:07:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3C583E9;
	Thu,  7 Dec 2023 03:06:59 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05C0A12FC;
	Thu,  7 Dec 2023 03:07:45 -0800 (PST)
Received: from [10.57.6.119] (unknown [10.57.6.119])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7FB0A3F762;
	Thu,  7 Dec 2023 03:06:57 -0800 (PST)
Message-ID: <c5c6f169-e021-43c5-a478-21bfbdada554@arm.com>
Date: Thu, 7 Dec 2023 11:07:58 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to
 rk3399 GPU
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 conor+dt@kernel.org, daniel.lezcano@linaro.org
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
Content-Language: en-US
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <20231127081511.1911706-1-lukasz.luba@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/27/23 08:15, Lukasz Luba wrote:
> Add dynamic-power-coefficient to the GPU node. That will create Energy
> Model for the GPU based on the coefficient and OPP table information.
> It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
> In similar way the Energy Model for CPUs in rk3399 is created, so both
> are aligned in power scale. The maximum power used from this coefficient
> is 1.5W at 600MHz.
> 
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 


Gentle ping. What's the status of this?

