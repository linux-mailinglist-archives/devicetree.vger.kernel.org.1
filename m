Return-Path: <devicetree+bounces-77026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD9890D389
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:07:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3827128699B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 14:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E48D13792B;
	Tue, 18 Jun 2024 13:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LxL3oUdj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD822139DB
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718718545; cv=none; b=UXCfXh/dllcsltR/7QP97ndU1P+GXxHB1CAfi48a7Zy/sdnzQGCSmU916n/q/uRi6HEgcRrIdjzGowybI20sGwutOCrE2vfex2kV06qYmBc0jRkt8YnNzEYB18RBRLRVcZQvesv1yKYfP3i9hX8+aEB0bh5C1uKvLoeNGzDqtg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718718545; c=relaxed/simple;
	bh=RQfEglGSOmvcE2rbcjSAqK36cyu7SUDZmu2GUPRzTfs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OVMdW/OOJ2JpEK085dnFDAeeACyLZofSKqiCjApOq8w2n0blNzuG2LG75EhlxJ+kneHKxwNTVI6pP2yzt64zeeIOdnL1Q0rHbuOMBcaj3Gz/DaZvj85gpG/lpya1ZKtl266KnwQEiqA/RpRaOCJTdpC40GjjjlFzklf/EKKpxSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=LxL3oUdj; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-362468852c8so58704f8f.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 06:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718718541; x=1719323341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+A6Ln/tT358tVyqKy2/noXpOlJxyAQfqx2aBkUeUUbU=;
        b=LxL3oUdjEH31k9kiOsl3XH6NKHEiBUnVYuZxkTfrSmRKu5R264OeClxecNTFY6KQuO
         EswNhLHuxJAOjLIZODpzL/HJ2h77C8HdIcwdlfN95Sec8e6ZK/B1GfRwawYxbMS99BnL
         /nOJHJZZ5TTxinbFk85FTendYG97GAbFzlTrRmLqWBjmmCct6ZjWzgqYLKSQR3ADYOKT
         nR0/7bHeIICK28tKg1vPaEMUuJOwmyPEvIv5J+fwSrnYnzeVN9uJJcJ4Hp8RupYLTwie
         VnurlAsqSeskcnjVzjsyRoNUTvBtrEsLj5RYRUbFwg18ZwiOGHWudHbv6hyMmorm5luG
         0jqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718718541; x=1719323341;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+A6Ln/tT358tVyqKy2/noXpOlJxyAQfqx2aBkUeUUbU=;
        b=WdciWIf2YwfpzsrDOe4COCnCBuf3iBFcxuHrsX5stFZG3mwvmJFkoQa5BZdx2NwSod
         SWNMpsOQ2TvlQSV8th+bNxTCJO7c2SorSFWCZ3PjwWIxlppujGmsA3a7UNWBopW3tCNm
         UX3Y+304TK2Aypm0ajGNpvL+At22neKaDSeEdRYxzab9zTQfCqxg1ppFZAU6vg4J0+lV
         1vNm2HeJ2+dCNH7dN+p/x27ZW/lOXX/g2QoFJJx5nm0UCjNu689qEeDfvksQQzBk/EWJ
         CoDh21PkiRXBLbNe2Kxgh9trTJ7JyHSi3WGCL1xi15K3Q6FwMrNQfyNLAyyG5VBe4S55
         I7DQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHG5tsIUt0y20JQWmLDCfdXUCJSahC+ufEdUFybq/zHHwFVoBNSsHxLzRRJlS75n9ZnqZxlNSci2smkN847h/TiJ9qvqAT+cpRMQ==
X-Gm-Message-State: AOJu0Yx6MyA5SSkLspFxCUeKcFUO8LE0WJa52OyCzCi2Y6FF7djiGStJ
	OtL2aEt1ekwAGkXqrBScOgV8ZVADtz4X7ba7JuBXVFegeDYm2QP9WOvcABe2Bac=
