Return-Path: <devicetree+bounces-227527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BEABE2572
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6C1D486498
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 433D230100A;
	Thu, 16 Oct 2025 09:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="LK7n//8D"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9ED43254BC
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760606425; cv=none; b=QJ6ZNGSdhNQTrSsU4mXcPnTswm1RWhLZ4ZOlFwMtdPDnoQCx0CvnXWbdWpUCNmbHMk85ceV59k1Sfwq8cW1k7xbUXT96pnzxpIgszcx71qPKMqoV3jfaRyIRJKIphkQHxk6B9eCyVtvlbAMZj1bCHGq1+7F9EptDNZK8/VvZyJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760606425; c=relaxed/simple;
	bh=co2f/hF5H+j/qSupABuMRAji68puIyS6hu4YwpGwasY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y/N4NF6kwoanmabP5i5LUQUGQcRYEHzXeekXmKV6xi2P5z1E+wMhY6GeHHlEcS4B8nPxB2NywoaMO8AZkoBk6K/0WnEPzBmUYkLKo8mS1WWQoGHD9z904xdKrGj84Jg+tPB021sWZBcb3L0UHTyFLY3lzi2O7gVSVqYGooq/wgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=LK7n//8D; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 26AA13F57F
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1760606419;
	bh=OJ0lJAET4g4vdkI+q0D39xN1UQb7n+ShPw3yodFDk1I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=LK7n//8DFwcsHAjVmYZh+l6OS0t6kSvL6IhJTGD53XmQqpZ0//9tzw0GUaSA/LS8+
	 h+/nCFGhNkzYOvGjX1aKScLgKL/qGDo1ZjE5hG6T14Srl4PhqvF1y7PPlOrvo+a7zv
	 mjBc1SCsA9/9sbsxiu6Uov5+k4FONBbcisgxILu91bQyruAOwKUeMW6sSLmMiF4/U4
	 lvX9PlLs45YhPnEJIf1FmEbrk4jtbQ1jvROsLXLZknIM8KAFPNfX0UOSo0KXUhWX7z
	 6uuQIukGRjRZ4rd9z9XCx235kUPpSfavT/SLN4uI/5hBJqDdvWEzYfm5lKXRlEMbX+
	 JI3KgdlQYfkhDPFXQkYrJNBuTuuzdZHJ6JYoKwyA85GlK10sLJxda0uEZ0k3lNwoJB
	 I0NKx1e1AeGIEJMbXPfxPftd0/2AnzCFMtDxC6Q5ows6hSErDICW7hsLTKNG0P2OEg
	 XKB/ub3Jaz4LR1wHIQ8ZG0e27wtbKY0dDmtQdy24ScsvMljSUI5P8mzQyKwNDBBOwu
	 UuvwghxM/T7cGtlc8eYnMbH6zLEvfHXqqum/KWhxnAB6+QSBEG1+STb5LKaR1q7YT+
	 ywRhW+SmH3f9ONtuzbeJ78qjNLBx7ezeWnfWvwQmoQdNyeEm3xSaXMSPdDZr9HPGZz
	 Q7HkrrjMJjUkzMt6Xjs6HSIE=
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-470fcde7fedso3583535e9.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:20:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760606419; x=1761211219;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OJ0lJAET4g4vdkI+q0D39xN1UQb7n+ShPw3yodFDk1I=;
        b=HkS7DH+IFXor/fArqPc30QCSYMk/MHhej8PL5c8EXsD973CraTmOzKupwTu8HvhhuV
         OIT4khY8mfxumu6Fd7pSVfa7GoiqV9YM7J4rgwifuRzLesbk3JUBmONxZaMjqFY/0/XO
         C2VMKsaTPkLzZfDYlZwndE4laHTS0YNeXdxRNJfk9BL/pcUpjOdkC1YajcxJaT+M+JS6
         baoclolxi5S6uWdm9JeXgWZtPxH3W1xvETJmhzGMZSF6A2+rbdNqAdfgL2a/g97Lst7I
         N6dKaMiCfmlxQitfMBBFIGnVYS/9Fwyb/plOrxAgd06WakEzEZ7+qJ9ptXrOz1k12/5z
         zGDQ==
