Return-Path: <devicetree+bounces-48039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 814FD86FD24
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E4901F2607D
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F172520300;
	Mon,  4 Mar 2024 09:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="moTmtmNn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF0D19BA6
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 09:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709544124; cv=none; b=bIZPoxMGKg1C3ZjaWZgfpMAjlX6uuYyO/NPgJah3A8vwCO5I3b83aLDr1iuM8zzla2fzzGJ+8kv4QJc396OefGuRLkVpL05EGUh1sGp1VsuItmne3kTBxRp10dj49AcCzN02U6c9dOdBDs/DMJpNJb/ynDxyu8vj6M90/roOUL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709544124; c=relaxed/simple;
	bh=IoN9oRiczgciO1KGXjPPRtOO/ryTq10+x+3dQ/88wvo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fDLL7rxWDbJKTM87ipspq6OCFP5ubN+Tv5z0RdkD8ED8i5wctlW2N0HwjK7lN49RMG4d6StCe3QAIEJfQuOw+uwx6meFZNgrmUJVQVmE14jSkaH7CrzF9OGYce4DDv7Yji7WOFRgn6qKtsetc10ZPI/hrfIH5b6g+LhvjmGIaWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=moTmtmNn; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5a12baba314so596998eaf.0
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 01:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709544122; x=1710148922; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JAr4YTs6OYz4sHdNR8I3/fL33pJVohw/dbBd1K+RGHM=;
        b=moTmtmNncu1zMuSpyt/rIwlN4BNbV4ik0k2VBD28CjT0dVHcxi2F28rbV9YMlurnjR
         rfsCFHoCnxAaJsgPxAIDypviYSPNar6GfC9XwUrokGkT9X+jeJjcDk2AsZWwn7wXjNja
         +rKT4s3sat6FGKKdJK2fd4CkWTiFiIpya7My9P/Xu1HnjxlNWZ/pfhlGH08IVLl24L7I
         OhB7ujeioDdufml/hIXRqcAeONcMx8SNByqvA/9p3w8YcOZX//21/rrObrYhwt2VBYN6
         24YOBL8NMP1+NLscumqjeMG98VnpkMeYudNf8rPVwBezZbXjRobzkN2yYzGabE7QYoO/
         uYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709544122; x=1710148922;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JAr4YTs6OYz4sHdNR8I3/fL33pJVohw/dbBd1K+RGHM=;
        b=GIiLeo8NXmqNOBtqzqZDVkWnp4JY1t2wS3wan3LmCjhNucD1UHyqgNgtWyycf8ioKT
         3HU5K94ZocPKPYuweripsnBVckOz8sieJslYWF7zbD1nt3SCYJKsCsNJFi8jNkqBycvD
         J2eVDUwYvstgP4n09qF9OfplwqrrcEOuQoKAlB16dd4SftkgUWMO1XTNKEDnZL9qR1xL
         ijXQ0My3VskvvfWjLIewpWSFyPj1R7Ei0Mzx0m8ItPXkJN4L4khW7tRg361HTzBFTSmr
         XgqWICOnJuH4ht3XMtnNxXf6tgvKX9hOTbwJUYBbGZ1Uxe8eO8XGHNAOC12WUALABRp+
         hC/w==
X-Forwarded-Encrypted: i=1; AJvYcCVahSQHFXEoMdV+YEL5ge9lSs244tH4wQs8OGjqitrTrmbrHXJyuSutTLQLXNLpDgXME9VhdGCr1RFxyY9osUyTIBeEiMfZI3ImKA==
X-Gm-Message-State: AOJu0YxSmj7xnxQ7dIJHjFfNQPJfClXUJDE2fKXjS6adnAGVd6M5oIDn
	5McjM+ZFYjDsCfCnWWxUMj/pT98lqYEZnYSacSsmvtLuRe+9t4dqu3NXsMGv463u02RY6p7VtRg
	JYhUmFF0AXCseEio58en2fEB2oHo=
X-Google-Smtp-Source: AGHT+IEk72zj+/1J0K5EFQ8Q8bwe9XNRzyaB0LC8t4Fnpf1gaMjLEpKvM7PTriFm+IqnqnmtHrHTs5yJ1WA4B7kfmKQ=
X-Received: by 2002:a05:6820:1c8d:b0:5a1:25fc:7bdb with SMTP id
 ct13-20020a0568201c8d00b005a125fc7bdbmr4288137oob.6.1709544122385; Mon, 04
 Mar 2024 01:22:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