X-Google-Smtp-Source: AGHT+IGIn0V0kb2C9GfnJ/5CLyyzx+tZkHiedxvdMFuq3KLnaanaavZNpCBz2NKWlJXZsQOPYupmgg==
X-Received: by 2002:a5d:5885:0:b0:360:83d6:e2f0 with SMTP id ffacd0b85a97d-36083d6e6d4mr8940241f8f.6.1718718541204;
        Tue, 18 Jun 2024 06:49:01 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:65d4:678c:278a:2de2? ([2a01:e0a:999:a3a0:65d4:678c:278a:2de2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36075104954sm14123280f8f.99.2024.06.18.06.49.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 06:49:00 -0700 (PDT)
Message-ID: <d0abe3e0-af0f-4693-b943-57ea3fc2189f@rivosinc.com>
Date: Tue, 18 Jun 2024 15:48:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] riscv: hwprobe: export Zawrs ISA extension
To: Andrew Jones <ajones@ventanamicro.com>, linux-riscv@lists.infradead.org,
 kvm-riscv@lists.infradead.org, devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 conor.dooley@microchip.com, anup@brainfault.org, atishp@atishpatra.org,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
 David.Laight@ACULAB.COM, parri.andrea@gmail.com, luxu.kernel@bytedance.com
References: <20240426100820.14762-8-ajones@ventanamicro.com>
 <20240426100820.14762-12-ajones@ventanamicro.com>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20240426100820.14762-12-ajones@ventanamicro.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 26/04/2024 12:08, Andrew Jones wrote:
> Export Zawrs ISA extension through hwprobe.
> 
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  Documentation/arch/riscv/hwprobe.rst  | 4 ++++
>  arch/riscv/include/uapi/asm/hwprobe.h | 1 +
>  arch/riscv/kernel/sys_hwprobe.c       | 1 +
>  3 files changed, 6 insertions(+)
> 
> diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
> index b2bcc9eed9aa..e072ce8285d8 100644
> --- a/Documentation/arch/riscv/hwprobe.rst
> +++ b/Documentation/arch/riscv/hwprobe.rst
> @@ -188,6 +188,10 @@ The following keys are defined:
>         manual starting from commit 95cf1f9 ("Add changes requested by Ved
>         during signoff")
>  
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZAWRS`: The Zawrs extension is supported as
> +       ratified in commit 98918c844281 ("Merge pull request #1217 from
> +       riscv/zawrs") of riscv-isa-manual.
> +
>  * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
>    information about the selected set of processors.
>  
> diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
> index 9f2a8e3ff204..a5fca3878a32 100644
> --- a/arch/riscv/include/uapi/asm/hwprobe.h
> +++ b/arch/riscv/include/uapi/asm/hwprobe.h
> @@ -59,6 +59,7 @@ struct riscv_hwprobe {
>  #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
>  #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
>  #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
> +#define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 36)
>  #define RISCV_HWPROBE_KEY_CPUPERF_0	5
>  #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
>  #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
> diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
> index 8cae41a502dd..b86e3531a45a 100644
> --- a/arch/riscv/kernel/sys_hwprobe.c
> +++ b/arch/riscv/kernel/sys_hwprobe.c
> @@ -111,6 +111,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
>  		EXT_KEY(ZTSO);
>  		EXT_KEY(ZACAS);
>  		EXT_KEY(ZICOND);
> +		EXT_KEY(ZAWRS);
>  
>  		if (has_vector()) {
>  			EXT_KEY(ZVBB);

AFAIU, when used in userspace, this will actually "stall" the processor
until an interrupt/timeout happens, so the current process will keep
occupying the processor doing nothing (up to the next interrupt/timeout)
right ?

BTW, the spec also states that "When the TW (Timeout Wait) bit in
mstatus is set and WRS.NTO is executed in any privilege mode other than
M mode, and it does not complete within an implementation-specific
bounded time limit, the WRS.NTO instruction will cause an illegal
instruction exception." so I guess the process will be killed in this case ?

If this is not a concern:

Reviewed-by: Clément Léger <cleger@rivosinc.com>

Thanks,

Clément

