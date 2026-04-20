Return-Path: <devicetree+bounces-288739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHQhLG9V5mkDuwEAu9opvQ
	(envelope-from <devicetree+bounces-288739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:33:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2992342FA07
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:33:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A364930FC5AA
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 14:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C5AB2D94B5;
	Mon, 20 Apr 2026 13:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="yT7PnZqq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F192DB7B9
	for <devicetree@vger.kernel.org>; Mon, 20 Apr 2026 13:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776693090; cv=none; b=e4ZRnmdsPAMXLF/3IhpkqoiM7WkatCcqIX/q2IMGeXPrOdBH9kW6LWwORDa1t6CacAZmcSNIgyUhjdS9gGu/j/2sc5ZctuuMnB3IdXIknfrGyiRLt7Ekkbs3YvWgKBO0zNewiwFZ801Oc2bDH7AdeWSPUnyOZ+O4rA8WJMfusPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776693090; c=relaxed/simple;
	bh=FDQeZgAWFZLVTY1reCblQN6a8O6/rYymvfny8fET6pA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a8PLSvh2zR4TrYtvX/bppMVy531fZuv9WgSbb1wm8KT/W2tkzgWMqRiRbFAyoBZI510tl1l39t9GFBJ9TbpRhBhIJAJLgfeCuc/aIsOXsNwXBEC2avvX9DvlY6xA4ZKFFoKl//KQZQRDiU3hoz0oA/14c6KwOTRHqIaw2bvlunA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=yT7PnZqq; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id A563C4E42A74;
	Mon, 20 Apr 2026 13:51:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6336D5FFA5;
	Mon, 20 Apr 2026 13:51:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F41031046096B;
	Mon, 20 Apr 2026 15:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776693085; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=DWK8tKh+E9hRu8YV2LCaSkCmHnX32EfWF2Jrj1vWeW0=;
	b=yT7PnZqqD2I3c/29y0FVPET4nR6b8Ll864ruqDHXfjB9LBrW6JrUreMMtHkdZZPAqE+vS6
	YTWCV/oX9D/jKfi8CpZS4OBmi3OhWTS11RG+c9Ko1uNH/S1onUtn66i+/qinYzUJQe8JZw
	K8GqFBqZ8+H2egPPrtXXvuxBRwl2syNkp1GO4n09nxwVj+Papo7+7yjey8C1eqEuyOYtGT
	kSVmJJCy1B4pwSbSgEd10Rli85dqCraOaqiiqa+n08+Q24qtdF4Pf6oWl4j/dw2hQSk0+J
	5+c/tb75ZM9sbXLutHFJ/4WQEZRCydv4KdO7wZK0RE2MOifZZ6yGxVjb7zEE4w==
Message-ID: <cd4c1a0f-0cdb-4de6-9006-f1d58c5e6812@bootlin.com>
Date: Mon, 20 Apr 2026 15:51:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j722s: use ti,j7200-padconf compatible
To: Thomas Richard <thomas.richard@bootlin.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, Udit Kumar <u-kumar1@ti.com>,
 Abhash Kumar <a-kumar2@ti.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260420131735.3833993-1-richard.genoud@bootlin.com>
 <c36821db-2fcb-438c-b54c-a4f2d5b33fa5@bootlin.com>
Content-Language: en-US, fr
From: Richard GENOUD <richard.genoud@bootlin.com>
Organization: Bootlin
In-Reply-To: <c36821db-2fcb-438c-b54c-a4f2d5b33fa5@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-288739-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[richard.genoud@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2992342FA07
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Thomas,

Le 20/04/2026 à 15:38, Thomas Richard a écrit :
> Hello Richard,
> 
> On 4/20/26 3:17 PM, Richard Genoud (TI) wrote:
>> From: Abhash Kumar Jha <a-kumar2@ti.com>
>>
>> The pinctrl contexts for j722s should be saved and restored during
>> suspend-to-ram, just like it is done for j7200 and j784s4 SoCs.
>>
>> Use ti,j7200-padconf compatible to save and restore pinctrl contexts during
>> suspend-to-ram.
>>
>> Signed-off-by: Abhash Kumar Jha <a-kumar2@ti.com>
>> Signed-off-by: Richard Genoud (TI) <richard.genoud@bootlin.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-j722s-evm.dts | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
>> index e66330c71593..757eb6abcd72 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
>> @@ -242,6 +242,7 @@ &phy_gmii_sel {
>>   };
>>   
>>   &main_pmx0 {
>> +	compatible = "ti,j7200-padconf", "pinctrl-single";
>>   
>>   	main_mcan0_pins_default: main-mcan0-default-pins {
>>   		pinctrl-single,pins = <
>> @@ -418,6 +419,7 @@ &main_uart5 {
>>   };
>>   
>>   &mcu_pmx0 {
>> +	compatible = "ti,j7200-padconf", "pinctrl-single";
>>   
>>   	mcu_i2c0_pins_default: mcu-i2c0-default-pins {
>>   		pinctrl-single,pins = <
> 
> It should be done at SoC level, not just for the EVM board.
> You should modify k3-j722s-main.dtsi and create k3-j722s-mcu.dtsi.
Indeed.

Thanks!

> 
> Best Regards,
> Thomas



