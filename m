Return-Path: <devicetree+bounces-267699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFVbNbgYnWlTMwQAu9opvQ
	(envelope-from <devicetree+bounces-267699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 04:19:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 560201815B9
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 04:19:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A6543051843
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:19:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEDA6296BDC;
	Tue, 24 Feb 2026 03:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="kOWA5HPK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49217.qiye.163.com (mail-m49217.qiye.163.com [45.254.49.217])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BF023815D
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 03:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.217
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771903156; cv=none; b=gt5OkvDhY65LuehE2ijbvS/+FWcvJRE2qEj5/OYw/HOiyzUa6jK8XU6ApwHTnOBHEVJjrlFDQlYGNTn1VOJQd5W1oPfENCi1lX4ne58uLAy9F1aD3BogYeNFnjKMsMxuktElAJeWUZ3f2Ki6R2pm0OV0p3xSJvTSsO7O4M54EXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771903156; c=relaxed/simple;
	bh=FoyLQEkuqQW+ez4uWUvpHX1deK3T4NlzkXPc2oQMKuc=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=Q++b0GvlBqR64iEJJFYZzPscsdhRWcVkKnxnYjn9IJYjV32+ku2WktTtqNYrMGoAuJVWQeCHNLt4I+9OUxPgF8ZU+/oVFjKPgjCixJIY/JRlrfN3aU2kWh5u/F5lEjpniC0O2YvFq5HE45fJsRwRdBG4oFXBrqMWxP0MsGyRQsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=kOWA5HPK; arc=none smtp.client-ip=45.254.49.217
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 34bf77547;
	Tue, 24 Feb 2026 11:14:01 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add node name for
 RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
To: Chaoyi Chen <kernel@airkyi.com>
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
 <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
 <C28FA037F24F3E74+97535c93-cc16-4bd5-b436-db7cdc0bb580@airkyi.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <54ba06df-b9eb-f4de-0254-afc3b8fcb0ab@rock-chips.com>
Date: Tue, 24 Feb 2026 11:14:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <C28FA037F24F3E74+97535c93-cc16-4bd5-b436-db7cdc0bb580@airkyi.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c8da3b33509cckunm4fd9e8659c9d03
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkwaSlYdTkwYQ0JOQxpPTUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVU
	pLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=kOWA5HPKq1t2S4LMXPzcHbvRfwGsQn6q4o1yVtjCJa1zZ1coXy1w0YYRyLDQTmW/wNIM2Jia9ETpK+7jIHFJXreFLw2rx9bu4qBKGx9sTwl3Dm4NGTpz1e8IT1vSJJcNX709xjEGiUXyBMkaUEmaGlvjnzEmhT5XZibzT0Qj2VY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=oY/aVs2MBsqFBnrxFsG7MMgaG2m19nI2+4Sd2HfxOD4=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267699-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:mid,rock-chips.com:dkim,rock-chips.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rk3588_pd_rkvdec0:email,rk3588_pd_venc0:email]
X-Rspamd-Queue-Id: 560201815B9
X-Rspamd-Action: no action



在 2026/02/24 星期二 9:42, Chaoyi Chen 写道:
> On 2/13/2026 7:11 PM, Shawn Lin wrote:
>> Hi Chaoyi
>>
>> 在 2026/02/13 星期五 18:32, Chaoyi Chen 写道:
>>> Hello Shawn,
>>>
>>> On 2/13/2026 10:35 AM, Shawn Lin wrote:
>>>> Thus the board dts files could add property for these nodes.
>>>>
>>>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>>>> ---
>>> You should also add pmdomain driver.
>>>
>>> I've encountered a similar issue before.
>>> Finley told me to use the new PMIC, and that would solve the problem.
>>> Maybe you're using the same old PMIC as I did :)
>>>
>>
>> I don't know what does new PMIC mean? New RK806 driver or new RK806
>> hardware?
> 
> It is new RK806 hardware. According to Finley, end users are currently using
> this new type of PMIC.
> 
> 
>>
>> The problem is these power domains rely on voltage supply which could
>> be probed late after pmdomain driver, then the system enables the PD and
>> access the IP without PD actually enabled(even w/o voltage supply
>> enabled).
>>
> 
> If I'm not mistaken, the new hardware will automatically powers up the supply
> corresponding to VDEC/VNEC.
> 

Thanks for the clarification on the hardware update.

I'm currently using the EVB board for SoC bring-up and post-silicon
validation, which I believe carries the old RK806 hardware. It's also
apparent that many developers (as opposed to end users) are still
relying on the old hardware in the field.

Generally speaking, upstream code has no way to distinguish between the 
old and new PMIC variants solely from the DTS, correct? Given this, I
think we should aim to keep both hardware versions workable in the
upstream code.

> 
>>
>>
>>>
>>>>
>>>>    arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 8 ++++----
>>>>    1 file changed, 4 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>>> index 7fe9593..4fb8888 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>>> @@ -907,7 +907,7 @@
>>>>                    #size-cells = <0>;
>>>>                    #power-domain-cells = <0>;
>>>>    -                power-domain@RK3588_PD_RKVDEC0 {
>>>> +                pd_rkvdec0: power-domain@RK3588_PD_RKVDEC0 {
>>>>                        reg = <RK3588_PD_RKVDEC0>;
>>>>                        clocks = <&cru HCLK_RKVDEC0>,
>>>>                             <&cru HCLK_VDPU_ROOT>,
>>>> @@ -917,7 +917,7 @@
>>>>                        pm_qos = <&qos_rkvdec0>;
>>>>                        #power-domain-cells = <0>;
>>>>                    };
>>>> -                power-domain@RK3588_PD_RKVDEC1 {
>>>> +                pd_rkvdec1: power-domain@RK3588_PD_RKVDEC1 {
>>>>                        reg = <RK3588_PD_RKVDEC1>;
>>>>                        clocks = <&cru HCLK_RKVDEC1>,
>>>>                             <&cru HCLK_VDPU_ROOT>,
>>>> @@ -926,7 +926,7 @@
>>>>                        pm_qos = <&qos_rkvdec1>;
>>>>                        #power-domain-cells = <0>;
>>>>                    };
>>>> -                power-domain@RK3588_PD_VENC0 {
>>>> +                pd_venc0: power-domain@RK3588_PD_VENC0 {
>>>>                        reg = <RK3588_PD_VENC0>;
>>>>                        clocks = <&cru HCLK_RKVENC0>,
>>>>                             <&cru ACLK_RKVENC0>;
>>>> @@ -937,7 +937,7 @@
>>>>                        #size-cells = <0>;
>>>>                        #power-domain-cells = <0>;
>>>>    -                    power-domain@RK3588_PD_VENC1 {
>>>> +                pd_venc1: power-domain@RK3588_PD_VENC1 {
>>>>                            reg = <RK3588_PD_VENC1>;
>>>>                            clocks = <&cru HCLK_RKVENC1>,
>>>>                                 <&cru HCLK_RKVENC0>,
>>>
>>
>>
>>
> 

