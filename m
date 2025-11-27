Return-Path: <devicetree+bounces-242626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 465BDC8D46F
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 09:07:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 185D24E35E8
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 08:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D4223372C;
	Thu, 27 Nov 2025 08:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Vl7ExnL0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3274.qiye.163.com (mail-m3274.qiye.163.com [220.197.32.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7D531985F;
	Thu, 27 Nov 2025 08:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764230862; cv=none; b=Vyw/YBY8ZqNIrDxetUTuuFIRP29kpl+3w7pZ8BpmxabORHnPa8sSNmwFzqvrkXbAJ3gI97HT014ZVXNNC73AQd8+2nYLJ2uYfWhbSfMswnjt4OkuwWqYJC9BGKG63kPQtR9oh4tynYQuXpeW/7HwrqaC6b40xAbbRQSeALi0+cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764230862; c=relaxed/simple;
	bh=nf6fxmWmCJCzyXYRt1QH2rnmEZB5RFiqYgs0IKHWgwc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U7/HTZb3YOBYAeXkrd0xHLKT9pxcj0oVrHPHgr9iBJ4/nWdncpZe4yyek4DJVsnZ9zb+8fGfA3R6gdFjipAPLOti58eMsxUwkT/BZvBtqVvhCFQGugcqCvDX9jtNgbvsgZKT4JU3bNd7EG94IK8G8PFw8RYrOA05tvdO6uTrqw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Vl7ExnL0; arc=none smtp.client-ip=220.197.32.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b1921d28;
	Thu, 27 Nov 2025 16:02:21 +0800 (GMT+08:00)
Message-ID: <324ba201-8cfb-4a7c-87c8-366f657ffd8a@rock-chips.com>
Date: Thu, 27 Nov 2025 16:02:20 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iommu: rockchip: Add support for
 multiple interface clocks
To: Krzysztof Kozlowski <krzk@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251126083345.88-1-kernel@airkyi.com>
 <20251126083345.88-2-kernel@airkyi.com>
 <20251127-enigmatic-faithful-viper-baefa2@kuoka>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20251127-enigmatic-faithful-viper-baefa2@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9ac455afef03abkunm152125166ae01b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5CSlZMHR1CGhhCTE0ZQxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Vl7ExnL0xwkuLXb9VOoyo6qNANWdAmo/wYjgMpjdol9LR0oDRuJIwvUB+uCSp3LmuwKg8GUhDBBFhdwxkt5Ndf2jTHRZsjhN/+N8p3l5sbNwtWGCwWc8tecJo5tKGPPmsCnMSyjCX65Uqrnik2BFx57hgN9yLvkLNU4wCozEvyY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1LYx8D2nnDemgXO9g6TLvymKor13ip90yPxjnDbRoRs=;
	h=date:mime-version:subject:message-id:from;

On 11/27/2025 3:49 PM, Krzysztof Kozlowski wrote:
> On Wed, Nov 26, 2025 at 04:33:44PM +0800, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> The iommu found on RK3576 NPU/RKVDEC may contains more than one
>> interface clock.
> 
> So you need to restrict this per each variant. See writign schema doc in
> DT dir.

Oh, I will rewrite it in v2. Thank you.


> 
> Best regards,
> Krzysztof
> 
> 
> 

-- 
Best, 
Chaoyi

