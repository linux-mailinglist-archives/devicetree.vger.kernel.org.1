Return-Path: <devicetree+bounces-87047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D427793865D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 00:08:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A8641F2111C
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 22:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE5A02A8CD;
	Sun, 21 Jul 2024 22:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="V7j03+qr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A97C8D1
	for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 22:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721599690; cv=none; b=pkqQfrFXTn0nvobqkrSq+uVPxa93hRoTU8vwWtm1FkmTbcLFAg+X+7b7Q3oUHJbyJLUR1imjFxGALy/21dObmQTnIHBoBfML/yL1/pf1QFp0K7bj9IbAKXX4jD1mIy4R9dQAqX5qQU24wzMZ58VQg7+muW9otPak+DUfWmkwSBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721599690; c=relaxed/simple;
	bh=NvQhgqZ/eJ4eay+hcTekcrXMx75pemCUoA4q7W94dWo=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=alLsLzjPr1zSkpTqO86vXV3/zMsb5qUy1CREiL5un6ijToU8cgz1b1yNDfpd7m5HYpm3aQ+43LnMyIe4oVpsFpPFpFMze6WvlDasEwNyLmmnynkSUpr6c2mTk6WxToa+X2wP5AynOUrVcT5WAHERarCYGglkAWilDPN42K2Hdkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=V7j03+qr; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D86FC3FE4E
	for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 22:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1721599679;
	bh=y5sr3lEv07by+NAwwOdiyaM6+TTZ7xKpJ82kUwR7sbg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=V7j03+qrzYXaO6hBgVfXmic6Zbzm3///tcOWb6pDfrgs73AqiSADzcTS6b3H87zBK
	 3rqZdGtK/CLc7xLQOzOS2cR74fGNMNKIdwDrzAjwEtSzvxjaxpNbmUzItGFEkFaq2G
	 J7pZzT5cUcwqILOp6FRWf7s1fZr78fRXzodT4oZwHy4/gKbBBKKuomAgRMxFLNCIlr
	 1yIllrdAHyua7gn8OH10yUf0TUlwbFtoq0KKHpQgNqZf96nwFCj7nGoPc1zH5eCvRT
	 ZBO/n5Q7OlYBuaZiZkHrasKsP3USAyBSxj7+d/voC5NWrMcRNxKvSx4ZUdUvTG5B2k
	 pOyf89EL2rznA==
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3d92425ce97so3777301b6e.2
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 15:07:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721599679; x=1722204479;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y5sr3lEv07by+NAwwOdiyaM6+TTZ7xKpJ82kUwR7sbg=;
        b=g/Wt/BISnHguc6NzqiFd4VHe9h5ySBvM40Si2obmieWI5xziYGfwhNYohE3N0lAVw+
         AIfrHiP5T32hJu0G2lAp+2FRwa5nXParFoEQQ6U2exALvbK5c3vKeJWT3n/VsrrewlRW
         CTpbdcfFTzaXCaBXBE6vvMJikXImhey6nK+OENE99PMcgEUpRjwolr2zUu/j2uR/IVkg
         kwVYK0xUxhb0elMfM+SJP1K4UlYFE12cZDCuL5xyalywo4ea6LANIj17cnaIqdrFl/uW
         7qpqjOa3xPYFlHmoM39E1JJRie5jJ2ECdjKeNXNAxCRVVoJ+z6/2FHNqiOQwmzeG10Jv
         kcDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyEt1WV7V4gDh9QvLVUqion3r/PgKBdfWH6PdOjcuDNYEVG9rQt1QkgjdMiT1OcjxdngT5fLmbg0QFz7zuHU9YuXXeTlPignqgUQ==
X-Gm-Message-State: AOJu0YzDOdYqXH1HO2/JFf9OvauAhR94vvgW2e+fyyow0FiL+4mODwWs
	fWxJES+Cqn16PzUqA3hwUcYK4PYmE9LG/kHkop+x92O3ynSwmH+F+pChjEE2c9MxZ3YpPbhh+3R
	FWT4MtCAkHN34UIIMCzOBpRs2XLUXv5ggg5aB7aJBxceMHktDNtopYvfP28+vwZ4ThjS1nM3glJ
	RlV31uB6FMBfPBrbnRlr4N6HPyMbR3YxBPQ41ZOjEGVW1HLquZ6A==
X-Received: by 2002:a05:6808:2384:b0:3d5:2e2f:bf9 with SMTP id 5614622812f47-3dae5fd6b6emr8114727b6e.30.1721599678743;
        Sun, 21 Jul 2024 15:07:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKu3rxDjbynntjHH+0+p7b3ltQUv9i7hhvrMnwR7SAjBoMSrD4QUg9VCnWIvxOUrarV5om39CY87FNWsSBz4A=
X-Received: by 2002:a05:6808:2384:b0:3d5:2e2f:bf9 with SMTP id
 5614622812f47-3dae5fd6b6emr8114702b6e.30.1721599678304; Sun, 21 Jul 2024
 15:07:58 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 21 Jul 2024 17:07:57 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240711-th1520-clk-v3-3-6ff17bb318fb@tenstorrent.com>
References: <20240711-th1520-clk-v3-0-6ff17bb318fb@tenstorrent.com> <20240711-th1520-clk-v3-3-6ff17bb318fb@tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 21 Jul 2024 17:07:57 -0500
Message-ID: <CAJM55Z8uo-Z_9ruyqygK1pbBCTkCxMBVoF8GD2dajhTKOYrAfA@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] riscv: dts: thead: Add TH1520 AP_SUBSYS clock controller
To: Drew Fustini <dfustini@tenstorrent.com>, Jisheng Zhang <jszhang@kernel.org>, 
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Yangtao Li <frank.li@vivo.com>, 
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Drew Fustini wrote:
> Add node for the AP_SUBSYS clock controller on the T-Head TH1520 SoC.
>
> Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf
> Link: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
> Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index d2fa25839012..10a38ed55658 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -5,6 +5,7 @@
>   */
>
>  #include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/clock/thead,th1520-clk-ap.h>
>
>  / {
>  	compatible = "thead,th1520";
> @@ -161,6 +162,13 @@ soc {
>  		dma-noncoherent;
>  		ranges;
>
> +		clk: clock-controller@ffef010000 {
> +			compatible = "thead,th1520-clk-ap";
> +			reg = <0xff 0xef010000 0x0 0x1000>;
> +			clocks = <&osc>;
> +			#clock-cells = <1>;
> +		};

Please add this node so nodes are still sorted by address.

> +
>  		plic: interrupt-controller@ffd8000000 {
>  			compatible = "thead,th1520-plic", "thead,c900-plic";
>  			reg = <0xff 0xd8000000 0x0 0x01000000>;
>
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

