Return-Path: <devicetree+bounces-126496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 571EA9E1AFA
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 651CFB3C675
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 10:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E0A1E1C36;
	Tue,  3 Dec 2024 10:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cyUktQvP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690D01DDC3D
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 10:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733221411; cv=none; b=pialslEGyagwTg+IaUsAgjOSVHSQYLPSWvZq6AAYpC//GdMm80kV6DDfEOpsE2DaEl/6W0vY/Fy45JrWXBPwcn6GVAQDddo8l4o8rACLcMDmRqJaZcPMLpJbhRxGaWVW3k6eeXM0dK1pVwOEb5gVixdKEsX+raC2u5AmmiuLGmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733221411; c=relaxed/simple;
	bh=7Q4u3UWFLbXvAfIBIIEg6ZFvyI9iF1cryM36Il4WvY8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UC8tPGyXznjVnFNU77vcfZaWFXe+rZuj1QidZhtv+8w8v9E5CMoYts87M6vcctw9Clwbk0RBjsBqLsSn6BhBr9w36L5iawP3ajV956iPYhJ99aUSr4nGDkYN2W5/gVvxWljGLcVRz120NMNqoAVTEKPByEQMrdd88WjiaBz9cgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cyUktQvP; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e3995f1fe30so2827541276.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 02:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733221408; x=1733826208; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nB83jkGAkv0PgHdCKnoEUzQFsQsaXNkPaK2Of5U5GKY=;
        b=cyUktQvPZwWISAWfIFw7v+RtpU8KOBsdYKqsm1ERzp9/MT+yhkZPxyeVjeR3ZkDqPG
         Z3ZUHnO4zgwhpi1j/Utsr3TCQYMbwX8N+I7f2kgWMBG4ZyF58vnYRxduyUwILG6qkjbq
         kG0EkWkqaBgnmn5Ucnp3N9iLcetsyY7V7+I2huMKg184HtmL/rCsqNT5GRNyXRW9CYCU
         1y7YfjrZMQGfBK/nBPUFKN6gKgw0reyqpRtkFQCfyllx44FujRCBDTMjqm/TRVuLfqBp
         LZ3YiOi+qPXwEuG6DLnXJBLym5qcS4Bv1YbQBHcnpKEyfGBO6LzFBcMGLFIbrp2+G5O8
         DkPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733221408; x=1733826208;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nB83jkGAkv0PgHdCKnoEUzQFsQsaXNkPaK2Of5U5GKY=;
        b=lOXiWlUEw3+xpo4dB3vD+7JTf/rAHqZDawRJNXtbrCaaz52J5VlskWPZIhrov5d/YU
         dY5FH0lMyrl0yBz075n8dIYUQjv5MN442I8Kjw/ntsMmxYkYvQGT21fKo4oFAFPucy8n
         yKtJwVr/8C9OHndNWsVpECAfo4xHUjLV9mUfYhApks1kdWgkHYdrTpl3zdxtDbirVZlI
         QwQ6hvdgn7TlXTbjZ5hA0KvY2kjDi2EO8N0S9tX3AThuDoYkohTaojtzjgVKK1vbWnD3
         RYBBi+od04Izcx+fV8mjo+A/sGEMpr8O8OADgvn2Dtl1Hj3URP/76aaByOVt2Zn8bDvq
         76EQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTmVa4zCDXti2Oz3oGGUI5okvRTmuEpMRSP3Xs/vgOezgPM6/U/J/ML8nqBhOf8gCg6DheUd6z5Pv/@vger.kernel.org
X-Gm-Message-State: AOJu0YxSCVaPhyw7em2ig0w3UyZk/Tpbet4KbvFUG3uI2SpfSgIzQsfb
	TFe6mQJkrYFE4xvabIv4wIy4tAQ3cg+LAJKKfat5mUj+un1euQ+XSNRlQ68+SbISA31o0vksPFW
	QmZwTCQuAXr+Jl1AJGqioPKom30iibU6Bt2E7GexhccCwpGtC5ig=
X-Gm-Gg: ASbGnculRK6RRxyQUmWbID/GR9vRZdjcuyoU1LkZq21NpF/YzCPHy6Pw7Zy0bt1sTne
	OANS88xiZaKyb0IjLmfxtjmanlKdUFF0M
X-Google-Smtp-Source: AGHT+IGgT9xjTkFSS/dqLQS4C1RK2LEU8jhQLG5/yXXzDXkUxl8og5qQCndwBHXwbulhCzIbQJHXCvzRoKNX+Ij2js4=
X-Received: by 2002:a05:6902:124e:b0:e38:97de:9e08 with SMTP id
 3f1490d57ef6-e39d438bb20mr1706991276.48.1733221408272; Tue, 03 Dec 2024
 02:23:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202151228.32609-1-ansuelsmth@gmail.com> <20241203044143.yptllspwjef3bya7@vireshk-i7>
In-Reply-To: <20241203044143.yptllspwjef3bya7@vireshk-i7>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Dec 2024 11:22:52 +0100
Message-ID: <CAPDyKFqc82wTceQRxtJpEM8dyZ0zv9K9Jj3w748OivW5+itC3g@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: cpufreq: Document support for Airoha
 EN7581 CPUFreq
