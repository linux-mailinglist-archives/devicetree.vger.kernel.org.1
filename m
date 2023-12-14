Return-Path: <devicetree+bounces-25562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F5E813A66
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 19:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1C38282A69
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFBA668B9B;
	Thu, 14 Dec 2023 18:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DjpsODRf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1561F10F
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:56:39 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40c68c1990dso1747365e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702580197; x=1703184997; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAxAjKcdxPU97AIvApR3RCAnoJx2vmM7/1XrerRQJkc=;
        b=DjpsODRfMB5c2XYNNgYXxw+2uC4Swt0DI5ZknUN1tGF50jgD8opP9mkckejmaekdhi
         Yi/s9uTfPfv2PY+mNsM13VQJAYEWVnVN930oqgtwx1Onz/xpAJtGbQOfgTVkvtBa3tic
         xFZKgzuPOBfJVnGHDG+Bb2Wb/fqjkhOkKVgFQ5exmFA0/qe2X7cu5EcIJv41GIeaDgkW
         f5i0qRtzUbQccNOTLMRr8JDJbKPGqHqfMjmGQdYsnKar7PQEcFDYG5Hslh1FySsbheuG
         ihkxUnBCGJhBen7GbgxAizaT4awdgu2umjBJM9jYnq/sYY1SroggaMXqudsL8VUUh0NO
         ACJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702580197; x=1703184997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IAxAjKcdxPU97AIvApR3RCAnoJx2vmM7/1XrerRQJkc=;
        b=w+HU27lKcjIShM8RGn5cv1LocU/bROEy7bRQ5SVvNNutAL4Wcbr6/c8rqjO38G7UAX
         jSwBsuFtim1d5Sg+fjt0BZGvl6+iVJjrKBqqpPZIWQrFmFvJie2U5NuQJ8uVP/e1hZ33
         TMhAY1JvSu38O6WlM1uDlmohYmBdnO3p0CuM6gv3nYp2BXekBW6cwevAq3MbQZvA/74k
         Dr/x9fqcuqSnKY1h70z1uPD0U1f90k/tZydRu4LLJJER1q/MqPjMVi/8cHNJDtdFjmA4
         uRUsy0rEg9jQwM3YTN5UDamGlojU+9P7I1LCEiurSYkZqrCBDeXxlsIoW+GwAIwh6AXr
         6apw==
X-Gm-Message-State: AOJu0YxuzlPTZQxL0zKWaYU8M6l7BjU2HAbdTDXGvxvJ+ABnXhiMZAVA
	p6iXhfCtqEkgxlF/i0dQtTQ=
X-Google-Smtp-Source: AGHT+IEJdSovztE1+kaX2STJnCOl7W1aWVQMf5BovgvciYv0lS+dzUl+ZZ1suE0cXUGwcLPNd6ee9g==
X-Received: by 2002:a05:600c:1c07:b0:40c:1e8a:4d0e with SMTP id j7-20020a05600c1c0700b0040c1e8a4d0emr3298090wms.27.1702580197226;
        Thu, 14 Dec 2023 10:56:37 -0800 (PST)
Received: from archlinux.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id m14-20020a05600c4f4e00b0040b30be6244sm25718707wmq.24.2023.12.14.10.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 10:56:36 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject:
 Re: [PATCH v2 0/3] arm64: dts: allwinner: Add Transpeed 8K618-T TV box
Date: Thu, 14 Dec 2023 19:56:35 +0100
Message-ID: <46021670.fMDQidcC6G@archlinux>
In-Reply-To: <20231214015312.17363-1-andre.przywara@arm.com>
References: <20231214015312.17363-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, December 14, 2023 2:53:09 AM CET Andre Przywara wrote:
> A quick update, with the few fixes for issues that reviewers spotted.
> See below for a changelog.
> ================================
> 
> The Transpeed 8K618-T is one example of various cheap Chinese TV boxes
> using the Allwinner H618 SoC. It comes with up to 4GB DRAM and up to
> 128GB eMMC flash, plus the usual HDMI, 100Mbit Ethernet, WiFi/BT and
> dual USB ports, not to forget the mandatory microSD card slot.
> More details: https://linux-sunxi.org/Transpeed_8K618-T
> 
> Ethernet relies on the yet unsupported integrated PHY, and the HDMI
> output is similarly not yet supported, but patches exist that await
> polishing for mainline submission.
> Meanwhile USB and eMMC plus SD card work, so you can hook up an USB
> Ethernet or WiFi adapter to get things going.
> 
> This series is the usual trilogy of DT support patches: adding the vendor
> name in patch 1, the board compatible name in patch 2, and the actual
> .dts file in patch 3.
> 
> Please have a look!

Applied, thanks!

Best regards,
Jernej

> 
> Thanks,
> Andre
> 
> Changelog v1 .. v2:
> - fix alphabetical ordering in vendor-prefixes
> - remove unneeded UART1 alias
> - extend regulator names, drop now redundant comments
> 
> Andre Przywara (3):
>   dt-bindings: vendor-prefixes: add Transpeed
>   dt-bindings: arm: sunxi: document Transpeed 8K618-T board name
>   arm64: dts: allwinner: h618: add Transpeed 8K618-T TV box
> 
>  .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../sun50i-h618-transpeed-8k618-t.dts         | 161 ++++++++++++++++++
>  4 files changed, 169 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts
> 
> 





