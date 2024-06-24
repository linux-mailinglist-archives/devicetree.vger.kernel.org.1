Return-Path: <devicetree+bounces-79116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB6191417E
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 06:56:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91C7CB2084F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 04:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1C2E10A1F;
	Mon, 24 Jun 2024 04:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="L13ZlCSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160DE10979
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 04:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719204980; cv=none; b=ImAFgBlZm1HDxBD7nTSckLuSHlZfK6JJTAdMk38xTWN+LtmKGM65+PcZ4OIG9PbnjvHX10ETMfO9aFqlxKJP4OPUl5VCT5nt3uoBr/Rus/SD+YKDC/8jOM5W7iycr+DeL6DBU+hJEV24pWlwXF8dgcA/b0uOIIgjDWdLRgocZoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719204980; c=relaxed/simple;
	bh=XRn8z5Dc6gxQd4rxv6QKMWa5eM7X3d9KBWZ48fMrMNo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pyyo8NWQJUxKBGc54HPBUvPJwyUUA2bo8n7OK/9SoVLl5UGBQui18rsTBnV9t+37C6r3yO1df05+mqBZFGRZGgZSA48/qjqwgehQ8l5S/D3987zvINB2QC3Op+MQXKV3IFsNc0IZ9zFpOnUCaOIVghdQ9xYPgvKfyJdiDgxM1tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=L13ZlCSE; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-57d046f4afdso1925709a12.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 21:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719204976; x=1719809776; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GwS8nRsUi4Pi7NDswPTZeRQSelgo4Wf8y2x/G7MWwUI=;
        b=L13ZlCSEz0L52j5idCKiUv24KfqDbND0hYG8A5wPlb9cGlUiyDKkD8EhbLv2TXnfk6
         +aIiT2nFICoXZlEn38F8uqadzyH3BbniOniEPMLdKFXumcDRJtSTRMUli/4QWR6TDEIu
         64yv9//ctg99W6KcPblqVoFHLYbr1flGtRpPFBZfiqW4+VdsSWldQRZ1TPRQyDmAEBnJ
         KT8pdThmmIk/0NXPFaBet4PU4f2TcRQp2gji9bcH3VKsJuHcv91CVMQM+Fw6KL6/BNM6
         Z3XVDDkx11tnmUYrR6ezjvIRnUqFTV81ul1GHsZIEsir6P5S6od2MlpghCJ1NVoPx27k
         Yj3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719204976; x=1719809776;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GwS8nRsUi4Pi7NDswPTZeRQSelgo4Wf8y2x/G7MWwUI=;
        b=ou/a6X9lt9q0azW2VhQjtaVKZwKqFEPN4TvxnmD/YgOfNPjtKmQAZS5voatXsMvPc7
         WH0guWwbreybtF42gecITIQ7hcDzcIYlr5hhz1ZB0gWI6bMO+RepRXKGSj+AaZodTeQp
         Q4mGv7MvS4Skb9uv3+orw226PZW+X42RAAR+skqwp/BqNHzpKJKK4u2zig4J9MrSm2t1
         qDY4HpHUNjTXnCpMCNfXHPnKJ4dSLNjyqh4tSrTkJmoeCiOcY8eOYD+i2sUgsN+Vk0vg
         IUxJO4k4wPjxN3z0IJlDY1S0zFKX53Z09IuhlIOZaUfAjuSRZHhtAtfqLBo4Gfohh+o+
         2SRA==
X-Forwarded-Encrypted: i=1; AJvYcCUCJkRPUXG7IMr4MqlSY2rM16SzhEGT0s+KDAowBu1g1AWP5noS2CTk4a+tRDAnfPyKNFxrtmTSL5I5mb5TDXjsnvNMfTsMuzWLmw==
X-Gm-Message-State: AOJu0Yyzr+W7WvP8aU/YfJqVG4iStbOzoO5f+/Om1g+vY6eRasHd7MZ4
	tt6zalXHzrkS7V6nBmNg4n0mWw3x9RnDgtuzt3ItO+3y40hp/eDoMiyJXa1n7r8=
X-Google-Smtp-Source: AGHT+IFkAj6+lAcyOS1W5Z8hDAd6EAdxwsjmhe+7pNcvGnK4bEvsilu7KOvy0QwEDrh3qaUYkYkcjQ==
X-Received: by 2002:a50:a69d:0:b0:57c:5d4a:4122 with SMTP id 4fb4d7f45d1cf-57d4bd59fbamr2512691a12.9.1719204976341;
        Sun, 23 Jun 2024 21:56:16 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d303d7aecsm4209761a12.20.2024.06.23.21.56.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jun 2024 21:56:15 -0700 (PDT)
Message-ID: <cec78633-8cfe-4e79-819c-7f9ff07cdfcd@tuxon.dev>
Date: Mon, 24 Jun 2024 07:56:13 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] arm64: dts: renesas: r9a08g045: Add missing
 hypervisor virtual timer IRQ
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
References: <cover.1718890849.git.geert+renesas@glider.be>
 <884c683fb6c1d1bf7d0d383a8df8f65a0a424dc7.1718890849.git.geert+renesas@glider.be>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <884c683fb6c1d1bf7d0d383a8df8f65a0a424dc7.1718890849.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 20.06.2024 16:57, Geert Uytterhoeven wrote:
> Add the missing fifth interrupt to the device node that represents the
> ARM architected timer.  While at it, add an interrupt-names property for
> clarity,
> 
> Fixes: e20396d65b959a65 ("arm64: dts: renesas: Add initial DTSI for RZ/G3S SoC")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Tested-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

> ---
>  arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> index 2162c247d6deb170..0d5c47a65e46c584 100644
> --- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
> @@ -294,6 +294,9 @@ timer {
>  		interrupts-extended = <&gic GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
>  				      <&gic GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
>  				      <&gic GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> -				      <&gic GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
> +				      <&gic GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
> +				      <&gic GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names = "sec-phys", "phys", "virt", "hyp-phys",
> +				  "hyp-virt";
>  	};
>  };