X-Gm-Message-State: AOJu0Yzn7ztWCWYttPgnkihFl59hMFwlCY9RmXVkVkrpuhfAnYno+CH5
	pxEMfpMaG4zpZjAOnznSEVU1Hg+bjBHNT+AeQtrLUvHyMDog5BI4NzjGAU9Vg9Xa2Yxb62VuWJi
	wOJx/zJyauSxHGG6TzQhCWzTIouDnVJDXtF0A8PO8UneGq22WXBpQTizVMXpJYLeAh2KYTLZh04
	IYVrw=
X-Gm-Gg: ASbGncuY7LLR+TM9ZGKng9b/Bh6eCo22O7JIjwKA8u3YvRJbi4O3BgPTMZObvSPiE62
	91gFqaJLwT1ml92imXpvN4fv4md9Ew/b2qgmpi78N+DnTR7F35ZpDRMXqpRrSICv70KPGcvic0n
	5zhRB93bVwk/XsTPDqNv1S+1dAbr/WiSYe/2AWdlLD5+dF0WXTJro1iZTOrjuA05d6hoBA1dgQm
	EKzWFKADwRlxAPnsx8a3r1PMgv2RbzbFHA13BMdZb0MKRhFeeqzz/c6Hc05JL8z2Pf53weCDIPO
	4hyEE1H9kn/UEQAXgiLEpOSJgTBIQesEIKDZIjk4JifGCAnPWD5R7iCizbn9zvMK4vqgd7fVzLR
	5uj80WjCn4ZF9QmGhlsPADXtrwVNlCuFOUHPB4fcCqJ0mA0YW4CBHPbzMeJ43L5lhAm234v7x
X-Received: by 2002:a05:6000:2486:b0:427:38b:cbc5 with SMTP id ffacd0b85a97d-427038bcbc9mr260377f8f.46.1760606418624;
        Thu, 16 Oct 2025 02:20:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWHxnhRr0zKaTqXSmx48RroXO5zvyasty5TJo0MiU49h1Rjj308rIrfJTyIkIDwj6SkbzYYA==
X-Received: by 2002:a05:6000:2486:b0:427:38b:cbc5 with SMTP id ffacd0b85a97d-427038bcbc9mr260346f8f.46.1760606418226;
        Thu, 16 Oct 2025 02:20:18 -0700 (PDT)
Received: from [192.168.103.116] (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e8207sm32742853f8f.47.2025.10.16.02.20.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 02:20:17 -0700 (PDT)
Message-ID: <48c20b5e-ad6e-425c-857c-79f76742456d@canonical.com>
Date: Thu, 16 Oct 2025 11:20:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/7] cpufreq: dt-platdev: Add JH7110S SOC to the
 allowlist
To: Hal Feng <hal.feng@starfivetech.com>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, "Rafael J . Wysocki"
 <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 E Shattow <e@freeshell.de>, Paul Walmsley <pjw@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>
References: <20251016080054.12484-1-hal.feng@starfivetech.com>
 <20251016080054.12484-2-hal.feng@starfivetech.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20251016080054.12484-2-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/16/25 10:00, Hal Feng wrote:
> Add the compatible strings for supporting the generic
> cpufreq driver on the StarFive JH7110S SoC.
> 
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>

Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>

> ---
>   drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index cd1816a12bb9..dc11b62399ad 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -87,6 +87,7 @@ static const struct of_device_id allowlist[] __initconst = {
>   	{ .compatible = "st-ericsson,u9540", },
>   
>   	{ .compatible = "starfive,jh7110", },
> +	{ .compatible = "starfive,jh7110s", },
>   
>   	{ .compatible = "ti,omap2", },
>   	{ .compatible = "ti,omap4", },


