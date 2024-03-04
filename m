Return-Path: <devicetree+bounces-48040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCF386FD25
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 10:22:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13463283BA7
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F95E1B802;
	Mon,  4 Mar 2024 09:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lji8M73+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D083E20B33
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 09:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709544138; cv=none; b=D27dN5ETVi3tVfQn0KFxFoXzS1t763fKz716NkjxFMjFAA+xccVub1kbYvDFUvPe9Ydy2RVWq4TV/SESux3XUpBoaCSV+fKR0XO6KHPogvYlk8byxUSbIurWmzvarxW9AewM1clYXztD0aENrgyyqOGaqXRI/JD9AC/GADu8xFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709544138; c=relaxed/simple;
	bh=ZDZfwno4UD5YXZeSKa0Tkqm+EDSs4nz/fA5md6OEv4g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WWgLeb9AJMu2zKhkG2VtIzqgvp0yLp4IQuFeF21KMXXJ7ArosvZDtG3aukzkUGZysgiREamgaIvR+y1qtijkrs91pEVcmJSJ8VqMns7hbu9CupkdM9Kq7R7QefKeOXBJsW6z+I1y8h8Cw3cIcScIEYtVfhgJvfBARGzW1n9tHQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lji8M73+; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6e4eaa4b394so150590a34.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 01:22:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709544135; x=1710148935; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VIGROwElxYBDFKdR2OEr76QXPcyQLI4qLA23vfP1Gxk=;
        b=Lji8M73+xcxrqLAf5dqagwv6kIgM1T2naCG1MKHjiErUCTd88VptlL+oAf5SzIumTa
         fuEjmuZ5Sa8Bdlpo9R2Wg39gB6y3iXY/kMzXs3GDLEqHIHbEXsbJ5fHiXaqJBiublW3K
         Rxloq7XxTu/dExYUMz+Y1zrvvrnDV9hc/FvfcKMcilDsjqHjRs9af9AVLGet8mGqPb53
         kGGboKZMCUeU7jhQfZT8m39/1W/U5vpmb3RngyRM9x5bT7wVTOvueE+j2gz0LGXpEA+r
         ueuEBHrQ7L48P3IXvG2hlzCxU8Ea+y4pWAYFgT0v3fBhw2P0PvSBg0/7BrB6Cjcu3I+c
         nKTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709544135; x=1710148935;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VIGROwElxYBDFKdR2OEr76QXPcyQLI4qLA23vfP1Gxk=;
        b=Azg7p7AGUWMBx73pTEI00YpQlcplCVHik+g/U/nORkQujCQ8RbTngs2FSoRjrezA+T
         vMlaTaabXvnyEu7JdMAKgcA7Ctrlsvt281tjPBc6yYhmMNE9M+784Ht6xVLvEt4u68Xl
         hSCkSyiuCmFwqnlqbdjjLV2a+dzbNTIYwC4OvNn1zgzEok5d/lUc59oQHATdTJM+NOF1
         a0+jsF4vAJI0W8yZSejGlVWvjqyv/hcO9+z7xTcSLb1r+aeOa92uAZGf5ZitOZOVmMIu
         4opbcUtUIw9dK8+zWOQbNg8b/+j+zroQ32FkTKp6RTkVVUBda87hTB8xzori6IZN9+6k
         28Rg==
X-Forwarded-Encrypted: i=1; AJvYcCX4PGK76vCZLCiineH4CD5I5IC1+/IJ8YOwRnPmSZmniUOK4krmAHTOz/wNrtcgQ10rN+whybPqhJzux6RqCpGy4GXuTVrhjVyisQ==
X-Gm-Message-State: AOJu0YzDXWRgaJv6ne/5+cVX4aI0eUPfj1YgD39jom2USoqTBla+lWyP
	Fg2T5pJMmqH3qWHvBwc8O0VM21CVl8u6oLZe2/JPi02hWUP8K+fTw00R8u8XRCPsHxS6QSIlfuc
	I3V7i27rGEZxON7z2ODN2wIKP91I=
