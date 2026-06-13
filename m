Return-Path: <devicetree+bounces-311246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VCetDY8JLWrSZQQAu9opvQ
	(envelope-from <devicetree+bounces-311246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:41:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C31167E000
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:41:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kwiboo.se header.s=fe-e1b5cab7be header.b=hAl4WAxR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311246-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311246-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kwiboo.se;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA50A30485FC
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 07:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A5035AC17;
	Sat, 13 Jun 2026 07:40:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FB031D757
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 07:40:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781336458; cv=none; b=fQZlDsWxmGoagwfVY+b1u+aph2wB0pdcDQ1wuQdIceTfcHKz4FQVLrmTLb4tNdGOPgyvUKtdBLBikNwP8qZlCsm1pT3JaHmZNK3JfkEMPviKvqUv3x5iWMhFX3MGJyZrSWwAW5RSut+xGVVzVvq0+YjWZWDi4Cu0Trb1V0sfeAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781336458; c=relaxed/simple;
	bh=vKxsuOnHElxYLABaCL+A4fJkjVhRZLYiku7c7WLPJOM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DxFV5F+xB6S1nb0hsttmL0Hak5qEwx+nK20D0fClL5IKVmfshiZNlAFx0eyAUrqGNtDNQfGIocPcWc7NK5wHSyatAlEglsaHQrJGt4aQhpHY+fPJ4MGFLk9kTxaIJ73MOMZ+0TnGteCwMXLMCa8MxscwPtUQ3VCz7pwvGdo1FN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=hAl4WAxR; arc=none smtp.client-ip=121.127.44.66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1781336455;
 bh=qHK4xcuZuyY3VWkKdAkc6bfYV2q4RPDKWtvw4p7wT+w=;
 b=hAl4WAxRxs/ZvxN8Tsnh39Vx+Wd0eFIeV3w0nae8LiNv2Gtw5njjh6FZRT+97DDJZwCTQmOXD
 PZJZVtykDki1fme3042lw0BQve7J8dGRjnRFyke/P7/3WhSf2sCYv7qaHngIvZjhF6ZFuJaEU+V
 9tXkGvk7in9AyhYJyQmUpgwiMO1sYxhU7pQl1AUVCzteGdaOK2b8isJBMyRJTRrDA+8DIdOCg6V
 dAUh3ti8QlkEuvmKk8GL53oEoLIRjWAcOD4pO6R6fpNmucBH67wce6YbdiEsB71qjMOeWkU8uJo
 eMSMPB/bHhlM3IiS2VYfj2ilKbOYSAEPTEYSDCEkhkCQ==
X-Forward-Email-ID: 6a2d09837f2a6d9c19af5dbd
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.26
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <e0f044df-9d34-4e6e-aa48-9e4227b4bdf7@kwiboo.se>
Date: Sat, 13 Jun 2026 09:40:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v4 8/9] arm64: dts: rockchip: rk3568-rock-3b: Enable
 the NPU
To: MidG971 <midgy971@gmail.com>
Cc: "tomeu@tomeuvizoso.net" <tomeu@tomeuvizoso.net>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>, "heiko@sntech.de"
 <heiko@sntech.de>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "xxm@rock-chips.com" <xxm@rock-chips.com>,
 "chaoyi.chen@rock-chips.com" <chaoyi.chen@rock-chips.com>,
 "finley.xiao@rock-chips.com" <finley.xiao@rock-chips.com>,
 "diederik@cknow-tech.com" <diederik@cknow-tech.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
 <20260613070116.438906-9-midgy971@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260613070116.438906-9-midgy971@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311246-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ulf.hansson@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-pm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:chaoyi.chen@rock-chips.com,m:finley.xiao@rock-chips.com,m:diederik@cknow-tech.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C31167E000

Hi Midgy,

On 6/13/2026 9:01 AM, MidG971 wrote:
> From: Midgy BALON <midgy971@gmail.com>
> 
> Enable the NPU and its IOMMU on ROCK 3B and wire vdd_npu as the NPU
> power domain's domain-supply, so genpd brings the rail up and down with
> the domain (the domain is marked need_regulator). The PVTPLL compute
> clock is brought up later by the driver.
> 
> The rail is no longer kept always-on, so pin it to 1000 mV (the NPU's
> 1 GHz operating voltage; the driver runs a fixed compute rate with no
> devfreq voltage scaling) and mark it boot-on, so it is up before the
> power domain de-idles the NPU NoC at power-on.
> 
> Signed-off-by: Midgy BALON <midgy971@gmail.com>
> ---
>  .../arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> index 69001e453732e..d3f9776c2bdc3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> @@ -330,9 +330,10 @@ regulator-state-mem {
>  
>  			vdd_npu: DCDC_REG4 {
>  				regulator-name = "vdd_npu";
> +				regulator-boot-on;

There is no need for the NPU in the bootloader, do not use DT as a
workaround for software issues.

This series mention the PVTPLL NPU clk and seem to contains some
workarounds related to how the PVTPLL clock is handled in TF-A.

The PVTPLL block typically require the pclk and power domain enabled to
function, and this series seem to add workarounds to try and ensure this,
e.g. with noc_init to activate PVTPLL usage.

I would suggest that you do not involve the PVTPLL clock in this initial
NPU support for RK3568, set CLK_NPU to 400 MHz and use it instead of the
SCMI clock, or keep SCMI clk rate less than or equal to 400 MHz to
disable PVTPLL_NEED mode in TF-A.

In a future series you can extend Linux with a proper PVTPLL clk driver
and OPP support for the rocket driver to correctly ensure pclk and pd is
enabled when a PVTPLL clock is managed.

>  				regulator-initial-mode = <0x2>;
> -				regulator-min-microvolt = <500000>;
> -				regulator-max-microvolt = <1350000>;
> +				regulator-min-microvolt = <1000000>;
> +				regulator-max-microvolt = <1000000>;

Please describe the HW, do not add workarounds for software issues or
shortcomings.

Regards,
Jonas

>  				regulator-ramp-delay = <6001>;
>  
>  				regulator-state-mem {
> @@ -787,3 +788,16 @@ vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
>  		remote-endpoint = <&hdmi_in_vp0>;
>  	};
>  };
> +
> +&pd_npu {
> +	domain-supply = <&vdd_npu>;
> +};
> +
> +&rknn_core_0 {
> +	npu-supply = <&vdd_npu>;
> +	status = "okay";
> +};
> +
> +&rknn_mmu_0 {
> +	status = "okay";
> +};


