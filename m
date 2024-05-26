Return-Path: <devicetree+bounces-69228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7431B8CF427
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 14:01:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DD5CEB216E3
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 12:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14036D535;
	Sun, 26 May 2024 12:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="uYCF+evs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7B7BA2E
	for <devicetree@vger.kernel.org>; Sun, 26 May 2024 12:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716724881; cv=none; b=kXlKXYj8RI2kQ5U8P2BNBwItI/ScWqxNP/O8KipejtEgOJPG62x/rAK0PvoR/+wVQMkbPKr/yYLFjJikzgdHBwXU/aZeimXy9ncmkqoknd8qBCu9ktXlkXT3T8gh0hAfCLDzymr2I8ycvvIQC3JDvwryex0EN1GZ8S1ha1P4H9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716724881; c=relaxed/simple;
	bh=in2sBYIbdKVYfw+Qb1jCBsiXEMEqYYBkJtxjrunmwvA=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qnCIZJtbrycKxVugCFT8wmO4YVchvGoyGUVg2MPZBJYHN6uERQvBZtAq3FaW3Qx/0QIB31JPMSSXiapaPMzQUxRxE2P2z187m3gEq9JHbSET5bTXzZ0Bt0E6JT6JvEaEWeiu+zksGB/qeMgZFuuUodq7htZLAyaWj8fEnQdsNHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=uYCF+evs; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 47C91424A0
	for <devicetree@vger.kernel.org>; Sun, 26 May 2024 12:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1716724869;
	bh=tvkwPnG/2WS9EBDE3dwEymI8zBU1MKtjDDlk1d+P43Y=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=uYCF+evsRE/EjjorP+YkUxkSR9k7hu+uML1iWQcMsjHX3bh7tbrJTJZx0FY5EXNay
	 PjRFJe5rcNXdyEn4MUsfs8LyJw9I5PXOm84YXozXzVk/u0dYAQ/ZHp/9fBh8Saqh76
	 0NMZ2hQpfQGr8pRYr8uwKR3f0K8I2z4bbMfTJJpSoNHhCT/1kj3B3ysH7pQRBFoYHW
	 sBy9gQIbGc1rXq13B+zeJCKIKXtodR+uKFaiCHSnyKV+assttNUarzDCZ9PBivjZHY
	 yZ/2YMIn6A76FxqnrBYXneR+/C0lK0wDE0jr0LVg1QBSf02DfRSWqNjQajI5tEa8pL
	 JNZK+IVjq5fhQ==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43fb098389aso40092711cf.1
        for <devicetree@vger.kernel.org>; Sun, 26 May 2024 05:01:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716724868; x=1717329668;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tvkwPnG/2WS9EBDE3dwEymI8zBU1MKtjDDlk1d+P43Y=;
        b=lx5Ico5Ic6kycU9IYb5Ta66+anuaLm/hgEihkkldyawh+o1iD81GejGryHjRKz4OcE
         dM0ePYSloCIoAd4lH1B+BZvBOMjRXX305LFZKT0l+/h4BsarRKWXV1imITUAQyaRTAoy
         5GpsAMCXl34fCuVVn1CBFRhiFydubQzkXsqVrllM4eIzK1++0OXyvJHzfq+mh1hS0AmH
         FrE70ZY9xSxBKuXSQwjwkB95EicOxuVA1VtIfN2ko5XYX4mPqj2iY0Jg6f6Z2i0v/cbE
         0NEp8mBd4S1skO08tpIWvhxBOqr1Em2cj5v0nMOqWP+ShhEdsU0x/vvD1HUEq7T5emi9
         HJDA==
X-Forwarded-Encrypted: i=1; AJvYcCV7Iv01g0Ww0lE7l0voi/6QN0vRY49XViGmcZNn+Z8rZ1sI0yU5xYziHqTdnqfQga+3ilQ1xUyWBvj39gmPPzXbO7pg08lLTDdh5w==
X-Gm-Message-State: AOJu0YwNp/hZWvk8+O+C+d9VQIuANdIxlm88pzAHkBgjyFSzt719QMQN
	V71jf6ukFVVzYEv6HL+JhsTGYC/LCAtj6E4813X0hWYvi88azBoiiymIhyrd+xvhJGTJUnkJiNr
	97jCsbRpUj5iiYzAGxwx6uB7F0dk+m0jmgOmg+Gvfi6Av3c5688Gw8b2Gv613FaquM/zULVWNz3
	1sbVqPKj/b3Iu852RcnUFENyBue4vzy/yAkktWdi8nCCq1RJWq+Q==
