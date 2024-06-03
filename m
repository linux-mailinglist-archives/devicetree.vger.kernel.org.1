Return-Path: <devicetree+bounces-71899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B6E8D8609
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 17:27:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 128CA281884
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 15:27:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B9C12FF8B;
	Mon,  3 Jun 2024 15:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Kr9fLkjW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002271304BA
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 15:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717428448; cv=none; b=a8bEtykikMo99TeCDQ7lUYTGGrXHwMr4RkiSn5299JiI2S9fz+axdMqaNuFQiNhcbuKLLif4dqOqPSh1Tf7Avt5TjcZw5FMb7LNbEzOtN+GVvD4EOBkaDahnfRHKTw0Vqxt0SlLuya8MjMMSlkSv3bLfk+lCMkzFeu0ux5VMDFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717428448; c=relaxed/simple;
	bh=SXVAUYuBVvyG9bJHg70o7CBVGk1DxD39f2tNbedrQxs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lykz4+dQ+fHYrwpfhi06TFybzIk78tBExRtN3AO45bHT87t02qHiS+JSbdjdx1PaAUWeQ5WiPuQYIWA7M7rNZTLUmQY/cJELCF4/x4yRfNosBmQMznxJJtFOJ1NHeI+FGB4K56zpm6iKpyV0CX431HYYAh19L00K7Ziv62gK4VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=Kr9fLkjW; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D9E23412D1
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 15:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1717428444;
	bh=Fr+lwAk3qfyLZR/E+av3Bn4ZLoKvig7SyD53fLchvOA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=Kr9fLkjW4ypEzgf01sM+hdKJNqGs/G2WpeymSPq/S2S51zRsZtfUQ7B7aVtjx/Jvy
	 kS6t/ubBrxM8kBKdDg00x6JYMmjKcsLnl1+ReFhrI3GED04HYBKS245domWNhlvr7O
	 RwQdspyleavCy6+LjLLQLGfar89Vaj3sV3MrtqmmCE+jdHp2Uh/U1ppGvSNVVFXkeb
	 F1fM4UAiuGo6yWE5tvD6achG6FLR4DdRRoWw2emrE+VgpRfZskzyUR+cG64XkougkO
	 sKXLU3Iu+FXkEN6DA/2Mu0c0mcvF/IJqsGtAgVl4we7JyxVtQtNptrPBWGlyx2D5Aa
	 IeBA05fraYR7g==
Received: by mail-lf1-f69.google.com with SMTP id 2adb3069b0e04-52b88c558a5so2818516e87.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 08:27:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717428442; x=1718033242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fr+lwAk3qfyLZR/E+av3Bn4ZLoKvig7SyD53fLchvOA=;
        b=t3wz1ptpjY6v6hqmYek5/3UryTejbUtnlOmn5EuLcabFD/1mC14GBDr/aepcPtg+gy
         QlqbKwPeaaX+SiTTSlAoARj8zLBdu3iZot6wrGz8LAE0mAFcQlNe5FiFr1kC62dmf89J
         2SmpPuCtUKm4O5vnkgdCtpu5/zAf7xP+/N8Ap7AsIChJpg8ddXWwr7HEuxGOhfK5BIQe
         y6n0lU6E+eJ3nBvjR352J5GvBfrifSKXO9B0wn5V7fwDuLEnLgSbIZ9vOcY1OibCOREZ
         LSyh07AFcIdxzAhCUhcvW53/4kaBHsbt8x6zd1FxJmxGIyxCjy8g+wE3oa20SgtIr6Ic
         gTcg==
X-Gm-Message-State: AOJu0Yz0CSj5JypLky14nJKLbGwPB0BkABpBzdXrQ0IPKRjV5f9+BHmg
	eLR4sSu8/C/Z3dJAGSdVFMP/AXr2HSXkIzJeaLmwr+ujXv08BMUt2KTJH+z67XAwj+H2lk3URY8
	SKNBIsWWi/Ds1AvWc+c3f98keVyPHD/Q1qNO8LPphqXl28j4WAOd9zRGkI8KC/gPN5Zs2LcW794
	w=
X-Received: by 2002:ac2:58d8:0:b0:525:32aa:443e with SMTP id 2adb3069b0e04-52b8954e931mr7769747e87.17.1717428442716;
        Mon, 03 Jun 2024 08:27:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4tA4IuchCsdrErWQrGd4V6yhmYuIPHnknJtEIeTtg0eU4jolMUpFBqZbhOrx6k/P93dx1fw==
X-Received: by 2002:ac2:58d8:0:b0:525:32aa:443e with SMTP id 2adb3069b0e04-52b8954e931mr7769726e87.17.1717428442197;
        Mon, 03 Jun 2024 08:27:22 -0700 (PDT)
Received: from ?IPV6:2a00:20:d00b:f75d:a576:8b02:7e96:f388? ([2a00:20:d00b:f75d:a576:8b02:7e96:f388])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68a53d38bdsm402013066b.172.2024.06.03.08.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 08:27:21 -0700 (PDT)
Message-ID: <8e50216c-2a3a-4946-ad90-9d66c6aae20c@canonical.com>
Date: Mon, 3 Jun 2024 17:27:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] riscv: dts: starfive: Update flash partition layout
To: matthias.bgg@kernel.org
Cc: devicetree@vger.kernel.org, aou@eecs.berkeley.edu, duwe@suse.de,
 linux-kernel@vger.kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 kernel@esmil.dk, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Hal Feng <hal.feng@starfivetech.com>,
 Minda Chen <minda.chen@starfivetech.com>
References: <20240603150759.9643-1-matthias.bgg@kernel.org>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20240603150759.9643-1-matthias.bgg@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03.06.24 17:07, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <matthias.bgg@gmail.com>
> 
> Up to now, the describe flash partition layout has some gaps.
> Use the whole flash chip by getting rid of the gaps.
> 
> Suggested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>

For flashing larger firmware like EDK II it is helpful to maximize the 
partition sizes. Thanks for sending the patch.

Commit 8384087a ("riscv: dts: starfive: Add QSPI controller node for 
StarFive JH7110 SoC") 
https://lore.kernel.org/linux-riscv/20230804020254.291239-4-william.qiu@starfivetech.com/ 
introduced the current layout.

CCing Starfive's U-Boot reviewers.

Reviewed-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>

> 
> ---
> 
>   arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 7 ++-----
>   1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 8ff6ea64f0489..37b4c294ffcc5 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -321,16 +321,13 @@ partitions {
>   			#size-cells = <1>;
>   
>   			spl@0 {
> -				reg = <0x0 0x80000>;
> +				reg = <0x0 0xf0000>;
>   			};
>   			uboot-env@f0000 {
>   				reg = <0xf0000 0x10000>;
>   			};
>   			uboot@100000 {
> -				reg = <0x100000 0x400000>;
> -			};
> -			reserved-data@600000 {
> -				reg = <0x600000 0xa00000>;
> +				reg = <0x100000 0xf00000>;
>   			};
>   		};
>   	};


