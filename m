Return-Path: <devicetree+bounces-264552-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IlGGN7aii2kJXgAAu9opvQ
	(envelope-from <devicetree+bounces-264552-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 22:27:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5471411F651
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 22:27:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7502130117EC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:27:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AE863385B9;
	Tue, 10 Feb 2026 21:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="Xm7xfRtu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E399A328611;
	Tue, 10 Feb 2026 21:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770758834; cv=none; b=C6+hoy6N2yVO8qoh1qr/EYAqRBVYy403CHmUxcqIfLgHZb21KI1MWTCf7ZlxronvtGGnoIfypygbk653EMvRAaD0ZmEp+Wko2MT9InBKbr8kykmKaCTNWtPxpszw2eRvmTieuoy/1EkkFUnkmZ54y05IP1D3PR70kWrGbHvTT/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770758834; c=relaxed/simple;
	bh=Ci9CcHO6GuGwt60GQnShVhOAfRO/3l7W3nLwg4phJDo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WWqLj8V4lENqcy8zpLGwWwx3RvK9fLTN5LextguiQoHaG/i1sguuTMBApLViMlMX3Kobj9gS6h9ngU++dQ1QwhJAQGUCdO7VtUSB0EZw036FHgMZvr5v0YdPChvkNqTdu9gj0rw0u3/1D9rR+To0d+oddquThP6wFasArQkUCQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=Xm7xfRtu; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 698601104B0;
	Tue, 10 Feb 2026 22:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1770758824;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=XscM2E/dW4y4NolWAJoTD+vo2fj8gfXABnlEwyo6sXU=;
	b=Xm7xfRtu7rKY0s1c0XVZowP1Y/sM8fFxLM5sgeZdV3g9v1Ur17sdSlLE6cbc9OwrEcJYb0
	Iucm/iKk8tZLjRGqy/AmrsQnViiR7VbSN57j6DsU4Rc5oPUZtPWLs3+IuM+Ne9hzcJOP1B
	/cv5T67VrL0E1dALltYXFbKPM6ixICLwtLAXlDttr1TrTa7jyEeJOuDtLjsXWK8i3pTISA
	HO4iYJ4geFUqlPv2Kmc9pYZuCOEN01OKZ5UZ2jRTNLk/01k/l2ju+484LNHKOquFKLeg7a
	y3QHvhf2snwN8ttBzwvPrlgYdS9Vde5xCLzZxu61hUN/MfsbCmzkN6FNoTCW0w==
Message-ID: <077a52af-add3-473b-bf3c-d3ae9c6a2874@nabladev.com>
Date: Tue, 10 Feb 2026 17:12:11 +0100
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
 <9760a129-ee03-4556-b98b-2625739b21fa@nabladev.com>
 <aYtSV8oynehECLPM@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <aYtSV8oynehECLPM@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264552-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nabladev.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,dh-electronics.com,kernel.org,gmail.com,pengutronix.de,vger.kernel.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nabladev.com:mid,nabladev.com:dkim,0.0.0.1:email]
X-Rspamd-Queue-Id: 5471411F651
X-Rspamd-Action: no action

On 2/10/26 4:44 PM, Frank Li wrote:
> On Mon, Feb 09, 2026 at 09:41:24PM +0100, Marek Vasut wrote:
>> On 2/9/26 8:17 PM, Frank Li wrote:
>>
>> Hello Frank,
>>
>>>> diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi
>>>> index 75486e1b0c15f..a0adcd3fe1229 100644
>>>> --- a/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi
>>>> +++ b/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi
>>>> @@ -201,7 +201,7 @@ &uart2 {
>>>>    	 * the speed can be increased accordingly.
>>>>    	 */
>>>>    	bluetooth: bluetooth {
>>>> -		compatible = "brcm,bcm43430a1-bt"; /* muRata 1DX */
>>>> +		compatible = "brcm,bcm4329-bt"; /* muRata 1DX or 1YN */
>>>
>>> in driver, brcm,bcm43430a1-bt and brcm,bcm4329-bt should be the same.
>>>
>>>>    		max-speed = <3000000>;
>>>>    		vbat-supply = <&vcc_3v3>;
>>>>    		vddio-supply = <&vcc_3v3>;
>>>> @@ -222,7 +222,7 @@ &usdhc1 {
>>>>    	status = "okay";
>>>>
>>>>    	brcmf: wifi@1 {
>>>> -		compatible = "brcm,bcm43430a1-fmac", "brcm,bcm4329-fmac"; /* muRata 1DX */
>>>> +		compatible = "brcm,bcm4329-fmac"; /* muRata 1DX or 1YN */
>>>
>>> driver have not check "brcm,bcm43430a1-fmac".
>>>
>>> Look like driver can work for both CHIP without modify dts.
>> Sure, the driver can work even with the current DT, but the DT isn't
>> accurate as it describes compatible string specifically for the 1DX part.
>> This change makes the DT use more generic compatible which fits both 1DX and
>> 1YN parts. And it also fixes the comment accordingly.
> 
> Okay, can you descript more clear at commit message, especially how driver
> can auto detect 1DX and 1YN.
This is already there, see "drop the more specific compatible string and 
let the driver auto-detect the chip type."

What would you prefer to change there ?

