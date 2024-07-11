Return-Path: <devicetree+bounces-84868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BD392E07F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 09:00:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A93571C227DE
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 07:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8492D13C80C;
	Thu, 11 Jul 2024 06:59:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast3.qq.com (smtpbguseast3.qq.com [54.243.244.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A0B12FB0B
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 06:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.243.244.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720681175; cv=none; b=r+0Kj5vYhnBr+WjbUMIQZColAp9aizBSl5d8buETd6f3vRqdNStVEDJkgIysvEsBk+yyTQIUz2k+hZSjzoGSIjwTnESRfol1DGnObmH9q4Y0S/TQ6hTak4jMS/jD76QJQ1i7+UJBHI48rCSFMiCt++cIBjS9rG8ZLm4QgL22EAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720681175; c=relaxed/simple;
	bh=cPytpnewoUTFjb6OMp65jCSkzeRZiS5AUrv8UVA2Z74=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OH47UuyvzSm3PqqViQ+eMOCSGpAa64Y91O0BFSo+Bj+eo57OQiRcyVNy06aoYdBTR/fIHZc9FC/wVKlwGF33OehYTU6w0QK6cx+tIMujWX2WzRo4f9j8amYKwRezCipFXoiNLhEDXlAwDDgAJRwA2hvi1Eu8+D1fHAKVtT92fSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.243.244.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpsz11t1720681090th3mvk
X-QQ-Originating-IP: bSVVFY8/91zRJ0m7UHcUYHAwbF4BR0zePOfCPrJv3bQ=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 11 Jul 2024 14:58:08 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16758398603850431300
Message-ID: <DFED8CF3B42049F8+44664265-ab1e-4d45-833c-41c370e4360b@radxa.com>
Date: Thu, 11 Jul 2024 15:58:07 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: change product name for Radxa
 ZERO 2 (Pro)
To: Krzysztof Kozlowski <krzk@kernel.org>, neil.armstrong@linaro.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
 linux-amlogic@lists.infradead.org
References: <20240711034035.3921122-1-naoki@radxa.com>
 <20240711034035.3921122-2-naoki@radxa.com>
 <1fece7cc-fa01-4bea-ac73-a975e042c669@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <1fece7cc-fa01-4bea-ac73-a975e042c669@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

thanks for your reply.

On 7/11/24 15:24, Krzysztof Kozlowski wrote:
> On 11/07/2024 05:40, FUKAUMI Naoki wrote:
>> a while ago, we changed product name (hardware is same),
>>
>> from: Radxa ZERO2
>>    to: Radxa ZERO 2 Pro
>>
>> this patch reflect the change in dts.
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/amlogic/Makefile                        | 2 +-
>>   ...-g12b-radxa-zero2.dts => meson-g12b-radxa-zero-2pro.dts} | 6 +++---
>>   2 files changed, 4 insertions(+), 4 deletions(-)
>>   rename arch/arm64/boot/dts/amlogic/{meson-g12b-radxa-zero2.dts => meson-g12b-radxa-zero-2pro.dts} (98%)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>> index 29417f04f886..5694ad0edcde 100644
>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>> @@ -31,7 +31,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-go-ultra.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2-plus.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2l.dtb
>> -dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero2.dtb
>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero-2pro.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-bananapi-m2s.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
>>   dtb-$(CONFIG_ARCH_MESON) += meson-g12b-ugoos-am6.dtb
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
>> similarity index 98%
>> rename from arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
>> rename to arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
>> index 8445701100d0..5514ca9a62fb 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
>> @@ -16,8 +16,8 @@
>>   #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>>   
>>   / {
>> -	compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
>> -	model = "Radxa Zero2";
>> +	compatible = "radxa,zero-2pro", "amlogic,a311d", "amlogic,g12b";
> 
> Keep old compatible.

which is better?

compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b"; (no change)
  or
compatible = "radxa,zero-2pro", "radxa,zero2", "amlogic,a311d", 
"amlogic,g12b"; (keep old one)

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 
> 

