Return-Path: <devicetree+bounces-143212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFDEA28815
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 11:33:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 819C816258E
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 10:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A19762288EA;
	Wed,  5 Feb 2025 10:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="H9+iJmE3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D36218E81
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738751589; cv=none; b=McXFbEht+njqZSEl+UB4uBatuMVIKvAvvIWNF/yx+9iwPQhKb9h4StOlOvqK8Tg6wjKnsuwvwBh3Y7zLEOYKfzr/aitbFdLlW/ANmnRjBZRSQmb93tGyqP++np/vVhYpfVEXeD4bQYx20uYhjkY83aqASfSxczUo8zt5vwYX7xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738751589; c=relaxed/simple;
	bh=mKe8Vh5nnbsvkAVim7x90QysHHsU1yLN+LtjLZnDFYk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qEFAuJ/KgxN3c0ASAbr1PIh6uvk59u5T7xc3aKNIpqZq87zbabzHWskEgdXJPagScYRggdKd2bxCGbFShf9KxUseEUkv26q7+a0WErAshDh1LcMnEyb5JSVALzhFv9WGKrfnZpa3rxkg4FO3g4a4ED6PnR3P+AkHw64mPrqYWE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=H9+iJmE3; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B62253F682
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1738751585;
	bh=mZz6uOkOdetjWn/MYSWTPPdVo/eDrN/gD1mRQKYgsoY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=H9+iJmE3Oj77vqYVsBTeohqo5EocjCEFsupFI8mxIVTnETp5/odVf8v4zSkeaN3p/
	 BScVOdiVB7urNAWLphGp9W9pFF8x3RzI8j1wxwOjb3qOsH+/N/+58wxO48mb9A/J5T
	 H5yP/pg03kA5yyRJ9SGQdvRfdLuSSE3Q/yozipAjEncE66OiemlH3/D4wgZfAVgnmc
	 COkRNqPb3ZAJxJrSgE1d3aqDGME47Epe+i1lwfe7VxoGCOpwY5cxOEPivuIAkbJbSn
	 HQogjBcYxGPGd3UZUPqNqh0lx+SA4V3gWuXH+OwT3IgIzr0r13Ubvk8CVAlh/KXErK
	 UXNHGqlg6WvOw==
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-2add2f6f16dso10509359fac.1
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 02:33:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738751584; x=1739356384;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mZz6uOkOdetjWn/MYSWTPPdVo/eDrN/gD1mRQKYgsoY=;
        b=h4gYQDRI2QJTXcz1bZiTFW/DtN4kuYTZz8gqF1Y8dcwg2dLYFUmW2swYqYYNfLlpiF
         gaXHEbPn4i4WAvTfyrQCzG3SYreO+KyWUiS0fXvgNsI/zk5a4aW4wvjW8RdfDKDzlG1I
         MzZHor69CDezhu08S5JXfpAT4aPZZG5V3rcAMCkAbuT6rwGZDXlEX1pTUpQE+GiZoN2S
         EoPzd6foF8w57hJsj32m/YzSnMSy5JxKdO6xm1RLpkRtPmnZAlXSR0BTnvBXr0SIEKC6
         C8cYKslIGp9E9kqkC3k1hqktCuDi75S9ea8JKepps/98VCUnFhqhWd/nnLhkls7zqq7N
         xt2g==
X-Forwarded-Encrypted: i=1; AJvYcCVUTeq14HCX/4X8IH9735nE9wrsnLOhH5s1BnikLWrNjoIZPK/xAehOguGv/emQEPGqdLF0AUoDu8bY@vger.kernel.org
X-Gm-Message-State: AOJu0YwJeLM+7w1Cw9XJOy5GQl3j83Y1V3ylVWwzOOyRwlfBYqqK7EsE
	yZZEdnFcCxhirO2xKKzAsQLmPyWgt4DTfhXvUZH0vBZnpCrzDG0IXVL9+Nv/30oVWmY4urGg4yw
	7qXt6/4m9Sm/NRREsfAww18bawC76jQPvl48BNZiImGyhW9+lQCjiXGyVWmv4ahQhM9zRFbLyGg
	NtSZto2omiOnGZ4xq2Pz2uyWYfgPN+I8aJPoAIn1otK6u+Yy+N/w==
X-Gm-Gg: ASbGncsJvdkSBDKc1WK6kuyCsChkh6n4O/utIaD6dN5+vfw3nHsCa3BjCraMCBEIide
	8scXPhAk6sSBTpWBJEhZ+6FShdC6IwuADixNThKsZbGFSgxl8xCEzyXLLluycMgQeAfnjCZHEJu
	XNdjnYJHygNdGoJDM=
X-Received: by 2002:a05:6870:6120:b0:29d:cc2e:8493 with SMTP id 586e51a60fabf-2b8051216bamr1463366fac.26.1738751584167;
        Wed, 05 Feb 2025 02:33:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmH3qpvoZrzko3vHbJKUwQH9D1C8J2WA4SgPiTgjAd4v0yRXDEmDqB72GVyqzhsHQ7yWRzIEithsQQ5N0993Y=
X-Received: by 2002:a05:6870:6120:b0:29d:cc2e:8493 with SMTP id
 586e51a60fabf-2b8051216bamr1463354fac.26.1738751583861; Wed, 05 Feb 2025
 02:33:03 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 02:33:03 -0800
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 02:33:03 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250203013730.269558-5-e@freeshell.de>
References: <20250203013730.269558-1-e@freeshell.de> <20250203013730.269558-5-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 5 Feb 2025 02:33:03 -0800
X-Gm-Features: AWEUYZnqN3UQuAdW8pBfGnZxZ0hwMrrOPqtAk4UJEzsjOBu6DnzhDSeCSBC-YNE
Message-ID: <CAJM55Z8MVK8bB2qyzOsmgOC-vOCFEgAXcQ-yETH+KFF2yF-bmA@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] riscv: dts: starfive: jh7110-common: add eeprom
 node to i2c5
To: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Hal Feng <hal.feng@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> StarFive VisionFive2 and similar JH7110 boards have an eeprom compatible
> with Atmel 24c04. Add the node so this may be used with the at24 driver.
>
> Signed-off-by: E Shattow <e@freeshell.de>
> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 6bb13af82147..30c5f3487c8b 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -245,6 +245,12 @@ emmc_vdd: aldo4 {
>  			};
>  		};
>  	};
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c04";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +	};

This looks right to me, thanks!

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

