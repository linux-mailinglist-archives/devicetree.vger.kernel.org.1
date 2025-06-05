Return-Path: <devicetree+bounces-183039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE7FACEFCE
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 15:00:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C064A188CB35
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 13:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9109420FABA;
	Thu,  5 Jun 2025 13:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v7VVaFSd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04652CCDE
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 13:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749128429; cv=none; b=HHvfgpo7KUiRoriyhdCZC+unWkOAvsb5xBTE3E3mxIhFGV+5Lxcwfks6EPGOsH6OJTJ29w3GEmfzGDlSqYCi0iS0VzJ3BZXWjioF7OXpTVuioEeXw0tzwAtYM0nbpR5MoIuLCBTgB91Rz8EYPryjOvstKcjmTzCPAaPyWAXFCao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749128429; c=relaxed/simple;
	bh=XKGDl2rsu8Cx+jAKtsKp4abHlLIqnz3Sddb7IIBINuU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=huSWaSF4maUEKOIZXnfcpdxRsM1DRfOSc94ihVYz6NT1uz0/jEta6bUvyko1w56mS5GAjv+9O72RDNFfjQrksZZPbGASW0KTuLuTT9gnqLANCNw4ObGtpBMlZ+rBjBXqyk3BLOmsVk6ep35ZnGr45klNTLfPL87//y1TrjejkRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v7VVaFSd; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-60be58376c9so138405eaf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 06:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749128427; x=1749733227; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ecAphYkfEdsn3BUh426paPfp1MReJf3vodIqrsyJcGQ=;
        b=v7VVaFSd1PcNQqYS7Yb31UacYoBZHikNlksRsAP6cIRpMETOuiQjr9qwz3UkaH+aRr
         sO8JDX2fAOvGqj34fUv34LWiX0eXQINK1NogdAOnZiSk9j9c7vbKxLOXqeDQnwxrXJfC
         gckOd5Qs+VYYFontRpoe1Zg+wLQQgLw47xoWG49agFcZglKkWfOm9ncmREnsH0KDAZIc
         62qRC5cnumNsoPhzTmnrB0NIM77ihS04bukI5ftvspwoOvciHz4icc9K2PU2jwYm9LKM
         EigAEQTPyp9dNHLF7mDyLZ9noT+9X39AysJ8pte9EtsYjCSD3Pbo9UMfH5gX0v9X7xzm
         G2kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749128427; x=1749733227;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ecAphYkfEdsn3BUh426paPfp1MReJf3vodIqrsyJcGQ=;
        b=TP5LcYU4MrY0WtU0wDf+1v3y1WczmOBMvzSVrEfYm18U97283F7oSGYretnrOWQiuD
         bm/HHPml/M/NOV43JF+lnFSxIEtMe4B86kFLk+YPLBcw+8SmAPlNU1jBivc+Fz2mrJLd
         Iqgqh9+YS+Z18Z9ied/u6wc8e6FIw7w6wkpyATLkhK8KWhm0h4+VlfbCSG1bUEm21L1I
         6wFK4tkiQEMxmmDoY27lF7UK7cS26D7P1iJjKJbVOubGbKRBTG17bBJw5PjRZOd+zve5
         vc3rpq/RcW6gfuO+7dwf4GSNwNLI9ii0KIbU7kYxeqrQwYnGq2gvKkQiBGOFGPfkgOZe
         ifiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUJWYg1LF4VnmcNAeUd2MiNL8N/Od8qQoaDcQ8eLPFGfcqzPiRDVH55OYYJosZcKkVHQxxi6g9sM2I@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv0m9kJl8m9s6dLTK7mxBiRqizpIIl8PXplfVAyTc5q7DAM8p8
	FQQ8/qhc+ur3QnHTCOdDgyfND6Yv4nWVJS1JTl+sAGUSEmm474pvhNnmE6mtx7zeGKq1CwtkVMX
	OGgLk0wUj7JclGdfQVYgtRnt8fhd9OiAcrDs1vT8Gng==
