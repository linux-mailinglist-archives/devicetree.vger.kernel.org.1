Return-Path: <devicetree+bounces-265448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLDfBiBdj2mZQgEAu9opvQ
	(envelope-from <devicetree+bounces-265448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:19:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 698EA13893B
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 18:19:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36891300D934
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26C15352C4E;
	Fri, 13 Feb 2026 17:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="gesJMZ9s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A06F2DB79C
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 17:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771003164; cv=none; b=DL3Solkbntb3b9W3PJn60dnDJvOswJUOxrGeilhvy5gWZL3AkXzGrZ8DvheoMOw7C5Ebpg2NcXFq8I7LpKrFH0H5XjWR/M26yxsJay999/Wps2Lk1DBoS7b5ewQ0bHDHrVrlp7eF8cNlJOEKE+WyZfo+GUceAqUM3wYy/utQ6Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771003164; c=relaxed/simple;
	bh=mxAcHR03CkEz1XecMXKJcquJSIc8TZiNdDZqIrE2LY0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iwsH83IOZK1AGqYv6UhMqJ6EAB3RfO30M+SKu/wA3oxEe3qPAFoeqA6mXWKuiuJ3JZbWeCGzTQOCF3LvTJKnaL8XPfL34H4vtW+/MpQl+vf+ONR76HilHqqwtjPOTilR4T8Aw/wnmZ2T14XUyj0XpSc2gjJZKsGQtXxR6afsyN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=gesJMZ9s; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1771003155;
 bh=WLNCPhcI2W5xrHq/Yf54FeNp8YmonAJeCVTYOXhtjrs=;
 b=gesJMZ9s4xYM6FjoZkTBxlceQ7ltlIV0FhBB8iJaEkKndWxKTCEDOksziS96oMT4u4NUr0Eu1
 l3nFlQyf9iaIKIQZpMxmBAng73M1L29VBr4joSZ86J349+B+Cw5ola1MrvkUAcrL9IINZ3eePYn
 DOU86u6RgUpDq4GVGOIFOY9wOrduX+w0DPwXCKaDKB1/4dt3zXFx85RQTUmp5e7mA+eR6LXZYaq
 M9PEjY/GBjSoBm/i4IoO2WHDxz+FsbBuymYYSKP1NtuXY5TWyPTc1aWI7OKELY2WhkohlCvCZKQ
 Ca4M7asMeMrqp85OJ3So2/GppTpWsndw6/UquC7qOt2w==
X-Forward-Email-ID: 698f5d0c11dfcf99c4b0aeb1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <9083266d-2b18-4b7a-bc72-1d873edb7cdf@kwiboo.se>
Date: Fri, 13 Feb 2026 18:19:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3b: Add phy-supply to
 pcie30phy
To: MidG971 <midgy971@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>, Claude <noreply@anthropic.com>
References: <20260213151452.535527-1-midgy971@gmail.com>
 <fe4c9352-7bf9-70cb-97ed-322fc739f409@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <fe4c9352-7bf9-70cb-97ed-322fc739f409@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265448-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,rock-chips.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_MULTI_FAIL(0.00)[tor.lore.kernel.org:server fail,anthropic.com:server fail,kwiboo.se:server fail];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[anthropic.com:email,kwiboo.se:mid,kwiboo.se:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 698EA13893B
X-Rspamd-Action: no action

Hi,

On 2/13/2026 5:10 PM, Shawn Lin wrote:
> Hi
> 
> 在 2026/02/13 星期五 23:14, MidG971 写道:
>> The PCIe 3.0 PHY requires its power supply regulator to be enabled
>> before initialization. Without the phy-supply property, the PHY
>> driver does not ensure the regulator is enabled, causing SRAM
>> initialization to timeout with "lock failed" errors:

This is incorrect, as already mentioned the ref clock is modeled as a
regulator, and this regulator is both boot-on and always-on and should
not be referenced as the phy-supply, and the reason why I did not do it
in the initial board device tree submission.

>>
>>    phy phy-fe8c0000.phy.1: phy poweron failed --> -110
>>    rockchip-snps-pcie3-phy fe8c0000.phy: PCIe3PHY lock failed 0x6890000
>>    rockchip-pcie fe280000.pcie: phy init failed: -110

How did you manage to get this? Did you use wrong/bad boot firmware?

Please try mainline U-Boot for the ROCK 3B target, that will ensure that
both the ref clock "regulator" and the two Ethernet phys are reset
before entering Linux (or other OS) using the mainline Linux device tree
for this board.

>>
>> This results in NVMe devices in the M.2 slot not being detected.
>>
>> Add phy-supply referencing vcc3v3_pi6c_03 regulator (which controls
>> the PI6C PCIe clock generator power via GPIO0_D4) to ensure proper
>> power sequencing during PHY initialization.

As already mentioned, this is not a phy regulator so adding it as a
phy-supply does not correctly reflect the hardware.

>> Fixes: 846ef7748fa9 ("arm64: dts: rockchip: Add Radxa ROCK 3B")
>> Signed-off-by: MidG971 <midgy971@gmail.com>
>> Co-developed-by: Claude <noreply@anthropic.com>
>> Signed-off-by: Claude <noreply@anthropic.com>
> 
> Should put your SOB at last.
> 
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
>> index c5f67dd6dfd9..a1b2c3d4e5f6 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
>> @@ -404,6 +404,7 @@ &pcie2x1 {
>>   };
>>
>>   &pcie30phy {
>> +	phy-supply = <&vcc3v3_pi6c_03>;
> 
> As a fix which need to be backported, it looks fine for just one-line
> change.

I disagree, as you mention below, and as mentioned in a comment in the
device tree, the ref clk generator is modeled as a regulator that is
boot-on and always-on that is normally enabled by boot firmware.

> However, the whole commit message is misleading. power supply for
> pcie30phy is powred up with all other phys' when booting, for instance,
> USB, otherwise all IP using PHY should not work, not just PCIe. So 
> actually it's not the power but the input refclk, and apprently pi6c
> is a 100MHz clock generator which was designed to be a regulator by
> mistake in the first place.
> 
> If you would like to clean it up later, you could use a 
> gated-fixed-clock like:

Agree, if anything please re-model the ref clk regulator as a
gated-fixed-clock instead of adding an incorrect phy-supply.

And please try mainline U-Boot targeted for you board if you intend on
using mainline Linux for your board, should most likely fix your PCIe
issue.

Regards,
Jonas

> 
> https://lore.kernel.org/linux-rockchip/35e97a41-b88b-f526-351f-d4c5f70ee4e9@rock-chips.com/T/#u
> 
> 
>>   	status = "okay";
>>   };
>>
>> --
>> 2.39.5

