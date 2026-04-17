Return-Path: <devicetree+bounces-288264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKPjFQ5i4mkJ5gAAu9opvQ
	(envelope-from <devicetree+bounces-288264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 18:38:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FE941D37A
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 18:38:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 942E63038F4E
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 16:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5F1D33B6D0;
	Fri, 17 Apr 2026 16:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="I4chTyUm"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BF53491D0;
	Fri, 17 Apr 2026 16:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776443668; cv=none; b=AohO/5vbVLOVccAgeTSNjanMfzSizfNfd6oLJBldNctnAuaYUsHOZlTygx5Wvluijifb0lDiHjAf1p/8RyjhTiwjmsbiMOJWEtF1eNFT/xATeLfiQyuzBcRUmMCM35ljXoR4C/fvTrkYR3raOisaT813NbgvGSiLLCJybO3ZCp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776443668; c=relaxed/simple;
	bh=g4lO6rW3zr2fdZujOWSFg/NCpM1f2D3pE6jpFlC8CCU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k3BFkqQkbBiR1/QdVeZnfDwdxi3u4+Q8yDQTfuvXJuhNJCSbrLnRqFzd0g634YSdOJz5sWrQvaeieo0SbTlmhWNnh7vz6N6LfT6QYYYf0ia6LvzxwZFq6LmC88Dt05HBXBOgNBFekznzj8oqLcYlnLbWJqUdr15CMeeLwSOV/Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=I4chTyUm; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776443658;
	bh=g4lO6rW3zr2fdZujOWSFg/NCpM1f2D3pE6jpFlC8CCU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=I4chTyUmARiCkAr8wAFIH6QrsG06odlCvgC9ew0ysyOYaBoBNeF4h2hi3EPiHgj2d
	 h0S1z1pVk33KxZZ5bQmbi7wDKw49dHifiBD0eKTZijhNZofq+IsgZAQ866QEfLEs5/
	 rAgFTBkDO74HFToE20td/XX5qDqfEdROD6lkl1d8RUYVzdGmOu96Mjp4szcXzCRYds
	 5c3pWvNFxcvA/lNfV5/V0NkKehYKxZRWUYz0k6qsfbX1t4jA/5/AuEd8zXqQLDub5j
	 2L2/GYTAfEzNG26ITUgJOMQ/mzapqsVDX67xPWde4PfXYezDFQcnJ6vq6VQlCwi5Yq
	 YufoG8GVwzHCQ==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EE40617E127F;
	Fri, 17 Apr 2026 18:34:17 +0200 (CEST)
Message-ID: <62f51359-9d91-4107-917b-cd722c7321c2@collabora.com>
Date: Fri, 17 Apr 2026 19:34:17 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3576-luckfox-core3576
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <20260417-dts-rk-frl-enable-gpios-v1-5-a19c0dd8c9f6@collabora.com>
 <2000470.6tgchFWduM@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2000470.6tgchFWduM@phil>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288264-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,collabora.com:dkim,collabora.com:mid]
X-Rspamd-Queue-Id: D5FE941D37A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Heiko,

On 4/17/26 2:32 PM, Heiko Stuebner wrote:
> Hi Cristian,
> 
> the comments below apply sort of to all patches in that series.
> 
> Am Freitag, 17. April 2026, 11:24:39 Mitteleuropäische Sommerzeit schrieb Cristian Ciocaltea:
>> The board exposes the GPIO4_C6 line to control the voltage bias on the
>> HDMI data lines.  It must be asserted when operating in HDMI 2.1 FRL
>> mode and deasserted for HDMI 1.4/2.0 TMDS mode.
>>
>> Wire up the HDMI node to the GPIO line using the frl-enable-gpios
>> property and drop the line from the vcc_5v0_hdmi regulator to allow
>> adjusting the bias when transitioning between TMDS and FRL operating
>> modes.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi | 9 ++++-----
>>  1 file changed, 4 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
>> index 749f0a54b478..93ae37699366 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
>> @@ -140,10 +140,7 @@ regulator-state-mem {
>>  
>>  	vcc_5v0_hdmi: regulator-vcc-5v0-hdmi {
>>  		compatible = "regulator-fixed";
>> -		enable-active-high;
>> -		gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
>> -		pinctrl-names = "default";
>> -		pinctrl-0 = <&hdmi_con_en>;
>> +		regulator-always-on;
>>  		regulator-min-microvolt = <5000000>;
>>  		regulator-max-microvolt = <5000000>;
>>  		regulator-name = "vcc_5v0_hdmi";
> 
> I think this regulator was sort of a complete hack, to set that
> gpio to some sort of default state, by declaring it as hdmi-pwr-supply.
> 
> Only 2 rk3576 boards seem, to use that hack, so I think as that "regulator"
> is completely functionless now, the whole thing could be removed?

Ack, let's just drop it.

> 
> 
>> @@ -231,6 +228,8 @@ &gpu {
>>  };
>>  
>>  &hdmi {
>> +	pinctrl-0 = <&hdmi_txm0_pins &hdmi_tx_scl &hdmi_tx_sda &hdmi_frl_en>;
>> +	frl-enable-gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_LOW>;
> 
> this should be sorted the other way around I think.
> 
> Also please provide a pinctrl-names property too. If for whatever reason
> the dw-hdmi aquires a 2nd pinctrl state in the future, this makes sure
> board DTs are staying in the "old" compatible mode until they are adapted.

Just to make sure I fully understand, the convention is that 

  pinctrl-names = "default";

should be always provided, even when the node overrides an existing pinctrl-0
property?

E.g. in rk3576.dtsi we have:

  hdmi: hdmi@27da0000 {
    ...
    pinctrl-names = "default";
    pinctrl-0 = <&hdmi_txm0_pins &hdmi_tx_scl &hdmi_tx_sda>;
    ...
  }

Hence I omitted pinctrl-names which doesn't change and just appended
&hdmi_frl_en to pinctrl-0's original value.

> 
> 
>>  	status = "okay";
>>  };
>>  
>> @@ -655,7 +654,7 @@ &pcie0 {
>>  
>>  &pinctrl {
>>  	hdmi {
>> -		hdmi_con_en: hdmi-con-en {
>> +		hdmi_frl_en: hdmi-frl-en {
> 
> pinctrl names should ideally match the naming in schematics, for example the
> "HDMI0_TX_ON_H" for jaguar and tiger. This makes it way easier to> go from DT
> to schematics and back.

I opted for a more descriptive name that could be used consistently across all
boards, given that not all schematics are publicly available.

You make a fair point though, we should probably stick with the pretty terrible
hdmi[N]_tx_on_h naming instead.

Thanks,
Cristian

