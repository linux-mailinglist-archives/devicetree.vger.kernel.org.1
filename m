Return-Path: <devicetree+bounces-81111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C679D91B4C3
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 03:49:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04A961C212B9
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 01:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51D111755C;
	Fri, 28 Jun 2024 01:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="hXvOp4lz"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E0B18059
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719539371; cv=none; b=md57ZKLs22cRYQwrj56y1tgG5AeE76AzmQ2dh1jIkcGmE7CTxTIAq5TDaTJAN3vRLYKiEa5/jTtJlrNE2heoFFXT2WbyywDsz4E7L/LmTJbE2z2qpaYW8j7kTzJ7OuV4i55yquUJHpsP20iA4y4SQzDVgJZcXMoJg2VV8Rt9/iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719539371; c=relaxed/simple;
	bh=cyOLjDxn0yujVApIokEvbLPIVFyrYPiRQ6qqAQFPW+A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=djXcmz6cacut5TclItcZYBssrLuEpbsmIBSoCQPhgN7Jy77SDGtyJ7YQrYbY8NvmIfsNzVzj/E26SN1cma+ccgsK4hNIbt0pYbRQencoWOXd8I2315a29IoyybidhMPVD7G57rnOAn9fl6p52Z886CEnHX6x4KkL6kOmlneZO4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=hXvOp4lz; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 8C3D88857D;
	Fri, 28 Jun 2024 03:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719539362;
	bh=lEqCfZeQ2BvI/k8Vx1CwsIkf9UwS08wiOmZwPTnBmQw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hXvOp4lzudUV3HQogSAMA7PNeqKDl0cs5KRO5jKIhTsy1TdrkltiL7kQY9w+qShBa
	 f386+lXDgN5JsnKNKM3O1C5D9bGlr71azKWE5Qsb+BgbW84jvVLk3msM2+OnzAvLR3
	 7aDYCAhhvLz/wADMKPe0f+99eOZH+b6//GVSJm0V5X/X5caS++UUAhUNPbzvnb9Tps
	 KTCZm5b7QpB/iYLWV5nSCVlNg13PfS5Bq8y7mPJFidqmsViaBiPCTdM5FXvvib/b4l
	 UNv99MkU2UpDggYY1oAqq7FcskxTRmteQ1njgaXl6S8K0UniilAS9fJIhr2sQs7yKP
	 riYAcpYCjQjqQ==
Message-ID: <a1529d38-ce85-43e9-929e-017a42628b64@denx.de>
Date: Fri, 28 Jun 2024 02:56:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Add phandle to nvmem efuse into
 STM32MP13xx ethernet DT node
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Christophe Roullier <christophe.roullier@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
References: <20240623191602.67424-1-marex@denx.de>
 <8fb70911-a278-43b3-bcaf-c88b43bddb73@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <8fb70911-a278-43b3-bcaf-c88b43bddb73@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/27/24 2:13 PM, Alexandre TORGUE wrote:
> Hi Marek

Hi,

> On 6/23/24 21:15, Marek Vasut wrote:
>> The efuses on STM32MP13xx can be populated with ethernet MAC address.
>> Add the nvmem-cells/nvmem-cell-name DT properties to ethernet MAC DT
>> nodes to describe the placement of both MAC address fields within the
>> efuses, so the ethernet MAC driver can access the efuses and populate
>> the correct MAC address into the hardware.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>> Cc: Christophe Roullier <christophe.roullier@foss.st.com>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: kernel@dh-electronics.com
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-stm32@st-md-mailman.stormreply.com
>> ---
>>   arch/arm/boot/dts/st/stm32mp131.dtsi | 2 ++
>>   arch/arm/boot/dts/st/stm32mp133.dtsi | 2 ++
>>   2 files changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/st/stm32mp131.dtsi 
>> b/arch/arm/boot/dts/st/stm32mp131.dtsi
>> index f41508195eb51..55f4150524f3c 100644
>> --- a/arch/arm/boot/dts/st/stm32mp131.dtsi
>> +++ b/arch/arm/boot/dts/st/stm32mp131.dtsi
>> @@ -1528,6 +1528,8 @@ ethernet1: ethernet@5800a000 {
>>                        <&rcc ETH1RX>,
>>                        <&rcc ETH1STP>,
>>                        <&rcc ETH1CK_K>;
>> +                nvmem-cell-names = "mac-address";
>> +                nvmem-cells = <&ethernet_mac1_address>;
> 
> It should not be defined in soc dtsi file but rather in board file. OTP 
> are provisioned by the end customer not by ST. If you order a SoC to ST 
> it will not be provisioned OTP MAC addr will be set to 0.

That's right, but at least the MAC address will be in the same locations 
in OTP, and if the MAC from OTP is all zeroes, than it wouldn't be 
considered a valid MAC address.

In any case, I'll do board specific V2 shortly.

