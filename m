Return-Path: <devicetree+bounces-31941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3799982D4C1
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 08:58:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 348A11C211C1
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 07:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED1424402;
	Mon, 15 Jan 2024 07:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rbsLJ7DZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB276FA4
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 07:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40e7065b7bdso13909865e9.3
        for <devicetree@vger.kernel.org>; Sun, 14 Jan 2024 23:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1705305460; x=1705910260; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Lsz9t12YTeNRis5BeibnJ2HTHRMbbkCneMcUQAuvLQ=;
        b=rbsLJ7DZZoVa5k2OCAwMbpCDf6VVmRM7aBqIpgk0kFlz8QaNqrybQ1M9Im3t31vxUl
         yNcqCa/O+TNm9ZSHhTrzDu2iQMvB1QlIfA5SN/iTt9tDfrG3HtEquplgyLk9FqWGjxd0
         RDKH1apqQoQwaaU2h6LA541EsZTQ034oAkGiQQJGgReM2xf85UxbXSAn1R8e9gfAQUCf
         La3QBqPBD+8yvNTI0WojJTTAvuh8Qgbv2EvGcdsZVdBdOxt7CGBRQk9xlBTgDZJ3TbUt
         hv5q+uZs8wlz51aGGqCvJDCF1VvlQYQx224zElFdIvbJ8yTipu/oBt3sI/+tg1Rzd0bY
         icmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705305460; x=1705910260;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6Lsz9t12YTeNRis5BeibnJ2HTHRMbbkCneMcUQAuvLQ=;
        b=eLbXpYXnl+1zi1/ry8Fm8J04wenCG42wJOBAU72Y0jUxbkJ0Jpw2126HwIcwL3VqUw
         YbVRxF2X6t2IWCk0fx7MuBZkoCSBP4hazhJ/griTzlMn+dOoTeuFPS1Subv7HmNwZQDk
         ypf14KVqGyTE3i6DD0gTrL9m5TrVEU5Er3lE+Dof7UE2y91CR1PqCeEtHV9W8ZsLFSZZ
         VQiZPw4OyYoIA6/RIfC2IRrhoK6sKyPGHVv47Mxbnjv1RE4D+lq8QQJA7n3DXoxfEMvF
         ckLvx6JJlsEitWAkGOgWzuzclCXyIJs2R9DJW6QqF536epIMcDuxYG76XxbK2B2ZGWyY
         /9Pg==
X-Gm-Message-State: AOJu0YwsCA8eNNJE3GUOEnwYoxMqk8SCgVjxGvHB4JRm/38JaipCIThl
	/r6mtYnOvvZw8DNTieZORoaOogslIWikDA==
X-Google-Smtp-Source: AGHT+IHP6dI9NNa0ax4Hgi+c3w68CMJcWWFQirFyCbFk5qRryxPUgMPhBW1ALQfbJoNnarVNqXfcCg==
X-Received: by 2002:a05:600c:190f:b0:40e:486f:45ac with SMTP id j15-20020a05600c190f00b0040e486f45acmr1678422wmq.19.1705305459644;
        Sun, 14 Jan 2024 23:57:39 -0800 (PST)
Received: from localhost (abordeaux-655-1-152-60.w90-5.abo.wanadoo.fr. [90.5.9.60])
        by smtp.gmail.com with ESMTPSA id je14-20020a05600c1f8e00b0040e3635ca65sm18872425wmb.2.2024.01.14.23.57.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jan 2024 23:57:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 15 Jan 2024 08:57:38 +0100
Message-Id: <CYF4C0HXNWMA.339GHZY3SLL9Q@baylibre.com>
Cc: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, "Pierre Gondois"
 <pierre.gondois@arm.com>, "Tony Lindgren" <tony@atomide.com>
Subject: Re: [PATCH 07/16] arm64: dts: ti: k3-j7200: Add MIT license along
 with GPL-2.0
From: "Esteban Blanc" <eblanc@baylibre.com>
To: "Nishanth Menon" <nm@ti.com>, "Vignesh Raghavendra" <vigneshr@ti.com>,
 "Tero Kristo" <kristo@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Rob Herring"
 <robh+dt@kernel.org>
X-Mailer: aerc 0.15.2
References: <20240110140903.4090946-1-nm@ti.com>
 <20240110140903.4090946-8-nm@ti.com>
In-Reply-To: <20240110140903.4090946-8-nm@ti.com>

On Wed Jan 10, 2024 at 3:08 PM CET, Nishanth Menon wrote:
> Modify license to include dual licensing as GPL-2.0-only OR MIT
> license for SoC and TI evm device tree files. This allows for Linux
> kernel device tree to be used in other Operating System ecosystems
> such as Zephyr or FreeBSD.
>
> While at this, update the GPL-2.0 to be GPL-2.0-only to be in sync
> with latest SPDX conventions (GPL-2.0 is deprecated).
>
> While at this, update the TI copyright year to sync with current year
> to indicate license change (and add it at least for one file which was
> missing TI copyright).
>
> Cc: Esteban Blanc <eblanc@baylibre.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Pierre Gondois <pierre.gondois@arm.com>
> Cc: Tony Lindgren <tony@atomide.com>
>
> Signed-off-by: Nishanth Menon <nm@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts      | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j7200-evm-quad-port-eth-exp.dtso | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j7200-main.dtsi                  | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi            | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi                | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j7200-thermal.dtsi               | 5 ++++-
>  arch/arm64/boot/dts/ti/k3-j7200.dtsi                       | 4 ++--
>  7 files changed, 16 insertions(+), 13 deletions(-)

Acked-by: Esteban Blanc <eblanc@baylibre.com>

Best regards,
Esteban

