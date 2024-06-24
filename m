Return-Path: <devicetree+bounces-79500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C51A3915868
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 23:00:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CD422874AF
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 21:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793AC1A08C3;
	Mon, 24 Jun 2024 21:00:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg154.qq.com (smtpbg154.qq.com [15.184.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C5119B5AA
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 21:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=15.184.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719262805; cv=none; b=ndHgyIkoWrQAdO2Y41zs1YKgcVW8ZQAoMDruF1KlLVt3cfa/an74C3c+Za6xClUdF5JiXCGpby59LvxAV//VE9CcIwcn5N1vcrqCjhtHoAwYsxzYLbE6FoH+QxWYHBj1ST9WAZ6xLD1pi3oopJoBHHIAV/ZCmN0UvM04Ok8qYwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719262805; c=relaxed/simple;
	bh=pWoIHrIFY+44YQ7YuXy9b0X9iYuIVNJuJhhzDRZ4hpc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=omSYcPVaqQJFE00XAc+pYNuQk7KtgubMqwjXzvujJV1KPEWPQY9wGD0M1xr1jBtysNnIqdajZBPjmLgpPINeKLlRRWOh6aZMsZPTTCvnCxQsB7tCOiVXMQKTbD4Ud9C5nP14pjfumKsi9X2r6cfMH5EeLiHCo1fiKMxR+oITejo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=15.184.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtp84t1719262748tbi7i2id
X-QQ-Originating-IP: +awYDE9pSAPTm9wZ+7UUEevq+ygT6nzyRZX8CRB7ni0=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 25 Jun 2024 04:59:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3610672459738816953
Message-ID: <92475F697AAA5E9E+02e882f2-6ec7-417c-9210-229fd9a652b2@radxa.com>
Date: Tue, 25 Jun 2024 05:59:05 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E
 v3.0
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240623201415.3205-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240623201415.3205-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hello everyone who read/reply my patch series,

I'm sorry. I wasted your precious time.

Jonas Karlman suggested simple way completed in u-boot
 
https://patchwork.ozlabs.org/project/uboot/patch/20240624204529.34742-1-naoki@radxa.com/

any change in linux kernel side is not required anymore.
please

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 6/24/24 05:14, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK Pi E v3.0 board.
> 
> Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
> RK3328 SoC with a compact form factor.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Changes in v3:
> - none
> Changes in v2:
> - none
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index eca0a42eb384..53ca61c47b76 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -779,6 +779,11 @@ properties:
>             - const: radxa,rockpi-e
>             - const: rockchip,rk3328
>   
> +      - description: Radxa ROCK Pi E v3.0
> +        items:
> +          - const: radxa,rockpi-e-v3
> +          - const: rockchip,rk3328
> +
>         - description: Radxa ROCK Pi N8
>           items:
>             - const: radxa,rockpi-n8