X-Received: by 2002:ac8:7c44:0:b0:43e:b52:eea1 with SMTP id d75a77b69052e-43fa746b00cmr180430811cf.16.1716724868006;
        Sun, 26 May 2024 05:01:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJkeH2LUqAq82Lwd2C/Zgjoasg6mKLwrH8I1wgWYFfVMAYYWA5MjWZNr4+CmcBQiREsO5oMSN6bb46jagFZVU=
X-Received: by 2002:ac8:7c44:0:b0:43e:b52:eea1 with SMTP id
 d75a77b69052e-43fa746b00cmr180430101cf.16.1716724867369; Sun, 26 May 2024
 05:01:07 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 26 May 2024 12:01:06 +0000
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240517-i2c-th1520-v2-2-d364d135ccc6@bootlin.com>
References: <20240517-i2c-th1520-v2-0-d364d135ccc6@bootlin.com> <20240517-i2c-th1520-v2-2-d364d135ccc6@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 26 May 2024 12:01:06 +0000
Message-ID: <CAJM55Z_jXFx05YJFOfsguvdABALhi143xpwt61AGiXiyTwRc7A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] riscv: dts: thead: Add TH1520 I2C nodes
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Drew Fustini <dfustini@tenstorrent.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Conor Dooley <conor@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	=?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi Thomas,

Thanks for the patch. Some comments below.

Thomas Bonnefille wrote:
> Add nodes for the five I2C on the T-Head TH1520 RISCV SoC.
>
> Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 50 +++++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index de7116290ca4..ae6cf4c441cf 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -252,6 +252,36 @@ gpio2: gpio-controller@0 {
>  			};
>  		};
>
> +		i2c0: i2c@ffe7f20000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xe7f20000 0x0 0x4000>;
> +			interrupts = <44 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk CLK_I2C0>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c1: i2c@ffe7f24000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xe7f24000 0x0 0x4000>;
> +			interrupts = <45 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk CLK_I2C1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c4: i2c@ffe7f28000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xe7f28000 0x0 0x4000>;
> +			interrupts = <48 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk CLK_I2C4>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +

These nodes should be ordered by their memory addres, but the gpio2 controller
above has address 0xffe7f34000 which is greater than i2c0 at 0xffe7f20000.

>  		gpio@ffe7f38000 {
>  			compatible = "snps,dw-apb-gpio";
>  			reg = <0xff 0xe7f38000 0x0 0x1000>;
> @@ -342,6 +372,16 @@ uart2: serial@ffec010000 {
>  			status = "disabled";
>  		};
>
> +		i2c3: i2c@ffec014000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xec014000 0x0 0x4000>;
> +			interrupts = <47 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk CLK_I2C3>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		dmac0: dma-controller@ffefc00000 {
>  			compatible = "snps,axi-dma-1.01a";
>  			reg = <0xff 0xefc00000 0x0 0x1000>;
> @@ -416,6 +456,16 @@ uart5: serial@fff7f0c000 {
>  			status = "disabled";
>  		};
>
> +		i2c5: i2c@fff7f2c000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xf7f2c000 0x0 0x4000>;
> +			interrupts = <49 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk CLK_I2C5>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +

I know it's probably hard to test i2c2 with the Ahead board, but chances are
very low that the disignware driver works with i2c0, i2c1, i2c3, i2c4 and i2c5,
but not i2c2, so plaese add that node too. The audio and aon i2cs are fine to
add later.

>  		timer4: timer@ffffc33000 {
>  			compatible = "snps,dw-apb-timer";
>  			reg = <0xff 0xffc33000 0x0 0x14>;
>
> --
> 2.45.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