X-Gm-Gg: ASbGnctGAmnOxWPhNDMSp+zQuOYLCs5RkFyKbNvuzJ8eYZubeHmFuGpo/t7R5mbh9to
	T0ImzOi7MtFLTQnIlfVwfOMVEvLac9JSzpIr7lHrx/DQJUqURszliZdpSB1slk7piPnxZ2PrwVT
	Fkbsv5+Zot8+zDLDKM1Xgm2SpN8ViGgaxZ/Fk=
X-Google-Smtp-Source: AGHT+IG+FTUmGJ+/COgbGtwp15niG+cd9riFL26aortlN2WN5OKeL0bGxpdnRDnCKPZKQj5eRuIFsDW+Z69953+bUJA=
X-Received: by 2002:a05:6820:2686:b0:60f:9d6:bd08 with SMTP id
 006d021491bc7-60f0c7333b0mr4096808eaf.3.1749128425365; Thu, 05 Jun 2025
 06:00:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250523-b4-gs101_max77759_fg-v4-0-b49904e35a34@uclouvain.be> <20250523-b4-gs101_max77759_fg-v4-5-b49904e35a34@uclouvain.be>
In-Reply-To: <20250523-b4-gs101_max77759_fg-v4-5-b49904e35a34@uclouvain.be>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 5 Jun 2025 14:00:14 +0100
X-Gm-Features: AX0GCFsta0Lv7B_0omf8fUD6lFICgS_5x_1K74aulND6HJZCGnhF0KZN-f9c7f0
Message-ID: <CADrjBPr4QNQPBddcFBe8V4u7G9YW0vs=8jyxEuQ1gVDt1zcfiA@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] arm64: dts: exynos: gs101-oriole: enable Maxim
 max77759 fuel gauge
To: t.antoine@uclouvain.be
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dimitri Fedrau <dima.fedrau@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Thomas,

Thanks for your patch and work to enable fuel gauge on Pixel 6!

On Fri, 23 May 2025 at 13:52, Thomas Antoine via B4 Relay
<devnull+t.antoine.uclouvain.be@kernel.org> wrote:
>
> From: Thomas Antoine <t.antoine@uclouvain.be>
>
> Add the node for the Maxim MAX77759 fuel gauge as a slave of the i2c.
>
> The TODO is still applicable given there are other slaves on the
> bus (e.g. PCA9468, other MAX77759 functions and the MAX20339 OVP).
>
> Signed-off-by: Thomas Antoine <t.antoine@uclouvain.be>
> ---
>  arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
> index b25230495c64dce60916b7cd5dcb9a7cce5d0e4e..84fc10c3562958ab1621f24644709e85a9433b9b 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
> @@ -10,6 +10,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "gs101-pinctrl.h"
>  #include "gs101.dtsi"
> @@ -188,6 +189,15 @@ usbc0_role_sw: endpoint {
>                         };
>                 };
>         };
> +
> +       fuel-gauge@36 {
> +               compatible = "maxim,max77759-fg";
> +               reg = <0x36>;
> +               reg-names = "m5";
> +               interrupt-parent = <&gpa9>;
> +               interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +               shunt-resistor-micro-ohms = <5000>;
> +       };
>  };
>

If gpa-9-3 is being used for the interrupt I think we should also add
the pinctrl configuration for it. Taking a look at downstream the pin
is defined as

&pinctrl_0 {
/* [MAX77759: FG_INTB] > FG_INT_L > [XEINT_23 : SC59845XWE] */
        if_pmic_fg_irq: if-pmic-fg-irq {
                samsung,pins = "gpa9-3"; /* XEINT_23 */
                samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
                samsung,pin-pud = <EXYNOS_PIN_PULL_UP>;
                samsung,pin-drv = <GS101_PIN_DRV_2_5_MA>;
        };
};

and then the fuel-gauge node declares

/* FG_INT_L -> XEINT_23 */
pinctrl-names = "default";
pinctrl-0 = <&if_pmic_fg_irq>;

regards,

Peter

