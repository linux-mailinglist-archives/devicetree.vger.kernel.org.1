Return-Path: <devicetree+bounces-227345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D14BE0B3A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 22:52:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3BDD04EB488
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 20:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9C2D2D12F5;
	Wed, 15 Oct 2025 20:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aAkJY6bp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDD32BE657
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760561541; cv=none; b=S8wXxmzF+1z/saS5rNqRnaOgzAChIEcWfy1SoG9XIuXa3y+oPwK7KHauuFiifahiIpXWY83m1Phk/c6PmXSTrRZqiuneIyxJPd9YfZEihsKuAm2jDvqtvSqIULTvRmBVG+jVJqOAnyUUWTQI6Ux59GeqsPsv4Cy8RlVobMOmKhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760561541; c=relaxed/simple;
	bh=hsD+aslz1OkQOnpQ7vD/eAIL2an/1I+2GU4RtlCHgkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ojWlF1oI4oXk3FKqm21MS71xzo8XDSXiMy+6PLmG5cO/NzcCgWKUZVzd9rx29a40n0u7v8zrtYyrjAApqtZdNBQLsT/XAt+nK+WyBx2YNZgrVOlFFj6e4PxDItbhRvArsuf/YsVA0H4sR6lNxRQBVEsoQYvrW0/UpU7W+khSIWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aAkJY6bp; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-33b8a8aa73bso65919a91.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760561540; x=1761166340; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4Q3l3wXZP1srYTWBx6D17j0OpQl3qJmuJ/CIapeLh80=;
        b=aAkJY6bpYgLrhjydCSaF0WEz401VhyQpHjxyiS1q5/0W1/vaZ+X9DuAjUczWx0RZSH
         06V9jGc7zHjJj+3wP77haSL3AoQtwd1cSbRajrXKLNXbkha3bm608AYK7pnP2MIVK09R
         ACysIjOAmj/BktLKnlzgm/HHpOrxg9blGOK1x36imA3HCfEdbRxcOlzg1a6BfYf2hC0g
         h5zSWPPHR1LfNOQE8RO1FvkLdB/cKO0yo+X41oab3LBDt7h4wogSl9ZvQtb9RQTGYmhK
         gPMl4MqOQXxLp6QzKQhNee6QoTvdI5wasLLRZht7VOVrD02FJPBU0qdJOMeZrMvomY9Y
         Mc0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760561540; x=1761166340;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Q3l3wXZP1srYTWBx6D17j0OpQl3qJmuJ/CIapeLh80=;
        b=qmdkxSTxvB5DBZH/mUT4PjbH3AECzJnfRLUHM7n3xyBM4KpxXmb2aBOoQ1eeOAtHMI
         WJ2KrrqmSYA3kka7yFWORslPs6OUrGPmbnX5EBoJzuY9rgKeyYqbhUiUb84QAEwRc2Ts
         SRLz3zZEri8+TJPwNFwTUVuMVwZc3zRYXRAkpFVfOUitkvO/qhQDRKwrlbueea1uDFYB
         qjlJphNQVD5b0yu4XyfQGwNS9pwpCg+I5J1FywhO/snALT04X7Dz/joPRoTj0RoBHiWJ
         YwzmLnvmySrwMCDo12sK2cRvp9quLBcLkZKnCEbthze/hIwom5oEwRQWGnI9irCFGntJ
         a2iQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyJKWD07HtG/XBDg3bFfgSXpXIOIgOvR8I4qzIl4Ivxu6eRz3wSXVb3FZNfXgU34NvWKBxEXz2u8Zv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx51s85L4T8vltdE05/wCb2hYEefY2/qI3guRDiJhbktVJxXvwg
	nMUQpA6G4TGrntn3fKx955b5iKttU8fHvKPI1MhijJbZjsrpB4NqsTVh
X-Gm-Gg: ASbGncvK+b8K+ffoURFs4PJllQbWmfSg2REpqyYpu/R8EQaALmbEkIZ9nqwpwUSCO9Y
	AdUtrZxub3Vj0Mo0Mvu6slBsrwJMnkDshzNKeciQCJwJY1mzp7J3qVcYctrpjIMmQ9l4fnJI6sP
	VV/HpLpX3vAiyRpxSUnVYRPtG+hYjX0gcihTQ+RXBKJCLG0xsaVXqMmQR7TItLdYVo8BI9acbXl
	IkIXIuxnd2BpTvG0KWIOHduEWBX90OzK3M2V3TkDkPqeBDRyQ6QgSUUi5G3iEl7Smv6BpqwhSjQ
	MmLwtlThQ8LrJ5akLbmCT/3mf+tGRUIlbTRBck8UQW6T8ZDB1lJh9H6RWKORtAqdjQVxTqbG4dH
	iYTmoNEkMvoI2nJ/A4+s1SkpxI6gYE6T5OeyvqxOLI61rPLj4nGA+pc1AFWAdChhvpBheRQxJJD
	NzAN+/aRP1uQ==
