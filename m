Return-Path: <devicetree+bounces-282505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAIGIVyDymkW9gUAu9opvQ
	(envelope-from <devicetree+bounces-282505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 16:06:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9915035C8C8
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 16:06:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EF899302BDC4
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 13:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA3EC3A3E66;
	Mon, 30 Mar 2026 13:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiYGF7hI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AD43A1A27;
	Mon, 30 Mar 2026 13:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774879027; cv=none; b=t6Fxly3Poc70HdYcuvT6jdGW7pXTPI3ZZPZuu2HmCComs79CMyBHGFuUPYhg7Up3suuopLJcHit9UPn2wGyYpFSfvustMV94YO+Zwr+FulN4R9tYwClZN0nLvcObfAGtQ8Pf/dLB/sN6Jk7KVSyUOoMjL4RsNA57/nxAB0otyfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774879027; c=relaxed/simple;
	bh=2CmwQdkoZjLaOUHmcaW1HTlizFIuDL2/ADJxJe9CAXw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y81caPFO3HB9Y2MG5fW1MJtNYWkyG1VnhZF1c8pdoLQc+TwRsmm2JrL1S+SFIqfyJAKDGuXZzgKI8ffnslDejnBffMhV6m9lY3/ALWCRhOrFYZ/7Fx3F1UXs0gd/jhusJHVLbo5qcBF4X2VkJUbFRac/qDCrcTnC4As7oVFFymU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiYGF7hI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35F7EC4CEF7;
	Mon, 30 Mar 2026 13:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774879026;
	bh=2CmwQdkoZjLaOUHmcaW1HTlizFIuDL2/ADJxJe9CAXw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DiYGF7hIFKkTqu3EATepJf0ssCDwEvRATRbJsvImYbbkWdV5e7DnWkVbWKGu2sVZq
	 YmP1fv4+nJ7ifa0lLWiAB1TLFIejxrmf8DU1XM77qoDEUhRkAW/5knmd3BRWYFNtqo
	 gZ1kbj42vbnqqG6ttqSKxEOClmXi7LOIcGBvGyXL/qf/4Hps6zvHPuS5huvldlP3Ng
	 nNHE/fjvp1K/lKD6HrAiFOx5Vqc0RAf0ooar/F6nNcb8PWP718P1ElghKpKRNx6QKQ
	 JFWQHtMle29jtvxhe29lBRwdq+dZyTFBPWCk0ZhH/+IHjnO1Qq8h7pTIsBuo/qMo2+
	 vG4SiascvaKKg==
Date: Mon, 30 Mar 2026 08:57:02 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Le Qi <le.qi@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@oss.qualcomm.com, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: talos: Add GPR node, audio
 services, and MI2S1 TLMM pins
Message-ID: <acqAf9fCi8GPxjkM@baldur>
References: <20260324060405.3098891-1-le.qi@oss.qualcomm.com>
 <20260324060405.3098891-2-le.qi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260324060405.3098891-2-le.qi@oss.qualcomm.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282505-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,0.0.0.6:email,0.47.77.96:email,0.0.0.2:email]
X-Rspamd-Queue-Id: 9915035C8C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 02:04:04PM +0800, Le Qi wrote:
> This patch adds the Generic Pack Router (GPR) node together with

Please avoid phrases such as "This patch". Start your commit message
with a description of the problem or purpose of the patch.

> Audio Process Manager (APM) and Proxy Resource Manager (PRM)
> audio service nodes to the Talos device tree description.
> 
> It also introduces MI2S1 pinctrl states for data0, data1, sck,
> and ws lines, grouped into a single entry at the SoC-level DTSI
> for better reuse and clarity.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 54 +++++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index f69a40fb8e28..cd451a112573 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -19,6 +19,7 @@
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/soc/qcom,gpr.h>

Keep includes sorted alphabetically.

Regards,
Bjorn

>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -1553,6 +1554,20 @@ tlmm: pinctrl@3100000 {
>  			#interrupt-cells = <2>;
>  			wakeup-parent = <&pdc>;
>  
> +			mi2s1_pins: mi2s1-state {
> +				pins = "gpio108", "gpio109", "gpio110", "gpio111";
> +				function = "mi2s_1";
> +				drive-strength = <8>;
> +				bias-disable;
> +			};
> +
> +			mi2s_mclk: mi2s-mclk-state {
> +					pins = "gpio122";
> +					function = "mclk2";
> +					drive-strength = <8>;
> +					bias-disable;
> +			};
> +
>  			qup_i2c1_data_clk: qup-i2c1-data-clk-state {
>  				pins = "gpio4", "gpio5";
>  				function = "qup0";
> @@ -4696,6 +4711,45 @@ compute-cb@6 {
>  						dma-coherent;
>  					};
>  				};
> +
> +				gpr: gpr {
> +					compatible = "qcom,gpr";
> +					qcom,glink-channels = "adsp_apps";
> +					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
> +					qcom,intents = <512 20>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					q6apm: service@1 {
> +						compatible = "qcom,q6apm";
> +						reg = <GPR_APM_MODULE_IID>;
> +						#sound-dai-cells = <0>;
> +						qcom,protection-domain = "avs/audio",
> +									 "msm/adsp/audio_pd";
> +
> +						q6apmbedai: bedais {
> +							compatible = "qcom,q6apm-lpass-dais";
> +							#sound-dai-cells = <1>;
> +						};
> +
> +						q6apmdai: dais {
> +							compatible = "qcom,q6apm-dais";
> +							iommus = <&apps_smmu 0x1721 0x0>;
> +						};
> +					};
> +
> +					q6prm: service@2 {
> +						compatible = "qcom,q6prm";
> +						reg = <GPR_PRM_MODULE_IID>;
> +						qcom,protection-domain = "avs/audio",
> +									 "msm/adsp/audio_pd";
> +
> +						q6prmcc: clock-controller {
> +							compatible = "qcom,q6prm-lpass-clocks";
> +							#clock-cells = <2>;
> +						};
> +					};
> +				};
>  			};
>  		};
>  
> -- 
> 2.34.1
> 

