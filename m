Return-Path: <devicetree+bounces-141493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 505B8A20F31
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:52:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9ED5D1881220
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F8CD19E967;
	Tue, 28 Jan 2025 16:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="mkjsxEWu"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF951A38F9;
	Tue, 28 Jan 2025 16:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738083158; cv=none; b=cAa2LQkvDciPy9OAWp17PTeS/xbsUusnhWO/tweSZJ7fMag98L0vnvIcb4JEi4NtuCNXNC8c0UUu6IjDNYCuk4qi0iP9t/LUQ19msZ7/U9w0iOJiYsaEsD4uuJlU87VQ9NcRE87EIANS9OQw7Cgjo/05OfKn55UUM7FEZ5zPeXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738083158; c=relaxed/simple;
	bh=wNouiWW4zNhYHxoq3XcO6faRnxsNLryWdHiM14uuT34=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=WNSk1nVu7BS8DnHRA7iCMD17WOuUS71ADAaV1FPpgUMtVhqMpndUMwOr6znpuP6hysylD9OzGwEa39IqWyL7PzLWzRJWlfJ2PhAl5cfPg7Raf5BEk1Z6Qa2cnu5nOCm5D3oFMePHXbFLUPGa4qYbOp2p+z8D89S/6TPrGr6yfP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=mkjsxEWu; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50SGqSkU1995400
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 28 Jan 2025 10:52:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1738083148;
	bh=2rRnUf2C4qGu4mG0eUm02gORC0+DK73TfFhmB10CU5c=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=mkjsxEWumD9c27vIqA8NKvaND5tbdd7KQjQo9pR66QIJu5HUWXf6HLDDxp3qx58/n
	 oxUPgWu4CHlreWk3zwpt1KlZD5R/0yxYCkTbPijGwiW2gfGCVtHqD+gVF22RTQOxEM
	 jkOzfjlT4twMd+VXj6NjuPffaDtqcE5Iwm8WlA0M=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50SGqSYi051579
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 28 Jan 2025 10:52:28 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Jan 2025 10:52:28 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Jan 2025 10:52:28 -0600
Received: from [10.249.48.175] ([10.249.48.175])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50SGqRi4010086;
	Tue, 28 Jan 2025 10:52:28 -0600
Message-ID: <76f9e9e8-dd7c-e783-fccc-0b6f913ce753@ti.com>
Date: Tue, 28 Jan 2025 10:52:27 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-am62a-mcu: Add R5F remote proc
 node
To: Andrew Davis <afd@ti.com>, Judith Mendez <jm@ti.com>,
        Nishanth Menon
	<nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Devarsh Thakkar
	<devarsht@ti.com>
References: <20250127221631.3974583-1-jm@ti.com>
 <20250127221631.3974583-3-jm@ti.com>
 <8b152f81-0848-4f34-adcb-fee9b4f2fd7f@ti.com>
Content-Language: en-US
From: Hari Nagalla <hnagalla@ti.com>
In-Reply-To: <8b152f81-0848-4f34-adcb-fee9b4f2fd7f@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On 1/28/25 10:27, Andrew Davis wrote:
>> +    mcu_r5fss0: r5fss@79000000 {
>> +        compatible = "ti,am62-r5fss";
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        ranges = <0x79000000 0x00 0x79000000 0x8000>,
>> +             <0x79020000 0x00 0x79020000 0x8000>;
>> +        power-domains = <&k3_pds 7 TI_SCI_PD_EXCLUSIVE>;
> 
> Newline here.
> 
> Also this should be default "disabled". It can be set to "okay"
> in the board DTS file when the needed mboxes and memory-region
> are set. Speaking of that, where are those patches? This is
> incomplete without them and these nodes will not function.
> Same for the DSP patch.
> 
> Andrew
Yes, by default needs to set the node state to "disabled". This is HW 
description of the wake-up domain components. Memory carve outs and 
mailbox assignments for IPC are a separate patch as it is configurable 
and distro dependent.

