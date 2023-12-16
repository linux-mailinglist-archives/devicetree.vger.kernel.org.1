Return-Path: <devicetree+bounces-26150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 53494815B60
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 20:39:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B05D1C21626
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 19:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F97E31A85;
	Sat, 16 Dec 2023 19:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="e44+90st"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE4F328B4
	for <devicetree@vger.kernel.org>; Sat, 16 Dec 2023 19:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 35DC93F2C9
	for <devicetree@vger.kernel.org>; Sat, 16 Dec 2023 19:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1702755535;
	bh=2c7dacoDuG5K0tl+4E3IQI93Dvy5OouinIjtAewN7Os=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=e44+90stt3l/ScDqFCt0bG6NKsJ/Mnf+Qs0a7LWfGhTtdRmu9YGpDJolyJM3eGWXo
	 rOxrY3DDdfuQAvS1nLovn7rvG1rAMVzOxjAQZU+c0hx/T4BtYt0jbVhtdtMnFr8dqM
	 x0wLuYK/sRWNlKG/GoHcnrDde5ssJOy0br3+r/RTtTWilHxhRvbmZ1u7ksKz80DAAe
	 4cNKdTvknaVdPmg2jo8O8vvDAzKX3qwm3lRVCRUGyLYJs2mdWGRsZSkL18F+pZCBdt
	 xt/wSVBGSPEMHxCTMQL61lkX4GcdlAwnOv/+aUnx1wzjfjW7Noq1VwmrL5INZCoqEi
	 uiiCOMDE0NSlQ==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4258a2540ceso29057161cf.1
        for <devicetree@vger.kernel.org>; Sat, 16 Dec 2023 11:38:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702755534; x=1703360334;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2c7dacoDuG5K0tl+4E3IQI93Dvy5OouinIjtAewN7Os=;
        b=SVbWCNy04K2hHNfuWroNO61kAxwO7wBoAD+uXWDjRp1nrKFTKvtTfCfZPAdXRzQL8z
         7b7sGu0peQaT8znW4chceZL6FX8OxMzokwbwPwd9XS4nYQgoXmwutqgOItGDCh3yHdDz
         aLb6c2ESF8DPoFKmtHaitTcGCj1ldTlktewe7dBoO8hLJwnWNkJtAQvZdbI1B72oia/w
         mOfhucGl8VnAlZpCn+7gcJiMLXCCDPFIQ7gV5vAgGcO8kFUCJlq20SbP7GDHifJ+ta9c
         ty1osh72CUz8tT8cJlxKOGJOT2rZoxTrZpdLqRY7ZJOpbL2Wv17hGbUMcle2ZR0uXjkp
         fo/Q==
X-Gm-Message-State: AOJu0YyWYnilyv3lDpzGwGICQ2bzPrMqCAj50GqSxRQNC0DghYgCHXHa
	OQl13l9pKnYuIBm0etfSFnLIVQ1Li+lYa8d5dzQoa0Yv429Zl3Zlw2GUXBijKZekIK6OQmWU1zR
	kGCvZFteFqUs2RIdnuMXSs/AdWeTQYJQ+ffoAQ32gajnrlpBTHkwE620=
X-Received: by 2002:a05:622a:1c8:b0:425:4043:18bd with SMTP id t8-20020a05622a01c800b00425404318bdmr20333351qtw.112.1702755534010;
        Sat, 16 Dec 2023 11:38:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFkdKr9ZA1ECc64gwyj30qjy4snj5vZUkODgrjSVIiFsMAP3aqvVWnQrSXJixVzRgLW2ZfvbY5zJh4SCWF268k=
X-Received: by 2002:a05:622a:1c8:b0:425:4043:18bd with SMTP id
 t8-20020a05622a01c800b00425404318bdmr20333325qtw.112.1702755533644; Sat, 16
 Dec 2023 11:38:53 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 16 Dec 2023 11:38:53 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231215204050.2296404-6-cristian.ciocaltea@collabora.com>
References: <20231215204050.2296404-1-cristian.ciocaltea@collabora.com> <20231215204050.2296404-6-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sat, 16 Dec 2023 11:38:53 -0800
Message-ID: <CAJM55Z-bg0EGPaLHtxcu2AzqN59zfuiT0eE7oCShrx7dG_QK1g@mail.gmail.com>
Subject: Re: [PATCH v3 5/9] riscv: dts: starfive: jh7100-common: Setup pinmux
 and enable gmac
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Samin Guo <samin.guo@starfivetech.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Hal Feng <hal.feng@starfivetech.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Richard Cochran <richardcochran@gmail.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"

Cristian Ciocaltea wrote:
> Add pinmux configuration for DWMAC found on the JH7100 based boards and
> enable the related DT node, providing a basic PHY configuration.
>
> Co-developed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../boot/dts/starfive/jh7100-common.dtsi      | 85 +++++++++++++++++++
>  1 file changed, 85 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> index 42fb61c36068..5cafe8f5c2e7 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> @@ -72,7 +72,92 @@ wifi_pwrseq: wifi-pwrseq {
>  	};
>  };
>
> +&gmac {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac_pins>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&phy>;

I'm not sure if it's a generic policy or not, but I don't really like adding a
reference to a non-existant node here. I'd move this property to the board
files where the phy node is actually defined.

/Emil

