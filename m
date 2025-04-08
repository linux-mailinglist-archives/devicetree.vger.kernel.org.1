Return-Path: <devicetree+bounces-164524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F00FA815F0
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 21:39:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 504A73BF699
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 19:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06D3C254843;
	Tue,  8 Apr 2025 19:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="tUWjlHU0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB80253F34
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 19:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744141059; cv=none; b=mJtQQVtr7ILk5YUxKPSnfUpa8T8YhSpvHQx26FNNF/uegPWiTI3pWYyg+zW4Jz3E9R+U2YdnwiUrZBI/KJZ+S0osU56cpQI30b5ILqr9hPOFILwK/ZW1Y+/ZRYZI8EKAIBtBPpvoF5wYj4nbuF3Jtoyg9RhomL3tDEKYT+AJWUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744141059; c=relaxed/simple;
	bh=rVKeUcWubqSu6ZsfxRbi7N7hyuMsaoaOHtTFm6Zrf7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B7B5CDOfv8DsV2UcuxjfRVorBgV3yrwP1EvM67ALlueP+937LIU+y0Zlu5WaUKkeNFRBG6GooO+wLIGJC8mc/7/bhrob10sXashTMsowJ7bfQHfEtQ47O+2rWwIz6M+0mPETPHMdXOypeDQTMKwK7ixzDGbGQ1pLgSA3/GxB2k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=tUWjlHU0; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-3d6d84923c8so18075495ab.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 12:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744141057; x=1744745857; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7RqTCyVarb3HOJMAA+PoO2FMbP6+BrxJ4VIEUqNGh+4=;
        b=tUWjlHU0jseg0svHBFiNSRfTs+KVZCtBz6VdgJQQ9SYYP9kvhuC5XAItAHZYGKJwH+
         6dx55PmP++IFWY2eR/QPlk5fWaVCcbpYYZnDxsvagcl9LFsRdCnORSDaziEM6NXr1Cj8
         hFS0KvJWccJ4Sx46MPJJMsh5sabUSZaOrfMlcrhAwnfkV6ZgFvYUfxsDtdVHfymksa+E
         D8T24+WEJW3226RrSXpi0Zpv3vpq5cCIwiiriQMXLN+CcOLP10iHUOpq5rVyrXagPcFm
         RT8XJzfC0S2M1+802mnRWMu0vp1+MxXQN3EByiHarBSVFdPztwIvp2tdHF3Fg/fVhb2E
         mf5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744141057; x=1744745857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7RqTCyVarb3HOJMAA+PoO2FMbP6+BrxJ4VIEUqNGh+4=;
        b=F22QEatSCuhGBK9nwrV0z95/DitVLiSFU5W1LAPK1FL5RvsQVLq0bEcD1y9cunfwsb
         y7T1BzgMOp75Hc2x139DSm+Sm1nHKLrjcj41Uu5vyZ4SpTKxJct0vVJN9alsHo/0LT+s
         1YRzo1Mn/GhwwyY86irnZWVdwBUeikidP8P1sNfS09JhApfzY/6aru8bK8y3UHxwpMWJ
         E5Zj/5G4qjuxqdQDrQ+2XppIsjya3Qaaib7HkWt3VeAjRQ/7JlgX1NaoXDS1nptoaAoq
         PsMU4BX7JjLLIk0SmXZvmrTMT3FEiYrybWyQ1sv0COsuG4vUWARY8kFrMFBqz+mPdkpo
         /01g==
X-Forwarded-Encrypted: i=1; AJvYcCVyYAISo6XfTU4Uohdhit9mPjg45Gsiyz9VQT3jAuiytQTwKqwngBcJIJTYwpbFPsU3PsilyqRQtUJg@vger.kernel.org
X-Gm-Message-State: AOJu0YzEHU8ZNiUrvD5IZ02vgZbc+fSWHzDH2zLlqtpMmM0osEF89hJ4
	gMWIK/hjPhU3nWLTpFOjK5Ga2h5WvedVHfetRdFHbCt2KLCLeE3aTO3FskgGSnI=
X-Gm-Gg: ASbGncusSe4vsWeQ2gQHd5U2zARh0byuAS5R9hf+t7zS8kTHi0swRXEMfwQnKMy1HGi
	+276K2jO7gVBEykmhS1KT6NqQP0teunJppfM7Tq/IO0rn7x0YrsiwpPho9huW314psKMUc5nhyT
	DiY9WN2mCTFDxo6jKKeznGKpE/gsC0/dFzaRywW6gL35HcJCI7rRHRCySEaucuDggtU6reTmsMP
	3qu+4UBS2yzCOC++zORqz0rlcNK6mkNnmwxX5kpVyYlFsN/slitqyp2MaD/yjNJswCc1tp+l9wz
	nSR2BE7SZrAxScQciSsyCcqjNIIRdnCIAGD1ygTWSFNt/vJIOjeVlzYgT/mBKSO11inx8yLxIPc
	emNmLCHhL
X-Google-Smtp-Source: AGHT+IG7rW/jA34zO9YwR/Uhv4tZyavVt40Io0eZXrFxdcpUtJcFv8zQCXnlCLGlof0n9kin5siP+g==
X-Received: by 2002:a05:6e02:2587:b0:3d5:be65:34ac with SMTP id e9e14a558f8ab-3d776c807acmr2719605ab.2.1744141057452;
        Tue, 08 Apr 2025 12:37:37 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d703c0665esm5904485ab.50.2025.04.08.12.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 12:37:36 -0700 (PDT)
Message-ID: <e2c5c2c2-61a8-458d-8e95-521c5ea752f9@riscstar.com>
Date: Tue, 8 Apr 2025 14:37:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/6] riscv: defconfig: enable clock controller unit
 support for SpacemiT K1
To: Haylen Chu <heylenay@4d2.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Haylen Chu <heylenay@outlook.com>,
 Yixun Lan <dlan@gentoo.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, Inochi Amaoto <inochiama@outlook.com>,
 Chen Wang <unicornxdotw@foxmail.com>, Jisheng Zhang <jszhang@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>
References: <20250401172434.6774-1-heylenay@4d2.org>
 <20250401172434.6774-7-heylenay@4d2.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250401172434.6774-7-heylenay@4d2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/1/25 12:24 PM, Haylen Chu wrote:
> Clock controller unit, or CCU, generates various clocks frequency for
> peripherals integrated in SpacemiT K1 SoC and is essential for normal
> operation. Let's enable it in defconfig.
> 
> Signed-off-by: Haylen Chu <heylenay@4d2.org>
> ---
>   arch/riscv/configs/defconfig | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 0f7dcbe3c45b..011788d16d93 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -252,6 +252,8 @@ CONFIG_CLK_SOPHGO_CV1800=y
>   CONFIG_CLK_SOPHGO_SG2042_PLL=y
>   CONFIG_CLK_SOPHGO_SG2042_CLKGEN=y
>   CONFIG_CLK_SOPHGO_SG2042_RPGATE=y
> +CONFIG_SPACEMIT_CCU=y
> +CONFIG_SPACEMIT_K1_CCU=y

Maybe these could be specified with default values that
are based on the value of CONFIG_ARCH_SPACEMIT instead of
forcing them to be defined here?

					-Alex

>   CONFIG_SUN8I_DE2_CCU=m
>   CONFIG_SUN50I_IOMMU=y
>   CONFIG_RPMSG_CHAR=y


