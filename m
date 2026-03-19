Return-Path: <devicetree+bounces-277791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HG6CmL6u2mzqwIAu9opvQ
	(envelope-from <devicetree+bounces-277791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:30:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 694552CC025
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:30:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCC363087C63
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6AA3D412D;
	Thu, 19 Mar 2026 13:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="xaN8pnuM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997BC3A5E62
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773926998; cv=none; b=dbEDP544d8xwjjYNoQyeSylTCKG87c8HdS+7j8s5tZBu3HJmEZEVvC5Rf/mGTlxFsueJuBVGePIYoGB6uO21VZes2VdpKxggiP82Qd/+oHdfjTzQTaiHcdA3udR/mmNTf6enV2ICEsTvoIGK8QeukkFKCL1atJOupmOtCtD7J8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773926998; c=relaxed/simple;
	bh=JYbjWUccocMwsrrkXH0IjzMyPDyWgcW4NAEwo5csPMo=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=I5qksBAywyocp/2u5kahpabl80QJlcIxfycboq1/Ln1PuewAINroOGVT+Qzajh8FVAqeBkQwW9wLROLMXm+aU5ngj6LK11NFmZbZ9Bso5+EGZu6oTeeTgeg4sPfx9ObrbBqUeqQw3TDTJYHdb+TX3t3d9iSqBbjC7b45FFPRYS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=xaN8pnuM; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: References: Cc:
 To: From: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1773926994;
 bh=mXlN5DoBtmc48+CasdwvQDpS+DXItTqESoFoYWJajJ0=;
 b=xaN8pnuMa2uWRPVh1e+MPJeQxLpBE0Tdg5jPDdxa5wAyMIZdw+qRDFV5QJJ/qCOekDU9/MdIO
 +ZbnOeL5LoARmpI1VYdZoN8ZcPEXht+Qqv28olJ6j67Dkx65V/cGKbomWMjmURoCn7JcpE0z/D+
 z0m1AHkjCaM+jhdHcWtfrsb5bqKW81KJreTCQI1h1rozA+sDQDDx5S8jLSFRK/RMKumU/w/OSeG
 cehgrjC2bt0JzyrHTlKHqwstQXrKzgNzWyvMCy1rvQ7f5y8pmjqtnwReeV/lspvGR1kQiFUI4oS
 JIAY98Mx/Tmr7o+8ATP661GUPafXr7t48j5hhmxLMUIw==
X-Forward-Email-ID: 69bbfa5193199f63becdd5bc
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.6.50
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <384dfd20-cf74-415a-a2df-a2c257d8032f@kwiboo.se>
Date: Thu, 19 Mar 2026 14:29:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
From: Jonas Karlman <jonas@kwiboo.se>
To: MidG971 <midgy971@gmail.com>
Cc: "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "shawn.lin@rock-chips.com" <shawn.lin@rock-chips.com>
References: <20260319102247.32260-1-midgy971@gmail.com>
 <0adb7e19-62ea-4578-a448-f5d1e709ee28@kwiboo.se>
Content-Language: en-US
In-Reply-To: <0adb7e19-62ea-4578-a448-f5d1e709ee28@kwiboo.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-277791-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 694552CC025
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi again,

On 3/19/2026 2:19 PM, Jonas Karlman wrote:
> Hi,
> 
> On 3/19/2026 11:22 AM, MidG971 wrote:
>> The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to
>> provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.
>> This chip is currently modeled only as a fixed regulator
>> (vcc3v3_pi6c_03), with no clock output representation.
>>
>> The PI6C20100 is a clock generator, not a power supply. Model it
>> properly as a gated-fixed-clock, following the pattern established
>> for the Rock 5 ITX and other boards with similar PCIe clock buffer
>> chips.
>>
>> The regulator node is kept as-is since it controls the power supply
>> to the PI6C20100 chip via GPIO0_D4. The new gated-fixed-clock node
>> references this regulator as its vdd-supply and provides a proper
>> 100MHz clock output. The pcie3x2 node is updated to include the
>> pipe and reference clocks, matching the approach used in
>> rk3588-rock-5-itx.dts.
>>
>> Assisted-by: Claude:claude-3-opus
>> Signed-off-by: MidG971 <midgy971@gmail.com>
> 
> Typically you should use your real name in SoB line, kernel docs state:
> 
>   using a known identity (sorry, no anonymous contributions.)
> 
> https://docs.kernel.org/process/submitting-patches.html
> 
>> ---
>>
>> Changes since v2 [1]:
>>  - Fix AI attribution: use Assisted-by tag instead of Signed-off-by (Shawn)
>>  - Add missing pipe clock (CLK_PCIE30X2_PIPE_DFT) to pcie3x2 clocks
>>    override (Shawn, referencing David's patch [2])
>>
>> Changes since v1 [3]:
>>  - Drop phy-supply approach entirely (Jonas, Shawn)
>>  - Model PI6C20100 as gated-fixed-clock instead
>>  - Wire reference clock to pcie3x2 controller
>>  - Follow pattern from rk3588-rock-5-itx.dts
>>
>> [1] https://lore.kernel.org/linux-rockchip/20260304132957.684616-1-midgy971@gmail.com/
>> [2] https://lore.kernel.org/linux-rockchip/d981fa84-bd05-ac9d-98ca-89ee47177829@rock-chips.com/T/#m6a8289609e6a60691d3c06358b6322c7aa5e43d1
>> [3] https://lore.kernel.org/linux-rockchip/20260213151452.535527-1-midgy971@gmail.com/
>>
>>  arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 21 ++++++++++++++++++++-
>>  1 file changed, 20 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
>> index c5f67dd6dfd9..1a2b3c4d5e6f 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
>> @@ -56,7 +56,16 @@
>>  		};
>>  	};
>>
>> -	/* pi6c pcie clock generator */
>> +	/* PI6C20100 PCIe reference clock buffer (100MHz) */
>> +	pcie30_refclk: pcie-clock-generator {
>> +		compatible = "gated-fixed-clock";
>> +		#clock-cells = <0>;
>> +		clock-frequency = <100000000>;
>> +		clock-output-names = "pcie30_refclk";
>> +		vdd-supply = <&vcc3v3_pi6c_03>;
> 
> The vcc3v3_pi6c_03 regulator should also be removed in this patch,
> as you state in the commit message, it is not a power supply.
> 
> Please convert to use enable-gpios prop.

I looked at wrong schematics, please disregard this comment :-)

Regards.
Jonas

> 
> Regards,
> Jonas
> 
>> +	};
>> +
>> +	/* PI6C20100 power supply - active-high GPIO0_D4 */
>>  	vcc3v3_pi6c_03: regulator-3v3-vcc-pi6c-03 {
>>  		compatible = "regulator-fixed";
>>  		enable-active-high;
>> @@ -553,6 +562,15 @@
>>  };
>>
>>  &pcie3x2 {
>> +	clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
>> +		 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
>> +		 <&cru CLK_PCIE30X2_AUX_NDFT>,
>> +		 <&cru CLK_PCIE30X2_PIPE_DFT>,
>> +		 <&pcie30_refclk>;
>> +	clock-names = "aclk_mst", "aclk_slv",
>> +		      "aclk_dbi", "pclk", "aux",
>> +		      "pipe", "ref";
>>  	pinctrl-names = "default";
>>  	pinctrl-0 = <&pcie30x2m1_pins>;
>>  	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
>> --
>> 2.39.5
>>
> 


