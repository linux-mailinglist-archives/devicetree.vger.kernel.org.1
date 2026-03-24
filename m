Return-Path: <devicetree+bounces-280097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGkRElkaw2kuoQQAu9opvQ
	(envelope-from <devicetree+bounces-280097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 00:12:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AA731DA73
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 00:12:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 923CD30699B6
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 23:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96AC83CAE7A;
	Tue, 24 Mar 2026 23:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="dMPkaKvp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC51E3CA488;
	Tue, 24 Mar 2026 23:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774393918; cv=none; b=P82giTETKCELrq/9EtMNfgNXCtywdage/QD1K8hKSvouODNHcAMmKghDIOEVV8la1wr2ARirQiT01RjM/U5SKLnPmm8Vo7Nv8s+noGtLYA/BESJxqgOECm7B8qF01BO4JAWS/n4hHNBYIJlDJW9G7H9AsM2kuQ/pDxXps3LJ69Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774393918; c=relaxed/simple;
	bh=UsdJ+Q4kBS1MbW0xQpYTJ+JAo9wLCnAzmaVXx1tB79Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qfumymafXwozDFGzHoCD3y2518kuy+sEzhA29olNDzBTXFvre8FOBLrUKt0issL9ARsERsP+WBl5kEoLbghHZQkYRluD43oVmLHTO141ZUvWK1O+oAVLUZT29Okgl88EXb1vFtpBbBN5r/r+Zg0Tmq7fLmVfAZ/kJeOM41+woQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=dMPkaKvp; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 15605112263;
	Wed, 25 Mar 2026 00:11:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1774393908;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=6hkqmn5/Lm/RJ1zH+MMrxFpBSNBqxslxfAIu548ZS6o=;
	b=dMPkaKvpgdhIyAKyu5nYxwRdnlq3N08T9loLdL6JOo/n7tqhieKPGvR74HmmvbEvTH1Px3
	UrO2Xca6vycanpXrFwcbi1VDsFi1IOxCDf/BljTZHNJCUuk6uw73z0ttCZiALwznufbr/5
	U4VIaOt5Yu9v6o5XI9Eh4ZWdyrPFD/gTQMxxa8vgvRRgmy407PInjQ7GEEQ33x5BnQIVl4
	6IuDYHrF+gKQ761WAFV0CnyGbuL72ws6xInX/fo/y6BKEQI7KAuA0U8fOFDqELKJEhpezz
	vjhsYM1ldlLjk0p9PThqSCfkFZDSExQVAefZDiWfJTKyPV5a95ydouYXUeKQww==
Message-ID: <e580bc1d-96ce-43c5-880f-bb8ee31fda28@nabladev.com>
Date: Tue, 24 Mar 2026 22:43:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: imx8mp: Add DT overlays for DH i.MX8M Plus
 DHCOM SoM and boards
To: Frank Li <Frank.li@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org,
 Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 devicetree@vger.kernel.org, imx@lists.linux.dev, kernel@dh-electronics.com,
 linux-kernel@vger.kernel.org
References: <20260312232500.197096-1-marex@nabladev.com>
 <acK1YU6M5FGK3qM2@lizhi-Precision-Tower-5810>
 <e5d7ca6a-fdd3-4aca-aa1f-1d35bc9c0119@nabladev.com>
 <acLtV4Vwpbj9vpE3@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <acLtV4Vwpbj9vpE3@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280097-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,dh-electronics.com,kernel.org,gmail.com,pengutronix.de,vger.kernel.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.41:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:dkim,nabladev.com:mid]
X-Rspamd-Queue-Id: A9AA731DA73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/24/26 9:00 PM, Frank Li wrote:
> On Tue, Mar 24, 2026 at 06:39:10PM +0100, Marek Vasut wrote:
>> On 3/24/26 5:01 PM, Frank Li wrote:
>>> On Fri, Mar 13, 2026 at 12:24:04AM +0100, Marek Vasut wrote:
>>> ...
>>>
>>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-overlay-panel-ch101olhlwh.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-overlay-panel-ch101olhlwh.dtsi
>>>> new file mode 100644
>>>> index 0000000000000..534737363c9f0
>>>> --- /dev/null
>>>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-overlay-panel-ch101olhlwh.dtsi
>>>> @@ -0,0 +1,42 @@
>>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>> +/*
>>>> + * Copyright (C) 2022 Marek Vasut
>>>
>>> 2026?
>>
>> That was the original copyright year when this was implemented, but I can
>> update it to 2022-2026 ?
> 
> Okay, you upstream this year.

Right, V2 does extend the copyrights until this year.

>>>> + */
>>>> +
>>>> +&display_bl {
>>>> +	pwms = <&pwm1 0 5000000 0>;
>>>> +};
>>>> +
>>>> +&DH_OVERLAY_PANEL_I2C_BUS {
>>>
>>> why upcase for label, generally it should be lower case
>>
>> Because this label is really a macro , please read on.
>>
>>>> +	#address-cells = <1>;
>>>> +	#size-cells = <0>;
>>>> +
>>>> +	touchscreen@41 {
>>>> +		compatible = "ilitek,ili251x";
>>>> +		pinctrl-0 = <DH_OVERLAY_PANEL_I2C_TOUCHSCREEN_PINCTRL>;
>>>> +		pinctrl-names = "default";
>>>> +		reg = <0x41>;
>>>
>>> reg should second property,  please dt-format for new dts files.
>>> check others
>> What is "dt-format" ? Linux kernel source tree, even current next, does not
>> mention such a tool . I did run schema check and checkpatch on these
>> patches. obv.
> 
> I send out at many place, https://github.com/lznuaa/dt-format
> I write small tools to detect and fix node and property order problem,
> it may be buggy.
> 
> These node order problem is easy to detected and fix by tools to save
> review cycle and focus on the important stuff.
Maybe "make dtbs_check" target could include this tool , to make people 
aware of it ?

