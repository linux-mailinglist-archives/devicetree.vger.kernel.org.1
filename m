Return-Path: <devicetree+bounces-255605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D32CFD24B04
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:13:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B528C3008728
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7405D39E6F5;
	Thu, 15 Jan 2026 13:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="e8KMlEet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718CD39E6DE
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 13:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768482806; cv=none; b=I+QtQ7U49ljYbugcv/Ue523DNroh18bqqAePQKjvGHNCXyBR3bbkQBvZ/m6NHRHJ/etrUPSNeBCXy8a0biBRRMwr1+VJor7obqWZDBu6JiEvK6qB4SYJ8gtrmbkZpv4XV2NGIPTGZ5U7X4K57JhHsngoPgD60ajI9ZqJyEQf4t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768482806; c=relaxed/simple;
	bh=oGBIY8OHbiaA6AKM7iezNk4OT2UqUM41E+jU3AXFh04=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ilJ1jy2Ba8fc29Ji8YhWICbxdXSuEJu8PkCkEwkOnbEd1tifK8brlvSplWZGix8kBInNEmmdn/aEVs0XIBZry/Umn+uAT0UYk8WmxcOSK5dglTGTqcMwej3QX/gYztLzC7uop51zlnsX9/wM4rr1m1eDqEatYj7tHtcsE21U8Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=e8KMlEet; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b86f3e88d4dso148627466b.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768482803; x=1769087603; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OcKT38A0UUvdoSzqayVq/UaeSYTimcTVzwN0DmjbeBE=;
        b=e8KMlEetorsdjlDu4nCOoTy3aocLVWJp4SGBuk7cPT/nyqbs17/jVUSlljjAcH0029
         YjJoNxfiJo5dWfbNVhiiFRZDoPxNpNAe4olDxz1YnU84kktRng7PUK+VuLwzBWrmrgMv
         Pm/GaxLWAJN4ulMJAvrmwnpg2E7P3NQHa0L4IwkeO8THc7G2QGJSgEOVwxWMBy6D3wtF
         RuFbc1t53DtFvVMIAxL/9TM8eTH8nJvXULwWBrWe+87wfngBJ7tvd50bi4gS4z7Qcctn
         SYx+sBMVhLtdc83/I20p+/2zFWwYP8AUCpr9hbFV7QSQyl3gk6i7jjHGKFvko6GrY0Ge
         8Fhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768482803; x=1769087603;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OcKT38A0UUvdoSzqayVq/UaeSYTimcTVzwN0DmjbeBE=;
        b=UwcPabDEYCD/82dvyTGw1/SVPT8Ko4+FdRjPr1QrRlwvM/lYra3qSjdM/3sh6eV2H3
         Hrd2ziThqUJFpOLce0ljvIIS7LxmK21cCGX8lZmlKMfEsDszk9K++moMrt/s+othFMXY
         R1S/EmWQ5qAj8pvD3cM8s+9fNLHDEcshhrsLnaW6jIm73GKFcH4Eg2B+RTjcJi97IxSL
         /6hif4fwZC3GI4T4N0DowvFZOYNhBkV8/hdViBukdOvLoy7vE81eclXavxXWZJh8lOl3
         fcCG/Kp5+4aSC1AG3ot5iI7MK5zApitxDEhqCqnjHvoETxkMZgvzveXVM2qVxY4Wd9rH
         /bjg==
X-Forwarded-Encrypted: i=1; AJvYcCVCYrsXg4YDi21Fokw6wO+dvMdLVhpjTM7zVIa2Wm3w9ycJS+/3AvH+Ic9B0ieMK8daBH76ZW1d8eUr@vger.kernel.org
X-Gm-Message-State: AOJu0YzbPABlM97abv8yb3TA885c8mTRw8tmo6Tiur1vqr+jtlOkOcgH
	EdSzrMQ12Mab6HV8+XGK8L169eG8g5MZbF4w7RM8QsdMQMzUIYWc8IsvjwCRp8hnd7U=
X-Gm-Gg: AY/fxX7xPfm/ioZWUm88a9njO7ll8PDS62Br3agMLVpIKAt8AQkCd1RhM3T1u0ceFLU
	POI4/2VWDnLmJnhQsEVYCZjrZ9KRIEEdDVupiS2p4VRnZgEatQIAC+MFUWPKNSVIft/TQO6ACpf
	lEG7QDi/J9LQ383hq6QclXSBVPRP7y2it5QlIQuSJmfDrM97mhofSvwE60ew0c8SVjTYEkC7bY2
	92hIduVrHzhJw3kBCPDWNMYKeBPgq9b41+TSgS1i9/+0ky8uk+Rnf+BtEPGnnLstg3/UzfKrWwI
	FJV3n5YhzJL4uAE7173Jlmwhn83m8FPvzGj1ecENqw07eAKgBXsGDEGNOVeNV3CPzxwd21XhUV2
	VeYkArigCDvn44LKnVSMbm30IvmuLvtvUqD5G3+JkLbIA2YFHnr2mL3WKIR089G8Gj6cDTSKSSJ
	n400L1Hh7Tr5NUzEtP8gLwpqREgWAE1g==
X-Received: by 2002:a17:907:72c6:b0:b87:5d59:8661 with SMTP id a640c23a62f3a-b87677a7930mr370290966b.42.1768482802627;
        Thu, 15 Jan 2026 05:13:22 -0800 (PST)
Received: from [10.78.104.246] ([46.97.176.64])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654118772e5sm2534012a12.4.2026.01.15.05.13.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 05:13:21 -0800 (PST)
Message-ID: <2e05a458-b055-44d0-91d5-63091b9eab91@tuxon.dev>
Date: Thu, 15 Jan 2026 15:13:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/16] PCI: rzg3s-host: Fix reset handling in probe error
 path
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com>
 <20260114153337.46765-2-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260114153337.46765-2-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, John,

On 1/14/26 17:33, John Madieu wrote:
> Fix incorrect reset_control_bulk_deassert() call in the probe error
> path. When unwinding from a failed pci_host_probe(), the configuration
> resets should be asserted to restore the hardware to its initial state,
> not deasserted again.
> 
> Fixes: 7ef502fb35b2 ("PCI: rzg3s-host: Add Renesas RZ/G3S SoC host driver")
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
>   drivers/pci/controller/pcie-rzg3s-host.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
> index 5aa58638903f..c1053f95bc95 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> @@ -1588,7 +1588,7 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
>   
>   host_probe_teardown:
>   	rzg3s_pcie_teardown_irqdomain(host);
> -	reset_control_bulk_deassert(host->data->num_cfg_resets,
> +	reset_control_bulk_assert(host->data->num_cfg_resets,
>   				    host->cfg_resets);

This now fits on an 80 chars line, could you please update it like:

	reset_control_bulk_assert(host->data->num_cfg_resets, host->cfg_resets);

Thank you,
Claudiu

