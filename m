Return-Path: <devicetree+bounces-257031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CA995D3B551
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:14:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 87914301F7C0
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A5ED35A93C;
	Mon, 19 Jan 2026 18:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="H/Pe/VtB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149C132E6AC
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768846490; cv=none; b=tpYZt0QhZ3iFbEKbZufdXqIcTHlOfzpicueuGI9iOY18BWYgl8wbWrtWKq0cFe/2QK0JPpp5GRDZq0z8RqLpwgtwf3NmIrb1mYm0jB7fFR6LFMy0cEK9a+GjuSqBiZqv1UKWDeiAVdlY55Si0N3vW8buDdvhn3dE/AdKTByD7Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768846490; c=relaxed/simple;
	bh=R62ip0d3Ah3ZHGBbnwwq68SBTIiq4tgpDhhAOV/4tbs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NxupjpKuc8tNxQyi1Gc563mb7JCHjFxzahblSw8HqlIyO8emltp/ueP65fsk833REvuHFIqZE1/H5YBP9FMihmDag10GrXADd/+FYbOe06+KBcWcfj61LjO0zftpvCQ+AOzAhG9ByQsdgwRfaHZ72SMogGaHY0AqpTMbXSyh01s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=H/Pe/VtB; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b86f69bbe60so705678966b.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768846486; x=1769451286; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bQtPqL0gQRVYb0zOyJRISSCzXN2uXU8LTr7YiBj/NpQ=;
        b=H/Pe/VtBpF9Z6wR02RTuE6UXOO7wTYwFQdENmATU+QCEpgRhAcz8WZaiKPtLlAdGpP
         jD2jDM7sOJk9fT1i7hYYmb23e9gHpSC2P6l3+MvBFo0MnyhQxvOb23cVvkltS4h9BQYw
         InMyYZkXUsj4c2H7pvNoPG+PsOcPLkoqaWikr5Bi4po1B3NYJMFduuW+jgSuIfUL+ctb
         pHnvySsoLhSeU3Rdu7KDzxz7xwx9pD95ck3KHNW4YSA1zg2+3w47Sr2ULAQT08KSCl84
         XyE7zd7W7KoOagLqOYdq8lGoHapMZA9c8yyTbwF3stzSGlFlhcqlmEP2ZqxuAYQV+daI
         iWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768846486; x=1769451286;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bQtPqL0gQRVYb0zOyJRISSCzXN2uXU8LTr7YiBj/NpQ=;
        b=PS6iK8gBF8BEMHZVOJ31nXvDCD2r3/FgoSPtpyFKBNKNutyHZZzx3oztOBW1l0EJol
         fARPj/iHQJT3e3U2PCZQNDT/aQDTioYtUcw0ndvEZOpC1IywcX2XbESwPr+3w1cQmlmv
         0a0juvlEAvtwnNStRMhzdE+cIt/nsqcnX+Zw3nq0w06EBiZc57lgxVSCjtarNlm6hZK9
         Vmrwmn76VPmEZwxTgS7JTQW1y1fvn8+5qV/OagRt9TUlGkJbX5VTKQgCuZxnzzInPOYp
         8gFv+VIQet37AVKyOpAYgFC1M8Hxw6+rt4w+6lvtTOSSzsIyf7h+im7UrQkuZUKugn3v
         Ixxg==
X-Forwarded-Encrypted: i=1; AJvYcCVwQA3n4Z1m1EdSJCM+gqiiDJ8l6W1rhrDkYfJj0yF5pEs+8n7bKwynkgIME+jHpe4uBLbBsguOz6l7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1vqK/2F2FSG/Vm7UJPAej0DspU4dEgtqYOiF0C1U/np23LcDf
	u8toBORhEegIsGD4Zvr4C19HaJfqNLE37FNez6Y/rXse/LXjv8Q7mJug6C+lT3Tiju/AeNJ/3fx
	6mDj4
X-Gm-Gg: AY/fxX7lc686ajlHPEWMt+N8sa1sd6fTwtEyzZRt34so8HJdjvBVXK4QW63eiVobHWz
	w3nzCAjGPb++46qALFrY0S9e1i5MAq8GMlmgQyUhaapja1jJzdxQX758v437P//c0Z62pdV37Ks
	J7fYCaK7qxpV6Dca7EnOes1ysUYVvwMMmYBvSbnsjiSnuJXXxrzgVegXMDnKNxHA/wd/AE3Pl52
	otC0mKWmjU+Pvm2C9uJxiiQJw9HyXOVLsc+YmnFgsvefgdUzF82zvgm7TGDUkn8yx6i+rU1g++Z
	55+T48JicRdtkxhLrnTIrgRBAegnYmWWG+z5PJPrj+40nhU/JJINW1jdXvwhNMrVopPVZhlhQkf
	YKuiBPYk9x8U0QcT2Xu/o7X20xJDK1wDNEDczO1Zfbvuhn9G4adzYuKoFqVWoDmtVOztYF8aKAc
	SXtQNMLXeX97JlLuLjtQ==
X-Received: by 2002:a17:907:3da8:b0:b77:1a42:d5c0 with SMTP id a640c23a62f3a-b8796b3ed8cmr936424266b.43.1768846486170;
        Mon, 19 Jan 2026 10:14:46 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452cdb01csm10834235a12.8.2026.01.19.10.14.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 10:14:45 -0800 (PST)
Message-ID: <724052ab-6222-4a5b-b504-334dd59a876b@tuxon.dev>
Date: Mon, 19 Jan 2026 20:14:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/16] PCI: rzg3s-host: Make configuration reset lines
 optional
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com>
 <20260114153337.46765-8-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260114153337.46765-8-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/14/26 17:33, John Madieu wrote:
> Some SoC variants such as RZ/G3E handles configuration reset control
> through PCIe AXI registers instead of dedicated reset lines. Make cfg_resets
> optional by using devm_reset_control_bulk_get_optional_exclusive() to allow
> SoCs to use alternative or complementaty reset control mechanisms.
> 
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

> ---
>   drivers/pci/controller/pcie-rzg3s-host.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
> index 44728771afa3..fcedccadecf6 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> @@ -1161,9 +1161,9 @@ static int rzg3s_pcie_resets_prepare_and_get(struct rzg3s_pcie_host *host)
>   	if (ret)
>   		return ret;
>   
> -	return devm_reset_control_bulk_get_exclusive(host->dev,
> -						     data->num_cfg_resets,
> -						     host->cfg_resets);
> +	return devm_reset_control_bulk_get_optional_exclusive(host->dev,
> +							      data->num_cfg_resets,
> +							      host->cfg_resets);
>   }
>   
>   static int rzg3s_pcie_host_parse_port(struct rzg3s_pcie_host *host)


