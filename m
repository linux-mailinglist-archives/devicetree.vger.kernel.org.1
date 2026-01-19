Return-Path: <devicetree+bounces-256906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B496BD3AB53
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2FD2307FE76
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3A136E47F;
	Mon, 19 Jan 2026 14:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Zro+wjvY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781B2376BF8
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768831608; cv=none; b=fo9Moca4hsEoNeboQM9uKIMeT8QBnoGQDGFon43Ti5ItKkKj2EXZpBmPaq3wucbQxPODbkFQHmiFvp25iA87XtyHiS9tEyE4iLBqM8Naghux1FA1/4oyyaBFoTl0Tc/b4eOr1JAno7aecSGPYFkUdhOtRob8exzH/huIogZveuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768831608; c=relaxed/simple;
	bh=PaO//h4aaHpeXDKTCutId0QKH8llt3+YpQISpJCLbuI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fyXPhlDWO9ojHdpV5ig/Eh1SX6N0L9b5834HV2WJgB9OwwAjT2XUh/ivpKQ4cYVO84Q/IlwudPUhh/SddHxCwPx9gWizXEE2jtLmbdpBts+hCvkhwB0bNVtLqFGC+43jK+S16X2dkh+sR2vmUBcIqw3BS8i/36PvzZzXznSlY8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Zro+wjvY; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa4so3842892f8f.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768831604; x=1769436404; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NYbPS1Q1egGiEf+FowJflS+CPH/nAP63ilv5+paqrac=;
        b=Zro+wjvYnlwdzhnKyDhs9ZwuUFG9gdqikr6/HWBhWvQZHjBJzodIaSZgCmgYbacTga
         aS46SGkJG69+rIPMMuAYSIkCm3gkclmMCSGKctjKFnrreHZFINpTtA3ojujadP8gx2LK
         xUiZeBJ2fcUGGyeqkfLYyX6yRP7btWg9AUKznBEcgfWFdk0HNeX0KJXRXVDWlH5taI+G
         nH5nf3XfuSMUBY9tu0/LSjRpjMlDFETW6AR2/B7IE/n8VRRgksP+kboYZ1znzWuGwb0A
         OVw8SOxtpsG1W5JhKmhSlsYSb91eHaUqnJhXTSEwvUKM8Fq3OuYldQ+FBZyJ8QuriJgm
         7AZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768831604; x=1769436404;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NYbPS1Q1egGiEf+FowJflS+CPH/nAP63ilv5+paqrac=;
        b=e3Uuy497NKGXqDKYJNPaCbbwc2vx5xND33G4WR/re/ooedyI8FfmxBrlhKfTKEv3mh
         FOdbPQceXTgowsurznGGqcWNl7Yy2WT/GxJ4NkwYprEIgew5nvf7nUXdY7tF8sEcufNy
         CwGoZ50CBpUpwJjrbEcDgSwK9hDC5OIdDerzZ8MgOYKe1lCFH3mzpoRiHrbe3bdEYEkq
         VV034ipRJjUrXUp/6AG/vBa5BAgCdfBKLHfsDZlh6elo9b7gk4rd104IRjG0J8XFGXsB
         CO1p9vMdpmYHbS/CGgEAbLmxhvStNcmrFiofi6oQFhmXHq5p0avKvZRUc0+IE+uXAYwq
         wx6A==
X-Forwarded-Encrypted: i=1; AJvYcCV7b4Rxugv/B0H5doiD4u1aIiwo5ujKcGWavR7wy8Yrqi+v6bV+BYJfSSr4V7ndOcu+5dNlCjvIm9/8@vger.kernel.org
X-Gm-Message-State: AOJu0YzHHTSlga37WTksd2VjRdzbW/ojAbrbYzR7fi6soHz+DAXCYfNY
	9WrxpJIkbsiI5oV38g6Ou4m3NiEP49rlldd4WhMqKt8/q15sNPJhfPTvxiPK/RIxafw=
X-Gm-Gg: AZuq6aIuVdCg6THjME0RGDWz8l+oHOgF0RKC+iQ+id4QUjUU/MlcK6EsimcGF2gaN75
	ZNhzTBiqkPf5iw5qtAvGO58DrndeSU16UpV77EXtK49MNSiNTGtlVHJlpiIWmCcILxF/DV/fD0R
	c67RYHTSASvorSjEVIotx+OqlpLdwLd0v3dbQMsMYsg9hUMhsPYkKCeRmi1/rJ5MQ0AwXtRP8gv
	Sa8CJiLRaChoqRa+Sig8qEEzA4Zzp+Z9Tuji6OzuFIhg/RhZ96iS1a9reFiverYEiv3A/Jll2cM
	wYlLCMP2yPfgdF+QJ2efb8zYWDZ9rg2OjdR/eG+kNNsU05lLKcQG0jSWOMxq2Dzdj20tfcfW+r+
	fpTj0LYodc/E52BJaUH0Ye0xLXnjKq9LlejqNgOLNMDnBZPgmOAPnuIq9yNNmDTFZA7wbXdVgNN
	yU5YI3AHP7XZv2UioDEA==
X-Received: by 2002:a05:6000:2c05:b0:432:84f9:9803 with SMTP id ffacd0b85a97d-4356a033304mr13973113f8f.3.1768831603708;
        Mon, 19 Jan 2026 06:06:43 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435699271dfsm22767776f8f.15.2026.01.19.06.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 06:06:43 -0800 (PST)
Message-ID: <ade158ba-0532-4eb0-b95c-5c7de16b490d@tuxon.dev>
Date: Mon, 19 Jan 2026 16:06:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] PCI: rzg3s-host: Fix inbound window size tracking
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com>
 <20260114153337.46765-3-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260114153337.46765-3-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, John,

On 1/14/26 17:33, John Madieu wrote:
> The current implementation incorrectly resets size_id each iteration
> instead of accumulating, causing incorrect remaining size calculations
> when mapping DMA regions across multiple windows.
> 
> Fixes: 7ef502fb35b2 ("PCI: rzg3s-host: Add Renesas RZ/G3S SoC host driver")

Same here with regards to the commit title.

> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
>   drivers/pci/controller/pcie-rzg3s-host.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
> index c1053f95bc95..205b60421be1 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> @@ -1313,7 +1313,7 @@ static int rzg3s_pcie_set_inbound_windows(struct rzg3s_pcie_host *host,
>   
>   		pci_addr += size;
>   		cpu_addr += size;
> -		size_id = size;
> +		size_id += size;
>   		id++;
>   	}
>   	*index = id;


