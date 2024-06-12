Return-Path: <devicetree+bounces-74899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F62904F25
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:23:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA805B2267B
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 09:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F0C16D9DF;
	Wed, 12 Jun 2024 09:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="v6yfOjTO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B825116D9CA
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718184215; cv=none; b=Br8mc5w5dAmxiCmNwTwiZmEXSkuhIeExg+izR8ufOR0/b6i1Y3eGRppUb5ssSNz3btGZHnkcIABIIXsKxOl5FbpUOzF99xxDpyKE1sfwEqPm/T2PoU908zI2SDs+5/16OYdF3+QvIXQUytzChdSV2GjgRPbf9xH1b8jw/ZwsYY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718184215; c=relaxed/simple;
	bh=4yUd5bA1LWBRsOQX5++CUH943N4DPgrhrF/pWRTkR9I=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=csvYMOmWXf5C/F7EE5D1DUdclFrkXB9reyEKjeUkTD6sS5sKdF4PMchItXCVv5HMvvo7ypq8WsYdUfGu7yEVIZHYBaxvMBDslHShn67UEk6ux02x5Sp7Ucc6tB1XuCztc27rnccUpkuLTzgWwj26Vn4sx0/WMDjejTVaIjSDgwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=v6yfOjTO; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ECC7B41332
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1718184208;
	bh=JIxr/ZZpdBfgox5qV/eIJHMIZ1MJnFcIJgd5fVOn7fw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=v6yfOjTOz4fRmXsZt8G4wNxPSN65zpYtU8RLoq6obIPtr9nKAXGkjDA5HCDjg0adF
	 jcS3myoZ+fbfj+XPDheDlprt+kM0Jv9qPm0E3BJRhqzLjD99XQmkkjnwgY1jY2n/DP
	 E9ROanTZMVS9edHxZDbLhVuypdskl7giPzP6yTAVOa5z/Kg6WvKkIOt79O2et9TVcC
	 PKkiMvAebyaf/Dcw0hbBQysInjDPL6PAHcmM7tpW+awQDpTXyACzJVpuzqrnmf86q6
	 HtG9tOw6rQmkJ1gexfWfK9DwJztLVSYLQftc5S02P0dYxhZr0nSBwtO5t9dlv/KTkG
	 UEHPWrjObmsEg==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4406476507cso18671841cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:23:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718184206; x=1718789006;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JIxr/ZZpdBfgox5qV/eIJHMIZ1MJnFcIJgd5fVOn7fw=;
        b=huPpcKgxf/+RfQv+rpIwfbpcRMN5PWZ/4iOY2gLRzblH7e2CU4DoacdjaoaabWGf2f
         LH/UKEMKmBWefnThRfPFr4yQdcFzQsDQxqN3Kg3tu67x8PskAs4U6NpC55FMOGyE2+Lu
         74k9KcCZAM4HPnwzPXgl/426wiQJOS0yrBMR0FvzxUPK6pYAiTTvB+HU3n+ES0dyjPvX
         PQxHtFyfC6DIr3a40AjnhVo/Pm/rJlHc4Jz0Pua9u1Cf1kFcBRIGo3hORw6N7xjmM/o0
         oMIdoCOpxaEwWI1PWbp9TGcdY70LsWcYl6bO8JyObH/iSEhBqPLEsXziuWa3jowvVzRt
         2VhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXg62yMBgXg2I43ctXp8+MXBolKX2oqUeM2usa52BwLGw8QiYXeuVUsA/A99dZuzxxdYTj4IpOjsJ5Y+G3scdQsSk2KqxZf74DXBQ==
X-Gm-Message-State: AOJu0Yy2mup8dm0Cs5Eq0xjiyDnFRUGewc1o/2HSx9CG6V/izQzPy2KX
	NxfSSG8daYSWVb/PEN6HxkcuCGxtkOX2PVYZa/JfQZTrxkaHHrHzDFVxS8I83YgJjEuAPsuBrpC
	a2hLSYD9UcIDQuMHy/V7uXOSlRgfKwh43FS1NHhpcjKPmC8bCwfOfFRXETWmcl1HAI8mZtt82r9
	vS/+rkletnrtx9Gjya5DKnyjHJg1sq4+jhkq00j/ZcHXuPThg6lw==
X-Received: by 2002:ac8:5981:0:b0:441:4a7d:4b9 with SMTP id d75a77b69052e-4415abd77e5mr18363171cf.15.1718184206034;
        Wed, 12 Jun 2024 02:23:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJjys1SrlEEOXzrogJ4mBiejM8H3xGLEYRak+OtJId/AecySqXJCViAxtmj2YQLsOj6rhO/lEl1VrhIpEHybc=
X-Received: by 2002:ac8:5981:0:b0:441:4a7d:4b9 with SMTP id
 d75a77b69052e-4415abd77e5mr18362891cf.15.1718184205625; Wed, 12 Jun 2024
 02:23:25 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Jun 2024 04:23:25 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240610-reenact-amicably-bd088724b3cb@wendy>
References: <20240610-vertical-frugally-a92a55427dd9@wendy> <20240610-reenact-amicably-bd088724b3cb@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 12 Jun 2024 04:23:25 -0500
Message-ID: <CAJM55Z8UH+pfOoObDvr40RAB-4th=n6Ma9de=Q6ghRw0GvhtFA@mail.gmail.com>
Subject: Re: [PATCH v1 2/5] cache: ccache: add mpfs to nonstandard cache ops list
To: Conor Dooley <conor.dooley@microchip.com>, linux-riscv@lists.infradead.org
Cc: conor@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Samuel Holland <samuel.holland@sifive.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> On PolarFire SoC, for performance reasons, we want to use non-coherent
> DMA. Add it to the match table with the non-standard non-coherent
> cache ops requirement.
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  drivers/cache/sifive_ccache.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/cache/sifive_ccache.c b/drivers/cache/sifive_ccache.c
> index 6874b72ec59d8..277e66a61efdc 100644
> --- a/drivers/cache/sifive_ccache.c
> +++ b/drivers/cache/sifive_ccache.c
> @@ -122,6 +122,8 @@ static const struct of_device_id sifive_ccache_ids[] = {
>  	{ .compatible = "sifive,fu740-c000-ccache" },
>  	{ .compatible = "starfive,jh7100-ccache",
>  	  .data = (void *)(QUIRK_NONSTANDARD_CACHE_OPS | QUIRK_BROKEN_DATA_UNCORR) },
> +	{ .compatible = "microchip,mpfs-ccache",
> +	  .data = (void *)(QUIRK_NONSTANDARD_CACHE_OPS) },
>  	{ .compatible = "sifive,ccache0" },
>  	{ /* end of table */ }
>  };
> --
> 2.43.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

