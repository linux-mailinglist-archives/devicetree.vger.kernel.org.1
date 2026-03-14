Return-Path: <devicetree+bounces-275596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oH+rEX+9tGnvsQAAu9opvQ
	(envelope-from <devicetree+bounces-275596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:44:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 920BD28B47F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B781830B4F84
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99C592D5432;
	Sat, 14 Mar 2026 01:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="gSCV5S+f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5080B1EB5CE
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 01:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773452660; cv=none; b=YQPd+8F7T1oeKM0HOf3K6MpINq6pbOUjKP5QaWsvStMLmQ/0oZR4QMI+TzmI8DUCH2pv2TZmFlggts4NMzFUGZ6JaDcUklltMfQjb6N9UJrqoJvtbYVLuymI2V2XwK0ATYCE2xFJ9JZmZMbNGiaTWn39FZim5zULEkNyRCETriw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773452660; c=relaxed/simple;
	bh=+4Bmuqw/MokEQOXuptaA1vona06ynLnmmnKJfdgDAqQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BPdWORH7ebBxqv+BO5nsE073Xfhk0/chczfj/2B6nbdNebWPNA49lb9yF2uLdAvqi5bpzyUFy6LjbUc+qAa7bypXs0k3VCPDAxXWGBpUC7Ltx9QFY8Q6N/r90uetMoGInnkCZeGZMBUq5Y7UF5KAsXwSwiBfRzxVGK0idyVd4P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=gSCV5S+f; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-78fc4425b6bso29042777b3.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 18:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1773452657; x=1774057457; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M+0PW7TLqltEBmQy5cqK8weQnye0SYryGMpoq56/3fY=;
        b=gSCV5S+fdCVbnY+swqNxs1CZWW1zO0vouq3Jz43epDykRAq5/HKkUwrER1aN1dV74O
         3VhyHZXqte6OGg/bObArQzVvPG5Vlx63ghUW7MVJ0WZfc6hfabxHedc3jjcA3GdJYO1k
         sXUXTGi7jFlmUAfXpPdgF1ok8d7Jw0Iug8/Y/idyBTCc997NLlBhal4OPCQ9cIA+dCu+
         gSkZXek/ikgjZi0h6Yx7GTUTc3nkRIpQ7Pm2M/OjDEl3n/bL/G1CvyulF8wAgDeVrTqr
         oo2HeuWQyYfUIdRxwzclNbu6eR4YWhZMMxJqrbgKW6mc07I278vn/jK/TC00jrHN6xg4
         3/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773452657; x=1774057457;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M+0PW7TLqltEBmQy5cqK8weQnye0SYryGMpoq56/3fY=;
        b=XZcnWIKml4xfiNlYw0lavBdGHPMYquhe0eP9DizcHpizj4Bl1qEIZwE/gq1JcXwDno
         uC2CW7G3R7nJTwALAFy063Q9KxR+WQWR1sp72pq9CTaGciyHv4DTBoonUOkzffukwk2b
         aT+MJ6ekPIH3ii9NYCeUmAMVYMU0MMMWPqxiByR7i33KylhPt06IaaPqTj5Ga8lycWdC
         XG8e46NT590QJOLpPtY6aDw/QNFrXav7HNiXk1qXTSHr1vAwVH8s2Xg+sKk3aCxX+iUb
         q0ZMCp8Q7jp179E+Qaw3VwNHZxci3zAMr6Hw449l+AHT1LUShjdh1/v6WssZwMRoAosK
         LbtQ==
X-Gm-Message-State: AOJu0Yz2VFqsnDtEnOp3svnrF+jjjxgvkkwoyOl2MRSnw+f/tUGyl4T9
	az2KJpnmDLFLGsqWOCZSHDpyoSO12R27u7OqYmUg+wFhe/etLAlvLJvbEs8r8PuhNWY=
X-Gm-Gg: ATEYQzwdSsMzt5scOYKCDTq1Tb/0ydPSkTvX33aIvMMUvBRDCclI3W8C9/TfDnKJdD4
	1kwK0J+LemLmLP4BcxcKl6SJxA7kxnI7NpyFx8baz0YnICYE3KnIEIhjCq3WBgNxTaUc6wFqoLg
	iqwPxb9N06W6ER6qmB+IrbyBs6qgejsEwY44IuCfts63Np4/vVsxft3Lgozw50uO11n2RuQLqsW
	Ph/qk0UIvOJf1Ho2fQ4uvNk3PZhmT3NBuk5vhTgYSed50ADrtN/EDFgYhVigpOXaDjRQjZEpFIk
	2diWPBOHOD6fxyEEQ4N0Mz8QIUJWrdeP8fAeoKNN4qei8X4X7dRj5P7GqmUa8GKeslxJU0tO6SB
	5ImQSEn8krIxyrvzlPkr6wp425KnqK5iOyqCfAxl4NeW5RzyMEkYjgVue6zNK2nIJWRFB+GnQ0N
	7VhFfE7gIls3JXiJp349SlDAfKW6oG2LL+5l5f6Ps4
X-Received: by 2002:a05:690c:112:b0:798:67be:f903 with SMTP id 00721157ae682-79a1c17ba6emr59139737b3.39.1773452657155;
        Fri, 13 Mar 2026 18:44:17 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.103.33])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7991ad51ee0sm50488877b3.8.2026.03.13.18.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 18:44:16 -0700 (PDT)
