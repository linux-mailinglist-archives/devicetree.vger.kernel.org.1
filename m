Return-Path: <devicetree+bounces-126331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AE39E127C
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 05:41:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94EE7164B81
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 04:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B6A1514EE;
	Tue,  3 Dec 2024 04:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xjwv1XfZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D31C14389F
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 04:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733200909; cv=none; b=WY0u4t5qgRhxRiAye+PLoaltXc0AwdG82IuNGusCouCJOQpYNr2vdOjViqfyPE9JoWigNs9+LwEv9ewr6z+Ihjym6KSsT8q+MLRIbi7+NxbZUx80NOYf39dDYYOJ7YLpCdXOZ56OOitZHWCZb4tQ/rcC82nsGEvrBuXRqG9MmdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733200909; c=relaxed/simple;
	bh=KkEHBJb5iizoXNlEGcsYR+n/M+K+3aREiySKSqjQ54s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ku4hVt08H7DdtF13+yrWRWedv/TXFy4Am3a0UhyjfOawjc0GUVp4GaBJ9+cMiRFiepZ3kGVPHm2Vpp0EnyyjwvvsI2aSA06KPeXn8fXFk3A8G8MhFhLEZyKQGcQR5kWGltEW3SuQmHORgTzYrEuz3RS0/pgvTWjhOFTQN4xcQGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xjwv1XfZ; arc=none smtp.client-ip=209.85.166.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3a7e108b491so14542055ab.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 20:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733200906; x=1733805706; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8U3UF7Pxyr798vO9RJ4++5ToJjZOuQoyng/CosrxMXg=;
        b=xjwv1XfZPgo2Ti3zxqcWei3fQ+1qKtF+hWMgyeJx2Ko6Di2RqkxAwFonIQieWOrCYE
         9HJHS+Ssg0SFt5sI1aUvTO+H7IePfttObCw4LqrR5WXMJ6L3Q7p9wk6EWgO5BhlX6abj
         EOneXhZQp63/E9idKbS+jxqLcF5cXXrNaTQD7gzME0nKB6H9nKQV6AQ1ErRJY4U5+v+l
         AXx+Lqzwg3l9nADSm6YxsaS/wAhknlMW+DIgwKCNJRfyJXfRR7MxHQY3P4WbDLGPu7tw
         p7+UjCYmghm8PoDDJh7THdPCJbMNczJDBL9fbNdf4DPPJf1LM5H86vFVbhMi8l2e62PY
         XNDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733200906; x=1733805706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8U3UF7Pxyr798vO9RJ4++5ToJjZOuQoyng/CosrxMXg=;
        b=bYfuKicCeUi1n4DtHMMsJaqDrzCC/90kV9SzEfXxBF7eK17tq7R2kj+svOGsWD+ixQ
         HuIUMmahyDp9b7qyDuSeRr+XDlnpWB++t1k+FBC3widvoBj5Rv0cd/mrO42JGg9hNTpN
         Uh2cOm1VSXtMA19KuwUSvVJll/UDoWq9UGTu7P+DvNNZ9R3csr/88jg5xR5zUXhrW+tp
         /r03AsNg7wMMJEnBSxw+7keznWLpNI1jF7SghoHGm8LOqXH/WBJhOw3bo42VxMVT/PAG
         DOT1XQQEXRbwPDJtXMxY7oeHIQgpqeStxUCGye2qq7wlOFOicVcJhR3tM7Luy4N8cAxQ
         2zIA==
X-Forwarded-Encrypted: i=1; AJvYcCVZuk3J1Q7KLms8exv/wuGEThx5bPsMs82hx7PWQgprbdaffcSk1rjw2Qbh3yKji63txTLUNM0pstXw@vger.kernel.org
X-Gm-Message-State: AOJu0YzEZ4zLFV5BNkES5nOwM7O7mwf+SKLvh/D57afylF/3N6izrGDq
	S6WXThLi8ui+PF7LLCS44HN5UP/Zmq3IWkGFEbQI5Dm+dKXzmsM4EocKMnipipk=
X-Gm-Gg: ASbGnctgyIsC2R63LbyY0hLc2uZz3XwBeNzYDjemJSj0qSnT4ua16FnlvOhD5V7d15D
	LI6Vc9fykiM+BAPZF8nrlZAbesl68fGJOnzk65Eaf2w/uRgFuFSKEphQi3d2ZpLhjpWBVNjyHRS
	3oaFUqIE/IBX7M5c9i5BE0x+94rvKAbXmHuI6eEeRfKn/ROsHnJXNH66cnTwjATl1GIu1bVmUpo
	xg4C7sEM/qbn1mxAZpqU/W6/Cm0ozoRgr4Alj2um0uzXxH1uJ+h
