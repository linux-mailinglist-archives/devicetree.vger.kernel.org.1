Return-Path: <devicetree+bounces-256902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF19D3AB24
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 497E53016EE7
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F76A374180;
	Mon, 19 Jan 2026 14:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="cREaGaRF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B30036A038
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768831480; cv=none; b=aPHeRXik+JFynLQFh63KQVKakeOagcKfLrMmG5VdkukR4dEjcl4xPTVn8UjLkye8xPl4DUr4LL5eE0gZHuSLnN8mltd0cEwevBq4XQQ0s/W7uSZp6IvOuPYwz8h25EqEwO8POCEvoRJCpeR67KSxGFU0Nohg3JA+3isnzsJsbdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768831480; c=relaxed/simple;
	bh=m2uBx0rH9BBwtr/Uco1kTewsgSVG+SUQOTeuEoSlDOQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u8u2qtbpeLVY4tJaTPSBAktx5gT+U3bmTmUHQLO1d9+lR0flf04wkyYIkKJX4K4FueEsHZKFeSHtSLwWhI3tY4B+SpMZ1X6FjAu3kNkSP9x2eQ/gUV9MUPNaaSOXt+BMihsLvFTXH9+eW2zvT+D/+SXhppbx6moxPk1KUdgz2+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=cREaGaRF; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-430f5ecaa08so2087918f8f.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768831477; x=1769436277; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S+uiJg79CSTOd7IU+Zjr8vG48esanihoaH1GIX6WcHY=;
        b=cREaGaRFDQFI5hL97AT7ZRhouQ8ZAcoaODf9B8xIP2SiQfkWbmPLLndfGFr21SwMN4
         fYryGwaaikaOtlOtw9W/OyX2SC1vKlU7lCEZfGzmS1AA56bhj5S3dZpxmbIPgao0nIYK
         WiJb4ob6B4Q72iRlsaqHB8ekMcSdg8lk9oLDb1YZQJ6MOzbEHXmCrQNzE9FavQyI1hZD
         1ooOigIQR8Bzqul48yt68DS4j15LIGY9EImCMWyBsP/SRboorOxhXV47JrpAi6+8xNQC
         pfsZ4oVs42SbZ9k9fVUGfIwiXc2kMGhhKTOEZcO4B/YPU8d8HGLuwKFvBweYQ7wtgLTm
         2jzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768831477; x=1769436277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S+uiJg79CSTOd7IU+Zjr8vG48esanihoaH1GIX6WcHY=;
        b=pAWZ2naczZGcGzolZMOGDud751lygFjtDcxQYalcrNnnOD/JFixCUH+Fqi7vNujVfF
         tzhy4ype/WU6cSWXdaVwrEVEVVkYU3LBvokjIbFTWL3MKznfEFydHgkuAvMe2dcn47F6
         vtQ+PtZrK0fdTThcg7SqsaDJBkvJUUIHQEchK/OsR4ahL0gCNgzzUl+auuk9OzEwCJkU
         s97b8YeTDLFw+qyjVHSe03e6xLd6tIBopsw18PT7Pzx4YpHliH96dGFk++NtRWI/ytN3
         ooW1IYtq6ptTaXwQBe5ZfmpRsg7VNKDZ+shgjhQ74pDzERL7VWRdtOMxmbTAZHvBHhCE
         ETVw==
X-Forwarded-Encrypted: i=1; AJvYcCXR6tbrb4f0xBDqjMuCqpOy8aXIBkjdK3skDp0g81/trtQ7zontDpoV21Vs/th8SSL1Meu5KQQnl0se@vger.kernel.org
X-Gm-Message-State: AOJu0YzZhlFSkg2H+Vr26Rd/orq/vUigZGj4iHO7zZeJ40z4VWtdV+qF
	StwYc2kkqRPB3fvHFktG8pka4ynS/JhhgtqVWrqUhODb7rg//JD1klyX8U/Re2gc8fY=
X-Gm-Gg: AZuq6aJuj3cLBHx6XRJTirnG8mCUfus/kvTBC/LRbLkceGRbxlKog+l3cnKIdVDiTnM
	t5s9Vcy0BTzqhhFx5/IU64rPyNCKktYF8gmk4KUFwIallevnxU1ksh/5pe68V0AUgkwF3KUWw39
	ypT3zVHr/CXJvWcT+zUHb2Btg/8JUn+ISPjoMGiC0iO3P8w8vtJiW9vlgwOspUm4jsySI1ZRLwU
	FRAFuN7xZfjWssXJsEmdr68mJd829xrgwPlIEURcl/agb7xUrqEIUih3Uo7FwC+kCH/sd8aP+pS
	Omq+Y9zmTPwl5Cj65LnCxgdvgjselvoIsuV5TorjfdhYCh8awHjg70qv0zYVZhHF8+Ch5GIPHcb
	IcRieWchZtnbD4OK+AobQvgzAeZMVOfHKzyaxi2SHeWVlzh3kHoFrkiXjo3UvLiwaURqgYAx5kd
	TqAWi+E6ykg/Mr2dFUyg==
X-Received: by 2002:a05:6000:400c:b0:430:f742:fbc7 with SMTP id ffacd0b85a97d-4356a0296e9mr13698492f8f.14.1768831476764;
        Mon, 19 Jan 2026 06:04:36 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921df9sm24010322f8f.3.2026.01.19.06.04.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 06:04:35 -0800 (PST)
Message-ID: <f6c7cea6-fbd0-4b3a-ab89-a3c26be11ce6@tuxon.dev>
Date: Mon, 19 Jan 2026 16:04:33 +0200
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
controller driver".

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


