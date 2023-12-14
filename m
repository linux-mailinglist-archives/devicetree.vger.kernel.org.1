Return-Path: <devicetree+bounces-25497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CD381362F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:29:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F156B20B94
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81BBE5F1FF;
	Thu, 14 Dec 2023 16:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JGW4TUJk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99545120
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 08:28:59 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3333074512bso495399f8f.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 08:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702571338; x=1703176138; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DocpNCRUemb4PzU5LBi65wCkuGjIl2naDWPnxKjn8u8=;
        b=JGW4TUJk0ikNWPnPfDsec1zI14GTPi0mANP9TtEQhHBDrhFAcwZivVYp+NIFIPTc6M
         mvB0VSlAYeAb8o3wP9aAA3MtZAKMKBxqitLxmedpR0Hw+vDKvo1drvfeMd56O2FoHyuj
         CY+ZSUtishAmWAv4jqql3twD4R8KPOfHBOd00WYtQ1VORpVc8VnYvwYzhK+Ty7ME753c
         OBd32xHaIX96FER72WU6puoCH0xkXLW7Vo1InqoWs7AbL3eMCkgkPqxGlZyU5Av3/fAM
         RTK+DVmi9hxJHi3ER52TLIHgS6HL4mmH3v2HROzI7fTOzmZnDZHGQsAJHoy3jbg8JjIW
         vITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702571338; x=1703176138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DocpNCRUemb4PzU5LBi65wCkuGjIl2naDWPnxKjn8u8=;
        b=FIaJWIy/XgKfUg9aqvJxKoSLY+MjfS5XeTaYDcWVzjLTuHFp3lnJMsNHCEprc8WtJI
         CmIQsdPDmVtk/3fzCfCfYHD+v0wvlO3O5ZZufqGD9v6semfeo3eNacnjPInS4ETYGWbI
         H/M40KtTKIiqY0ya52y3/XZX1aWn4iJVFU//LNhn9UHqYIyv15ynv0CFaJ2h8ItjYfWk
         F32dRMqypd3muJI+n5tc0uDl+Gb8J1L1x87htKTc+ne3SQIiRyTvzxXIl/8YAlnrhE8u
         cPpI9srsjESMnQqSKpgREDA+MuxO/P+Kgm8z4ESbrthwY9sHayv1kThQPJ3KL8hGUYyg
         SXBA==
X-Gm-Message-State: AOJu0Yxvvex3rpL8RIgBZg/pzvroA5fn0dgv9T2Jy/J+lr+j36umgdaU
	BhGRTbxYymEFPkECTPrF/6A=
X-Google-Smtp-Source: AGHT+IFuYk/xTOppuMVaqKZ5dBLqDo/+tFTSYF7mI1tGF8Qq2G0Xo3r21ucFb9p+qFP7h0cUXPBbmg==
X-Received: by 2002:a05:600c:260c:b0:40b:5e56:7b4e with SMTP id h12-20020a05600c260c00b0040b5e567b4emr4851909wma.151.1702571337673;
        Thu, 14 Dec 2023 08:28:57 -0800 (PST)
Received: from archlinux.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id y12-20020a5d614c000000b0033643505580sm3327259wrt.92.2023.12.14.08.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 08:28:57 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject:
 Re: [PATCH v2 3/3] arm64: dts: allwinner: h618: add Transpeed 8K618-T TV box
Date: Thu, 14 Dec 2023 17:28:55 +0100
Message-ID: <5897240.MhkbZ0Pkbq@archlinux>
In-Reply-To: <20231214015312.17363-4-andre.przywara@arm.com>
References:
 <20231214015312.17363-1-andre.przywara@arm.com>
 <20231214015312.17363-4-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, December 14, 2023 2:53:12 AM CET Andre Przywara wrote:
> This is a Chinese TV box, probably very similar if not identical to
> various other cheap TV boxes with the same specs:
>       - Allwinner H618 SoC (4 * Arm Cortex-A53 cores, 1MB L2 cache)
>       - 2 or 4GiB DDR3L DRAM
>       - 32, 64, or 128 GiB eMMC flash
>       - AXP313a PMIC
>       - 100 Mbit/s Ethernet (using yet unsupported internal PHY)
>       - HDMI port
>       - 2 * USB 2.0 ports
>       - microSD card slot
>       - 3.5mm A/V port
>       - 7-segment display
>       - 5V barrel plug power supply
> 
> The PCB provides holes for soldering a UART header or cable, this is
> connected to the debug UART0. UART1 is used for the Bluetooth chip,
> although this isn't working yet.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



