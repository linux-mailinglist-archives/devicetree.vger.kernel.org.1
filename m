Return-Path: <devicetree+bounces-258807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIPJFXA9c2kztgAAu9opvQ
	(envelope-from <devicetree+bounces-258807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:20:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E899673281
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:20:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BB6EB300DCF6
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F110A33D506;
	Fri, 23 Jan 2026 09:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ouCeHIuY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFE534D91C;
	Fri, 23 Jan 2026 09:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160016; cv=none; b=NB2FUo85smk+hfcMbGeM0ZsQi6uxHTv07/3eg1ICuzBRlg3zPj09o0XWn8AcBpDdxX73K0OP9Gz22Z3OFqXmSA6EuDBGd3D/OhKcpWAeBfal/S9kmqzhIY58GhzdPF7Jf8Vjj8yp5i3tKZ4r2M/0g2Aa0Sis4GFFM3GPsT/AIeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160016; c=relaxed/simple;
	bh=wScmABaUKe1t2JjurcDqwTIA/wh8A/mq733h91F71Qc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l8gWM9wZnJDWswJ8dnpks+zsU2t+duPXdIWnkJ2YcIb3Y59pX1EDzNIU6ubzYsAS8XZgwGBDwrubhLleXDdSkG4s5/k55b8yjB6VAxOwnygcwAMqfM47o0RIYyYOPdWuinPZnhDQjqWcvp9bwKy17eiCJYWZXUgORbgVsgMZ8JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ouCeHIuY; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id A4AE04E42212;
	Fri, 23 Jan 2026 09:20:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 69FA46070A;
	Fri, 23 Jan 2026 09:20:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2D07C119A8792;
	Fri, 23 Jan 2026 10:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769160009; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=QoUg3Uk7+e8l5mq7yG+QFMWRIs9FeJl/CwglzOQSrcA=;
	b=ouCeHIuYjsbzgDHldVpAkuh/B5AtCWHh58OIV/MdbRM+XeewIili9URv6x4IBIDo6adSjk
	5F5HKuSEJZDSvQ7rjF9z2bgNUYp/a+TJxDR7euP2NxpA9zLHH7Fiave4pisKcrDRgx8wyd
	6GTMTDnkUVqVyq2XpofKxjsGfE75V0YDJ9tFadQwT4Euf0e+w7amNzUOuIvkrgDcHXzEDM
	4I/7CZz2QztBW2vXrPVnks3KiDKtPIr0snQ5oh/k2Ocqn8UVaGeXgXGPOpPl3cUmjIKA4o
	zcgC4p2JlEcTpIYeWOKP3i4fSQa/Nz/qOmU7+S8ehBJNueZhnHGWB2WOdHOuQQ==
Message-ID: <dc6e60ec-f460-4713-b1cc-97ceb2d344f5@bootlin.com>
Date: Fri, 23 Jan 2026 10:20:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm64: dts: a7k: add COM Express boards
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Rob Herring <robh@kernel.org>, Elad Nachman <enachman@marvell.com>,
 andrew@lunn.ch
Cc: conor+dt@kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 chris.packham@alliedtelesis.co.nz, pali@kernel.org,
 devicetree@vger.kernel.org, mrkiko.rs@gmail.com,
 sebastian.hesselbarth@gmail.com, linux-arm-kernel@lists.infradead.org,
 krzysztof.kozlowski+dt@linaro.org
References: <20260122165923.2316510-1-enachman@marvell.com>
 <176910484185.3007016.14688980539020105749.robh@kernel.org>
 <87a4y4lmn4.fsf@BLaptop.bootlin.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <87a4y4lmn4.fsf@BLaptop.bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258807-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,alliedtelesis.co.nz,gmail.com,lists.infradead.org,linaro.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maxime.chevallier@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email,bootlin.com:mid,bootlin.com:dkim,marvell.com:email]
