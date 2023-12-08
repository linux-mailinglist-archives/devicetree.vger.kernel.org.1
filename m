Return-Path: <devicetree+bounces-22987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C4A809D00
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 08:17:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 330A5281AE6
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 07:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A889F9EE;
	Fri,  8 Dec 2023 07:17:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19D241738;
	Thu,  7 Dec 2023 23:17:10 -0800 (PST)
Received: from kwepemd100008.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4SmjBT75msz14Lx5;
	Fri,  8 Dec 2023 15:17:05 +0800 (CST)
Received: from [10.67.121.2] (10.67.121.2) by kwepemd100008.china.huawei.com
 (7.221.188.193) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1258.28; Fri, 8 Dec
 2023 15:17:07 +0800
Message-ID: <6572C2F2.9090202@hisilicon.com>
Date: Fri, 8 Dec 2023 15:17:06 +0800
From: Wei Xu <xuwei5@hisilicon.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:24.0) Gecko/20100101 Thunderbird/24.2.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
To: Johan Hovold <johan+linaro@kernel.org>
CC: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <xuwei5@hisilicon.com>
Subject: Re: [PATCH 0/2] arm64: dts: hisilicon: hikey970-pmic: clean up PMIC
 nodes
References: <20231130175635.14251-1-johan+linaro@kernel.org>
In-Reply-To: <20231130175635.14251-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemd100008.china.huawei.com (7.221.188.193)
X-CFilter-Loop: Reflected

Hi Johan,

On 2023/12/1 1:56, Johan Hovold wrote:
> When reviewing the various SPMI PMIC bindings, I noticed that several
> examples were incorrect and misleading and could also use some cleanup.
> 
> This series cleans up the hisilicon hikey970 PMIC dtsi which appears to
> have been used as the basis for some of the examples.
> 
> Note that the binding documents "hisilicon,hi6421v600-spmi" while the
> devicetree and driver only uses and recognises "hisilicon,hi6421-spmi".
> I'll leave that as is for now...
> 
> Johan
> 
> 
> Johan Hovold (2):
>   arm64: dts: hisilicon: hikey970-pmic: fix regulator cells properties
>   arm64: dts: hisilicon: hikey970-pmic: clean up SPMI node
> 
>  arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 

Series applied to the HiSilicon arm64 dt tree as the binding part has been applied.
Thanks!

Best Regards,
Wei