To: Viresh Kumar <viresh.kumar@linaro.org>, Christian Marangi <ansuelsmth@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, upstream@airoha.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 3 Dec 2024 at 05:41, Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> +Ulf,
>
> On 02-12-24, 16:12, Christian Marangi wrote:
> > Document required property for Airoha EN7581 CPUFreq .
> >
> > On newer Airoha SoC, CPU Frequency is scaled indirectly with SMCCC commands
> > to ATF and no clocks are exposed to the OS.
> >
> > The SoC have performance state described by ID for each OPP, for this a
> > Power Domain is used that sets the performance state ID according to the
> > required OPPs defined in the CPU OPP tables.
> >
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> > Changes v4:
> > - Add this patch
> >
> >  .../cpufreq/airoha,en7581-cpufreq.yaml        | 259 ++++++++++++++++++
> >  1 file changed, 259 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml b/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> > new file mode 100644
> > index 000000000000..a5bdea7f34b5
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/cpufreq/airoha,en7581-cpufreq.yaml
> > @@ -0,0 +1,259 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/cpufreq/airoha,en7581-cpufreq.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Airoha EN7581 CPUFreq
> > +
> > +maintainers:
> > +  - Christian Marangi <ansuelsmth@gmail.com>
> > +
> > +description: |
> > +  On newer Airoha SoC, CPU Frequency is scaled indirectly with SMCCC commands
> > +  to ATF and no clocks are exposed to the OS.
> > +
> > +  The SoC have performance state described by ID for each OPP, for this a
> > +  Power Domain is used that sets the performance state ID according to the
> > +  required OPPs defined in the CPU OPP tables.
> > +
> > +properties:
> > +  compatible:
> > +    const: airoha,en7581-cpufreq
> > +
> > +  '#clock-cells':
> > +    const: 0
> > +
> > +  '#power-domain-cells':
> > +    const: 0
> > +
> > +  operating-points-v2: true
> > +
> > +required:
> > +  - compatible
> > +  - '#clock-cells'
> > +  - '#power-domain-cells'
> > +  - operating-points-v2
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    / {
> > +        #address-cells = <2>;
> > +             #size-cells = <2>;
> > +
> > +        cpus {
> > +            #address-cells = <1>;
> > +            #size-cells = <0>;
> > +
> > +            cpu0: cpu@0 {
> > +                device_type = "cpu";
> > +                compatible = "arm,cortex-a53";
> > +                reg = <0x0>;
> > +                operating-points-v2 = <&cpu_opp_table>;
> > +                enable-method = "psci";
> > +                clocks = <&cpufreq>;
> > +                clock-names = "cpu";
> > +                power-domains = <&cpufreq>;
> > +                power-domain-names = "cpu_pd";
> > +                next-level-cache = <&l2>;
> > +                #cooling-cells = <2>;
> > +            };
> > +
> > +            cpu1: cpu@1 {
> > +                device_type = "cpu";
> > +                compatible = "arm,cortex-a53";
> > +                reg = <0x1>;
> > +                operating-points-v2 = <&cpu_opp_table>;
> > +                enable-method = "psci";
> > +                clocks = <&cpufreq>;
> > +                clock-names = "cpu";
> > +                power-domains = <&cpufreq>;
> > +                power-domain-names = "cpu_pd";
> > +                next-level-cache = <&l2>;
> > +                #cooling-cells = <2>;
> > +            };
> > +
> > +            cpu2: cpu@2 {
> > +                device_type = "cpu";
> > +                compatible = "arm,cortex-a53";
> > +                reg = <0x2>;
> > +                operating-points-v2 = <&cpu_opp_table>;
> > +                enable-method = "psci";
> > +                clocks = <&cpufreq>;
> > +                clock-names = "cpu";
> > +                power-domains = <&cpufreq>;
> > +                power-domain-names = "cpu_pd";
> > +                next-level-cache = <&l2>;
> > +                #cooling-cells = <2>;
> > +            };
> > +
> > +            cpu3: cpu@3 {
> > +                device_type = "cpu";
> > +                compatible = "arm,cortex-a53";
> > +                reg = <0x3>;
> > +                operating-points-v2 = <&cpu_opp_table>;
> > +                enable-method = "psci";
> > +                clocks = <&cpufreq>;
> > +                clock-names = "cpu";
> > +                power-domains = <&cpufreq>;
> > +                power-domain-names = "cpu_pd";
> > +                next-level-cache = <&l2>;
> > +                #cooling-cells = <2>;
> > +            };
> > +        };
> > +
> > +        cpu_opp_table: opp-table {
> > +            compatible = "operating-points-v2";
> > +            opp-shared;
> > +
> > +            opp-500000000 {
> > +                opp-hz = /bits/ 64 <500000000>;
> > +                required-opps = <&smcc_opp0>;
>
> In your case I think you can simply mention opp-level here itself and remove the
> OPP table for the genpd. Right Ulf ?

No, that would not be the correct thing to do, I think.

The power-domain described here is modeling a performance-domain,
hence it needs an opp-table associated with it.

>
> > +            };
> > +
> > +            opp-550000000 {
> > +                opp-hz = /bits/ 64 <550000000>;
> > +                required-opps = <&smcc_opp1>;
> > +            };
> > +
> > +            opp-600000000 {
> > +                opp-hz = /bits/ 64 <600000000>;
> > +                required-opps = <&smcc_opp2>;
> > +            };
> > +
> > +            opp-650000000 {
> > +                opp-hz = /bits/ 64 <650000000>;
> > +                required-opps = <&smcc_opp3>;
> > +            };
> > +
> > +            opp-7000000000 {
> > +                opp-hz = /bits/ 64 <700000000>;
> > +                required-opps = <&smcc_opp4>;
> > +            };
> > +
> > +            opp-7500000000 {
> > +                opp-hz = /bits/ 64 <750000000>;
> > +                required-opps = <&smcc_opp5>;
> > +            };
> > +
> > +            opp-8000000000 {
> > +                opp-hz = /bits/ 64 <800000000>;
> > +                required-opps = <&smcc_opp6>;
> > +            };
> > +
> > +            opp-8500000000 {
> > +                opp-hz = /bits/ 64 <850000000>;
> > +                required-opps = <&smcc_opp7>;
> > +            };
> > +
> > +            opp-9000000000 {
> > +                opp-hz = /bits/ 64 <900000000>;
> > +                required-opps = <&smcc_opp8>;
> > +            };
> > +
> > +            opp-9500000000 {
> > +                opp-hz = /bits/ 64 <950000000>;
> > +                required-opps = <&smcc_opp9>;
> > +            };
> > +
> > +            opp-10000000000 {
> > +                opp-hz = /bits/ 64 <1000000000>;
> > +                required-opps = <&smcc_opp10>;
> > +            };
> > +
> > +            opp-10500000000 {
> > +                opp-hz = /bits/ 64 <1050000000>;
> > +                required-opps = <&smcc_opp11>;
> > +            };
> > +
> > +            opp-11000000000 {
> > +                opp-hz = /bits/ 64 <1100000000>;
> > +                required-opps = <&smcc_opp12>;
> > +            };
> > +
> > +            opp-11500000000 {
> > +                opp-hz = /bits/ 64 <1150000000>;
> > +                required-opps = <&smcc_opp13>;
> > +            };
> > +
> > +            opp-12000000000 {
> > +                opp-hz = /bits/ 64 <1200000000>;
> > +                required-opps = <&smcc_opp14>;
> > +            };
> > +        };
> > +
> > +        cpu_smcc_opp_table: opp-table-cpu-smcc {
>
> So this won't be required I guess.

See above, I think the OPP table here is the correct way to describe it.

>
> > +            compatible = "operating-points-v2";
> > +
> > +            smcc_opp0: opp0 {
> > +               opp-level = <0>;
> > +            };
> > +
> > +            smcc_opp1: opp1 {
> > +                opp-level = <1>;
> > +            };
> > +
> > +            smcc_opp2: opp2 {
> > +               opp-level = <2>;
> > +            };
> > +
> > +            smcc_opp3: opp3 {
> > +               opp-level = <3>;
> > +            };
> > +
> > +            smcc_opp4: opp4 {
> > +                opp-level = <4>;
> > +            };
> > +
> > +            smcc_opp5: opp5 {
> > +                opp-level = <5>;
> > +            };
> > +
> > +            smcc_opp6: opp6 {
> > +               opp-level = <6>;
> > +            };
> > +
> > +            smcc_opp7: opp7 {
> > +               opp-level = <7>;
> > +            };
> > +
> > +            smcc_opp8: opp8 {
> > +                opp-level = <8>;
> > +            };
> > +
> > +            smcc_opp9: opp9 {
> > +               opp-level = <9>;
> > +            };
> > +
> > +            smcc_opp10: opp10 {
> > +                opp-level = <10>;
> > +            };
> > +
> > +            smcc_opp11: opp11 {
> > +                opp-level = <11>;
> > +            };
> > +
> > +            smcc_opp12: opp12 {
> > +                opp-level = <12>;
> > +            };
> > +
> > +            smcc_opp13: opp13 {
> > +                opp-level = <13>;
> > +            };
> > +
> > +            smcc_opp14: opp14 {
> > +                opp-level = <14>;
> > +            };
> > +        };
> > +
> > +        cpufreq: cpufreq {
>
> And I would name it like a genpd, instead of cpufreq. But I am not sure what's
> the right name is..

Good point!

The node name should follow
Documentation/devicetree/bindings/power/power-domain.yaml, which
states:

pattern: "^(power-controller|power-domain|performance-domain)([@-].*)?$"

>
> > +            compatible = "airoha,en7581-cpufreq";
> > +
> > +            operating-points-v2 = <&cpu_smcc_opp_table>;
> > +
> > +            #power-domain-cells = <0>;
> > +            #clock-cells = <0>;
> > +        };
> > +    };
> > --
> > 2.45.2
>

Kind regards
Uffe

