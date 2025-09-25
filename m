Return-Path: <devicetree+bounces-221382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A98B9F308
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:20:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69BB61C21753
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A4D1307AEA;
	Thu, 25 Sep 2025 12:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="StNsYGYl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20582FCBE9
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758802631; cv=none; b=Km+1Is71V1PIO3mBFdmd+EsjO+J93lFMdT+Lr1GO/ctZMdzYrUdqFxS9olgvr/C98Kqe5IUFBsOG5cYdIfAMknYriU/as03I3GvGWX4OJ8B5Nt0BWZ7ThGsXYkiSCFGdWJfo39u5gAc69FnPyWd6kKZoIsk5Hd3cTwNiRbcW82Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758802631; c=relaxed/simple;
	bh=vgomaG/u0thPIen/u5fEAsol9ifdvARTkvcWUS9qze0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=c2Q9s/jvA2h15qjveBeajXFAWBxZY4nbatyIaJ+a1m3VQYt9gQR4wqwyx6kcgTgMFx/zkUCvhIHxXx60/IV8xmwYsRWbsl6TBaZfgRIU2d+EQ+KIIoj6htn0IHd4ad3WrZwvLesOVy1uOgwH5mj5Az8RDsRyycJulYKsTPXXD7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=StNsYGYl; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-8ca2e53c0d3so44219939f.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758802627; x=1759407427; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iiMnnhjmKlHUptnM90BucFSlyBtvswCn8MfVq9OViiA=;
        b=StNsYGYl0erLr5FKVWx4W9JZSyZNyKMHScuwKRWPR6RtKFXxVA4da6/bWzXOsx176b
         TMhJK7Ot708G300puVuls6G18fitfQdvIGDvjFGQfvShh7Y9eNOTddpodHL+US2c4j6U
         pv3S5NDHlVEIeoZAnvlKC0S/7MGoOUm5/e2DsjUYeyiQVRBS9YzTzfQ2/rbCmcgV+rMP
         fmYkORfD3kY0WmxhT3l2EDgMQIplNNpHaOKd8wv5LnBM+zffENBgJIu2/fgKbBWT3qa6
         aAzZD8aJpvQ6Vd8U96p1CD/oGORLGdgZrVamEiEKlbIFNkZ8GN/zT5hVSqlyXlDxniyT
         15qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758802627; x=1759407427;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iiMnnhjmKlHUptnM90BucFSlyBtvswCn8MfVq9OViiA=;
        b=gTA7b1sD41JxQ+0zUhZSQI4MpQ7GI1Q5J5H+2wYLvS/i+kjQLb8fi377viww+qmsBU
         VkiJ/Ck2SiUNkorMwifzCp/vT77UMK2NlIF2K4R49FdsyR537MjslIb0yl8k9N7y9WHF
         S68/m4jVMqt5QX840ZsZWgkZmYFDpZms2UZ6B7jSHQAP2LHmI4+/tM0RL327ykiN3vtU
         TeFdP+poW/oqCxWRcbado2/WWVCN2Xr2N2to7Mghgl1W43PNMa7f4VSPGNvyXo5tUTsw
         C/193gE5FcXCvixovhgsNddbvoQjPqS/XQC6o1NL8IZ/SHI74plGgF8vnhJy6wZbBqPq
         kzSA==
X-Forwarded-Encrypted: i=1; AJvYcCVwpM3um2X9570WO1ZwOeTYNuL0QqbXnyOs/qHvbSW3igEqGOUpJXYc1FoT2bC0g4C7RbTmtV1fS3Tz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx12+uJXvNYqkeTVqtY6Ux90SvZ3qU2oAsx/o/saxmwGoCKpUwB
	AIDfM+3KSy8FPubP6P1mo0+sgwTuHdRZaTTzdcWGsqLu49vQuTCRoILvCYv1DpbuLBM=
X-Gm-Gg: ASbGnct3M0Bg/YRABcCM9NzdjKF69V+v1NCU/8pnu/bGJ3xeqLbzcxxz9yhMlTwV9c3
	SpSzAeNH+FSboY0HWhWKvrnAlNnRh2LfH/ETe24CIHvv2CAMEBY3mXyCJnZ4S7CegYGg1QNvpsH
	7SA/Z/PJO5LDpL++zof1QGdprvLMoFExXzT8GIzr2H4JmulqWYjG5uyIJkgiIEzdyVMyJ+YIgyy
	dsFs8EawVapU6BznP3hacVHGbIavv1oTMaBYrTHPa9IB08SqFbtG+iLfL8bcGQ6lBCFxLaN/RBt
	pq8YVRIdT+R6Jq+vEGYL/1JsQi3MykVv63sqAtmATSJL1gwtH4oCFmvOlI6+4gODokTu497XgMg
	hxjRBQFjwK+UTnKMtFAP3O4kUX4O68cCJ/7q2w5LWWXU17upcpis8YGVHEXKlBw==
