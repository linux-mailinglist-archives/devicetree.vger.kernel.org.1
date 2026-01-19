Return-Path: <devicetree+bounces-256900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B44DD3AB20
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:06:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D8D0430065AE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5D836D513;
	Mon, 19 Jan 2026 14:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oijIVXgQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740B236C0AF
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768831432; cv=none; b=R6Mx2dehObLAJpumpFrq+PLnDL2bJNfiR7yWkUN+tMp7QKpHbl6R/tlPq3fkyvGVZZgWouX7C8I42Gu3ClcDRN3W9wd5p+FmVEIMfzTsa6OzgwMwh1v0qCoGzWLbgyJOaUFbbu/I5YnfoSg20bWCXNv0mdlb66dEREDZ96evhWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768831432; c=relaxed/simple;
	bh=mTAE+Uz1BGS1b5G0yeV0TYVfbfqnRu+U7F6kK79xBH4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T2T7gohCLZCqzfW6nspfbKqmu10pumoNqEULV92s3MwMhGUtxFhi51MOUCU3MOQdzq/dOUuAdy6p6qxhKr360iwbxv7ovK+Vx/8IGq4XFWoAAEBvB8R+3AR1306KvVYwlJENFQ5enhdKEW7a1tynplBb8/y7+U75Qa6925VP8bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oijIVXgQ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47ee974e230so35202965e9.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768831429; x=1769436229; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qi0fMsnbGNNAqeW2KXFtzgi15jKwvRfrQtKC+NHQLH0=;
        b=oijIVXgQ4xqiS2NrmPLq6TR0f50MbnFwamEvVEThd4u5/cgjFxI8Fpocc0jELJE8Un
         wzvavK7XRcjYMvB11KowGsyzSBDjqwkxWPYeBGg3vb6zoCSfcvuvxqk4VvVngzLEblPe
         Q62S41vvzGwYYP/wqJlp2PvMr6Uq10aOT4gO+2lj39uGKOsACT3+oBnNPeH9aB+gErew
         6Km1zv/o/EhoBpzf+u273glZp17hZLZB+jjPOy/FEz2+x3P5WMpUaeehYmsWAK1SxkmZ
         YTV1PyclP+6opjHTt9Y/AsH4McuFDDSi78LsqpYdLxP6EuyYphQB1hlB245BmCzbm8zu
         gXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768831429; x=1769436229;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qi0fMsnbGNNAqeW2KXFtzgi15jKwvRfrQtKC+NHQLH0=;
        b=SvfQenkOlo1hodZj6poaSroT1cSCL/PeIqGtaWmKYK2ElGgzwhf3lP6KlqIpjJw6n7
         VHymvXxTEhAgGdkXtEnwt5IYaUSmR27AVrosOIrsZYj0jC0ccPIhIPYeTdLQOKsWds4M
         AjTJ3wmbfEbq4Vp3gN0SYg/sraX7Am4/7h6cP558W5A9eajXoxHJjgPhsqtHnzErZawU
         o0gYIMbkJ2IdH31EvUmbeQ0tMLLJHLMvxHCuRxDsdeFhcQzE8qJu2m/zUk3P82AmRuOw
         Y0zaI77wq5t3EVu+prBeG8fRRI0ehqDHKaeaegGDFnGJy3TX2Brt4WArhKl/yxiQOhTi
         4diA==
X-Forwarded-Encrypted: i=1; AJvYcCU/0cX75e9UazHHlRVvUjXzB9SQKRNytWO0d30CaZzmph95P2nbr4Mnr8Heb/XivoYSm2Dhp7mGRwbP@vger.kernel.org
X-Gm-Message-State: AOJu0YyFykUsKFd7pi3DcAAsAvcHvHezSLvx38gSPPxraKvP3dA2OhRa
	MuhqIoLFVofLkFzbFsIdLspC0DrnSeZULSddFOneGxP3p+hqTU1QRFay11bwG+C5g+g=
X-Gm-Gg: AY/fxX557PXs+WwTmxNnUtgn7lT5GzzxILhNuFlz/sbX1D5z+cZb4816ZF5E4Rq0low
	3ilZ1Viz0RfcGqhA5mmvlAc9Ep/mbBdfWda0eNRWZCRBv+L8Q8RTjYlmUSM/uhNNbOj87PjXvZt
	xhoxJ9wakn7o0Sff8THKcffbCcJNuoRQpdH8eeO7gyEYZT8cAbAK1phemsTJRm9yUoXVJJV9Vw5
	SETTVxKaW4rKj0sKoCiJ2cFZaYSh0HBHwoSA/z4lNLa6uA/9W6KN4BS0lHbIQ1vs4+Za0FskgT/
	LX4JrdTfGQp9RnW3RlfWPB+HZRbDDRqqT44JY1iqXq/N2Yq7QlLj8jx8IQS6/Lr7su5DTpEk3dO
	ylZkvzNX9v+azKSBpSXQjpSNUb3CRfVBDeRF0B4LRBZq+h/JM9A3YxVKXx/enXXiE5Nq9l+b1vH
	QOyfoFiC2YDAJeHMPvXQ==
X-Received: by 2002:a05:600c:c48e:b0:47e:e970:b4e4 with SMTP id 5b1f17b1804b1-4801e3494b7mr155374755e9.29.1768831428511;
        Mon, 19 Jan 2026 06:03:48 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f3b7a5f94sm266035795e9.0.2026.01.19.06.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 06:03:47 -0800 (PST)
Message-ID: <fb7ec096-372b-48f4-b6ed-e224a05d55e2@tuxon.dev>
Date: Mon, 19 Jan 2026 16:03:45 +0200
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
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
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

The title of the commit with SHA1 7ef502fb35b2 is "PCI: Add Renesas RZ/G3S host 
controller driver". With that addressed:

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

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
>   rpm_put:
>   	pm_runtime_put_sync(dev);


