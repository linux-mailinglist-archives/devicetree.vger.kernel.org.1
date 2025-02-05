Return-Path: <devicetree+bounces-143207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D97ABA287B7
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 11:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C42233A8F53
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 10:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A02422A81F;
	Wed,  5 Feb 2025 10:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="LSeUVzux"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9997322A81E
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738750586; cv=none; b=BXCrcznMGZ6cIpr02l41w4uKUOp+NO3gwBFe90bYOboEpGVo36vzO6TTWT3Yrh1pjLYRtcN5aR+3Sv9muFf0EOAEsh0nL+IjEjX8PEqRwUe2l+baONk8a5c+fpknfivMOM99Luc50u4oysA0ZkLwAb19etCIpwn150Td/gOBHAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738750586; c=relaxed/simple;
	bh=LrHrY9n2S9h3yUKire6ik9WE0kNm25rk74SGsY/v5BE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NnsOdYDLNPGWhDaeSIcL244RNgd+bmGgJxJhc7fsAGkTw2nli0UY7Bghd3lTrKbQID8ZCbhqemT8p4PngFji+62jXUaYIKCMr+T9UmjXcLqFar1GA0cB2e2ZnsVnxSI/mpC4S1tTosz/2PwPq6CIfYUMvRlFOISMVol6Ci6tnqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=LSeUVzux; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 622733FA55
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1738750577;
	bh=Av5C3NG7n6JTUOYj8LuXVH2zlqsaee6hvA/xGrgK+Rg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=LSeUVzuxX5SYKPd78DDZTDR5Boe67EHhQpPXRsa9XSAR8Ohz98sEfrVT7As15n8lu
	 hA35gjSiNk4lAvoDVMO7QtSGfgjl1iPi8OmubZu74yjPmUxXbfI1hKuJtXURGYgB4Y
	 E1BKYoIl9b3praw246jksmGS1I6ux/FmcdJMxTuBAOuCIV5Kj54ydlaIpZbXBc9JAU
	 Muh3Stke7y7CpGknBhIQRcdlagXI+/tg5rr9dBPYw2DUi0mQVcVOVenVkaWuxCArx+
	 o4a+JoFmyS4JDPCltIosLBvZCxX0o4VIkExrKqx970X2DIK5AI8eCFj74lFXx/dhHI
	 6hVDR6iGG4b8w==
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-2b7c8cb27a2so1204563fac.1
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 02:16:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738750576; x=1739355376;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Av5C3NG7n6JTUOYj8LuXVH2zlqsaee6hvA/xGrgK+Rg=;
        b=EjCGOKXuIOttC2P3JI4wp1d1RTqWVqe2L925NjNIePhHa3lxsAeRAgRKq8QhSE1646
         IdU71Pl8ShhiVkxF7gNA8r0qdgv4ik4iteqZAOS39nZWx36BYu3bvTXxuXbi57CySKU1
         5FJ++KjhC/7jxZs8w80YlktR1tCE9BOgbFmTPXSo6gSQP15+YMdWZV92vjpgQ/gxozVw
         mlcRGb+M2aeEwyQwayirX+rB+ypyWkyyic37/7UYPiHivlbPHkcAEk8nVh/rIi0fFgz2
         DvtWBMmnDRBdgEhMQii93GKiUSylK8VzAdJ+92R/5LHD0f6I+OIZ3unSu/ehfflYLXRl
         5iuA==
X-Forwarded-Encrypted: i=1; AJvYcCWbg1DLlKGdJ2dgeSn39zrvWL5OdlieC0bQDhSUHc3XA6/h+ww1olUzmYj+ucU6Bs9wWpPDtrx3HxFS@vger.kernel.org
X-Gm-Message-State: AOJu0YxvXAcTCGVLJ75gkrKRpu2Jn7BYQTSMVYhukvKCD2/mqYJR/ASc
	y32KcZfzDDqCEzoKW+HhteoWGFI9ZxL4TU4xKeX5vnbiV2NppPqk2jMd1xWY3fDSKyagbhQg67Y
	9F86Bij7NtuCLNa7ttz/LDbb8a/SxUvELocK/oGyk0MDUk2jURjInjf3awADi3EJxsz7CFG6hIJ
	5paQtCczfScChNiEVJbmMcutzCuxC4iIpRqXfrQ0tnhLHVWcfhWA==
X-Gm-Gg: ASbGncuNczczZulcteQNEqleFQnUbHb9M+xOuGKPfSyEuqZoRzxLFWxrce6m39/I+pG
	PSwTnH/hllRunOhHzS/ctm2ykr/nWosqq22C6PYoGehrit9+tS78IQysaSRRQJmkghb0Xq1uFiG
	I/f2VykZpPoW+YlsI=
X-Received: by 2002:a05:6871:36c4:b0:29e:4a13:603f with SMTP id 586e51a60fabf-2b804ecdf7bmr1499784fac.4.1738750576034;
        Wed, 05 Feb 2025 02:16:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGsJQ7P73/5n5tnAPQgpI0ua/1rwM5j7fLIXzbO141ngEH/FiC2y/KSAGjHe9WOZwY5cCBqXocuueLiB5hV4nY=
X-Received: by 2002:a05:6871:36c4:b0:29e:4a13:603f with SMTP id
 586e51a60fabf-2b804ecdf7bmr1499777fac.4.1738750575796; Wed, 05 Feb 2025
 02:16:15 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 02:16:15 -0800
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 02:16:15 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250203013730.269558-2-e@freeshell.de>
References: <20250203013730.269558-1-e@freeshell.de> <20250203013730.269558-2-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 5 Feb 2025 02:16:15 -0800
X-Gm-Features: AWEUYZlJTl1Ykr0gfo45PSvnnmc9ItZ-0-EmoaBAoCqlMDbSjYPKQi0nAWkDg2Q
Message-ID: <CAJM55Z-M9MsJAtPi-t=_tNV3oG_kdDiS6H=H3koJwTEwB8GJ-Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] riscv: dts: starfive: jh7110-common: replace
 syscrg clock assignments
To: E Shattow <e@freeshell.de>, Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Replace syscrg assignments of clocks, clock parents, and rates with
> default settings for compatibility with downstream boot loader SPL
> secondary program loader.
>
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 48fb5091b817..a5661b677687 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -359,9 +359,14 @@ spi_dev0: spi@0 {
>  };
>
>  &syscrg {
> -	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>,
> -			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
> -	assigned-clock-rates = <500000000>, <1500000000>;
> +	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_ROOT>,
> +			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
> +			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
> +			  <&syscrg JH7110_SYSCLK_QSPI_REF>;
> +	assigned-clock-parents = <&pllclk JH7110_PLLCLK_PLL0_OUT>,
> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> +				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;

I think Conor asked about this too, but you still don't write why it's ok to
drop the 500MHz and 1,5GHz assignments to the cpu-core and pll0 clocks
respectively. You should add this to the commit message itself.

/Emil