X-Google-Smtp-Source: AGHT+IEDFS54NU7VZ0W4QeHHmuYTu3w/hkLn8CMvVMriFTFm3qXOpY52opuKvevSzwl3VFJ/WmaRMFNRsxUWAqO/50Y=
X-Received: by 2002:a9d:67cf:0:b0:6e2:dec9:2b8a with SMTP id
 c15-20020a9d67cf000000b006e2dec92b8amr9693847otn.32.1709544134755; Mon, 04
 Mar 2024 01:22:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org>
In-Reply-To: <e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 4 Mar 2024 14:52:02 +0530
Message-ID: <CANAwSgRRHA=njnH5q8iiUvBn3Ogm75STEZseP7Z-pZYM-OzsTQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3328
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Dragan,

On Mon, 4 Mar 2024 at 00:35, Dragan Simic <dsimic@manjaro.org> wrote:
>
> Add missing cache information to the Rockchip RK3328 SoC dtsi, to allow
> the userspace, which includes /proc/cpuinfo and lscpu(1), to present proper
> RK3328 cache information.
>
> While there, use a more self-descriptive label for the L2 cache node, which
> also makes it more consistent with other SoC dtsi files.
>
> The cache parameters for the RK3328 dtsi were obtained and partially derived
> by hand from the cache size and layout specifications found in the following
> datasheets, official vendor websites, and technical reference manuals:
>
>   - Rockchip RK3328 datasheet, version 1.4
>   - https://opensource.rock-chips.com/wiki_RK3328, accessed on 2024-02-28
>   - ARM Cortex-A53 revision r0p3 TRM, version E
>
> For future reference, here's a brief summary of the documentation:
>
>   - All caches employ the 64-byte cache line length
>   - Each Cortex-A53 core has 32 KB of L1 2-way, set-associative instruction
>     cache and 32 KB of L1 4-way, set-associative data cache
>   - The entire SoC has 256 KB of unified L2 16-way, set-associative cache
>
> The RK3328 SoC dtsi is also used for the single RK3318-based supported board.
> Unfortunately, no datasheet is available for the RK3318, but some unofficial
> sources state that its L2 cache size is the same as RK3328's, so it's perhaps
> safe to assume the same for the L1 instruction and data cache sizes.
>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---

Thanks. Please add my,

Reviewed-by: Anand Moon <linux.amoon@gmail.com>




>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 37 ++++++++++++++++++++----
>  1 file changed, 32 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 7b4c15c4a9c3..ac2846c33dc9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -46,47 +46,71 @@ cpu0: cpu@0 {
>                         cpu-idle-states = <&CPU_SLEEP>;
>                         dynamic-power-coefficient = <120>;
>                         enable-method = "psci";
> -                       next-level-cache = <&l2>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2_cache>;
>                 };
>
>                 cpu1: cpu@1 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a53";
>                         reg = <0x0 0x1>;
>                         clocks = <&cru ARMCLK>;
>                         #cooling-cells = <2>;
>                         cpu-idle-states = <&CPU_SLEEP>;
>                         dynamic-power-coefficient = <120>;
>                         enable-method = "psci";
> -                       next-level-cache = <&l2>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2_cache>;
>                 };
>
>                 cpu2: cpu@2 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a53";
>                         reg = <0x0 0x2>;
>                         clocks = <&cru ARMCLK>;
>                         #cooling-cells = <2>;
>                         cpu-idle-states = <&CPU_SLEEP>;
>                         dynamic-power-coefficient = <120>;
>                         enable-method = "psci";
> -                       next-level-cache = <&l2>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2_cache>;
>                 };
>
>                 cpu3: cpu@3 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a53";
>                         reg = <0x0 0x3>;
>                         clocks = <&cru ARMCLK>;
>                         #cooling-cells = <2>;
>                         cpu-idle-states = <&CPU_SLEEP>;
>                         dynamic-power-coefficient = <120>;
>                         enable-method = "psci";
> -                       next-level-cache = <&l2>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2_cache>;
>                 };
>
>                 idle-states {
> @@ -102,10 +126,13 @@ CPU_SLEEP: cpu-sleep {
>                         };
>                 };
>
> -               l2: l2-cache0 {
> +               l2_cache: l2-cache {
>                         compatible = "cache";
>                         cache-level = <2>;
>                         cache-unified;
> +                       cache-size = <0x40000>;
> +                       cache-line-size = <64>;
> +                       cache-sets = <256>;
>                 };
>         };
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

