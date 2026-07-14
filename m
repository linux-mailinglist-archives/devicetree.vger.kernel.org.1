Return-Path: <devicetree+bounces-326362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ug3qAb1qVmrB5AAAu9opvQ
	(envelope-from <devicetree+bounces-326362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 18:58:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2E77572B1
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 18:58:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cyberchaos.dev header.s=mail header.b=wXD8NEDs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326362-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326362-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=cyberchaos.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EFBF30D0D14
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAB0E4DD6DF;
	Tue, 14 Jul 2026 16:57:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cyberchaos.dev (mail.cyberchaos.dev [195.39.247.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD09B4DD6DB;
	Tue, 14 Jul 2026 16:57:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784048242; cv=none; b=CVUPvvSTiYSlJOQvGW8WkWKY94+iObWX3agZIcESKifwBmk0ZWY6/PImo5AYjBG6NESJ0N4DJAYOFH/9phi2LKzz9jdD/xdYDs/0H4/CIMna3fIVeWEd4BTSa5ElMhgwpA04OioWp/kIxdP6IrWjEmJtlvGBihBOJMToPNip3g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784048242; c=relaxed/simple;
	bh=sY2tl84JejcmJYBseZy3zgZ0sNWjGsiO/e6ANhpg3go=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XFK9KuLb1Rhd3/7P+aeGmDmhDFIxcnP13EntUtcv53Ej15D4LX17ss308g/7WUE7nAogSLAp/hpn+MxjOEUVhKSZVPe3SpAgE1WJJv/qywV/R+Z3dt9CARZ9+HsDQsyeCK7OfKFB1yycrhZd5Htreby123mt3jFLTpUYPMuOrqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyberchaos.dev; spf=pass smtp.mailfrom=cyberchaos.dev; dkim=pass (1024-bit key) header.d=cyberchaos.dev header.i=@cyberchaos.dev header.b=wXD8NEDs; arc=none smtp.client-ip=195.39.247.168
Message-ID: <76243051-e391-45d2-b47a-d4a904f0a36f@cyberchaos.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyberchaos.dev;
	s=mail; t=1784048232;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ElhmPfVqBToQ9P063X0Nq/IxRb7L6/7x/Xi/WmPp8q8=;
	b=wXD8NEDs6UrKZDXX4nd5fYxC/7tBzufTuVhWqv8zYjnFqy5Q2LeX1zJB0H/vQ1BiRrWQDV
	9PIla8gaoYKbb2W9MT+o0bAUg+tQ7ia6DaIjgLVCqBn9vmYuM8tmpu6jioeEVzSsyVxH2x
	UYU6EfIakwLmTnKBtexaM7af2+KxcCc=
Date: Tue, 14 Jul 2026 18:57:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] PCI: apple: Integrate pwrctrl API
To: Manivannan Sadhasivam <mani@kernel.org>, Marc Zyngier <maz@kernel.org>
Cc: Yureka Lilian <yureka@cyberchaos.dev>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
 Neal Gompa <neal@gompa.dev>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20260707-apple-pcie-pwren-v1-0-5a281b182fe2@cyberchaos.dev>
 <20260707-apple-pcie-pwren-v1-1-5a281b182fe2@cyberchaos.dev>
 <86a4s3p2vy.wl-maz@kernel.org>
 <8a80a170-a508-4a9e-8090-27cfcedb1cd4@cyberchaos.dev>
 <865x2qq4ts.wl-maz@kernel.org>
 <jqaxvdaxfpm5g3tdwdqpuk2ubkwim6ckmlblocvakloqishvmm@c5ofbdbdj7lf>
Content-Language: en-US
From: Yureka Lilian <yureka@cyberchaos.dev>
In-Reply-To: <jqaxvdaxfpm5g3tdwdqpuk2ubkwim6ckmlblocvakloqishvmm@c5ofbdbdj7lf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cyberchaos.dev,reject];
	R_DKIM_ALLOW(-0.20)[cyberchaos.dev:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326362-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mani@kernel.org,m:maz@kernel.org,m:yureka@cyberchaos.dev,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cyberchaos.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,cyberchaos.dev:from_mime,cyberchaos.dev:mid,cyberchaos.dev:email,cyberchaos.dev:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D2E77572B1


On 7/9/26 14:29, Manivannan Sadhasivam wrote:
> On Tue, Jul 07, 2026 at 02:58:39PM +0100, Marc Zyngier wrote:
>> On Tue, 07 Jul 2026 13:04:21 +0100,
>> Yureka Lilian <yureka@cyberchaos.dev> wrote:
>>> On 7/7/26 11:25, Marc Zyngier wrote:
>>>> On Mon, 06 Jul 2026 23:38:27 +0100,
>>>> Yureka Lilian <yureka@cyberchaos.dev> wrote:
>>>>> Integrate the PCI pwrctrl framework into the Apple PCIe host driver to
>>>>> provide standardized power management for PCI devices.
>>>>>
>>>>> Notably, this allows enabling powering on the WiFi, SD card reader on
>>>>> various Macs by means of the pwrctrl framework before probing the ports.
>>>>>
>>>>> Previously, a custom solution for powering on the WiFi and SD card
>>>>> reader was proposed[1], but we can now use the new pci-pwrctrl-generic
>>>>> driver for this purpose.
>>>>>
>>>>> Link[1]: https://lore.kernel.org/lkml/20220502093832.32778-4-marcan@marcan.st/
>>>>>
>>>> nit: this paragraph and the accompanying link don't belong in the
>>>> commit message and should be moved below the --- mark or even better,
>>>> to the cover letter.
>>> ack, will leave it out of the commit message of the individual commit in v2
>>>>> Signed-off-by: Yureka Lilian <yureka@cyberchaos.dev>
>>>>> ---
>>>>>    drivers/pci/controller/Kconfig      |  1 +
>>>>>    drivers/pci/controller/pcie-apple.c | 16 ++++++++++++++++
>>>>>    2 files changed, 17 insertions(+)
>>>>>
>>>>> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
>>>>> index 2247709ef6d6..af64630d28fa 100644
>>>>> --- a/drivers/pci/controller/Kconfig
>>>>> +++ b/drivers/pci/controller/Kconfig
>>>>> @@ -46,6 +46,7 @@ config PCIE_APPLE
>>>>>    	depends on OF
>>>>>    	depends on PCI_MSI
>>>>>    	select PCI_HOST_COMMON
>>>>> +	select PCI_PWRCTRL_GENERIC
>>>>>    	select IRQ_MSI_LIB
>>>>>    	help
>>>>>    	  Say Y here if you want to enable PCIe controller support on Apple
>>>>> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
>>>>> index c2cffc0659f4..db038a9d4831 100644
>>>>> --- a/drivers/pci/controller/pcie-apple.c
>>>>> +++ b/drivers/pci/controller/pcie-apple.c
>>>>> @@ -30,6 +30,7 @@
>>>>>    #include <linux/msi.h>
>>>>>    #include <linux/of_irq.h>
>>>>>    #include <linux/pci-ecam.h>
>>>>> +#include <linux/pci-pwrctrl.h>
>>>>>      #include "pci-host-common.h"
>>>>>    @@ -825,6 +826,21 @@ static int apple_pcie_init(struct
>>>>> pci_config_window *cfg)
>>>>>    	if (WARN_ON(!pcie))
>>>>>    		return -ENOENT;
>>>>>    +	ret = pci_pwrctrl_create_devices(pcie->dev);
>>>>> +	if (ret) {
>>>>> +		dev_err(pcie->dev, "Failed to create pwrctrl devices: %pe\n", ret);
>>>>> +		return ret;
>>>>> +	}
>>>>> +
>>>>> +	ret = pci_pwrctrl_power_on_devices(pcie->dev);
>>>>> +	if (ret) {
>>>>> +		if (ret != -EPROBE_DEFER) {
>>>>> +			dev_err(pcie->dev, "Failed to power on devices: %pe\n", ret);
>>>>> +			pci_pwrctrl_destroy_devices(pcie->dev);
>>>>> +		}
>>>>> +		return ret;
>>>>> +	}
>>>>> +
>>>> Why is this done globally while the whole driver works on a per-port
>>>> basis, and that the proposed DT updates are also per port?
>>> pci_pwrctrl_power_on_devices takes a struct device as parameter, but
>>> pcie-apple does not allocate device structs for the individual ports.
>>> This could be changed of course. But since pci_pwrctrl_* operate on
>>> the subnodes recursively, it works just fine this way.
>> Works fine is one thing. Being consistent with the way the rest of the
>> driver works is another. pci_pwrctrl_create_device() and
>> pci_pwrctrl_power_on_device() appear to do exactly what would be
>> required for a single port. They just needs to be exported made
>> global/exported.
>>
> I'm fine with exporting pci_pwrctrl_create_device() and
> pci_pwrctrl_power_on_device() and calling them with per-port np.
>
> - Mani

In theory I do agree this would work to power on the slots, and I can 
send a v2 of the patch doing it that way, but I don't quite understand 
yet how this fits better with the existing driver code: If this is the 
case, what is the difference between pcie-apple and pcie-qcom and why 
should pcie-qcom use the recursive function but pcie-apple not?


Thanks,

— Yureka


