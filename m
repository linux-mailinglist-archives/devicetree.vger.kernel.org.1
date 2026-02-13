Return-Path: <devicetree+bounces-265340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJDmFu4Ij2ltHQEAu9opvQ
	(envelope-from <devicetree+bounces-265340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:20:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CA9135B11
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 12:20:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A48CF30934A2
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA9B3357A20;
	Fri, 13 Feb 2026 11:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="OVxjcFhf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15592.qiye.163.com (mail-m15592.qiye.163.com [101.71.155.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F313570C9
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 11:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770981406; cv=none; b=WAAmBjlq2lXnoViCfmL6CFzB7HHLD9lv7gGVOgw+O/JrDPjRNG3qa81o73waHLYuL5gUSoKSrcHMW4NrHe5aHp/Oz9rnOkyoczJDOfjocerYD7JqP7IRv9f/0GgwX+cC9iFheCeqdkfmSaeJeWcXuDwGbp+oiev24C6O70XBvH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770981406; c=relaxed/simple;
	bh=LdkY9AWgmS+vTuatdkNG7W+bF5WKInkducMyIDof6TY=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=juY6+Hz6Q6ekjRolTOeRdFNPn0xGQl7509cmGjH+xMhpFIXi0OPeaNrw4A8I7uRPNi2zwmPPFN7fa70K9308xaPi78CcusPvua1/iXsS0lAzpCqDv2S7+PzinUN7ZRiqdsj9gixoGR9V4JUyDl82UVMbpoZbyauDbnmlctCj3FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=OVxjcFhf; arc=none smtp.client-ip=101.71.155.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 341631483;
	Fri, 13 Feb 2026 19:11:25 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add node name for
 RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
To: Chaoyi Chen <kernel@airkyi.com>
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
Date: Fri, 13 Feb 2026 19:11:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c56b2d02309cckunm7939042d2d84bd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkwfT1YdGB1KHUNOH0tMGkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVU
	pLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=OVxjcFhfxlWGbRcypca3NKULvA9k3vr8qgD28Xz3XiMdlDokms9vcLxYov5RWRz25mxArw1K+w9wlXlXj93M7OyQATK0tgzfHwbM1oLSWDzwDOO3pFiIzwjPiTYzfoMce54tR1h85ScVLxP/bRGbGcd0mF+rw7xZ/sDLBLs2CQ4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=cfrrzneLGcg5FFdQQt3/q570AODDdBAE3SDOF+o9Z9w=;
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
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rk3588_pd_venc1:email,rk3588_pd_rkvdec1:email,rk3588_pd_venc0:email,rock-chips.com:mid,rock-chips.com:dkim,rock-chips.com:email];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265340-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+]
X-Rspamd-Queue-Id: 16CA9135B11
X-Rspamd-Action: no action

Hi Chaoyi

在 2026/02/13 星期五 18:32, Chaoyi Chen 写道:
> Hello Shawn,
> 
> On 2/13/2026 10:35 AM, Shawn Lin wrote:
>> Thus the board dts files could add property for these nodes.
>>
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> ---
> You should also add pmdomain driver.
> 
> I've encountered a similar issue before.
> Finley told me to use the new PMIC, and that would solve the problem.
> Maybe you're using the same old PMIC as I did :)
> 

I don't know what does new PMIC mean? New RK806 driver or new RK806
hardware?

The problem is these power domains rely on voltage supply which could
be probed late after pmdomain driver, then the system enables the PD and
access the IP without PD actually enabled(even w/o voltage supply
enabled).



> 
>>
>>   arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>> index 7fe9593..4fb8888 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
>> @@ -907,7 +907,7 @@
>>   				#size-cells = <0>;
>>   				#power-domain-cells = <0>;
>>   
>> -				power-domain@RK3588_PD_RKVDEC0 {
>> +				pd_rkvdec0: power-domain@RK3588_PD_RKVDEC0 {
>>   					reg = <RK3588_PD_RKVDEC0>;
>>   					clocks = <&cru HCLK_RKVDEC0>,
>>   						 <&cru HCLK_VDPU_ROOT>,
>> @@ -917,7 +917,7 @@
>>   					pm_qos = <&qos_rkvdec0>;
>>   					#power-domain-cells = <0>;
>>   				};
>> -				power-domain@RK3588_PD_RKVDEC1 {
>> +				pd_rkvdec1: power-domain@RK3588_PD_RKVDEC1 {
>>   					reg = <RK3588_PD_RKVDEC1>;
>>   					clocks = <&cru HCLK_RKVDEC1>,
>>   						 <&cru HCLK_VDPU_ROOT>,
>> @@ -926,7 +926,7 @@
>>   					pm_qos = <&qos_rkvdec1>;
>>   					#power-domain-cells = <0>;
>>   				};
>> -				power-domain@RK3588_PD_VENC0 {
>> +				pd_venc0: power-domain@RK3588_PD_VENC0 {
>>   					reg = <RK3588_PD_VENC0>;
>>   					clocks = <&cru HCLK_RKVENC0>,
>>   						 <&cru ACLK_RKVENC0>;
>> @@ -937,7 +937,7 @@
>>   					#size-cells = <0>;
>>   					#power-domain-cells = <0>;
>>   
>> -					power-domain@RK3588_PD_VENC1 {
>> +				pd_venc1: power-domain@RK3588_PD_VENC1 {
>>   						reg = <RK3588_PD_VENC1>;
>>   						clocks = <&cru HCLK_RKVENC1>,
>>   							 <&cru HCLK_RKVENC0>,
> 