X-Rspamd-Queue-Id: E899673281
X-Rspamd-Action: no action

Hi,

On 23/01/2026 10:10, Gregory CLEMENT wrote:
> Hello,
> 
>> On Thu, 22 Jan 2026 18:59:20 +0200, Elad Nachman wrote:
>>> From: Elad Nachman <enachman@marvell.com>
>>>
>>> Add support for Armada 7020 Express Type 7 CPU module board by Marvell.
>>> Add device tree bindings for this board.
>>> Define this COM Express CPU module as dtsi and provide a dtsi file for
>>> the carrier board (Marvell DB-98CX85x0 COM Express type 7 carrier board).
>>> Add the Falcon DB to the MAINTAINERS list
>>>
>>> Since memory is soldered on CPU module, memory node is on CPU module
>>> dtsi file.
>>>
>>> This Carrier board only utilizes the PCIe link, hence no special device
>>> or driver support is provided by this dtsi file.
>>> Devise a dts file for the combined com express carrier and CPU module.
>>>
>>> The Aramda 7020 CPU COM Express board offers the following features:
>>>
>>> 1.  Armada 7020 CPU, with dual ARM A72 cores
>>> 2.  DDR4 memory, 8GB, on board soldered
>>> 3.  1Gbit Out of Band Ethernet via RGMII to PHY and RJ45 connector,
>>>     all are present on A7K CPU module (none on the carrier)
>>> 4.  Optional 10G KR Ethernet going via the COM Express type 7 connector
>>> 5.  On-board 8 Gbit, 8-bit bus width NAND flash
>>> 6.  On-board 512 Mbit SPI flash
>>> 7.  PCIe Root Complex, 4 lanes PCIe gen3 connectivity, going via the
>>>     COM Express type 7 connector
>>> 8.  m.2 SATA connector
>>> 9.  Micro-SD card connector
>>> 10. USB 2.0 via COM Express type 7 connector
>>> 11. Two i2c interfaces - one to the CPU module, and one to the
>>>     carrier board via the COM Express type 7 connector
>>> 12. UART (mini USB connector by virtue of FT2232D UART to USB
>>>     converter, connected to the Armada 7020 UART0)
>>>

 [...]

>> My bot found new DTB warnings on the .dts files added or changed in this
>> series.
>>
>> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
>> are fixed by another series. Ultimately, it is up to the platform
>> maintainer whether these warnings are acceptable or not. No need to reply
>> unless the platform maintainer has comments.
>>
>> If you already ran DT checks and didn't see these error(s), then
>> make sure dt-schema is up to date:
>>
>>   pip3 install dtschema --upgrade
>>
>>
>> This patch series was applied (using b4) to base:
>>  Base: attempting to guess base-commit...
>>  Base: tags/next-20260121 (exact match)
>>  Base: tags/next-20260121 (use --merge-base to override)
>>
>> If this is not the correct base, please add 'base-commit' tag
>> (or use b4 which does this automatically)
>>
>>
>> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/marvell/' for 20260122165923.2316510-1-enachman@marvell.com:
>>
>> arch/arm64/boot/dts/marvell/db-falcon-carrier-a7k.dtb: ethernet@0 (marvell,armada-7k-pp22): ethernet-port@0:phy-mode:0: '10gbase-kr' is not one of ['gmii', 'sgmii', 'rgmii-id', '1000base-x', '2500base-x', '5gbase-r', 'rxaui', '10gbase-r']
>> 	from schema $id:
>> http://devicetree.org/schemas/net/marvell,pp2.yaml
> 
> Does this mean we should add 10gbase-kr to the phy-mode enum list in
> Documentation/devicetree/bindings/net/marvell?

No, 10gbase-kr is legacy, one should use "10gbase-r" instead, cf commit

e0f909bc3a24 ("net: switch to using PHY_INTERFACE_MODE_10GBASER rather than 10GKR")

That should probably be documented in the bindings at some point :)

Maxime

