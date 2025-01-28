Return-Path: <devicetree+bounces-141505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB6BA20FC3
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 18:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DFF01670F3
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D7C1DB34E;
	Tue, 28 Jan 2025 17:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="UahvFPmW"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5A84315F;
	Tue, 28 Jan 2025 17:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738086528; cv=none; b=jv8vYUqvnA09VvGaqtphGEAzhYFYp0wnbNBKntT5U1plRcel+G3p9li0VXlSMq5imr+EqOO9QUOdcUU4RxtNWihJwXduuxiKA+Ssye+hEDrpvO6Pj+NLTBEuHtZRwjkL79s4bbdzvdTBn4DCvsUQ6ZJ71yrE1QEmsppn31/164o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738086528; c=relaxed/simple;
	bh=wMzkJz/YHJau5DxGRz7SUmS2+sos/E04wYInhfIJqgU=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=nM8SuISdNs6BdBaIg/4bEDUwoMtJ7dnQNIXEkUrb1AbMbsuNrMemrV/QErz5yoB3NSrUhmG6DvwcHsmei3lDUrzWUBkdi9Vwxg7kvKalkUaXL7H+COe24dW0XmUbzPuPTONFJTTjJ/aVuvGgXSFo6jWn4T/mABx4nXsztEAEGEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=UahvFPmW; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50SHmaJc2002364
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 28 Jan 2025 11:48:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1738086516;
	bh=MgP42JYcLJct4c+N0hOB2jGbwHn1xmpBOQj3t0j6WnI=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=UahvFPmWaVQJuRscn3mSJiDlvwbWoT81ixe6S7zpfwdOulAgNLrqeIMN2PgM/9czy
	 87cJUIifIgJ0XHrn73HuSL7IaB2iuDfXYqMYO9en+4VGO+xqkmHL3WwiQaHuTwCtXP
	 8OFFN8dOIR4S9qBRFDNEcQSX1CIVWgSttseAcPfE=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50SHmadG050604;
	Tue, 28 Jan 2025 11:48:36 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Jan 2025 11:48:35 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Jan 2025 11:48:36 -0600
Received: from [128.247.81.105] (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50SHmaiA049718;
	Tue, 28 Jan 2025 11:48:36 -0600
Message-ID: <390aa52e-e9f2-4ce3-ad1b-eac71f4a211c@ti.com>
Date: Tue, 28 Jan 2025 11:48:36 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-am62a-mcu: Add R5F remote proc
 node
To: Hari Nagalla <hnagalla@ti.com>, Andrew Davis <afd@ti.com>,
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
 <76f9e9e8-dd7c-e783-fccc-0b6f913ce753@ti.com>
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <76f9e9e8-dd7c-e783-fccc-0b6f913ce753@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Andrew,

On 1/28/25 10:52 AM, Hari Nagalla wrote:
> On 1/28/25 10:27, Andrew Davis wrote:
>>> +    mcu_r5fss0: r5fss@79000000 {
>>> +        compatible = "ti,am62-r5fss";
>>> +        #address-cells = <1>;
>>> +        #size-cells = <1>;
>>> +        ranges = <0x79000000 0x00 0x79000000 0x8000>,
>>> +             <0x79020000 0x00 0x79020000 0x8000>;
>>> +        power-domains = <&k3_pds 7 TI_SCI_PD_EXCLUSIVE>;
>>
>> Newline here.
>>
>> Also this should be default "disabled". It can be set to "okay"
>> in the board DTS file when the needed mboxes and memory-region
>> are set. Speaking of that, where are those patches? This is
>> incomplete without them and these nodes will not function.
>> Same for the DSP patch.
>>
>> Andrew
> Yes, by default needs to set the node state to "disabled". This is HW 
> description of the wake-up domain components. Memory carve outs and 
> mailbox assignments for IPC are a separate patch as it is configurable 
> and distro dependent.

Yes I plan to disable the nodes in each domain .dtsi file.

Also yes, my understanding is that the memory carveouts could
be a separate series if at all. Not sure if those patches can be
sent upstream since they are distro dependent. Can anyone clarify
if this is the case?

~ Judith

