Return-Path: <devicetree+bounces-276416-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NNOCVqwuGl5hwEAu9opvQ
	(envelope-from <devicetree+bounces-276416-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 02:37:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2A02A2960
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 02:37:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 76982301451A
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 01:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71A533EB0E;
	Tue, 17 Mar 2026 01:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="MQeOlmq0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49242.qiye.163.com (mail-m49242.qiye.163.com [45.254.49.242])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F2215C158;
	Tue, 17 Mar 2026 01:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.242
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773711444; cv=none; b=HHM9azAVolRFMVaPbFp6EcknACu4h9razktyPhPxFZMWbpGyhJCHhJYP1XReWr38xijnP5MCgeClN/7fKVBOl3X+99cTi01hGc93v9JCg/S8XWZOXKI63WuOJcXN9YvNgP8C3D++HRy7rooaRq1Ii4sIk2OMBdi1YjdHcxKT5/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773711444; c=relaxed/simple;
	bh=Yj/IL/AN4ZOti1DnHpYxFCvLegKnfxksNderjPk9Pg4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z8gUESjMgOf7+KPsQohdtulg45yPCEhdH9lKTBhXoiGenIHtiECUIKfPuccaPLw4YpWL12bRKxY2sfWwOgunC2xJMwpNiRA+5IL532ixWyJgYn4d0Durz/gkVTKLG6IZVRYpCNW17qx1V9r3NIXD0gf4COUI5oVS7pP7SgG0cHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=MQeOlmq0; arc=none smtp.client-ip=45.254.49.242
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 372f3216c;
	Tue, 17 Mar 2026 09:37:10 +0800 (GMT+08:00)
Message-ID: <05a8012d-c1f7-417b-96f8-ec1a41993b26@rock-chips.com>
Date: Tue, 17 Mar 2026 09:37:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] arm64: dts: rockchip: Add eDP node for RK3576
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, alchark@gmail.com,
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 luca.ceresoli@bootlin.com, dianders@chromium.org, m.szyprowski@samsung.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260310105307.309765-1-damon.ding@rock-chips.com>
 <20260310105307.309765-3-damon.ding@rock-chips.com>
 <9590182.CDJkKcVGEf@workhorse>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <9590182.CDJkKcVGEf@workhorse>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9cf970940603a3kunm76417074222a43
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh4YSVZOGUpITUwaShhPQxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=MQeOlmq07ycIc1QL4tGgjDuL85uSHPI3xkw6nYsJa7yU+1prZ8PKktKJMqK5SwPdJufqOaA4RldAN9jPxB19GDSRAGpXfK0/ea/DXI3LlkAZIgPQorilo6arCjAGHm5nL0FwSnygNzNpV9fBwJmiWVLAnNUnmmEJVMailCWpYOU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3Q89cxIkHSk/a2RjqYAjgiexXPdpx/jNB/mz4sMPZKU=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276416-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[collabora.com,rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,rock-chips.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid,collabora.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.1:email,27dc0000:email]
X-Rspamd-Queue-Id: 7F2A02A2960
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Nicolas,

On 3/16/2026 7:31 PM, Nicolas Frattaroli wrote:
> On Tuesday, 10 March 2026 11:53:05 Central European Standard Time Damon Ding wrote:
>> Add support for the eDP output on RK3576 SoC.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3576.dtsi | 28 ++++++++++++++++++++++++
>>   1 file changed, 28 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> index a86fc6b4e8c4..14900a66d3e1 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> @@ -1446,6 +1446,34 @@ hdmi_out: port@1 {
>>   			};
>>   		};
>>   
>> +		edp: edp@27dc0000 {
>> +			compatible = "rockchip,rk3576-edp";
>> +			reg = <0x0 0x27dc0000 0x0 0x1000>;
>> +			clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO0_ROOT>;
>> +			clock-names = "dp", "pclk", "hclk";
>> +			interrupts = <GIC_SPI 365 IRQ_TYPE_LEVEL_HIGH>;
>> +			phys = <&hdptxphy>;
>> +			phy-names = "dp";
>> +			power-domains = <&power RK3576_PD_VO0>;
>> +			resets = <&cru SRST_EDP0_24M>, <&cru SRST_P_EDP0>;
>> +			reset-names = "dp", "apb";
>> +			rockchip,grf = <&vo0_grf>;
>> +			status = "disabled";
>> +
>> +			ports {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				edp_in: port@0 {
>> +					reg = <0>;
>> +				};
>> +
>> +				edp_out: port@1 {
>> +					reg = <1>;
>> +				};
>> +			};
>> +		};
>> +
>>   		sai7: sai@27ed0000 {
>>   			compatible = "rockchip,rk3576-sai";
>>   			reg = <0x0 0x27ed0000 0x0 0x1000>;
>>
> 
> Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> By cross-referencing the TRM, I checked the address, the IRQ number,
> and the power domain, and verified that there are no new check_dtbs
> warnings introduced.
> 
> 

Thanks for the review.

Best regards,
Damon


