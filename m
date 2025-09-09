Return-Path: <devicetree+bounces-214932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8AAB4FB5D
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:37:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1354C17CE90
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9F93218D0;
	Tue,  9 Sep 2025 12:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="izwKUf0p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CF218DB16
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757421417; cv=none; b=cTS8ThNWagH09RPmH8aYw0U2DqB+zZtAaDd/81LM4ACGsKsTLV4kL/OywNWlmVtIOaoPQza2j9aS1fTQnaINnfISFDfXoZrsvRp7xw/o/Akn/UnJkyi9rbzC7Tpji7LjgI5ZJ9dFTJwEs1mwbjXqu9KrhlsVe8+PW+FHtyXO4XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757421417; c=relaxed/simple;
	bh=7RSBmDo4JjhgbSWp1zv9ZICV40BtiJ+q2xl/9n8Cu8c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MyOJj5f7fagP2GMJNIijEpnXw6VWBQTSguZ/g0196wuOIKnYbogpZTim2NMqaogSO5lfnBy5z2ojndK4rpNh2YCZd7niSDXuS+H7gV3FDwjc74gn0b18jLTT3tM1DqUuAWrtTdEVdrjVpDdrQaZNvK5ypjoNCgVI6/kzqo3nDEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=izwKUf0p; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so36820335e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757421413; x=1758026213; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nbcerATz7q19yBkJf35/2/GZ8hE2xuowfEYu+de9/0Y=;
        b=izwKUf0pW0mXS8HPSlN4Av0Eg5rObjSHycRzmQ8NoNlFLHaamlg0NYOU+xt6Cy0jT7
         zGDHLVxcpCa0eIox9S+M6ss4RkQ9UE5/ddsa4+CN/FUS/tveNkKnboEvkbAH2U2usLna
         f7v60OFz646fxkrxgAh7F6bKolCCNviv86+8C4VRU54hD0yVgmPDsQTJlcWWizKSfrcV
         gTeCCFyfw44mOnz3UHD5KYjghJLnpubiYA5CuXrMZEX/N1AIuRyu+XnDaLVofTtJ+lMy
         sVRtuTohMdph1qsNx0my/oXcOR3HBexqo0iMpj2P1fFVvD4Dts5wJ806WQ4IoU8pyml7
         ElXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757421413; x=1758026213;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nbcerATz7q19yBkJf35/2/GZ8hE2xuowfEYu+de9/0Y=;
        b=EA8T+t8pMgea1t0rwyc+w2c5gCLqlGdOgHkjHKAjL3AM1IIcWLsQwupTwj81KLuI6H
         BWPYfDZ0ajuaL0/p+4VMsnBrdMHlGFheeHqYohLqnvy//prxdrajqh97U/uNuir4infW
         sFRzEKScpneTf0Z2Vih9GwqMx7eR/uKg2C2IGA3xdCcBxtpwi+W8Pv5ZrORRDJjaZm6A
         71/qpeyqexAPtZLGuavNa+QhU9myCP4QJkHZ9y1+J5d8JepcAkLsKl+cp7MLbjFaKyrt
         zAUu+iryR6aTYTGCCBLbayBG2Tpn13ml/Q/EfZJqoInTrTEytbQ0A+rAFbZX9KNQVzP9
         qIhw==
X-Forwarded-Encrypted: i=1; AJvYcCUFwOUPg3L+4u+NNL190QdIm7syzptB3enRjUMirSLltm38/gcYH3pqcAZNj+FddXLFAikcdlucuWmM@vger.kernel.org
X-Gm-Message-State: AOJu0YxWdoibxyniyjMlkOk3GqhITeB17+Fb8Kg05c2tO5zo0H7djO+G
	UTB31I++0mcBi5C218xkPiEjCzqUVZvNurNSYjKJ/EN7XY2pp4QvA6iD
X-Gm-Gg: ASbGncvYelZfohVf+tTD57bz89hNstCgzl5zEY9pZgyrK2hKiGNcUOnAr5LPegaN8N8
	1bpKn9CnX+6P0y4Xes0YTmkP2v7l7W+lWXkYaEHQEnaEkfGDyXqTXvEtqD5N8W2CxOiIBmY90gA
	BKQAZKdB5vDmMY4wyEM5YJzhdGsiA+O4aKdtZ/w+72fPCPbgCtdNSRXjY8IDJKOna5d/zKRJIOd
	yiKsUlZkC36i2BFIE6coiFyWtZS0keovnfDKVEqWsAjD16JQoBZzoteItC4hKC3iCWUWNqRqpVU
	8WUV0dRFV+fmqC3WhjASjOHQpA6BQ753EsPTLWFuINOUO5JWtdHV48ZRAR9ac7TdX+4s0G+nPjf
	4gJVfCaffTYPcBVQaUclE61jYk19KqtNaxZzo3Kpa7w==
X-Google-Smtp-Source: AGHT+IEOrICf6dJFeY0zHSniT8Jtaqtd61QsV62lKDpe6ZR0vlPJtkX7CquNyOygzd7DL/QMim2koA==
X-Received: by 2002:a05:600c:458f:b0:45d:98be:eea6 with SMTP id 5b1f17b1804b1-45dde1a8350mr113312805e9.3.1757421413379;
        Tue, 09 Sep 2025 05:36:53 -0700 (PDT)
Received: from [192.168.2.177] ([91.116.220.47])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd0350e80sm233690705e9.22.2025.09.09.05.36.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 05:36:52 -0700 (PDT)
Message-ID: <a908a354-8835-4e28-ac06-ec6075ba011c@gmail.com>
Date: Tue, 9 Sep 2025 14:36:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Remove suspend-breaking
 reset from pcie0
To: Guoqing Jiang <guoqing.jiang@canonical.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, jianjun.wang@mediatek.com,
 tinghan.shen@mediatek.com
Cc: macpaul.lin@mediatek.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20250721095959.57703-1-guoqing.jiang@canonical.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <20250721095959.57703-1-guoqing.jiang@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/07/2025 11:59, Guoqing Jiang wrote:
> When test suspend resume with 6.8 based kernel, system can't resume
> and I got below error which can be also reproduced with 6.16 rc6+
> kernel.
> 
> mtk-pcie-gen3 112f0000.pcie: PCIe link down, current LTSSM state: detect.quiet (0x0)
> mtk-pcie-gen3 112f0000.pcie: PM: dpm_run_callback(): genpd_resume_noirq returns -110
> mtk-pcie-gen3 112f0000.pcie: PM: failed to resume noirq: error -110
> 
> After investigation, looks pcie0 has the same problem as pcie1 as
> decribed in commit 3d7fdd8e38aa ("arm64: dts: mediatek: mt8195:
> Remove suspend-breaking reset from pcie1").
> 
> Fixes: ecc0af6a3fe6 ("arm64: dts: mt8195: Add pcie and pcie phy nodes")
> Signed-off-by: Guoqing Jiang <guoqing.jiang@canonical.com>

Queued, thanks!
Matthias

> ---
>   arch/arm64/boot/dts/mediatek/mt8195.dtsi | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> index dd065b1bf94a..50cf01452208 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -1563,9 +1563,6 @@ pcie0: pcie@112f0000 {
>   
>   			power-domains = <&spm MT8195_POWER_DOMAIN_PCIE_MAC_P0>;
>   
> -			resets = <&infracfg_ao MT8195_INFRA_RST2_PCIE_P0_SWRST>;
> -			reset-names = "mac";
> -
>   			#interrupt-cells = <1>;
>   			interrupt-map-mask = <0 0 0 7>;
>   			interrupt-map = <0 0 0 1 &pcie_intc0 0>,