X-Google-Smtp-Source: AGHT+IFlYwGjdh72SYebStmh8bsKByHr//8BObGnEzaaFtQKpUvdCiK03e9ZPwtd3kvcOo6bxIOWOw==
X-Received: by 2002:a05:6e02:198f:b0:3a7:7e0f:777d with SMTP id e9e14a558f8ab-3a7f9a4c697mr10745545ab.11.1733200906191;
        Mon, 02 Dec 2024 20:41:46 -0800 (PST)
Received: from localhost ([122.172.86.146])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fc9c30e4cfsm7515252a12.36.2024.12.02.20.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 20:41:45 -0800 (PST)
Date: Tue, 3 Dec 2024 10:11:43 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>, ulf.hansson@linaro.org
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH v4 1/2] dt-bindings: cpufreq: Document support for Airoha
 EN7581 CPUFreq
Message-ID: <20241203044143.yptllspwjef3bya7@vireshk-i7>
References: <20241202151228.32609-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241202151228.32609-1-ansuelsmth@gmail.com>

+Ulf,

On 02-12-24, 16:12, Christian Marangi wrote:
> Document required property for Airoha EN7581 CPUFreq .
> 
> On newer Airoha SoC, CPU Frequency is scaled indirectly with SMCCC commands
> to ATF and no clocks are exposed to the OS.
> 
> The SoC have performance state described by ID for each OPP, for this a
> Power Domain is used that sets the performance state ID according to the
> required OPPs defined in the CPU OPP tables.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
> Changes v4:
> - Add this patch
> 
>  .../cpufreq/airoha,en7581-cpufreq.yaml        | 259 ++++++++++++++++++
>  1 file changed, 259 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml b/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> new file mode 100644
> index 000000000000..a5bdea7f34b5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> @@ -0,0 +1,259 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/cpufreq/airoha,en7581-cpufreq.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Airoha EN7581 CPUFreq
> +
> +maintainers:
> +  - Christian Marangi <ansuelsmth@gmail.com>
> +
> +description: |
> +  On newer Airoha SoC, CPU Frequency is scaled indirectly with SMCCC commands
> +  to ATF and no clocks are exposed to the OS.
> +
> +  The SoC have performance state described by ID for each OPP, for this a
> +  Power Domain is used that sets the performance state ID according to the
> +  required OPPs defined in the CPU OPP tables.
> +
> +properties:
> +  compatible:
> +    const: airoha,en7581-cpufreq
> +
> +  '#clock-cells':
> +    const: 0
> +
> +  '#power-domain-cells':
> +    const: 0
> +
> +  operating-points-v2: true
> +
> +required:
> +  - compatible
> +  - '#clock-cells'
> +  - '#power-domain-cells'
> +  - operating-points-v2
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    / {
> +        #address-cells = <2>;
> +      	#size-cells = <2>;
> +
> +        cpus {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            cpu0: cpu@0 {
> +                device_type = "cpu";
> +                compatible = "arm,cortex-a53";
> +                reg = <0x0>;
> +                operating-points-v2 = <&cpu_opp_table>;
> +                enable-method = "psci";
> +                clocks = <&cpufreq>;
> +                clock-names = "cpu";
> +                power-domains = <&cpufreq>;
> +                power-domain-names = "cpu_pd";
> +                next-level-cache = <&l2>;
> +                #cooling-cells = <2>;
> +            };
> +
> +            cpu1: cpu@1 {
> +                device_type = "cpu";
> +                compatible = "arm,cortex-a53";
> +                reg = <0x1>;
> +                operating-points-v2 = <&cpu_opp_table>;
> +                enable-method = "psci";
> +                clocks = <&cpufreq>;
> +                clock-names = "cpu";
> +                power-domains = <&cpufreq>;
> +                power-domain-names = "cpu_pd";
> +                next-level-cache = <&l2>;
> +                #cooling-cells = <2>;
> +            };
> +
> +            cpu2: cpu@2 {
> +                device_type = "cpu";
> +                compatible = "arm,cortex-a53";
> +                reg = <0x2>;
> +                operating-points-v2 = <&cpu_opp_table>;
> +                enable-method = "psci";
> +                clocks = <&cpufreq>;
> +                clock-names = "cpu";
> +                power-domains = <&cpufreq>;
> +                power-domain-names = "cpu_pd";
> +                next-level-cache = <&l2>;
> +                #cooling-cells = <2>;
> +            };
> +
> +            cpu3: cpu@3 {
> +                device_type = "cpu";
> +                compatible = "arm,cortex-a53";
> +                reg = <0x3>;
> +                operating-points-v2 = <&cpu_opp_table>;
> +                enable-method = "psci";
> +                clocks = <&cpufreq>;
> +                clock-names = "cpu";
> +                power-domains = <&cpufreq>;
> +                power-domain-names = "cpu_pd";
> +                next-level-cache = <&l2>;
> +                #cooling-cells = <2>;
> +            };
> +        };
> +
> +        cpu_opp_table: opp-table {
> +            compatible = "operating-points-v2";
> +            opp-shared;
> +
> +            opp-500000000 {
> +                opp-hz = /bits/ 64 <500000000>;
> +                required-opps = <&smcc_opp0>;

In your case I think you can simply mention opp-level here itself and remove the
OPP table for the genpd. Right Ulf ?

> +            };
> +
> +            opp-550000000 {
> +                opp-hz = /bits/ 64 <550000000>;
> +                required-opps = <&smcc_opp1>;
> +            };
> +
> +            opp-600000000 {
> +                opp-hz = /bits/ 64 <600000000>;
> +                required-opps = <&smcc_opp2>;
> +            };
> +
> +            opp-650000000 {
> +                opp-hz = /bits/ 64 <650000000>;
> +                required-opps = <&smcc_opp3>;
> +            };
> +
> +            opp-7000000000 {
> +                opp-hz = /bits/ 64 <700000000>;
> +                required-opps = <&smcc_opp4>;
> +            };
> +
> +            opp-7500000000 {
> +                opp-hz = /bits/ 64 <750000000>;
> +                required-opps = <&smcc_opp5>;
> +            };
> +
> +            opp-8000000000 {
> +                opp-hz = /bits/ 64 <800000000>;
> +                required-opps = <&smcc_opp6>;
> +            };
> +
> +            opp-8500000000 {
> +                opp-hz = /bits/ 64 <850000000>;
> +                required-opps = <&smcc_opp7>;
> +            };
> +
> +            opp-9000000000 {
> +                opp-hz = /bits/ 64 <900000000>;
> +                required-opps = <&smcc_opp8>;
> +            };
> +
> +            opp-9500000000 {
> +                opp-hz = /bits/ 64 <950000000>;
> +                required-opps = <&smcc_opp9>;
> +            };
> +
> +            opp-10000000000 {
> +                opp-hz = /bits/ 64 <1000000000>;
> +                required-opps = <&smcc_opp10>;
> +            };
> +
> +            opp-10500000000 {
> +                opp-hz = /bits/ 64 <1050000000>;
> +                required-opps = <&smcc_opp11>;
> +            };
> +
> +            opp-11000000000 {
> +                opp-hz = /bits/ 64 <1100000000>;
> +                required-opps = <&smcc_opp12>;
> +            };
> +
> +            opp-11500000000 {
> +                opp-hz = /bits/ 64 <1150000000>;
> +                required-opps = <&smcc_opp13>;
> +            };
> +
> +            opp-12000000000 {
> +                opp-hz = /bits/ 64 <1200000000>;
> +                required-opps = <&smcc_opp14>;
> +            };
> +        };
> +
> +        cpu_smcc_opp_table: opp-table-cpu-smcc {

So this won't be required I guess.

> +            compatible = "operating-points-v2";
> +
> +            smcc_opp0: opp0 {
> +               opp-level = <0>;
> +            };
> +
> +            smcc_opp1: opp1 {
> +                opp-level = <1>;
> +            };
> +
> +            smcc_opp2: opp2 {
> +               opp-level = <2>;
> +            };
> +
> +            smcc_opp3: opp3 {
> +               opp-level = <3>;
> +            };
> +
> +            smcc_opp4: opp4 {
> +                opp-level = <4>;
> +            };
> +
> +            smcc_opp5: opp5 {
> +                opp-level = <5>;
> +            };
> +
> +            smcc_opp6: opp6 {
> +               opp-level = <6>;
> +            };
> +
> +            smcc_opp7: opp7 {
> +               opp-level = <7>;
> +            };
> +
> +            smcc_opp8: opp8 {
> +                opp-level = <8>;
> +            };
> +
> +            smcc_opp9: opp9 {
> +               opp-level = <9>;
> +            };
> +
> +            smcc_opp10: opp10 {
> +                opp-level = <10>;
> +            };
> +
> +            smcc_opp11: opp11 {
> +                opp-level = <11>;
> +            };
> +
> +            smcc_opp12: opp12 {
> +                opp-level = <12>;
> +            };
> +
> +            smcc_opp13: opp13 {
> +                opp-level = <13>;
> +            };
> +
> +            smcc_opp14: opp14 {
> +                opp-level = <14>;
> +            };
> +        };
> +
> +        cpufreq: cpufreq {

And I would name it like a genpd, instead of cpufreq. But I am not sure what's
the right name is..

> +            compatible = "airoha,en7581-cpufreq";
> +
> +            operating-points-v2 = <&cpu_smcc_opp_table>;
> +
> +            #power-domain-cells = <0>;
> +            #clock-cells = <0>;
> +        };
> +    };
> -- 
> 2.45.2

-- 
viresh

