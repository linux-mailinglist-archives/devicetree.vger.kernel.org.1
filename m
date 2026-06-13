Return-Path: <devicetree+bounces-311261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GdwBJF4SLWpQawQAu9opvQ
	(envelope-from <devicetree+bounces-311261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:18:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0153967E1C5
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:18:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kwiboo.se header.s=fe-e1b5cab7be header.b=OAHCPxkJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311261-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311261-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kwiboo.se;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E77DF306B7EF
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A22138236E;
	Sat, 13 Jun 2026 08:18:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CCE345CBE
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 08:18:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781338701; cv=none; b=X8QYFpbEO48i2uXb1WPDRP+gmGCoZ0Kb42mtycMces2YtGD1KCV6kitz0/+Sem+rugJGi75QUMSmwyzehLNbhAAbAKpYXguTv5j3itUeiNoMqJuXNkGBazbe6iPI0cOsr20EHWjuX+VcTpOXT8xauZcU2YuPq420pVljIWz94Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781338701; c=relaxed/simple;
	bh=E1P/mosDI0v9P4PQ9JaDFS3TLFgzbFmLVuCWgYJ1TEw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hlTN6N7ASQdsxfDEXgLTRx5jlDStsKZABL+hQJP1Sw14+5hJDC4Mls6vvDfyT2ht0pD+1QjtIKoa7leWwpopcS0fmTmIQH3nU+XaEdBQOxj9P0dtww5EOvikPr29J7lOOQyrUtRx3tq57BPSC82HXaBMLTSNR6hAejKv+RA37U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=OAHCPxkJ; arc=none smtp.client-ip=121.127.44.66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1781338698;
 bh=xpDULfvSGqlETs98W87UX/kuF4lM1kjk45D89odlqmI=;
 b=OAHCPxkJufymq9QStuXkAlwjzUbNH1KpoHFsvSYcPnjtQ8eeFo4AAi1SUQgulgtirOLVFihxe
 SGv5sZfMlSKzuqwzmXANS20DI5++h2wq+ZTlA8e6vE7ke4/UCttAP7ebKhr3ITmWnaWwxypS21Z
 KgOC1DwX8AiGgrXyoMl6qUPDH/A/OqCslNjljZDTMZlVRTrvKy4+8sTz1UvyNBvNBYqLHkQj7W0
 Ab4uGdRmhFq2/EBsNqMjNBslqzSI/sk9eZ1+sM4qYg8MzADcP6bQYO3RvFEJ9+DNp1rsuaf7sKE
 e4iLbhFx6WyjrjOWDtNjILQxnIDJPClGhvN44rwwz2kw==
X-Forward-Email-ID: 6a2d12469b8e0435f022b519
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.26
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <0e6466aa-a153-446b-b31c-e9b331573358@kwiboo.se>
Date: Sat, 13 Jun 2026 10:18:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v4 7/9] arm64: dts: rockchip: rk356x: Add the NPU and
 its IOMMU
To: MidG971 <midgy971@gmail.com>
Cc: tomeu@tomeuvizoso.net, ogabbay@kernel.org, heiko@sntech.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ulf.hansson@linaro.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 iommu@lists.linux.dev, linux-kernel@vger.kernel.org, xxm@rock-chips.com,
 chaoyi.chen@rock-chips.com, finley.xiao@rock-chips.com,
 diederik@cknow-tech.com
References: <20260613070116.438906-1-midgy971@gmail.com>
 <20260613070116.438906-8-midgy971@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260613070116.438906-8-midgy971@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311261-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ulf.hansson@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-pm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:chaoyi.chen@rock-chips.com,m:finley.xiao@rock-chips.com,m:diederik@cknow-tech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0153967E1C5

Hi Midgy,

