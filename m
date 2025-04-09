Return-Path: <devicetree+bounces-164641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0520FA81D45
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 08:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 513633B8EC4
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 06:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC6D11E0489;
	Wed,  9 Apr 2025 06:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bJbobKnd"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B81DF247
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 06:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744180892; cv=none; b=de9oWLhecxepnlAQLS9VxWoUmf+9ThUgUVU5rxRU/Ez3crkOwn0A3rP0qKvmao+EPHD1jLaWjCITCV2ac9x5TuL0bPlWB55JlV7kmFaP7CmBwq9XLREVjx2i92eXln4Z9goa15WL8pxc5BmapgGawKDhMjJ+JRkh9cTYiyz5dGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744180892; c=relaxed/simple;
	bh=aKS8gBsiMJ6oTJz/0emeMCjhJxmfoOa2NfawNsW2npA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k2Sz3CRNaV/KAaRnfFG1iAPWQfnctYx6laFGzqYG7AV6GCC+eF2kMxCdt2CXgamzEIHTkmgLz3zEfV453RaBp6KGA6WFPggkvbGGqjnZmDeT2GpXEkDbHTW9F0hvAyPcjUQNFx8L0QxzaBcy64XtnBe1gvzQ+poQEEF/sPYx7Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bJbobKnd; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744180890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pG3lLWeJjhseMh1HmN6IvSUlLvJdHWorVSiUARqGbMo=;
	b=bJbobKnd4NUIQU2ZmoublEB8HsQysG7q+7eaj1WS+1RZIenyuCFE+1p+4X28KHFWicLZjj
	pYDxORESd9ajkYcrP+H4eRQUC9ozMnH3IlEoy8ulVUgOLg/HPHJM1JpCnlWCKmhBrde6tJ
	kxarr3eC7jc1Zb2OQaKrd3vQEUCoKWE=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-154-_eeiUJRPOiiN7XgFVmJ9dw-1; Wed,
 09 Apr 2025 02:41:26 -0400
X-MC-Unique: _eeiUJRPOiiN7XgFVmJ9dw-1
X-Mimecast-MFC-AGG-ID: _eeiUJRPOiiN7XgFVmJ9dw_1744180884
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 60DD819560A1;
	Wed,  9 Apr 2025 06:41:24 +0000 (UTC)
Received: from [10.44.32.72] (unknown [10.44.32.72])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id E4BCC19560AD;
	Wed,  9 Apr 2025 06:41:19 +0000 (UTC)
Message-ID: <62c616f8-bd96-497a-b0e5-fe726d1f22bd@redhat.com>
Date: Wed, 9 Apr 2025 08:41:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/28] mfd: zl3073x: Register itself as devlink device
To: Andrew Lunn <andrew@lunn.ch>
Cc: netdev@vger.kernel.org, Michal Schmidt <mschmidt@redhat.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20250407172836.1009461-1-ivecera@redhat.com>
 <20250407172836.1009461-3-ivecera@redhat.com>
 <262753b0-817a-436c-bfcc-62c375e4bbf6@lunn.ch>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <262753b0-817a-436c-bfcc-62c375e4bbf6@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

On 07. 04. 25 10:57 odp., Andrew Lunn wrote:
> On Mon, Apr 07, 2025 at 07:28:29PM +0200, Ivan Vecera wrote:
>> Use devlink_alloc() to alloc zl3073x_dev structure and register
>> the device as a devlink device. Follow-up patches add support for
>> devlink device info reporting and devlink flash interface will
>> be later used for flashing firmware and configuration.
>>
>> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> ---
>>   drivers/mfd/Kconfig        |  3 +++
>>   drivers/mfd/zl3073x-core.c | 27 +++++++++++++++++++++++++--
>>   2 files changed, 28 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>> index 30b36e3ee8f7f..a838d5dca4579 100644
>> --- a/drivers/mfd/Kconfig
>> +++ b/drivers/mfd/Kconfig
>> @@ -2424,11 +2424,13 @@ config MFD_UPBOARD_FPGA
>>   
>>   config MFD_ZL3073X_CORE
>>   	tristate
>> +	select NET_DEVLINK
>>   	select MFD_CORE
>>   
>>   config MFD_ZL3073X_I2C
>>   	tristate "Microchip Azurite DPLL/PTP/SyncE with I2C"
>>   	depends on I2C
>> +	depends on NET
>>   	select MFD_ZL3073X_CORE
>>   	select REGMAP_I2C
>>   	help
>> @@ -2441,6 +2443,7 @@ config MFD_ZL3073X_I2C
>>   
>>   config MFD_ZL3073X_SPI
>>   	tristate "Microchip Azurite DPLL/PTP/SyncE with SPI"
>> +	depends on NET
> 
> It seems odd that the SPI and I2C drivers need net? It is the core
> which is doing devlink stuff.
> 
> 	Andrew

Will move this under MFD_ZL3073X_CORE.

Thank you.

I.


