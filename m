Return-Path: <devicetree+bounces-264140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPq5NhBIimmXJAAAu9opvQ
	(envelope-from <devicetree+bounces-264140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:48:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAD011487C
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 21:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46B92302AC22
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 20:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B27A31DDB8;
	Mon,  9 Feb 2026 20:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="evR3W6HN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECD52DF3FD;
	Mon,  9 Feb 2026 20:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770670026; cv=none; b=mprGd1J9vU16rpSr7n9jbJ9CyWVl9UHBD1JQyrdmYyqfwQVWDE5oTthfBvX9UFmpPeOjvxb2wrwbdS5HV+Uy43waGLk/w5JuFcufQnoCDe+PtXdN17vsNxauJQ5n8yXPb3oQyD5Ud7IMGNz7FbCXw+qa3VJ6hyXl+7IBLtoNKnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770670026; c=relaxed/simple;
	bh=DMLpEi6ZPTPoa9N+85G0HVq/cjD7Dn72uyfBN8twz5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qSWEEiZxi9pe8cjJbbZmylT5Jp8zzqigglMb4glDdNYj/pYdWoID24EiQzcq8AaR2Pfpk047NiKofYT7uJbaD1NVS0YsRiXZKY5N+WiGD5JVLLNs5nkei+n4HcnFSUOvTpV5m0pqLF0qpF/tbSF7G2N/9ePB6Kb8IXIdW+47VE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=evR3W6HN; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4B3F41102FD;
	Mon,  9 Feb 2026 21:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1770670021;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=lC/SYncgKW4XWLK8EoKHwDB7L/Xq+4HOQ9Bm5MSJPCY=;
	b=evR3W6HNNS3mhzOxyEsKLD0cLcuvyudT+EVXX+nAMe/QZ5QpotoCLi3jaGafks3BVG3tfV
	yN6VkaaQ7Kt0CHKUz1h9mN3tjXkBQuXX8WrwapYJ3lUkxE97SwgA9ffOt5Tpf0XAjmZsAF
	arqbAdTXW0679PFx1+gER01WG2ZKvP8FC0ZW93HPRwQc6HiU+a/UvKJRQFC5MaeuYSj7Rw
	4GTsD2k4JH3IGtruZOgY/zL0kRfVMKiWDUZOxHK1gL9l9NVFFVcDRxQ3IeDZYHXzhNocii
	6eiu8KHitFTcV+tzwRXuSg+BcMn8LR3A5+WCwz28eGNB8k3pK5jdlao96MzkHQ==
Message-ID: <9760a129-ee03-4556-b98b-2625739b21fa@nabladev.com>
Date: Mon, 9 Feb 2026 21:41:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: imx6ull-dhcor: Handle both 1DX and 1YN WiFi on
 i.MX6ULL DHCOR
To: Frank Li <Frank.li@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org,
 Christoph Niedermaier <cniedermaier@dh-electronics.com>,
 Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, kernel@dh-electronics.com, linux-kernel@vger.kernel.org
References: <20260209170739.22379-1-marex@nabladev.com>
 <aYoyrqV2lSJetls5@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <aYoyrqV2lSJetls5@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264140-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nabladev.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,dh-electronics.com,kernel.org,gmail.com,pengutronix.de,vger.kernel.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:mid,nabladev.com:dkim,0.0.0.1:email]
X-Rspamd-Queue-Id: 3EAD011487C
X-Rspamd-Action: no action

On 2/9/26 8:17 PM, Frank Li wrote:

Hello Frank,

>> diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi
>> index 75486e1b0c15f..a0adcd3fe1229 100644
>> --- a/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi
>> +++ b/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi
>> @@ -201,7 +201,7 @@ &uart2 {
>>   	 * the speed can be increased accordingly.
>>   	 */
>>   	bluetooth: bluetooth {
>> -		compatible = "brcm,bcm43430a1-bt"; /* muRata 1DX */
>> +		compatible = "brcm,bcm4329-bt"; /* muRata 1DX or 1YN */
> 
> in driver, brcm,bcm43430a1-bt and brcm,bcm4329-bt should be the same.
> 
>>   		max-speed = <3000000>;
>>   		vbat-supply = <&vcc_3v3>;
>>   		vddio-supply = <&vcc_3v3>;
>> @@ -222,7 +222,7 @@ &usdhc1 {
>>   	status = "okay";
>>
>>   	brcmf: wifi@1 {
>> -		compatible = "brcm,bcm43430a1-fmac", "brcm,bcm4329-fmac"; /* muRata 1DX */
>> +		compatible = "brcm,bcm4329-fmac"; /* muRata 1DX or 1YN */
> 
> driver have not check "brcm,bcm43430a1-fmac".
> 
> Look like driver can work for both CHIP without modify dts.
Sure, the driver can work even with the current DT, but the DT isn't 
accurate as it describes compatible string specifically for the 1DX 
part. This change makes the DT use more generic compatible which fits 
both 1DX and 1YN parts. And it also fixes the comment accordingly.