On 6/13/2026 9:01 AM, MidG971 wrote:
> From: Midgy BALON <midgy971@gmail.com>
> 
> The RK3568 has an NVDLA-derived NPU at fde40000 with its own IOMMU at
> fde4b000. Add both nodes (disabled by default) and the NPU power-domain
> child under the PMU power-controller, and point rockchip,pmu at the PMU
> syscon that controls the NPU NoC bus-idle.
> 
> Besides the SCMI compute clock, assign the CRU CLK_NPU so the NPU AXI
> bus clock comes up at 200 MHz rather than the 12 MHz boot default.
> 
> The power-domain deliberately carries no pm_qos: qos_npu sits behind the
> NPU NoC, which is gated until the NPU is brought up, so a genpd power-off
> QoS save would fault reading it.
> 
> Signed-off-by: Midgy BALON <midgy971@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> index 64bdd8b7754b5..313db59c1aed8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -512,6 +512,13 @@ power-domain@RK3568_PD_GPU {
>  				#power-domain-cells = <0>;
>  			};
>  
> +			pd_npu: power-domain@RK3568_PD_NPU {
> +				reg = <RK3568_PD_NPU>;
> +				clocks = <&cru ACLK_NPU_PRE>,
> +					 <&cru HCLK_NPU_PRE>;
> +				#power-domain-cells = <0>;
> +			};
> +
>  			/* These power domains are grouped by VD_LOGIC */
>  			power-domain@RK3568_PD_VI {
>  				reg = <RK3568_PD_VI>;
> @@ -572,6 +579,37 @@ power-domain@RK3568_PD_RKVENC {
>  		};
>  	};
>  
> +	rknn_core_0: npu@fde40000 {
> +		compatible = "rockchip,rk3568-rknn-core";
> +		reg = <0x0 0xfde40000 0x0 0x1000>,
> +		      <0x0 0xfde41000 0x0 0x1000>,
> +		      <0x0 0xfde43000 0x0 0x1000>;
> +		reg-names = "pc", "cna", "core";
> +		interrupts = <GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_NPU>, <&cru HCLK_NPU>,
> +			 <&scmi_clk SCMI_CLK_NPU>, <&cru PCLK_NPU_PRE>;
> +		clock-names = "aclk", "hclk", "npu", "pclk";
> +		assigned-clocks = <&scmi_clk SCMI_CLK_NPU>, <&cru CLK_NPU>;
> +		assigned-clock-rates = <200000000>, <600000000>;

This looks strange, the SCMI clk can be seen as a virtual clock that
changes between normal CRU NPU clk and a PVTPLL NPU clk (depending on
rate). 200 MHz, a typical opp-suspend value (switch to CRU clk instead
of PVTPLL), will set the CLK_NPU rate to 200 MHz, then setting CLK_NPU
to 600 MHz (the lowest rate that activates PVTPLL mode) outside of SCMI
control looks strange.

Suggest you only set SCMI NPU clk rate to 200 or 400 MHz and drop any
special handling, e.g. noc_init, to closer match RK3588 and defer any
use of PVTPLL clk to a future series that also adds OPP support.

> +		resets = <&cru SRST_A_NPU>, <&cru SRST_H_NPU>;
> +		reset-names = "srst_a", "srst_h";
> +		power-domains = <&power RK3568_PD_NPU>;
> +		rockchip,pmu = <&pmu>;

This looks wrong, the rockchip,pmu prop is typically used to reference
PMU GRF, see i.e. pinctrl node, not the power-management that is seem to
be correctly abstracted using power-domains above, please drop this prop.

Regards,
Jonas

> +		iommus = <&rknn_mmu_0>;
> +		status = "disabled";
> +	};
> +
> +	rknn_mmu_0: iommu@fde4b000 {
> +		compatible = "rockchip,iommu";
> +		reg = <0x0 0xfde4b000 0x0 0x40>;
> +		interrupts = <GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-names = "aclk", "iface";
> +		clocks = <&cru ACLK_NPU>, <&cru HCLK_NPU>;
> +		power-domains = <&power RK3568_PD_NPU>;
> +		#iommu-cells = <0>;
> +		status = "disabled";
> +	};
> +
>  	gpu: gpu@fde60000 {
>  		compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
>  		reg = <0x0 0xfde60000 0x0 0x4000>;


