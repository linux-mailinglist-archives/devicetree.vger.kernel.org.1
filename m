Return-Path: <devicetree+bounces-61942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4503E8AEADB
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 17:21:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76CD01C20C4E
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 15:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DF1313E8B8;
	Tue, 23 Apr 2024 15:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="goGdSdfp"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4825B13E889
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 15:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713885524; cv=none; b=i/bx8qI/m+Ld1Q1gzTAdDy8OOdGfV7VnTfvPyUu3z9uQTjr5x1zjT4G/RwOm6Vl0+juu/s4LRh+e7BFxeViDLNuGb/i7I8QDK6sQUG8CHFe+bauymha7mv/f4CIMbM9l1Ok+CxShhiad+ekvQZl6gtxGq2nTj5d8NNOTy+wPbtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713885524; c=relaxed/simple;
	bh=pgLp28/QcaA3s1GmbB+76qIhKAGtQdBbHcoW27wTxVs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EkCrKyF9dlGlRwRr79xYjDnl72VzsVvMEY+AXnkmiiO+SZYHHJMPmGpVMUnRXYi7PbKlQ+eNO4sUZNoSBZRrd4tDO6Yd4dkliXkbpDAcePHuoABeBCB3p4xwApY2tKgBa/OeoO5viQuP6lvjyMryyPUCj4733GTPfnbUP7Vmvwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=goGdSdfp; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <cbb48b6b-f31e-4f53-b114-29fe2c029387@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1713885519;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CGvSIl1osJHCOXh6CXAvpDqVr+q8BgO5ZKZGPwPjjn0=;
	b=goGdSdfpsSWeQFMqZHmnSvmvOXJtmcErujWRs38CJsP+nyuQbbK+eRjw9n/xWYUUvhn3oc
	7xmu9HV8BSB1uq15d7HBp6IeZa1e4vr6CI4HP05EIACkbYuiotPOQu99d+Nzsvw5RZRY1v
	RH7uW2gAdkQxI2zD896KtU07qEvaUo0=
Date: Tue, 23 Apr 2024 11:18:34 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/7] dt-bindings: pci: xilinx-nwl: Add phys
To: Rob Herring <robh@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
 Michal Simek <michal.simek@amd.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org
References: <20240422195904.3591683-1-sean.anderson@linux.dev>
 <20240422195904.3591683-2-sean.anderson@linux.dev>
 <20240423124456.GB4105016-robh@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <20240423124456.GB4105016-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 4/23/24 08:44, Rob Herring wrote:
> On Mon, Apr 22, 2024 at 03:58:58PM -0400, Sean Anderson wrote:
>> Add phys properties so Linux can power-on/configure the GTR
>> transcievers.
>> 
>> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
>> ---
>> 
>>  Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
>> index 426f90a47f35..02315669b831 100644
>> --- a/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
>> +++ b/Documentation/devicetree/bindings/pci/xlnx,nwl-pcie.yaml
>> @@ -61,6 +61,14 @@ properties:
>>    interrupt-map:
>>      maxItems: 4
>>  
>> +  phys:
>> +    maxItems: 4
>> +
>> +  phy-names:
>> +    maxItems: 4
>> +    items:
>> +      - pattern: '^pcie-phy[0-3]$'
> 
> The names here are pointless and redundant. Names are local to the 
> device, so 'pcie' is redundant. They only refer to PHYs, so 'phy' is 
> redundant too. All you are left with is the index of the entry.
>
> Now if PCIe can work on only lanes 2 and 3 or similar, then maybe 
> -names becomes useful.

OK, I'll just remove them...

--Sean

