Return-Path: <devicetree+bounces-158562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F39A673EC
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:30:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6CBF47AC020
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 12:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B5620AF7C;
	Tue, 18 Mar 2025 12:30:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19F92576
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.249.212.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742301045; cv=none; b=ipSuZQKoSMv+OGbn49g89p1NFYo2Qi2IyFxCGXLsV0M+3g9JxEuh8+tfMbgWRGyaxLMVbDY0n0YLiF1nSIlA++1wWh+8xRau+cqnAyY6vQd1CRGTJxdwuX0POOwhqd71Mg5hVmI6ln3mHBAfrfJam/Jp3whNy7StnlY3vfTw8zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742301045; c=relaxed/simple;
	bh=UHTGbIev85ccDJ7ivgMUd4n/EroK2RUYDBAR3n7MoKg=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	 In-Reply-To:Content-Type; b=IiKkdbJSvUtadutmLhLVr5jTGoaoArA28YGO6xJ/j4COCA3pGVeuXwgCvYS5vcqKed1r079xocJuesBgJlXFJeSSLc+8rve+ePci33w3cLrQLEROCTU+bTtVeOrRDipiIZRXXnIkaN4tLuxHszKZlrQWgrnReE3jfJWPRt0v9sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=hisilicon.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=45.249.212.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=hisilicon.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.19.88.105])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4ZHB0j2WWmzvWpW;
	Tue, 18 Mar 2025 20:26:45 +0800 (CST)
Received: from kwepemd500014.china.huawei.com (unknown [7.221.188.63])
	by mail.maildlp.com (Postfix) with ESMTPS id 99638140367;
	Tue, 18 Mar 2025 20:30:38 +0800 (CST)
Received: from [10.67.121.2] (10.67.121.2) by kwepemd500014.china.huawei.com
 (7.221.188.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 18 Mar
 2025 20:30:38 +0800
Message-ID: <67D9675D.6030001@hisilicon.com>
Date: Tue, 18 Mar 2025 20:30:21 +0800
From: Wei Xu <xuwei5@hisilicon.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:24.0) Gecko/20100101 Thunderbird/24.2.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
To: Leo Yan <leo.yan@arm.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<coresight@lists.linaro.org>
Subject: Re: [PATCH] arm64: dts: hi3660: Add property for fixing CPUIdle
References: <20250310093708.9332-1-leo.yan@arm.com>
In-Reply-To: <20250310093708.9332-1-leo.yan@arm.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemd500014.china.huawei.com (7.221.188.63)

Hi Leo,

On 2025/3/10 17:37, Leo Yan wrote:
> During CPU low power modes, ETM components will lose their context.  Add
> the "arm,coresight-loses-context-with-cpu" property to ETM nodes to save
> and restore ETM context for CPU idle states.
> 
> Signed-off-by: Leo Yan <leo.yan@arm.com>
> ---

Applied to the HiSilicon arm64 dt tree.
Thanks!

Best Regards,
Wei

>  arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
> index 79a55a0fa2f1..4c6a075908d1 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi
> @@ -17,6 +17,7 @@ etm@ecc40000 {
>  			clocks = <&crg_ctrl HI3660_PCLK>;
>  			clock-names = "apb_pclk";
>  			cpu = <&cpu0>;
> +			arm,coresight-loses-context-with-cpu;
>  
>  			out-ports {
>  				port {
> @@ -34,6 +35,7 @@ etm@ecd40000 {
>  			clocks = <&crg_ctrl HI3660_PCLK>;
>  			clock-names = "apb_pclk";
>  			cpu = <&cpu1>;
> +			arm,coresight-loses-context-with-cpu;
>  
>  			out-ports {
>  				port {
> @@ -51,6 +53,7 @@ etm@ece40000 {
>  			clocks = <&crg_ctrl HI3660_PCLK>;
>  			clock-names = "apb_pclk";
>  			cpu = <&cpu2>;
> +			arm,coresight-loses-context-with-cpu;
>  
>  			out-ports {
>  				port {
> @@ -68,6 +71,7 @@ etm@ecf40000 {
>  			clocks = <&crg_ctrl HI3660_PCLK>;
>  			clock-names = "apb_pclk";
>  			cpu = <&cpu3>;
> +			arm,coresight-loses-context-with-cpu;
>  
>  			out-ports {
>  				port {
> @@ -160,6 +164,7 @@ etm@ed440000 {
>  			clocks = <&crg_ctrl HI3660_PCLK>;
>  			clock-names = "apb_pclk";
>  			cpu = <&cpu4>;
> +			arm,coresight-loses-context-with-cpu;
>  
>  			out-ports {
>  				port {
> @@ -177,6 +182,7 @@ etm@ed540000 {
>  			clocks = <&crg_ctrl HI3660_PCLK>;
>  			clock-names = "apb_pclk";
>  			cpu = <&cpu5>;
> +			arm,coresight-loses-context-with-cpu;
>  
>  			out-ports {
>  				port {
> @@ -194,6 +200,7 @@ etm@ed640000 {
>  			clocks = <&crg_ctrl HI3660_PCLK>;
>  			clock-names = "apb_pclk";
>  			cpu = <&cpu6>;
> +			arm,coresight-loses-context-with-cpu;
>  
>  			out-ports {
>  				port {
> @@ -211,6 +218,7 @@ etm@ed740000 {
>  			clocks = <&crg_ctrl HI3660_PCLK>;
>  			clock-names = "apb_pclk";
>  			cpu = <&cpu7>;
> +			arm,coresight-loses-context-with-cpu;
>  
>  			out-ports {
>  				port {
> 

