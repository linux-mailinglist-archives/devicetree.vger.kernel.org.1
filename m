Return-Path: <devicetree+bounces-110638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DF399B530
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 15:48:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 166A51C21915
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 13:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2447C188599;
	Sat, 12 Oct 2024 13:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="rBtP5eHn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C7117C224
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 13:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728740922; cv=none; b=VRd+Gd2j9m8nOpfNpMTYK/1Zh2HbrkwECxKKLr0OqrAYvxCJdLb4eT7JcQKgJQlRTShzRZw8uHCo6csIR1a6qb331ggSFYkMNQw6hmaWGs3PiCiftwfh9rYcfe22erZXT+Pee7Ml1ngiCKvpLWt3EKx2F9VRQadH4oTlogG0J4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728740922; c=relaxed/simple;
	bh=J3zfIbpiz5prGTnKXcyahwmDqrIPR/9CqfA6FNJkkyg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SmNhWjRDepZ/gK6nfpCSXLnHEc2hvQuFiCW+qy0FNA4THE19ZC2j+PaI0TePRSXWPIT1yHPjiDOtcjfFEzdaM+YVPwVnRV9vzELFiclDf4x2B923G6LtpyweCBqAXG1N0/79UZZIMwGJmF+j1KDhBVwAChzv2VpnIHxBpAc8oyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=rBtP5eHn; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DBAB73F1AF
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 13:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1728740918;
	bh=rt0UwgOB+qSrz8w0pdeUdXBOD7ZjXb/RHyISiF5KO80=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=rBtP5eHnTX/8JWxRB4Utr8XxGjy5/HUxZOFMVRzaN3HumCNAkoXe5CLtUoPubdG+P
	 +1guGhojVWQvapd1NKJZjypSdqgdnxg78fJcE4YnUoiF1zE1bMcSFZxHrV7s25nFj/
	 kjKgbfNCm6gFc5juqefYdyFXh5UkvHWyif98cC82VhV7g8AgASGWnar0fXqoUCtRYw
	 Lk0MiwYgW+m/CGdRuneO4N5dq62+9MHvYLRoBByc+I+o/1GTWiXbbE1ZHNMLZ9l/K5
	 G8OdPbNdcRCjrjLI1kLNG3JgwCHxs2JrLkgS7Skz5qEQJrYa/HsHpREhSM+yru5pRo
	 BffpCOVgr6NGA==
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-287308b475aso2367093fac.3
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 06:48:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728740918; x=1729345718;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rt0UwgOB+qSrz8w0pdeUdXBOD7ZjXb/RHyISiF5KO80=;
        b=sdqbW/gt81X6BwPyEOiOUGmBKFtIrCn/cePBNjFlzQKwCHkO28j8xJ75wjN7eUKn1x
         SfdjZiqNDHKCKSGOEwCocynti2UgBZ8HawXrwOC094VUvuAQ2t/AlTp1W+CXOCLyDjkx
         xGm3cbwgF9zp65BeRCsa2/3L4/6AMUKIs/VkDKfnomSyiFP2COuNEvdxhRBaTg8HTzNT
         VWfdW6AgCqF0UboX9nIeOGRlr+Kmq7uqmiAlKOR1bh4AQUoGTn1F+BQE4Zug1xEwbaaP
         Z2V0Lfb1RH2RADftIMSN9GpBBDmi6Sf95ODfKvQxoGKBw8eAL2I+HACAFpbe5z2O+7v8
         wLew==
X-Forwarded-Encrypted: i=1; AJvYcCWxbji5B6TXP3vty42sLQNPS8t+wvaLKNMjVnmxq7UFD4kWfOms9MN7oftlUp1WqF8ukhoYgS2e52zh@vger.kernel.org
X-Gm-Message-State: AOJu0YwxGJ57cAnBhC5hW2vbSvJdCVzzsz3uoYkbRfA73ZpL644jzwoz
	pgKKaYC1fwmew84StCWdBRxHSyQdHyjE0bAjgOhD88QjlWbP1001Qbn55kK9q5LlxZETvh1/tPL
	tzDKY2zRE8Br28hAcw22RarR2IPBueLkag7YaA28Y2pCuQzkUHVf+SpYlOScTEx6TFiEU7hEDOF
	s1gKecvDchTqC4Nt+rJaIBd+ActIW4sH0ltMc7BIl327FmSdDh5A==
X-Received: by 2002:a05:6871:722:b0:27b:686a:43b8 with SMTP id 586e51a60fabf-2886e0d763dmr3037265fac.47.1728740917769;
        Sat, 12 Oct 2024 06:48:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUhb7FBT2aOLXEM13xU9YHNmJCMnEhGGv19i7zdJ6DXtz+B4k+R23VQtqo3lAABpFX8Opm/NU5UsTKo8p8s3U=
X-Received: by 2002:a05:6871:722:b0:27b:686a:43b8 with SMTP id
 586e51a60fabf-2886e0d763dmr3037258fac.47.1728740917464; Sat, 12 Oct 2024
 06:48:37 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 12 Oct 2024 08:48:37 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240930-th1520-pinctrl-v3-7-32cea2bdbecb@tenstorrent.com>
References: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com> <20240930-th1520-pinctrl-v3-7-32cea2bdbecb@tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sat, 12 Oct 2024 08:48:37 -0500
Message-ID: <CAJM55Z_g63DMu+SAv2u1V86CYYOBUKwF_EZGbp9tb=zY777mVg@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] riscv: dts: thead: Add TH1520 pinctrl settings for UART0
To: Drew Fustini <dfustini@tenstorrent.com>, Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
	Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Drew Fustini wrote:
> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>
> Add pinctrl settings for UART0 used as the default debug console on
> both the Lichee Pi 4A and BeagleV Ahead boards.
>
> Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
> ---
>  arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 26 ++++++++++++++++++++++
>  arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  | 26 ++++++++++++++++++++++
>  2 files changed, 52 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> index 69f82e7afd0b..6c0b768e8d17 100644
> --- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> +++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> @@ -71,7 +71,33 @@ &sdio0 {
>  	status = "okay";
>  };
>
> +&padctrl0_apsys {
> +	uart0_pins: uart0-0 {
> +		tx-pins {
> +			pins = "UART0_TXD";
> +			function = "uart";
> +			bias-disable;
> +			drive-strength = <3>;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +
> +		rx-pins {
> +			pins = "UART0_RXD";
> +			function = "uart";
> +			bias-disable;
> +			drive-strength = <1>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +};
> +
>  &uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pins>;
>  	status = "okay";
>  };
>
> diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
> index 58ad381fc1c3..f60b1879192d 100644
> --- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
> +++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
> @@ -30,7 +30,33 @@ chosen {
>  	};
>  };
>
> +&padctrl0_apsys {
> +	uart0_pins: uart0-0 {
> +		tx-pins {
> +			pins = "UART0_TXD";
> +			function = "uart";
> +			bias-disable;
> +			drive-strength = <3>;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +
> +		rx-pins {
> +			pins = "UART0_RXD";
> +			function = "uart";
> +			bias-disable;
> +			drive-strength = <1>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};
> +	};
> +};
> +
>  &uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pins>;
>  	status = "okay";
>  };

For these two files you also broke the ordering.

/Emil