X-Google-Smtp-Source: AGHT+IHSyWgfprtuMBAJxkjGFH7PXnZ2eurong9CmDGzEOpx+NucIlNRXvqcw5rqha+z6ylJLfGOQg==
X-Received: by 2002:a17:90b:17c2:b0:32b:baaa:21b0 with SMTP id 98e67ed59e1d1-33b510ff5dfmr43287001a91.6.1760561539548;
        Wed, 15 Oct 2025 13:52:19 -0700 (PDT)
Received: from localhost ([2804:30c:402b:1a00:ec78:db53:a246:207a])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-b6a22b7a625sm514092a12.24.2025.10.15.13.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 13:52:18 -0700 (PDT)
Date: Wed, 15 Oct 2025 17:53:22 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 4/6] spi: axi-spi-engine: support
 SPI_MULTI_BUS_MODE_STRIPE
Message-ID: <aPAJwqdFY7ldtt-F@debian-BULLSEYE-live-builder-AMD64>
References: <20251014-spi-add-multi-bus-support-v1-0-2098c12d6f5f@baylibre.com>
 <20251014-spi-add-multi-bus-support-v1-4-2098c12d6f5f@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-spi-add-multi-bus-support-v1-4-2098c12d6f5f@baylibre.com>

On 10/14, David Lechner wrote:
> Add support for SPI_MULTI_BUS_MODE_STRIPE to the AXI SPI engine driver.
> 
> The v2.0.0 version of the AXI SPI Engine IP core supports multiple
> buses. This can be used with SPI_MULTI_BUS_MODE_STRIPE to support
> reading from simultaneous sampling ADCs that have a separate SDO line
> for each analog channel. This allows reading all channels at the same
> time to increase throughput.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
>  drivers/spi/spi-axi-spi-engine.c | 128 +++++++++++++++++++++++++++++++++++++--
>  1 file changed, 124 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/spi/spi-axi-spi-engine.c b/drivers/spi/spi-axi-spi-engine.c
> index e06f412190fd243161a0b3df992f26157531f6a1..707e5108efec41f7eff608a09fcebd9d28fa2d70 100644
> --- a/drivers/spi/spi-axi-spi-engine.c
> +++ b/drivers/spi/spi-axi-spi-engine.c
> @@ -23,6 +23,9 @@
>  #include <linux/spi/spi.h>
>  #include <trace/events/spi.h>
>  
> +#define SPI_ENGINE_REG_DATA_WIDTH		0x0C
> +#define   SPI_ENGINE_REG_DATA_WIDTH_NUM_OF_SDIO_MASK	GENMASK(24, 16)
would it be 8-bit mask?
#define   SPI_ENGINE_REG_DATA_WIDTH_NUM_OF_SDIO_MASK   GENMASK(23, 16)

> +#define   SPI_ENGINE_REG_DATA_WIDTH_MASK		GENMASK(15, 0)
>  #define SPI_ENGINE_REG_OFFLOAD_MEM_ADDR_WIDTH	0x10
>  #define SPI_ENGINE_REG_RESET			0x40
>  
...
>  
> +	data_width_reg_val = readl(spi_engine->base + SPI_ENGINE_REG_DATA_WIDTH);
> +
>  	if (adi_axi_pcore_ver_gteq(version, 1, 1)) {
>  		unsigned int sizes = readl(spi_engine->base +
>  				SPI_ENGINE_REG_OFFLOAD_MEM_ADDR_WIDTH);
> @@ -1097,6 +1214,9 @@ static int spi_engine_probe(struct platform_device *pdev)
>  	}
>  	if (adi_axi_pcore_ver_gteq(version, 1, 3))
>  		host->mode_bits |= SPI_MOSI_IDLE_LOW | SPI_MOSI_IDLE_HIGH;
> +	if (adi_axi_pcore_ver_gteq(version, 2, 0))
> +		host->num_data_bus = FIELD_GET(SPI_ENGINE_REG_DATA_WIDTH_NUM_OF_SDIO_MASK,
> +					       data_width_reg_val);
>  
Not sure I'm following the use of DATA_WIDTH and NUM_OF_SDIO.
HDL doc [1] states NUM_OF_SDIO 'is equal with the maximum supported SDI lines in
bits'. And the code sets that to be the number of buses. That should work for
AD7380 because each AD7380 SDO bus has only one line. But, it won't support
AD4630 (or even AD4030) because each AD4630 rx bus has 4 data lines. I can't
find it in HDL, but I'd expect to also have something like NUM_OF_SDIO_PER_BUS.
Or DATA_WIDTH is the number of lines per bus and HDL doc is unclear to me?
Well, it would be nice if we can have host->num_data_bus set in a way that
minimizes diff when multiple lines per bus gets implemented (if that's not
currently supported).

[1]: https://github.com/analogdevicesinc/hdl/pull/1808/files#diff-d1274cfe2e206aa66a0ecd3da04b3e62fc5fad9e12029b34b226c6f91454d34dR77

