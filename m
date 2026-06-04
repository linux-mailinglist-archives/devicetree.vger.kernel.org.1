Return-Path: <devicetree+bounces-306949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jAZsEQekIWroKQEAu9opvQ
	(envelope-from <devicetree+bounces-306949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:12:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A787C641BA1
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:12:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=XVNcAUVA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306949-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306949-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B60B63119B36
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 16:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 096D13B3C05;
	Thu,  4 Jun 2026 16:01:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46BD39FCCD
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 16:01:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780588890; cv=none; b=dyBmlYEJ9VY0anWeovjrbw+5B3JFrJS4diz3kX9RG0bSZIg7bJ0dxGnr/kDr+UHHIvG0GLRYh71b/Th3blWaxdNSLzdToGMGhQHcG9VTbTzeq1CQZtHDZ77P0POYTCWvIpxLlHmzIg9meeSjJ5TmmjM5KonyH08FBT10HGVtvUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780588890; c=relaxed/simple;
	bh=xC3/CEFaf3hg4/vKMnMcKeo7O3cqv8d7FnQwu9/kLm4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AY3jyuXi+cGfa+kriKz5VyDGHnc8FkJB2WqFDfiwreW1bxody1p5LtsOhjYGJO1DmRFwBnOLF4/awzF6NHMvqUAp3pUsGxgdSuXiJnKbkzPbPbK2ijPoHs6PPRUG4yFVPpLhipDrMrBx911wNv49aoy1wRaV6a6iEtuDaCT3aIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XVNcAUVA; arc=none smtp.client-ip=209.85.167.51
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5aa6145f230so50270e87.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 09:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780588887; x=1781193687; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uGO+JoBq8PgFZVH5FUV2MufUBmEh2YHb4HRdQgvnePA=;
        b=XVNcAUVAlolC7ehYvK9k5XvR3cJK3NhucrtM+TSdlZy0J4h+qA2gXs/j7rLv1O5YWG
         VNDewuknM1LYGa+6O3sWoZ40axaVLpj/i4E/DoeYG9U5nEfUfiiSFc3XRBDNkvcMlB+2
         XMl3m3sWamHufQxHirIlKPmcoUKiQ3mjA4m29wPvs6TyHIBrl59FU3zROaeNZwp36mZd
         2rY8dM/GTlcVUorR26qt8LHEZCSXSBKLrPnrGO93nD/5H4JtaRbMutLGGe7hmmVptcmg
         ATVtyDmJqf9bHTQhcOOzxtaGTjIocF9wj2fNTUBpiDzlEfidLOIjOhABtir9chhKfTyF
         60ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780588887; x=1781193687;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uGO+JoBq8PgFZVH5FUV2MufUBmEh2YHb4HRdQgvnePA=;
        b=PHEYyyBkp7G/l44xZRUXbjQlkFXD9/zd4LpM2GTYskoy87aBjJ5kqFSmGB5rECP1Zf
         FzXOwIehdIHaIPZjiWXiFNs+54bI2zzAw7c4ZYCkGtIm2LdYm+uHNtqKVV1PHG6Teohu
         naZWlV+QODJyjnhYnuR3NJrK41JmxAbc44N7K7B9YjH04xT9hP0Uwsay/koNMWNiE4pO
         3KIspJeFmMHSfXCJUzZbte5NbCVH4JuMsGQimRGOODBYpvvxrDImSQaxVugdnKgs+AzF
         cE9yzv3aJVIBRdMEA42XiMa0/nPqmbN5MDQ65YiYsTr4TmVF/4GJ6OUbca3WMArmn2b4
         5CWQ==
X-Forwarded-Encrypted: i=1; AFNElJ8wGRKCoRolNS/Kwg2fxZSAg/tj3TkEySZtrniXv5Nxe8tYUgG/tXt3pxRlX+8NdTx4a0we8k3bx7ib@vger.kernel.org
X-Gm-Message-State: AOJu0Yy13pcJVgSTZV0kNIAHGMWRh/9AzZOnF51+YhPyeBJaj4dgj/14
	b7LYRJIygOAfbxfgb/JfkDl+K+5qQ+G8C1UaOMybzwk9i9/sLjpu/g9WaPoWkbsFwFc=
X-Gm-Gg: Acq92OFqXveroTa5++KnA1OKwfOmdS46CK6mwkp8sDR+ajHUfMrfztVXHFpc+I45Vhq
	oQLbEwzsMgAamr6Y+CjfBnL09Aw2RgZg1X1NRHO8+JYq8qt7KJO2rl6JrMzo5qmqTbbemIM32T5
	74ATriofFEQg8yoaGt3emn1aTLQkLh2HGk7lPwgxKcRY+rTP+i5uHMsfFNFVLMXPHvvFHkWoygL
	lw6DXs7XziHPnkTFsuCoziYPb9sECV3p6kMwZylwtIuMwu4L87cBvSKeowZNTJjb8QZL8Sug3mv
	aFizUI8+Ai/+t7U5hxsX9p1AnjndKZjKFVIge+L+9DPMLCc7BxjzFf0er0cla6m2AWohjw0d7y8
	5bVMTxJStQMG6roAXJHSRFLX7i8eZPgmE3Zmqm85hhnArNlN83Hbix+QqF92QlR1K7u/5+x8Cr8
	WwQ1XYh0tCi9HCBoE4JZweMVeFgW1hOLESFHGMXRbPV0JNazXRy73p5Mi3Ovj4YZBzH86Xh2+Lk
	M6iebEiBX2ywTUW
X-Received: by 2002:a05:6512:108d:b0:5a8:bd9c:a2e1 with SMTP id 2adb3069b0e04-5aa81c20ae9mr382484e87.2.1780588885434;
        Thu, 04 Jun 2026 09:01:25 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b986c42sm1298972e87.58.2026.06.04.09.01.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2026 09:01:24 -0700 (PDT)
Message-ID: <e0731edc-81da-429a-a12e-a1d1b75f9544@linaro.org>
Date: Thu, 4 Jun 2026 19:01:22 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550: add SDHC4 controller node
To: William Bright <william.bright@imd-tec.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ram Boukobza <ram@imd-tec.com>,
 Tendai Makumire <tendai.makumire@imd-tec.com>
References: <20260427-sm8550-sdhc4-support-v2-1-a4241f43ecd5@imd-tec.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260427-sm8550-sdhc4-support-v2-1-a4241f43ecd5@imd-tec.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306949-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:william.bright@imd-tec.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ram@imd-tec.com,m:tendai.makumire@imd-tec.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imd-tec.com:email,linaro.org:mid,linaro.org:from_mime,linaro.org:dkim,msgid.link:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A787C641BA1

On 4/27/26 14:24, William Bright wrote:
> Add the SDC4 SDHCI controller node for the SM8550 SoC.
> 
> SMMU stream ID 0x80 was sourced from the UEFI bootloader IORT tables,
> as SDCC stream IDs are not documented in the register reference manual.
> Unlike SDC2, the data path is routed via aggre1_noc, matching
> MASTER_SDCC_4 in drivers/interconnect/qcom/sm8550.c.
> 
> The SDHCI capabilities register on this SoC advertises SDR104
> and SDR50 but these UHS-I modes are broken on SDHC4.

How do you know that these modes are broken in hardware and not
caused by something else?

It was stated before, but it was proven to be invalid as the statement.

> Mask them via sdhci-caps-mask, this keeps the bus in HS mode,
> which initialises reliably.
> 
> Tested on the IMDT QCS8550 SBC. This board is not currently
> supported in-tree.
> 
> Co-developed-by: Tendai Makumire <tendai.makumire@imd-tec.com>
> Signed-off-by: Tendai Makumire <tendai.makumire@imd-tec.com>
> Signed-off-by: William Bright <william.bright@imd-tec.com>
> ---
> Changes in v2:
> - Drop qcom,dll-config and qcom,ddr-config; these properties are not
>    valid for this SDC instance (Konrad Dybcio)
> - Reduce the OPP table to a single 75 MHz / low_svs entry matching the
>    SDCC4 operating point on this SoC (Konrad Dybcio)
> - Forbid SDR104/SDR50 via sdhci-caps-mask, matching the previously
>    existing sdhc_2 workaround in the same file.
>    The SDHCI capabilities register on this SoC advertises SDR50/SDR104
>    modes that are broken on sdhc_4; without masking them the MMC
>    core selects SDR50 and fails DLL tuning with
>    -ETIMEDOUT during SDIO card initialisation.

Which one SDIO card do you test?

> - Rework the commit message to reflect the above understanding and
>    drop the "root cause not yet determined" note
> - Drop self Tested-by tag (Konrad Dybcio)
> - Link to v1: https://patch.msgid.link/20260423-sm8550-sdhc4-support-v1-1-93fd81fea5d9@imd-tec.com
> 
> To: Bjorn Andersson <andersson@kernel.org>
> To: Konrad Dybcio <konradybcio@kernel.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 40 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 912525e9bca6..07161a873b2d 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3280,6 +3280,46 @@ opp-202000000 {
>   			};
>   		};
>   
> +		sdhc_4: mmc@8844000 {
> +			compatible = "qcom,sm8550-sdhci", "qcom,sdhci-msm-v5";
> +			reg = <0 0x08844000 0 0x1000>;
> +
> +			interrupts = <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
> +				     <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH 0>;
> +			interrupt-names = "hc_irq", "pwr_irq";
> +
> +			clocks = <&gcc GCC_SDCC4_AHB_CLK>,
> +				 <&gcc GCC_SDCC4_APPS_CLK>,
> +				 <&bi_tcxo_div2>;
> +			clock-names = "iface", "core", "xo";
> +			iommus = <&apps_smmu 0x80 0>;
> +			power-domains = <&rpmhpd RPMHPD_CX>;
> +			operating-points-v2 = <&sdhc4_opp_table>;
> +
> +			interconnects = <&aggre1_noc MASTER_SDCC_4 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_SDCC_4 QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			interconnect-names = "sdhc-ddr", "cpu-sdhc";
> +			bus-width = <4>;
> +			max-sd-hs-hz = <37500000>;
> +			dma-coherent;
> +
> +			/* Forbid SDR104/SDR50 broken hw! */

This is copied from somewhere else, while virtually it's unconfirmed,
if this SD host controller is broken or not...

> +			sdhci-caps-mask = <0x3 0>;
> +
> +			status = "disabled";
> +
> +			sdhc4_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-75000000 {
> +					opp-hz = /bits/ 64 <75000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +				};
> +			};
> +		};
> +
>   		iris: video-codec@aa00000 {
>   			compatible = "qcom,sm8550-iris";
>   

-- 
Best wishes,
Vladimir

