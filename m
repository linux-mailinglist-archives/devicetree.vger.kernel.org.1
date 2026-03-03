Return-Path: <devicetree+bounces-270691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPMaDbYlp2k3fAAAu9opvQ
	(envelope-from <devicetree+bounces-270691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 19:17:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A5A1F523F
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 19:17:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 86030300A7D9
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 18:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F047536683D;
	Tue,  3 Mar 2026 18:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ixit.cz header.i=@ixit.cz header.b="hQAbXY4Z"
X-Original-To: devicetree@vger.kernel.org
Received: from ixit.cz (ixit.cz [185.100.197.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D527381B07;
	Tue,  3 Mar 2026 18:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.100.197.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772561716; cv=none; b=Iqeqlsv1G0K8cCaxjP+CFx3ZTR7WWyFIODnkfagvRSl43wwjMGJv/xL1hR8Cskr0Vb7l8Fh0h+mXlNQav6RTaAeN71PIFAqo4zps9PYacx9+6pCVaXwZOAkA9paf52jBRP7/LeeTAc8PDrw43TpexIVj2xh1SpUAzR/aggOaV+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772561716; c=relaxed/simple;
	bh=4TTpOPJIVrYRzF4VduTyERqWyy/UhdOuRAeGDElHi5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qV77n7jRd+BicBVtemEfjXrXfHcowBNFBRDSCpOTq9I6shEtV666xt1iA45Ls0Ss0O4EpD3Y2selLnt7wBm/Tr/KolcTsrEHqPJY8YP1ApmDsvee0sj+BZmQwgrua+LfP8yGitV6TlY8CZRycJ9wlJ2MoJaAODpJlpnqefok0Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ixit.cz; spf=pass smtp.mailfrom=ixit.cz; dkim=pass (1024-bit key) header.d=ixit.cz header.i=@ixit.cz header.b=hQAbXY4Z; arc=none smtp.client-ip=185.100.197.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ixit.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ixit.cz
Received: from [IPV6:2a02:f000:10bd:e301::1d7] (unknown [IPv6:2a02:f000:10bd:e301::1d7])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id 68CD35341816;
	Tue, 03 Mar 2026 19:15:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1772561701;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=zRSFB+Kow30kkyNQlPlB1H4dALbfz4Gh6BYXFVdhCK4=;
	b=hQAbXY4ZflAn48ecmR/w9PncxD6iQM73aeR+ItGW2FGeaCdaYE3p0zAweg7Qpz7/ytG3yS
	WkL5bYLQd4aKRxO5UI+yBG5jJ1xjZA46iMZF7naSJAmHQMaogdPEazlyKdh4Mol7P5ZRPs
	YWNnr4Kka+DrEHXh9zf0Z9TejKx68Gg=
Message-ID: <7bccfc13-de1b-4464-b97f-ee9e98a8713a@ixit.cz>
Date: Tue, 3 Mar 2026 19:14:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Use reference PCIe clock
 generator for BPI-R2-Pro
To: Charalampos Mitrodimas <charmitro@posteo.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Martin Filla <freebsd@sysctl.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v2-0-04665e55d5a8@ixit.cz>
 <20260303-rk3568-bri-r2-pro-fix-pcie-v2-2-04665e55d5a8@ixit.cz>
 <87fr6gn780.fsf@posteo.net>
Content-Language: en-US
From: David Heidelberg <david@ixit.cz>
Autocrypt: addr=david@ixit.cz; keydata=
 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
In-Reply-To: <87fr6gn780.fsf@posteo.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: A3A5A1F523F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ixit.cz,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ixit.cz:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270691-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ixit.cz:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[david@ixit.cz,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ixit.cz:dkim,ixit.cz:email,ixit.cz:mid,sysctl.cz:email,sntech.de:email]
X-Rspamd-Action: no action

On 03/03/2026 18:38, Charalampos Mitrodimas wrote:
> David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org> writes:
> 
>> From: David Heidelberg <david@ixit.cz>
>>
>> Describe properly PCIe clock, which allows us correct the
>> toplogy (removing the vcc3v3-{minipcie,ngff} dependency on pi6c as
>> supply) and adding the clock dependency in the PCIe nodes.
>>
>> Suggested-by: Heiko Stuebner <heiko@sntech.de>
>> Tested-by: Martin Filla <freebsd@sysctl.cz>
>> Signed-off-by: David Heidelberg <david@ixit.cz>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 45 +++++++++++++++-------
>>   1 file changed, 31 insertions(+), 14 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>> index d02b82c5f979a..a071cb67579c4 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>> @@ -120,18 +120,13 @@ pcie_refclk_gen: pcie-refclk-gen-clock {
>>   		clock-frequency = <100000000>;
>>   	};
>>   
>> -	vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
>> -		compatible = "regulator-fixed";
>> -		regulator-name = "vcc3v3_pcie";
>> -		regulator-min-microvolt = <3300000>;
>> -		regulator-max-microvolt = <3300000>;
>> -		enable-active-high;
>> -		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
>> -		startup-delay-us = <200000>;
>> -		vin-supply = <&vcc5v0_sys>;
>> +	pcie_refclk: pcie-refclk-clock {
>> +		compatible = "gpio-gate-clock";
>> +		clocks = <&pcie_refclk_gen>;
>> +		#clock-cells = <0>;
>> +		enable-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
>>   	};
>>   
>> -	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
>>   	vcc3v3_minipcie: regulator-vcc3v3-minipcie {
>>   		compatible = "regulator-fixed";
>>   		regulator-name = "vcc3v3_minipcie";
>> @@ -142,10 +137,9 @@ vcc3v3_minipcie: regulator-vcc3v3-minipcie {
>>   		pinctrl-names = "default";
>>   		pinctrl-0 = <&minipcie_enable_h>;
>>   		startup-delay-us = <50000>;
>> -		vin-supply = <&vcc3v3_pi6c_05>;
>> +		vin-supply = <&vcc3v3_sys>;
>>   	};
>>   
>> -	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
>>   	vcc3v3_ngff: regulator-vcc3v3-ngff {
>>   		compatible = "regulator-fixed";
>>   		regulator-name = "vcc3v3_ngff";
>> @@ -156,7 +150,7 @@ vcc3v3_ngff: regulator-vcc3v3-ngff {
>>   		pinctrl-names = "default";
>>   		pinctrl-0 = <&ngffpcie_enable_h>;
>>   		startup-delay-us = <50000>;
>> -		vin-supply = <&vcc3v3_pi6c_05>;
>> +		vin-supply = <&vcc3v3_sys>;
>>   	};
>>   
>>   	vcc5v0_usb: regulator-vcc5v0-usb {
>> @@ -586,12 +580,23 @@ rgmii_phy1: ethernet-phy@0 {
>>   
>>   &pcie30phy {
>>   	data-lanes = <1 2>;
>> -	phy-supply = <&vcc3v3_pi6c_05>;
>> +
>>   	status = "okay";
>>   };
>>   
>>   &pcie3x1 {
>>   	/* M.2 slot */
>> +	/*
>> +	 * The board has a gpio-controlled "pcie_refclk" generator,
>> +	 * so add it to the list of clocks.
>> +	 */
>> +	clocks = <&cru ACLK_PCIE30X1_MST>, <&cru ACLK_PCIE30X1_SLV>,
>> +		 <&cru ACLK_PCIE30X1_DBI>, <&cru PCLK_PCIE30X1>,
>> +		 <&cru CLK_PCIE30X1_AUX_NDFT>,
>> +		 <&pcie_refclk>;
>> +	clock-names = "aclk_mst", "aclk_slv",
>> +		      "aclk_dbi", "pclk", "aux",
>> +		      "ref";
> 
> Hi,
> 
> The DT binding in rockchip-dw-pcie-common.yaml defines clock-names as a
> positional array:
> 
>      items:
>        - const: aclk_mst
>        - const: aclk_slv
>        - const: aclk_dbi
>        - const: pclk
>        - const: aux
>        - const: pipe   <-- position 5
>        - const: ref    <-- position 6
> 
> With "ref" at position 5, this would fail dtbs_check because the schema
> expects "pipe" there.
> 
> Other boards that include the ref clock (rk3588-rock-5-itx,
> rk3588-jaguar) include "pipe" at position 5 and "ref" at position 6. The
> rk3568 has CLK_PCIE30X1_PIPE_DFT available in the CRU header.
> 
> Should the pipe clock be included before ref to match the binding
> schema?

Good catch, I'll put pipe  before the ref addition.

I'll let my friend test these changes and I'll submit another version incl the pipe.

David

[...]