X-Google-Smtp-Source: AGHT+IGchv2CNYxx9JQbC4IeYd/wa2PLkKLFA1ut7JvKUIyUBucm43vFik72ll2XyHQiSOK+veiTDg==
X-Received: by 2002:a05:6e02:1709:b0:424:881b:ca76 with SMTP id e9e14a558f8ab-42595653b06mr40363335ab.22.1758802626788;
        Thu, 25 Sep 2025 05:17:06 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-56a6a5adfa6sm750664173.58.2025.09.25.05.17.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:17:06 -0700 (PDT)
Message-ID: <ed0e5d82-040b-4642-8a82-611f6b0a401f@riscstar.com>
Date: Thu, 25 Sep 2025 07:17:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] spi: support the SpacemiT K1 SPI controller
From: Alex Elder <elder@riscstar.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: dlan@gentoo.org, ziyao@disroot.org, junhui.liu@pigmoral.tech,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, p.zabel@pengutronix.de, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250925120909.2514847-1-elder@riscstar.com>
Content-Language: en-US
In-Reply-To: <20250925120909.2514847-1-elder@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/25/25 7:09 AM, Alex Elder wrote:
> This series adds support for the SPI controller found in the SpacemiT
> K1 SoC.  The driver currently supports only master mode.  The controller
> has two 32-entry FIFOs and supports PIO and DMA for transfers.
> 
> Version 4 incorporates changes suggested during review of v3.
> 
>                                          -Alex

Please disregard this message and the one or two
others that got sent with it.  Something went
wrong with my git send-email command and I'm
going to try again.  Sorry.

					-Alex

> 
> This series is available here:
>    https://github.com/riscstar/linux/tree/outgoing/spi-v4
> 
> Between version 3 and version 4 (all suggested by Yixun):
>    - Fixed an underrun/overrun comment error
>    - Renamed a pinctrl node
>    - Formatted dmas and dma-names properties on one line
> 
> Here is version 3 of this series:
>    https://lore.kernel.org/lkml/20250922161717.1590690-1-elder@riscstar.com/
> 
> Between version 2 and version 3:
>    - Add Conor's Acked-by to patch 1
>    - Add Rob's Reviewed-by to patch 1
>    - Added imply_PDMA to the SPI_SPACEMIT_K1 Kconfig option
>    - Fixed a bug pointed out by Vivian (and Troy) in word-sized reads
>    - Added a comment stating we use 1, 2, or 4 bytes per word
>    - Cleaned up DMA channels properly in case of failure setting up
>    - No longer use devm_*() for allocating DMA channels or buffer
>    - Moved the SPI controller into the dma-bus memory region
> 
> Here is version 2 of this series:
>    https://lore.kernel.org/lkml/20250919155914.935608-1-elder@riscstar.com/
> 
> Between version 1 and version 2:
>    - Use enum rather than const for the binding compatible string
>    - Omit the label and status property in the binding example
>    - The spi-spacemit-k1.o make target is now added in sorted order
>    - The SPI_SPACEMIT_K1 config option is added in sorted order
>    - The SPI_SPACEMIT_K1 config does *not* depend on MMP_PDMA,
>      however MMP_PDMA is checked at runtime, and if not enabled,
>      DMA will not be used
>    - Read/modify/writes of registers no longer use an additional
>      "virt" variable to hold the address accessed
>    - The k1_spi_driver_data->ioaddr field has been renamed base
>    - The DMA address for the base address is maintained, rather than
>      saving the DMA address of the data register
>    - The spi-max-frequency property value is now bounds checked
>    - A local variable is now initialized to 0 in k1_spi_write_word()
>    - The driver name is now "k1-spi"
>    - DT aliases are used rather than spacemit,k1-ssp-id for bus number
>    - The order of two pin control properties was changed as requested
>    - Clock names and DMA names are now on one line in the "k1.dtsi"
>    - The interrupts property is used rather than interrupts-extended
>    - The order of two pin control properties was changed as requested
>    - Clock names and DMA names are now on one line in the "k1.dtsi"
>    - The interrupts property is used rather than interrupts-extended
> 
> Here is version 1 of this series:
>    https://lore.kernel.org/lkml/20250917220724.288127-1-elder@riscstar.com/
> 
> Alex Elder (3):
>    dt-bindings: spi: add SpacemiT K1 SPI support
>    spi: spacemit: introduce SpacemiT K1 SPI controller driver
>    riscv: dts: spacemit: define a SPI controller node
> 
>   .../bindings/spi/spacemit,k1-spi.yaml         |  84 ++
>   .../boot/dts/spacemit/k1-bananapi-f3.dts      |   7 +
>   arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  20 +
>   arch/riscv/boot/dts/spacemit/k1.dtsi          |  15 +
>   drivers/spi/Kconfig                           |   9 +
>   drivers/spi/Makefile                          |   1 +
>   drivers/spi/spi-spacemit-k1.c                 | 965 ++++++++++++++++++
>   7 files changed, 1101 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/spi/spacemit,k1-spi.yaml
>   create mode 100644 drivers/spi/spi-spacemit-k1.c
> 
> 
> base-commit: b5a4da2c459f79a2c87c867398f1c0c315779781


