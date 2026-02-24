Return-Path: <devicetree+bounces-267772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFzwAwRnnWlgPQQAu9opvQ
	(envelope-from <devicetree+bounces-267772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:53:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F34A184069
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:53:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 124A9303A890
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 08:52:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E5B736681D;
	Tue, 24 Feb 2026 08:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="WshvWi6l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0146368299
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 08:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771923126; cv=none; b=LDTvYFNMRhPkna70hSej3bJhbgMqxNVup7OYDA5PUvaJKMdKnpv8TF/w27IpN8rXcJZQ6EJ/tkpuRAsHq7xsE4rTvLvBR5YWJiNq/JbWzVQtU1IeCOxpTPF6RvYs9IcQkIAHTZj1i9A/asRskTwBPBAlGpPbVtb1JTjshRn1jLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771923126; c=relaxed/simple;
	bh=UBQcmnoMtwo9xPmb4OhiKbRFH5dQC8fVl66tbOzwU7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pb5n31Z8bVcZpmVsENLUaeaEqWEV+EFSRKkyuc3HIKMy7BoxNHtJdDn1RdNCgnDWi1bJplPW56pSAmVlKz6D98p0yUpo19Fkd+pVO9tmXMzglt4/IR1oEf4NMntFmoj7WaCM4Gh60Vlw0Pw7O7FcW1FH+MReL6d2EENKVk6Iw08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=WshvWi6l; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1771923082;
	bh=1Wp2sN5X1+cc6yF7YHXtMGdZZZ1n3UPWfWNRgLMSVCE=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=WshvWi6lz5BtC677eJb1Qx6RlkxMxZS85S+13d2jEqbEcRy9T13Jv0XOCbboZ+Jmz
	 yVfRsi/TPlw/d585XI4kZer/8QiqlJZyIYBfB17WlCYOBLL37rvEd07BRWQVqB3gt0
	 m2gn6nxavO/dawgQsQ3/jsmzukbxGtgs+3uTGlIw=
X-QQ-mid: esmtpgz10t1771923077t772720b5
X-QQ-Originating-IP: 4pzF/Gr5w8u1j2szuEhtODcV6z8qlwdIkHfAzN30BzU=
Received: from [127.0.0.1] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 24 Feb 2026 16:51:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6182285522596309104
Message-ID: <F5A210373581AADF+afcb86f5-1d02-46cb-9bb9-3f5e0e6ace9d@airkyi.com>
Date: Tue, 24 Feb 2026 16:51:00 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add node name for
 RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "finley.xiao" <finley.xiao@rock-chips.com>
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
 <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
 <C28FA037F24F3E74+97535c93-cc16-4bd5-b436-db7cdc0bb580@airkyi.com>
 <54ba06df-b9eb-f4de-0254-afc3b8fcb0ab@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <54ba06df-b9eb-f4de-0254-afc3b8fcb0ab@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NvxNySBpH0QlOksNl9p6oeC0uvvmwEm553KMkBG3+sJGo0O9cx5+leed
	mjPQbnMyc09Fg+Q4DfHE7bOGm1CGXt4WO+Dk/ApAQp/rK2+2Gj+SJN9TjDqs55UvV7J932j
	TYX0XDZWEoZ320/Qm3gcm7fzCogn1LIhyas4kp0YXDaqRusVgdSMsiK8QIgJOvoyVNaVO4K
	MLULAxJiqkro43su6CN/3aMJ44CuT7+iacBjK+OiBKM7b820nY5SbXsVgGY2wzctwEVh2YJ
	7jSUouhNqNFGG4yygtooFDnL1IwQ7Ngj/tZUF64bkv6RxhZCfbEBFckbdW+Ic138OhbD5fU
	8G8bQiwYRw2AlCxTxh47vayZZW6ICvN/FJ94o9TOMZqODpMWatDGa7b34r3S+EJfO5sY7/B
	h4ulnDDHsKIOfCTIZpCeuoWw4cnBqbkc0gSD+TKicFOm3BX6+dm3Ro9YynzXIP66FSOocoK
	pX+j5s/R7Kkq7m+VD82XJfjXWP5EzFW73dObIGX4oDjH2QgB8g8CSUbmxCYJC2YQaQTcs6U
	VvzTFuicnJtBVmbOP1F7e5DpzFNJVc9wYlzWcJOoz+9971dxQ1IgtMhKRvQgqe9iwXDCZly
	Zw8Q93PTKxnayzKhUJEjHPL7RlFqP0zVxPcgHQ8KoOiJoT5lkPi/nEbr/Y9pNNmP4H11HlM
	x3F2+3WxfL876nbyvgGVo65kYqiYEWhimZMSQEmlWlVEa9yU0czInfUF5JFSlX2NueLMHta
	DgT/cu4CpEiRyxGD5CGYfvtjVgLGUcE9nAYdiGY9o2aKeJ0MLzYM21RS6VGJIuadguEgoaV
	tH52GrGK31k+fKWV5YWm1E3MTLA6EbVOyBLLs4BMdY5evx9A76jMmM23xoJ1zgrt40+W4bB
	JPU1LYMGscwZdhlcBPkM+cpU15dMA13aGs8cFzCDu4w4IucPpqdNa5WGFArcOBWz0u2FI/p
	07wuF40h+PdvWuFOIIe5CYj48ZJDrPR/xj7iu0Z45zMGendm5JWnT2mzo1Nu7SkseN5uGor
	p7OX9ntxiS4iFCj/yko+1+OPTdOU4E1mvgRMd1zKi0tkm/+RPf
X-QQ-XMRINFO: OWPUhxQsoeAVr0nlVs/uubuJpL/3SLbnIQ==
X-QQ-RECHKSPAM: 0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[airkyi.com,none];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267772-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_MUA_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[airkyi.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,airkyi.com:mid,airkyi.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,rk3588_pd_venc1:email,rk3588_pd_rkvdec1:email,rk3588_pd_rkvdec0:email]
X-Rspamd-Queue-Id: 2F34A184069
X-Rspamd-Action: no action

On 2/24/2026 11:14 AM, Shawn Lin wrote:
> 
> 
> 在 2026/02/24 星期二 9:42, Chaoyi Chen 写道:
>> On 2/13/2026 7:11 PM, Shawn Lin wrote:
>>> Hi Chaoyi
>>>
>>> 在 2026/02/13 星期五 18:32, Chaoyi Chen 写道:
>>>> Hello Shawn,
>>>>
>>>> On 2/13/2026 10:35 AM, Shawn Lin wrote:
>>>>> Thus the board dts files could add property for these nodes.
>>>>>
>>>>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>>>>> ---
>>>> You should also add pmdomain driver.
>>>>
>>>> I've encountered a similar issue before.
>>>> Finley told me to use the new PMIC, and that would solve the problem.
>>>> Maybe you're using the same old PMIC as I did :)
>>>>
>>>
>>> I don't know what does new PMIC mean? New RK806 driver or new RK806
>>> hardware?
>>
>> It is new RK806 hardware. According to Finley, end users are currently using
>> this new type of PMIC.
>>
>>
>>>
>>> The problem is these power domains rely on voltage supply which could
>>> be probed late after pmdomain driver, then the system enables the PD and
>>> access the IP without PD actually enabled(even w/o voltage supply
>>> enabled).
>>>
>>
>> If I'm not mistaken, the new hardware will automatically powers up the supply
>> corresponding to VDEC/VNEC.
>>
> 
> Thanks for the clarification on the hardware update.
> 
> I'm currently using the EVB board for SoC bring-up and post-silicon
> validation, which I believe carries the old RK806 hardware. It's also
> apparent that many developers (as opposed to end users) are still
> relying on the old hardware in the field.
> 
> Generally speaking, upstream code has no way to distinguish between the old and new PMIC variants solely from the DTS, correct? Given this, I
> think we should aim to keep both hardware versions workable in the
> upstream code.
>

As far as I know, only early EVBs internal to Rockchip used them.
I think your approach also makes sense :)

