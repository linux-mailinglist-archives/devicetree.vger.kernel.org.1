Return-Path: <devicetree+bounces-266544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHBlJe9DlmmYdAIAu9opvQ
	(envelope-from <devicetree+bounces-266544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 23:57:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A5515ABBA
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 23:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BE58D30166C6
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 22:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 144163385BE;
	Wed, 18 Feb 2026 22:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yandex.com header.i=@yandex.com header.b="O66KIAXF"
X-Original-To: devicetree@vger.kernel.org
Received: from forward502a.mail.yandex.net (forward502a.mail.yandex.net [178.154.239.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DE02E7BB5;
	Wed, 18 Feb 2026 22:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.154.239.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771455469; cv=none; b=Ul7CQLOcTYmpCrWN+6+OIgQK5Zzs5Eu3H2s6Fz4JAMJ6zKMTlL4BBFnU0dDsEiR7QgRAyOnYBoZjzxxji1sFrsgW5RECjivvORDIjbnxYreWdhbZ5Lp5nDkrGNUAcaVsFA1uCaMFBQOWvg4LwCT8OmM4bJoGZm0Y7pbkMKgBd1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771455469; c=relaxed/simple;
	bh=fgMmZnbKYp0KDcEBDm/iIMxSRDGGCagD+0uhWbcuGRg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gwfMxJ2Zpm1LocSe7WhZsf1fa4byYdKwGtMqyDssf4wLc8GylN6xdz4CS0urDcK76H5ruwoLx4S8BmAPV95OhioqzncHBJsnxEq6P+j+LHaJ10X6rtTq4lJ41kT0NjHaecNSepX1wqbKgXYGp0OaZSwxXI/y+YkjvfSE5fZjc7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yandex.com; spf=pass smtp.mailfrom=yandex.com; dkim=pass (1024-bit key) header.d=yandex.com header.i=@yandex.com header.b=O66KIAXF; arc=none smtp.client-ip=178.154.239.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yandex.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yandex.com
Received: from mail-nwsmtp-smtp-production-main-94.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-94.vla.yp-c.yandex.net [IPv6:2a02:6b8:c15:290e:0:640:f317:0])
	by forward502a.mail.yandex.net (Yandex) with ESMTPS id 8729889CF4;
	Thu, 19 Feb 2026 01:52:05 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-94.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 1qjcVXSGC4Y0-8pHEunKh;
	Thu, 19 Feb 2026 01:52:04 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1771455124; bh=CKsYIBP1nS9baNuNPf0y7xcvIP54RWOTm98i27xusoI=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=O66KIAXFmfXw8rz4pI+7zzue0DPxJrPIy0aeyjkO+U5tkkEkgxOltbJc9noMwz41e
	 3f9Up+VtsxkvBYrT3f+TEddoOWmDlbun1b1OcoveKDg3YfFMn5/gAYkLLgE9rUkEba
	 fu98ukhOnyvr9PBN86WEp1TJGPNRinIP2W3AmBaw=
Authentication-Results: mail-nwsmtp-smtp-production-main-94.vla.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <bd10ba64-2e56-4f1b-ba82-73ef59c87e2a@yandex.com>
Date: Wed, 18 Feb 2026 23:52:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: Add USB2.0 PHY for RK3368
To: Vladimir Oltean <olteanv@gmail.com>, WeiHao Li <cn.liweihao@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250909132958.26423-1-cn.liweihao@gmail.com>
 <20250909132958.26423-3-cn.liweihao@gmail.com>
 <20260212165550.mju3377fvphdsqoe@skbuf>
Content-Language: en-US, ar-EG
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <20260212165550.mju3377fvphdsqoe@skbuf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[yandex.com,none];
	R_DKIM_ALLOW(-0.20)[yandex.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[yandex.com:+];
	TAGGED_FROM(0.00)[bounces-266544-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbx6244@yandex.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[yandex.com]
X-Rspamd-Queue-Id: 02A5515ABBA
X-Rspamd-Action: no action



On 2/12/26 17:55, Vladimir Oltean wrote:
> On Tue, Sep 09, 2025 at 09:29:56PM +0800, WeiHao Li wrote:
>> RK3368 has one USB2.0 PHY with two ports, This adds device tree node for
>> it.
>>
>> Signed-off-by: WeiHao Li <cn.liweihao@gmail.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3368.dtsi | 29 ++++++++++++++++++++++++
>>  1 file changed, 29 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
>> index 1b21787269..b09e431a64 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
>> @@ -766,11 +766,40 @@ cru: clock-controller@ff760000 {
>>  	grf: syscon@ff770000 {
>>  		compatible = "rockchip,rk3368-grf", "syscon", "simple-mfd";
>>  		reg = <0x0 0xff770000 0x0 0x1000>;
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
> 

> This introduces a device tree warning. You cannot mix nodes with no unit
> address (io-domains) with nodes with a unit address (usb2-phy@700) on
> the same hierarchical level. You have to pick a format and stick to it.

nope

Please add rockchip,rk3368-usb2phy to the list in grf.yaml in the same patch that you change rockchip,inno-usb2phy.yaml
Requires a bit of SOC and PHY maintainers coordination.

Place dt-binding compatible change patches before the patch that uses it. (patch 3 before patch 1)
due to: ./scripts/checkpatch.pl --strict 

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/soc/rockchip/grf.yaml#n244

> 
>>  
>>  		io_domains: io-domains {
>>  			compatible = "rockchip,rk3368-io-voltage-domain";
>>  			status = "disabled";
>>  		};
>> +
>> +		u2phy: usb2-phy@700 {
>> +			compatible = "rockchip,rk3368-usb2phy";
>> +			reg = <0x700 0x2c>;
>> +			clocks = <&cru SCLK_OTGPHY0>;
>> +			clock-names = "phyclk";
>> +			clock-output-names = "usb480m_phy";
>> +			#clock-cells = <0>;
>> +			status = "disabled";
>> +
>> +			u2phy_otg: otg-port {
>> +				interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
>> +					     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
>> +					     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
>> +				interrupt-names = "otg-bvalid", "otg-id",
>> +						  "linestate";
>> +				#phy-cells = <0>;
>> +				status = "disabled";
>> +			};
>> +
>> +			u2phy_host: host-port {
>> +				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
>> +				interrupt-names = "linestate";
>> +				#phy-cells = <0>;
>> +				status = "disabled";
>> +			};
>> +		};
>>  	};
>>  
>>  	wdt: watchdog@ff800000 {
>> -- 
>> 2.47.2
>>
>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 


