Return-Path: <devicetree+bounces-139344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20117A153ED
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 17:13:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A84C13A8C50
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 16:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C34C519CCF4;
	Fri, 17 Jan 2025 16:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Qbnb/+5+"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta0.migadu.com (out-187.mta0.migadu.com [91.218.175.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1181D19AA56
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 16:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737130356; cv=none; b=LUxjFxxGmnjd0jJNAUhNgraFnVIAn+WqIdmgptmx0kvB5/+QfwiRdMBqLNG+fZpG+eQ80t+HriE1a2cAGpKpIEnUDe+9qCnyTePfb+Ib4AcETRyRuThIone0zTYidPu/ss44q9nxoUPlWHAm0T7mTo8tvt3XnJNTgo4yJRPWHS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737130356; c=relaxed/simple;
	bh=+BMd0gUoy42qvKhEa39amehHg7tYu2tGQ2j2862ujhE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OtyrLEU4IKwi4wWp13pOxgDVDu1zHaHMGubFxT6yUC+A+5yqPxYuXd4nOhua7QjYCgL/vdtQA5vxhnQB4O718dHCn/FSDMFEy8lQFU8UG1F7P9dZlMX/FUh7sDfhSWnYM9aXskTtSxdJWRh4g3SQLzVNSE4EGYt/D/QDDW34sLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Qbnb/+5+; arc=none smtp.client-ip=91.218.175.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <b8e63009-13fb-493f-adf6-4d30adbe9b1b@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1737130341;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LAafNvBOoBqFNHA52xBWNRgKage9FNdyIdPTvz9ryLQ=;
	b=Qbnb/+5+g3FPDnxiXhWamAP1eU9Ei23rwSWRcBCjFbUjaG9MDZITUKaTTkjGI6RbUUBEwv
	a6MN3mwUINhnKgBWgzZ8TGSVl9K7f62rK72h2PdpJ1FlgOqA477tFoqZMAzSFqJUCMEVLx
	ZWD6r4AVCfIxnkSdmMoPdbwvwocyQPQ=
Date: Fri, 17 Jan 2025 11:12:15 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/5] dt-bindings: spi: zynqmp-qspi: Add reset
To: Michal Simek <michal.simek@amd.com>, Mark Brown <broonie@kernel.org>,
 linux-spi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Jinjie Ruan <ruanjinjie@huawei.com>,
 linux-arm-kernel@lists.infradead.org,
 Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
References: <20250116225521.2688224-1-sean.anderson@linux.dev>
 <20250116225521.2688224-2-sean.anderson@linux.dev>
 <8a0d8789-7a0d-42b7-9aff-e867c14db3c9@amd.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <8a0d8789-7a0d-42b7-9aff-e867c14db3c9@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 1/17/25 02:14, Michal Simek wrote:
> 
> 
> On 1/16/25 23:55, Sean Anderson wrote:
>> Add a reset to help recover from cancelled operations.
>>
>> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
>> ---
>>
>>   Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml b/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml
>> index 04d4d3b4916d..901e15fcce2d 100644
>> --- a/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml
>> +++ b/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml
>> @@ -36,12 +36,16 @@ properties:
>>     power-domains:
>>       maxItems: 1
>>   +  resets:
>> +    maxItems: 1
>> +
>>   required:
>>     - compatible
>>     - reg
>>     - interrupts
>>     - clock-names
>>     - clocks
>> +  - resets
> 
> In 2/5 you are calling devm_reset_control_get_optional_exclusive() that's why I expect reset is not really required property.

It's optional for the driver for backwards compatibility. But for the
devicetree we make it mandatory since it should be included in all new
devicetrees.

--Sean