>>
>>>
>>>
>>>>
>>>>>
>>>>>    arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 8 ++++----
>>>>>    1 file changed, 4 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>>>> index 7fe9593..4fb8888 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>>>> @@ -907,7 +907,7 @@
>>>>>                    #size-cells = <0>;
>>>>>                    #power-domain-cells = <0>;
>>>>>    -                power-domain@RK3588_PD_RKVDEC0 {
>>>>> +                pd_rkvdec0: power-domain@RK3588_PD_RKVDEC0 {
>>>>>                        reg = <RK3588_PD_RKVDEC0>;
>>>>>                        clocks = <&cru HCLK_RKVDEC0>,
>>>>>                             <&cru HCLK_VDPU_ROOT>,
>>>>> @@ -917,7 +917,7 @@
>>>>>                        pm_qos = <&qos_rkvdec0>;
>>>>>                        #power-domain-cells = <0>;
>>>>>                    };
>>>>> -                power-domain@RK3588_PD_RKVDEC1 {
>>>>> +                pd_rkvdec1: power-domain@RK3588_PD_RKVDEC1 {
>>>>>                        reg = <RK3588_PD_RKVDEC1>;
>>>>>                        clocks = <&cru HCLK_RKVDEC1>,
>>>>>                             <&cru HCLK_VDPU_ROOT>,
>>>>> @@ -926,7 +926,7 @@
>>>>>                        pm_qos = <&qos_rkvdec1>;
>>>>>                        #power-domain-cells = <0>;
>>>>>                    };
>>>>> -                power-domain@RK3588_PD_VENC0 {
>>>>> +                pd_venc0: power-domain@RK3588_PD_VENC0 {
>>>>>                        reg = <RK3588_PD_VENC0>;
>>>>>                        clocks = <&cru HCLK_RKVENC0>,
>>>>>                             <&cru ACLK_RKVENC0>;
>>>>> @@ -937,7 +937,7 @@
>>>>>                        #size-cells = <0>;
>>>>>                        #power-domain-cells = <0>;
>>>>>    -                    power-domain@RK3588_PD_VENC1 {
>>>>> +                pd_venc1: power-domain@RK3588_PD_VENC1 {
>>>>>                            reg = <RK3588_PD_VENC1>;
>>>>>                            clocks = <&cru HCLK_RKVENC1>,
>>>>>                                 <&cru HCLK_RKVENC0>,
>>>>
>>>
>>>
>>>
>>
> 

-- 
Best, 
Chaoyi