In-Reply-To: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 4 Mar 2024 14:51:49 +0530
Message-ID: <CANAwSgTnsPWypWSoqzFfJBMLEdN=UdSz0n0vhDBD0QCsvXPYdA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK356x
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Dragan,

On Mon, 4 Mar 2024 at 00:35, Dragan Simic <dsimic@manjaro.org> wrote:
>
> Add missing cache information to the Rockchip RK356x SoC dtsi, to allow
> the userspace, which includes /proc/cpuinfo and lscpu(1), to present proper
> RK3566 and RK3568 cache information.  Also, it gets rid of the following
> error in the kernel log:
>
>   cacheinfo: Unable to detect cache hierarchy for CPU 0
>
> The cache parameters for the RK356x dtsi were obtained and partially derived
> by hand from the cache size and layout specifications found in the following
> datasheets and technical reference manuals:
>
>   - Rockchip RK3566 datasheet, version 1.1
>   - Rockchip RK3568 datasheet, version 1.3
>   - ARM Cortex-A55 revision r1p0 TRM, version 0100-00
>   - ARM DynamIQ Shared Unit revision r4p0 TRM, version 0400-02
>
> For future reference, here's a rather detailed summary of the documentation,
> which applies to both Rockchip RK3566 and RK3568 SoCs:
>
>   - All caches employ the 64-byte cache line length
>   - Each Cortex-A55 core has 32 KB of L1 4-way, set-associative instruction
>     cache and 32 KB of L1 4-way, set-associative data cache
>   - There are no L2 caches, which are per-core and private in Cortex-A55,
>     because it belongs to the ARM DynamIQ IP core lineup
>   - The entire SoC has 512 KB of unified L3 16-way, set-associative cache,
>     which is shared among all four Cortex-A55 CPU cores
>   - Cortex-A55 cores can be configured without private per-core L2 caches,
>     in which case the shared L3 cache appears to them as an L2 cache;  this
>     is the case for the RK356x SoCs, so let's use "cache-level = <2>" to
>     prevent the "huh, no L2 caches, but an L3 cache?" confusion among the
>     users viewing the data presented to the userspace;  another option could
>     be to have additional 0 KB L2 caches defined, which may be technically
>     correct, but would probably be even more confusing
>
> Helped-by: Anand Moon <linux.amoon@gmail.com>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
Thanks, Please add my
Reviewed-by: Anand Moon <linux.amoon@gmail.com>


>
> Notes:
>     As already agreed upon with Anand Moon, this patch replaces the submission
>     of a similar, albeit a bit incorrect patch [1] that appeared a bit earlier
>     on the linux-rockchip mailing list.
>
>     [1] https://lore.kernel.org/linux-rockchip/20240226182310.4032-1-linux.amoon@gmail.com/T/#u
>
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 41 ++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index c19c0f1b3778..6dfb2d47d3d0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -57,36 +57,77 @@ cpu0: cpu@0 {
>                         #cooling-cells = <2>;
>                         enable-method = "psci";
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <128>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l3_cache>;
>                 };
>
>                 cpu1: cpu@100 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x100>;
>                         #cooling-cells = <2>;
>                         enable-method = "psci";
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <128>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l3_cache>;
>                 };
>
>                 cpu2: cpu@200 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x200>;
>                         #cooling-cells = <2>;
>                         enable-method = "psci";
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <128>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l3_cache>;
>                 };
>
>                 cpu3: cpu@300 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x300>;
>                         #cooling-cells = <2>;
>                         enable-method = "psci";
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <128>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l3_cache>;
>                 };
>         };
>
> +       /*
> +        * There are no private per-core L2 caches, but only the
> +        * L3 cache that appears to the CPU cores as L2 caches
> +        */
> +       l3_cache: l3-cache {
> +               compatible = "cache";
> +               cache-level = <2>;
> +               cache-unified;
> +               cache-size = <0x80000>;
> +               cache-line-size = <64>;
> +               cache-sets = <512>;
> +       };
> +
>         cpu0_opp_table: opp-table-0 {
>                 compatible = "operating-points-v2";
>                 opp-shared;

