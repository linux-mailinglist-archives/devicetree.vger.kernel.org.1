Return-Path: <devicetree+bounces-126173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C939E083A
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:17:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D57C516648F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC3F2209F53;
	Mon,  2 Dec 2024 15:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IqmPlnHq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A43209F49
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733154192; cv=none; b=YA/1bS0sFZY930pSIKQrLEGkcJKmkboScOI8xtuAjkC5TVEApoi+5a08h19+Y+ZV5wLpK4hpJBeVCObtTyYIMw5B8x3w4ctPOWUW6MM/Ipe+fetKkJB7NaTG2gksOSv1kYJ7EDG0cG7qMQ1mbCrBA49GrVXVLmX1xaKGS5i3xFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733154192; c=relaxed/simple;
	bh=k/f3AXTfh4IjLpqTVVBdk7brWdn7oU78wvX2hwXU6+I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MhMWLtee40ORTeLNSrxpMWvaz+Yx6D6bq5/JrFmeD3gsh6oRaELhAuLnFdOCW3L5jnR/lOtJQsPaH3uHqC4Addn+dcC7dVkM4EOBdeOvUzkGsmZK0Va3FtayBMQy4CIpL5ZKi/CJYujzvrVJoUAFnpP+CLHaV0rNQ7gtB9pMjKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IqmPlnHq; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e3983f8ff40so2780942276.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 07:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733154190; x=1733758990; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QbUP+dvKWDKM0wMQ0TznKmY7PM7PyjlXbsmxh8B0to8=;
        b=IqmPlnHqHkx9fZ4PM+jApLoKAxqFgyHu6GrVatp2BwLJ07iS9QBXBVJrZ1CpBcK9ms
         KgHIbGlEBRDZYqOV9hVaNq+l2El+qTmIXDNdLk2r3i8HoJEFgBNi2JzXOArI7dEu212B
         Dpi8RwRQAnxRWXM6NIgh/ahe+nfDCtWUTP/siTnKXuCcv5FQKYYK2FuI4zaWEH1UpIGF
         Pmvvgh+qz/5HNGdLLH20AtP57Kn5ZgfkCQnyKPu2uaENfRMsoKoYmJrZRhWupu18u9ZF
         I/t3OgvNbmWC187Ow7OUC8NCP9lnovuj1xm3Qs8WU8/8rHfuOJsCtKwwWr/sUiX5vF0x
         5Ldg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733154190; x=1733758990;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QbUP+dvKWDKM0wMQ0TznKmY7PM7PyjlXbsmxh8B0to8=;
        b=AkX9B/dbH+T69vSwVJJYMNMSThdw7jutYdFQY0790r/LlZx3o46Gj3zCIUdCVnmt4y
         dDAA8xf2y3M1f4ulEuf7o/rGhg6xKHyVTcqQREoAFNG58HEIfwCVSrj3z+nq59ZeXjJl
         BMi4dwULFTmnMjO+yt1FYk/00lM+O/Rp6D0Kadk/h/y6Pbp/vJDUL3zf4TzrGoo7I2KP
         nPc9+laycLNaN/RGwut8VGB0pY1HgLtv71GhkJeyj6p0FFfCkN3WFrwJMX2jwEF3L/1B
         7rsmXMEG+pXViH7XjCtOtLy4iUUDf6m6yr3Z7kGntVdijduw1wls3E3Z2H+Ho3S7ClJX
         16LA==
X-Forwarded-Encrypted: i=1; AJvYcCVns31ZiM7gtNBWN2/Wim6GKxJ64E4PnA99yGI0HQBddJN7cLFzH8cRhAVQjTTnlXSyG97FWbk0TzM0@vger.kernel.org
X-Gm-Message-State: AOJu0YzhGClq63YUs3zv24toE8GlHTGYpDBb8JQqPupeDDszqZba4top
	QsjhWMLk1inP9WO2/w0yt2kiImDWQGoY8Z59QE9HswWqxTI12gLRMSftNavITZXN+TW2+ByhcvN
	zExpHrOhQUN6xaWfOPBBfBOgf6MA1onLlkRkT1Q==
X-Gm-Gg: ASbGnctTPJq3Eco5Sd0h+pRG2JJmePtvv5C/cfPc6BXHEjIZ13nn7Val/s/rzNZ8QrD
	kGyAz2cCIADJW6ziBwGJqBFnE7+UThMIW
X-Google-Smtp-Source: AGHT+IGP8X//RtopJ14zcmxJJXKBWB66Fq15r096151qIaf1u6T7kK82VeRXbbWQnNMTUe+do88W/Mt9VjkNBUNU2jY=
X-Received: by 2002:a05:6902:2804:b0:e2e:440e:d29f with SMTP id
 3f1490d57ef6-e395b8939bdmr23346211276.20.1733154190066; Mon, 02 Dec 2024
 07:43:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202151228.32609-1-ansuelsmth@gmail.com>
In-Reply-To: <20241202151228.32609-1-ansuelsmth@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 2 Dec 2024 16:42:33 +0100
Message-ID: <CAPDyKFqrY7uLD8ATqH0LghmkHgApQSsGtvGkOTd8UVazGu0_uA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: cpufreq: Document support for Airoha
 EN7581 CPUFreq
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, upstream@airoha.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 2 Dec 2024 at 16:20, Christian Marangi <ansuelsmth@gmail.com> wrote:
>
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

[...]

> +examples:
> +  - |
> +    / {
> +        #address-cells = <2>;
> +       #size-cells = <2>;
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

Nitpick: Perhaps clarify the name to be "perf" or "cpu_perf", to
indicate it's a power-domain with performance scaling support.

> +                next-level-cache = <&l2>;
> +                #cooling-cells = <2>;
> +            };
> +

[...]

Other than the very minor thing above, feel free to add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

