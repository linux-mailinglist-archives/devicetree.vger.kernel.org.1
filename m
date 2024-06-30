Return-Path: <devicetree+bounces-81668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C48E491D01A
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 07:24:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE9AEB21487
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 05:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13A4829408;
	Sun, 30 Jun 2024 05:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="QdQsgqs5"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B04139F
	for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 05:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719725046; cv=none; b=NdeDQgYJ+iZCBQqIfXfNDMQZba2/YqPlRmanL7hem0CAPqN/6em+RdsF1hmS6voPZhGAh4HoUywaYY4KjAa2vmOF1sTmIg8uqayAlaoHZVq0ETrZFfL7d//I9oPAeC05AR6XAwcuukDo7szJ4TP7vCEzn+ryPFITKio6PzKfqck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719725046; c=relaxed/simple;
	bh=MpuEbz5lFqcgnwvNAK3/UWx1kTt0VmzbRJphvtFcVuY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=acll7+3YWa7CWvrqq4pErO2WS7/ZTHmCzw3Q4NOG917tYDRaxwKNJzoYU2cuj1+AgrQFNaINcYqIVMRrLEFaSlqniRwFT3zdIhW6/dyUVwU2KNpiFPWxmr6mNhZl3JUSdcT1LcxOMMFeVfdKu/8IG2T0d2iC9ThKKMZ6bhigWjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=QdQsgqs5; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 1BE3388607;
	Sun, 30 Jun 2024 07:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719725042;
	bh=M1pxPkW8agAdfniQmy08fGahbeILY9IeJg5Ga0QGsto=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QdQsgqs5j7QciIxh+WVZNq9d2KDO/GyiYp6mRf4TD6QaHapsQVWympYPSLkZyDopB
	 QVcfyCYoAKmwLpKm/xnDcbc2CedoGuk/6lcwcHmmnovAooWJ4aBxuaj9ZQiP/dYZEn
	 8bbzt6C48eKiWmYhRXvBexiP88vRSm6ccg6zM5RqBWXhJkkGoOjq8Q3JMN9Ia4vifw
	 05ZlrHGJ/K6WNsInGqISg3edJvEFVUA5pZ63NXIgo8ZhyU5/6MyixdsNxle1OaVLxX
	 +hWLcw4S5RSAgHcBlr9wg1TFydisQSSbEqDwrTMGG6MUlD8EGG+UqaP1lw373C1P3v
	 xjqMRSObow7PA==
Message-ID: <bb770342-8a55-4cb5-81dc-d8b1aebac607@denx.de>
Date: Sun, 30 Jun 2024 03:36:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: stm32: Add ethernet support for DH
 STM32MP13xx DHCOR DHSBC board
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Christophe Roullier <christophe.roullier@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
References: <20240628005729.119871-1-marex@denx.de>
 <04d2ef05-4f47-445c-8f5c-1e550ef5aff2@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <04d2ef05-4f47-445c-8f5c-1e550ef5aff2@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/28/24 8:44 AM, Alexandre TORGUE wrote:
> Hi Marek

Hi,

> On 6/28/24 02:57, Marek Vasut wrote:
>> Add ethernet support for the DH STM32MP13xx DHCOR DHSBC carrier board.
>> This carrier board is populated with two gigabit ethernet ports and two
>> Realtek RTL8211F PHYs, both are described in this DT patch.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
> 
> I already applied series which add the ETH support in mp13 DH board. Can 
> you please resend a patch which only add the nvmem efuse stuff please ?

Done in [PATCH] ARM: dts: stm32: Add ethernet MAC nvmem cells to DH 
STM32MP13xx DHCOR DHSBC board .

