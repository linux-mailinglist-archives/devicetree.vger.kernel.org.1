Return-Path: <devicetree+bounces-105932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D96B9885B7
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 14:55:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9548B1C2135E
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 12:55:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5579D18CC1C;
	Fri, 27 Sep 2024 12:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="uXKm6zd4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373E818C93F
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 12:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727441717; cv=none; b=juUvrEoW5eyfyQAPx9OwpfSDUfSVbs8W6NGCPw0PXeylF1Ws/UlSM/dY39I3nwjbjIHYtp4YahgyEJkRshPeLaZumkigf9sUgAFHkDsx3NMSPRihVJyZRzCxzJevAB20RRv4DoipF9T84JNO5fB62eOXz9Wcn4NUtUqjh/Ez2vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727441717; c=relaxed/simple;
	bh=XIIAM18PIWY1uWyT4rOqqfqO716IvFJ3bHm8Si4kxpg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GjzRMZ0iuV4DU58LYUk/rVCdC5RmMZeV7GHEvnvfIp0wXhaJaI3LfQLsCv/EhSAvbSfPsRKP3trCw9WcKQDUnodKQOhQ2VqEvnf38rtd4Dvt5XWbpNeeApkXxyu7HvUFs1c5Kl1B2opmzZEB8SKOHQzuy6itZrfE6uXRkIgnlpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=uXKm6zd4; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2A7793F312
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 12:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1727441709;
	bh=sSmJYgv7I+zUFEDVZuQHO2YXTAln9N/geQIOSH+hGyE=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=uXKm6zd4EAe2V5JoRzcZUOozVzhp5k+omfmTAiok95gy5FDZyOdtnu1Py247nDQa2
	 kEET8b2o0PB5+kFMmEeV7Ffcl2YE6xTB7vYSI0FpAMzbzvMhrc/oXuVLgC4/KR8zMJ
	 UDrQninFy3T0O7BePZxehwj3XHTZGWF5Nonn1z+VFufgsTxQso54PTTeiBbM//nBMU
	 wI+oal9611BXkNm5bH8Rb+174rULJFhwcOIw/DB0kfSIRAfX4CAhDEtcFzNj5NFdGU
	 X616bqBYR7DluIkB8g9nHBozLqAWr3/UPEkJbFj2tO/jIqQGzvE/ZhxC4ijXV98Xap
	 VMDIxv8rBR/Hw==
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5e1b5b8555fso1582442eaf.0
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 05:55:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727441706; x=1728046506;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sSmJYgv7I+zUFEDVZuQHO2YXTAln9N/geQIOSH+hGyE=;
        b=nWHdNCdDxob+PEyFSNpiC9RadLQBolGv117RBXuWbMUzB15Wy1zuwPRd0eMGqClTKx
         1KtdpzCxEncJYWP199ZvvM7KavJ3ZxG+GEEDlGqC3plbQ9ys1zh9zLoyVHnOdpLjfQHU
         sGEC0o31mM2JZ2Out+fKRP4InrHv2LmSKgiqk4gxC1SQPRTQtx4rLzYvaTkyqSYjHjFO
         +0P79qCdfsOTefhLaOv7ZSIh5hssxXEoEwaYE1FwacNcErFY8xLH1Uo82Nj91aHP7hbw
         IoxygTJZe/vuXao5Mufsfb0uLCVcmw9QKA/Z1cxP8a95f9MPfJkwwbqypm8ZefBUTeQm
         zgaw==
X-Forwarded-Encrypted: i=1; AJvYcCVXxIe7Eo3sPaL5Isn+Cc5WwKW+Q8K/+lA+z+YWbLYD9Bgpa1tyPkWaFTjvKRBP2q/oh3A9w52Sb439@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0vP79a/ThN2O2ZgkryUne3TzrdOdO4J4mf8nwb4vKCzKWsLpl
	by7WIZKhMJdKpHlIjBg/pijZmJz7vzi5MNoWzrSVn4ReJLBBcjkmiOceMWZY/5TnZU9PPkRfGR8
	ZRWu1u7FHbHq/bAoNaipb6wVc7DImq9qsUQyfD9s3mj8VWfIcVVDFTYyEKHCqgPO4lbRu1YIdRt
	7E6kLQzifL+PdfBpEIHypRkV7CBVOqyWDc1jLjyoZqAgIMPS/AhA==
X-Received: by 2002:a05:6871:890e:b0:27b:66ea:add7 with SMTP id 586e51a60fabf-287109f5bb4mr2306180fac.4.1727441705664;
        Fri, 27 Sep 2024 05:55:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFq2edOIUBYR+Xf5m9TknVcpYnAPqK6sQBsqv8AamrOSSkCMEyyDtCAwOwZQ7rY9zd/qv/ETMaRzLJy5zKgxVE=
X-Received: by 2002:a05:6871:890e:b0:27b:66ea:add7 with SMTP id
 586e51a60fabf-287109f5bb4mr2306155fac.4.1727441705340; Fri, 27 Sep 2024
 05:55:05 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 27 Sep 2024 05:55:04 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240926-th1520-dwmac-v2-3-f34f28ad1dc9@tenstorrent.com>
References: <20240926-th1520-dwmac-v2-0-f34f28ad1dc9@tenstorrent.com> <20240926-th1520-dwmac-v2-3-f34f28ad1dc9@tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 27 Sep 2024 05:55:04 -0700
Message-ID: <CAJM55Z-FLmpFfisNpJi8FP7o_5mwoDa7r18VXW7u7nF0V6oiRw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] riscv: dts: thead: Add TH1520 ethernet nodes
To: Drew Fustini <dfustini@tenstorrent.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Jisheng Zhang <jszhang@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Drew Fustini <drew@pdp7.com>, 
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Drew Fustini wrote:
> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> [drew: change apb registers from syscon to second reg of gmac node]
> [drew: add phy reset delay properties for beaglev ahead]
> Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
> ---
>  arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts |  91 ++++++++++++++
>  .../boot/dts/thead/th1520-lichee-module-4a.dtsi    | 135 +++++++++++++++++++++
>  arch/riscv/boot/dts/thead/th1520.dtsi              |  50 ++++++++
>  3 files changed, 276 insertions(+)

...

> diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
> index ca84bc2039ef..d9d2e1f4dc68 100644
> --- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
> @@ -11,6 +11,11 @@ / {
>  	model = "Sipeed Lichee Module 4A";
>  	compatible = "sipeed,lichee-module-4a", "thead,th1520";
>
> +	aliases {
> +		ethernet0 = &gmac0;
> +		ethernet1 = &gmac1;
> +	};
> +
>  	memory@0 {
>  		device_type = "memory";
>  		reg = <0x0 0x00000000 0x2 0x00000000>;
> @@ -25,6 +30,16 @@ &osc_32k {
>  	clock-frequency = <32768>;
>  };
>
> +&dmac0 {
> +	status = "okay";
> +};
> +
> +&aogpio {
> +	gpio-line-names = "", "", "",
> +			  "GPIO00",
> +			  "GPIO04";
> +};
> +

These GPIO line names does not belong in this patch. They should
already be included in your other patchset adding the names for the
other lines.

/Emil

