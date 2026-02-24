Return-Path: <devicetree+bounces-267672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBqOClQCnWnhMQQAu9opvQ
	(envelope-from <devicetree+bounces-267672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:43:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 650AC1809F8
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:43:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 50B11303CEE9
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 01:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BFC1234966;
	Tue, 24 Feb 2026 01:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="VcOSGa3q"
X-Original-To: devicetree@vger.kernel.org
Received: from bg5.exmail.qq.com (bg5.exmail.qq.com [43.155.80.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5581F92E
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=43.155.80.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771897424; cv=none; b=XRo7Hj+PLvA+W/zonegR4l7CYQmC5P4y0L0497RIY7c6lPWUveO9U0ja4IXjN6gMciLBWMMFjODmII0/ESZ9IJxzj3Erd/yKR55PCCJTgK+g6c+jxCK/v1YH2eo81FboOTdfrWtzwkTEj9FoIHkLVX4E80P/BsF4T0Z/Zj2qPho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771897424; c=relaxed/simple;
	bh=zE6oDgoZ8DzQ325tzSHApdA0VNsV6EWu6tNL1PkA3jc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F4z+4t6oBA5qKNe3j415rCPMTSqDOzGnd7ST+OCHkCEhMkLG1ExOPWgnbKmNr3JCRwwNW9ZnNnxavYZeB92Lm0gStJ03xo/FkDkcJFg68RbS0AvmOIQxcxlXZsfWhWT0+hboNWbOXQymNiK+2eLcmQclJCX+yA8xKUprmz570Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=VcOSGa3q; arc=none smtp.client-ip=43.155.80.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1771897343;
	bh=Jcc+Bm636zbBsjTNZ3EK3Eue5zZ9zHiTiOlMdsEG1Jc=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=VcOSGa3qsRmuOcmKvj/Dke3MbVeXFPDmIjSGVU/Uh6YJvGQCanaHUr5/1on2LicyJ
	 xMbVFeZhHSWDm0Y/Kj6L6EHz06BcVGIAd/DAu7Uka80a9GHaeHzPw/GwhIJFGOAz69
	 hg/Wlslts+7lbalHKhRWitnyNwjWsEgVGicTHcLU=
X-QQ-mid: zesmtpgz3t1771897338te0671743
X-QQ-Originating-IP: VxWANHq/kQn9OZsEiJ4CYippYDR23qbKKQHdJan0+js=
Received: from [127.0.0.1] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 24 Feb 2026 09:42:17 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17092131372750963368
Message-ID: <C28FA037F24F3E74+97535c93-cc16-4bd5-b436-db7cdc0bb580@airkyi.com>
Date: Tue, 24 Feb 2026 09:42:02 +0800
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
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
 <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NVgUsgecbtFOUkTH+U2yxknL5s9pEbBwWrJgzv2os8snM7fa2YfLveCT
	qqRjDqwe/is7Jxgv4P97rRTMtfDOWPkXee73aeJDIGJiER1q+o0+2W4WTTMEsHnOu3d51IX
	/KLcVUrruHXWUsdosYtMicdrRv86ztzv9yRGHVYrT5XQO4bCA0bga4yUZyPKMwCk3jny7du
	sfhO5qtpbqTaem1bPoQ24OFT50Fb8N9xaAN766csZjPwJTMAB0p4ghmaocFkHpOwyAG3Y7J
	akEyR+t0MZWS6dc5gr8cueCV39RGcVmcXS7BxxsUF0FsZw0CvsQrIqzcDoXMTAdRQqijzHR
	nhb2elj5XR9h2khReLcqw6HsE67rP7bQVhTRcbb5IibQ8o0bW0FE/SRSoM5LjQcP6cAn9uP
	T7zs5Q+aV3+23DCfeb0aB1I3/o6I9DvGOvHJxgKgh26vf+3mRr2GFtDolyWDr/u+C/9vh0k
	ipvovA96nAkPOfN4TN0OrSKgm/D8xqnkx/KEGL+aotkDRRSCc7i7Q23HPTpiGG+rIUvu/nu
	IzigGEb+B2Lt6c/MdZ2WFjO64W+dYxvGEoiVhQQjq+ab5MaPjSnH0ubJje6RPSlgmdoRj0G
	klR8Sdn64MEdkEB/1Buaf5Suc/8pw1wqo15z//TMzWvqQBq8lpg7Vpn/AtGCAkaEOcjJad5
	kf2eSUPG5LgtqKi1qRUw4VxjX5XCab1xEuGnxWoRZVknrVCtHdIu6eVf3xyqppoVLAlMVa2
	5Rvx4lzkDRI1kzymShHdHi23dHXyhxkHFxrJO7MO7bYaRe490iC4i+Z8Mv5iBrcZq2c4/EY
	Y3uDnongwLGurOPR+2COojNi+TLBjX9iWS2k61lJaZmzibD10S0/xbAk6k2ScYvPK2pO3Cz
	zsOcD8qAifg82b9RvFAj6z49kRV75Fnri3dye/GMGOXpoUmAB2ya+TP0d3jqASLKyBzpJU9
	Xu81tADr/Ls4x6aPia0vNdMIkGhYyeVyV8Bma1PAjsBmmf1IAkvshVHhEaDkVWScZY1Ey8H
	ZH77PbpbFoOi1EFwYztkyKz/VvXLw=
X-QQ-XMRINFO: M/715EihBoGS/VAi3I5lh1UT7FCdJekTaA==
X-QQ-RECHKSPAM: 0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[airkyi.com,none];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267672-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_MUA_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[airkyi.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,rk3588_pd_venc1:email,rk3588_pd_venc0:email,airkyi.com:mid,airkyi.com:dkim]
X-Rspamd-Queue-Id: 650AC1809F8
X-Rspamd-Action: no action

On 2/13/2026 7:11 PM, Shawn Lin wrote:
> Hi Chaoyi
> 
> 在 2026/02/13 星期五 18:32, Chaoyi Chen 写道:
>> Hello Shawn,
>>
>> On 2/13/2026 10:35 AM, Shawn Lin wrote:
>>> Thus the board dts files could add property for these nodes.
>>>
>>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>>> ---
>> You should also add pmdomain driver.
>>
>> I've encountered a similar issue before.
>> Finley told me to use the new PMIC, and that would solve the problem.
>> Maybe you're using the same old PMIC as I did :)
>>
> 
> I don't know what does new PMIC mean? New RK806 driver or new RK806
> hardware?

It is new RK806 hardware. According to Finley, end users are currently using 
this new type of PMIC.


> 
> The problem is these power domains rely on voltage supply which could
> be probed late after pmdomain driver, then the system enables the PD and
> access the IP without PD actually enabled(even w/o voltage supply
> enabled).
> 

If I'm not mistaken, the new hardware will automatically powers up the supply
corresponding to VDEC/VNEC.


> 
> 
>>
>>>
>>>   arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 8 ++++----
>>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>> index 7fe9593..4fb8888 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>>> @@ -907,7 +907,7 @@
>>>                   #size-cells = <0>;
>>>                   #power-domain-cells = <0>;
>>>   -                power-domain@RK3588_PD_RKVDEC0 {
>>> +                pd_rkvdec0: power-domain@RK3588_PD_RKVDEC0 {
>>>                       reg = <RK3588_PD_RKVDEC0>;
>>>                       clocks = <&cru HCLK_RKVDEC0>,
>>>                            <&cru HCLK_VDPU_ROOT>,
>>> @@ -917,7 +917,7 @@
>>>                       pm_qos = <&qos_rkvdec0>;
>>>                       #power-domain-cells = <0>;
>>>                   };
>>> -                power-domain@RK3588_PD_RKVDEC1 {
>>> +                pd_rkvdec1: power-domain@RK3588_PD_RKVDEC1 {
>>>                       reg = <RK3588_PD_RKVDEC1>;
>>>                       clocks = <&cru HCLK_RKVDEC1>,
>>>                            <&cru HCLK_VDPU_ROOT>,
>>> @@ -926,7 +926,7 @@
>>>                       pm_qos = <&qos_rkvdec1>;
>>>                       #power-domain-cells = <0>;
>>>                   };
>>> -                power-domain@RK3588_PD_VENC0 {
>>> +                pd_venc0: power-domain@RK3588_PD_VENC0 {
>>>                       reg = <RK3588_PD_VENC0>;
>>>                       clocks = <&cru HCLK_RKVENC0>,
>>>                            <&cru ACLK_RKVENC0>;
>>> @@ -937,7 +937,7 @@
>>>                       #size-cells = <0>;
>>>                       #power-domain-cells = <0>;
>>>   -                    power-domain@RK3588_PD_VENC1 {
>>> +                pd_venc1: power-domain@RK3588_PD_VENC1 {
>>>                           reg = <RK3588_PD_VENC1>;
>>>                           clocks = <&cru HCLK_RKVENC1>,
>>>                                <&cru HCLK_RKVENC0>,
>>
> 
> 
> 

-- 
Best, 
Chaoyi