Message-ID: <fecadd41-ee3e-4452-bf25-4a70eaeb5f3f@sifive.com>
Date: Fri, 13 Mar 2026 20:44:15 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] riscv: dts: spacemit: k3: add clock tree
To: Yixun Lan <dlan@kernel.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
References: <20260304-01-dts-uart-full-v1-0-50a0aa53a245@kernel.org>
 <20260304-01-dts-uart-full-v1-1-50a0aa53a245@kernel.org>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20260304-01-dts-uart-full-v1-1-50a0aa53a245@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[sifive.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275596-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.holland@sifive.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 920BD28B47F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Yixun,

On 2026-03-04 1:36 AM, Yixun Lan wrote:
> Add clock support to SpacemiT K3 SoC, the clock tree consist of several
> blocks which are APBC, APMU, DCIU, MPUM.
> 
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
>  arch/riscv/boot/dts/spacemit/k3.dtsi | 75 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
> index b69cf81b5d55..e3d7f3102fd5 100644
> --- a/arch/riscv/boot/dts/spacemit/k3.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
> @@ -4,6 +4,7 @@
>   * Copyright (c) 2026 Guodong Xu <guodong@riscstar.com>
>   */
>  
> +#include <dt-bindings/clock/spacemit,k3-clocks.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  
>  /dts-v1/;
> @@ -398,6 +399,36 @@ core3 {
>  		};
>  	};
>  
> +	clocks {
> +		vctcxo_1m: clock-1m {
> +			compatible = "fixed-clock";
> +			clock-frequency = <1000000>;
> +			clock-output-names = "vctcxo_1m";
> +			#clock-cells = <0>;
> +		};
> +
> +		vctcxo_24m: clock-24m {
> +			compatible = "fixed-clock";
> +			clock-frequency = <24000000>;
> +			clock-output-names = "vctcxo_24m";
> +			#clock-cells = <0>;
> +		};
> +
> +		vctcxo_3m: clock-3m {
> +			compatible = "fixed-clock";
> +			clock-frequency = <3000000>;
> +			clock-output-names = "vctcxo_3m";
> +			#clock-cells = <0>;
> +		};
> +
> +		osc_32k: clock-32k {
> +			compatible = "fixed-clock";
> +			clock-frequency = <32000>;
> +			clock-output-names = "osc_32k";
> +			#clock-cells = <0>;
> +		};

Are these clocks provided by SoC or by the board? Usually there's a crystal
external to the SoC that provides the root of the clock tree. If these clocks
are provided by the board, they (or at least the clock-frequency property)
should be in the board DT, not the SoC dtsi.

Also, the /clocks node is out of order.

Regards,
Samuel

> +	};
> +
>  	soc: soc {
>  		compatible = "simple-bus";
>  		interrupt-parent = <&saplic>;
> @@ -406,6 +437,15 @@ soc: soc {
>  		dma-noncoherent;
>  		ranges;
>  
> +		syscon_apbc: system-controller@d4015000 {
> +			compatible = "spacemit,k3-syscon-apbc";
> +			reg = <0x0 0xd4015000 0x0 0x1000>;
> +			clocks = <&osc_32k>, <&vctcxo_1m>, <&vctcxo_3m>, <&vctcxo_24m>;
> +			clock-names = "osc", "vctcxo_1m", "vctcxo_3m", "vctcxo_24m";
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
>  		uart0: serial@d4017000 {
>  			compatible = "spacemit,k3-uart", "intel,xscale-uart";
>  			reg = <0x0 0xd4017000 0x0 0x100>;
> @@ -506,6 +546,41 @@ uart10: serial@d401f000 {
>  			status = "disabled";
>  		};
>  
> +		syscon_mpmu: system-controller@d4050000 {
> +			compatible = "spacemit,k3-syscon-mpmu";
> +			reg = <0x0 0xd4050000 0x0 0x10000>;
> +			clocks = <&osc_32k>, <&vctcxo_1m>, <&vctcxo_3m>, <&vctcxo_24m>;
> +			clock-names = "osc", "vctcxo_1m", "vctcxo_3m", "vctcxo_24m";
> +			#clock-cells = <1>;
> +			#power-domain-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
> +		pll: clock-controller@d4090000 {
> +			compatible = "spacemit,k3-pll";
> +			reg = <0x0 0xd4090000 0x0 0x10000>;
> +			clocks = <&vctcxo_24m>;
> +			spacemit,mpmu = <&syscon_mpmu>;
> +			#clock-cells = <1>;
> +		};
> +
> +		syscon_apmu: system-controller@d4282800 {
> +			compatible = "spacemit,k3-syscon-apmu";
> +			reg = <0x0 0xd4282800 0x0 0x400>;
> +			clocks = <&osc_32k>, <&vctcxo_1m>, <&vctcxo_3m>, <&vctcxo_24m>;
> +			clock-names = "osc", "vctcxo_1m", "vctcxo_3m", "vctcxo_24m";
> +			#clock-cells = <1>;
> +			#power-domain-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
> +		syscon_dciu: system-controller@d8440000 {
> +			compatible = "spacemit,k3-syscon-dciu";
> +			reg = <0x0 0xd8440000 0x0 0xc000>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
>  		simsic: interrupt-controller@e0400000 {
>  			compatible = "spacemit,k3-imsics", "riscv,imsics";
>  			reg = <0x0 0xe0400000 0x0 0x200000>;
> 


