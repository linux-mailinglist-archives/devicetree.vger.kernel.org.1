Return-Path: <devicetree+bounces-16873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD0E7F0318
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 23:19:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6E5AB2098A
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 22:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51DF91E528;
	Sat, 18 Nov 2023 22:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EeTxpU/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45F08E6
	for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 14:19:25 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50aab0ca90aso158586e87.0
        for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 14:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700345963; x=1700950763; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0SdUlrf4eM0AylepdE1Wf9qlP5oYXQhUKgEsdEd0m+c=;
        b=EeTxpU/u1oqafrU4z1RdZjwQIY2sKE6q1VVgVU4cQ0aindw+fcP+AbeJTVihBI2pwx
         9XS+fUDsVjgjtKyA5Xyg93+nsrlT/ZwreMsdPDMrxivosCBjAUBy+BpNf/BpWnYuQPSU
         CVRpXyxRBSConl2+pSsZ77tyaeskno2V4WKgWLvrb11T9mrrxjNsTv5NX0j5yy46r976
         gHjRNTCxpP5Y9541HqRRJA3I1pssnhjyHiA7lPXIeAyNPSCwK1SbgzQ9/1LAriwtZACW
         CzCnXeuE1s7iGy7ch+UiPCqlq4p1OVPlRcn82Mb7g9J5jsXSUgqyVapkBDzF8tNP/Z/N
         4I9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700345963; x=1700950763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0SdUlrf4eM0AylepdE1Wf9qlP5oYXQhUKgEsdEd0m+c=;
        b=k/3U+t5Tdmmb9PogF57sr9e7qhVYh9ts8LlwD4O+mSaLAIidWCvCKfOapHQmZ/dSVd
         ocWQaEmAALJhzS9iImU/pjfE4xirbRDwmt3FYbBFnaLQRLggyKzUTycL0ZsrRmn+mwTV
         jKCo4np6rsDuI4LcdFJi9C7bYXXbvpJ2bSa0rJVty8VP15iHh4JANh9w396cl9YkV+U2
         JAuQ5uB39urdG36llOWpIRKyUPrBqRo/VNDEhiqQy3MOB2pqUISAK5f0z+X7DcIh4zYM
         lf437z5TYBzu/hxsHXlLqR9VdFf/R9rMJJ0lyEbYfESafXp9/ASjE2+7qcFYImkaJlNu
         1dVw==
X-Gm-Message-State: AOJu0YyPyWmqilpVLPvfwAbsXhbzngRxBA72ZxCCeuZd87FTeiZsNbJ7
	PlaBE4nQ31wJsPQ9xmEKkXU=
X-Google-Smtp-Source: AGHT+IFZFJf565TqTikKzO/ClYoNkt69RXWTXyDiHbUvibAso77wJ1lAXFJDchewe4Jjve6l3KDzPw==
X-Received: by 2002:ac2:4469:0:b0:503:19d8:8dc3 with SMTP id y9-20020ac24469000000b0050319d88dc3mr2336421lfl.31.1700345963374;
        Sat, 18 Nov 2023 14:19:23 -0800 (PST)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id mf3-20020a170906cb8300b009f28db2b702sm2236761ejb.209.2023.11.18.14.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Nov 2023 14:19:22 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@csie.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Marc Zyngier <maz@kernel.org>,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: allwinner: Add Orange Pi Zero 2W support
Date: Sat, 18 Nov 2023 23:19:21 +0100
Message-ID: <1868924.tdWV9SEqCh@jernej-laptop>
In-Reply-To: <20231020145706.705420-1-andre.przywara@arm.com>
References: <20231020145706.705420-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Dne petek, 20. oktober 2023 ob 16:57:04 CET je Andre Przywara napisal(a):
> Hi,
> 
> this adds support for the Orange Pi Zero 2W, a small board in the
> Raspberry Pi Zero form factor, but with an Allwinner H618 Soc and up to
> 4 GB of DRAM.
> 
> This is just for the base board, created by looking at the schematics.
> There is an FPC connector, which connects to a stackable expansion
> board, that provides two additional USB-A sockets and an Ethernet jack,
> among other connectors.
> What is the recommended way to model this, via a DT overlay, applied
> dynamically by the bootloader, or using a separate .dts file, that
> includes this base board file?
> 
> Cheers,
> Andre

Applied, thanks!

Best regards,
Jernej

> 
> Andre Przywara (2):
>   dt-bindings: arm: sunxi: add Orange Pi Zero 2W
>   arm64: dts: allwinner: h616: add Orange Pi Zero 2W support
> 
>  .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>  .../allwinner/sun50i-h618-orangepi-zero2w.dts | 176 ++++++++++++++++++
>  2 files changed, 181 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero2w.dts
> 
> 





