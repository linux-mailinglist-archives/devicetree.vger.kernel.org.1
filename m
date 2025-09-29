Return-Path: <devicetree+bounces-222561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 458E4BAAC43
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 01:55:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0D683BF672
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 23:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEAE626A0D5;
	Mon, 29 Sep 2025 23:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DNfIEQxz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159B926B2DC
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 23:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759190107; cv=none; b=rG9LI/Ql9e4yowToszmiU3rq0T7lnzX7VnPJyTr+Y2k6uqPm+vz+KpOPEIcsUASXc8jLeCeeQkuVLaBL5aC/SKbCn1KQhzhHjSgf4wfUhmbjkYlXjCqz7DPuogiqX2eqMiyHDudoOqL/6pE2zYjsm5OzMrOVH7o3jMWTDmJu24g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759190107; c=relaxed/simple;
	bh=yHm8XI5gruwYUfE+vygBhATsguf1WxH7EgeqwJr3N2o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m+mHnBAuxNuNj/YMcfC+gF0rZ8a0cyMg5EwKbwHtdc19B4iGOBUAy7VLNDVDa/Z7w0UKf2ZxcdLOsSJM5jioDUSxpcTKOvGZSQMGRtT8N2XULmVOIat/80n+uPB0nytMTI6mhPZLbBJj0ltNA3Xk6KcTzOHXXFm9zCOdMkuGqOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DNfIEQxz; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-78104c8cbb4so5425115b3a.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 16:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759190105; x=1759794905; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YesvkbeRlI0InhN5JBwA3kaIUEivhW2AvYJVPyt7JxY=;
        b=DNfIEQxzYpBlMXwb6ZFlQn2zJPQVtxaB+6g7GUb8NcIrMGZmilFnKRXIKbwBGbwcXq
         15G4QgIcKLY7D0G+EcsFYLj58V8svgf2HrfU5uCbb8lHDAP4wbD/NyPqKmOgAzNIgYmq
         Y7Lj318FyJGj5fqg3ieifrEK2/ylTnkDto/ES9+gG9qFff8afLqxXOZQctAsqiCCuw0q
         jn8GpfxnfjzWcQlHbT8dNmocIXjKTiR5YOQ2bvnVnhXRhdoaly8jGV3Vhe0oTHngsvMH
         AQTBAy5cWBfnqZzJ6CVPI47/scbvdyVg+8evWoKIvNJfOneDaQbEhcT8mozxcb2DZt68
         KiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759190105; x=1759794905;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YesvkbeRlI0InhN5JBwA3kaIUEivhW2AvYJVPyt7JxY=;
        b=baa0wXQouEbPOwEqfhFsrg87s1SRiNpmoUOJtdvY6KkAPkwme91c26h6xHUQ7YAjvq
         vE2lplB42QpgFnGMo4oP7Nw6c2FFJ9sjyIqOlRqriyaK42/N/yalca9a8bS3OaWw4JEI
         pbwH5+ImEJhlqTKNGvAjxvezgMy0GMuQ1TtENDaxhmfWcvP2JYWxAZUZkdAaWjcAAeNs
         xOReE/UdIsO4QSWPTDlG5+wmeE/MXHPckCVxnBzTGZqIpXSI+jA5+5xhqJ6e4oYGXeuS
         6Z94bte2RBYtuqOWs3v+DZ+ybXDZUWhUwI1/EXfHZLzT9glRUHJkKeLuNskqjgUBHEYB
         njEQ==
X-Gm-Message-State: AOJu0YyAsuhrhO5ksCxom2jiOkfOZYqganNEbnPX0R2vG50jwFKbeb0J
	OVWkTkv7fviuiz8udZqjpVgMAf8hn7nPf7Z1MkL15DfgWLAgVR0vx/2q
X-Gm-Gg: ASbGncspVqlBGjfR5GotCfs+MOD/ZRJU9Nk/VEyI8gdkbKxih49JwNVXWoBiiVkn3E1
	RTqeCUDmGYUt8J/tHYK+2SfJj4W5EpGhPA/h9hitU1zqmmfnA5HsOu+ugPyhLNxWijgoRuWrpX6
	QLNqc+/m2gZ1uls5TpO10j7QA9reoSEYAZKE1OlXtmE/7pJsVovQnvCRjKOzaE4GrJzQCKzgvtr
	rOYn2dK+u/iJ2wefj1RlNszjR/58gDNeTgQFPHSMzRaTDuxlhAI1E9IIJfQRrC32G4AJ1wy2nTk
	nG2wXNAdhFDCcq9Txwc3jeJJYxB755sIXUCHAmKN3Yyly/geEkWeconF+ez53evMourlKFN01Vv
	g50En74l7eCJVc1obAJBWPTmQhob2fOyqg+wm8NhF1Mgp7PTGZyZ7vp2P
X-Google-Smtp-Source: AGHT+IF0yLjZKmx74zx7YOPFw6nZf2/BVooPN9TnbQy8BPac/NSkrGIRLd/u/AxqgakhTmso8szx5w==
X-Received: by 2002:a05:6a00:1399:b0:781:b59c:b0cb with SMTP id d2e1a72fcca58-781b59cb1e1mr10242245b3a.6.1759190105342;
        Mon, 29 Sep 2025 16:55:05 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-78102c1203fsm12244556b3a.92.2025.09.29.16.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 16:55:04 -0700 (PDT)
Date: Tue, 30 Sep 2025 07:54:36 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Joshua Milas <josh.milas@gmail.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, unicorn_wang@outlook.com, 
	inochiama@gmail.com, alexander.sverdlin@gmail.com, rabenda.cn@gmail.com, 
	thomas.bonnefille@bootlin.com, chao.wei@sophgo.com
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui>
References: <20250927173619.89768-1-josh.milas@gmail.com>
 <20250927173619.89768-3-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250927173619.89768-3-josh.milas@gmail.com>

On Sat, Sep 27, 2025 at 01:36:19PM -0400, Joshua Milas wrote:
> This adds initial arm64 support for the Milk-V Duo S board
> (https://milkv.io/duo-s), enabling the serial port and sdhci0,
> making it possible to boot Linux to the command line.
> 
> Signed-off-by: Joshua Milas <josh.milas@gmail.com>
> ---
>  arch/arm64/boot/dts/sophgo/Makefile           |  1 +
>  .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 88 +++++++++++++++++++
>  2 files changed, 89 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> 
> diff --git a/arch/arm64/boot/dts/sophgo/Makefile b/arch/arm64/boot/dts/sophgo/Makefile
> index 94f52cd7d994..68aace728223 100644
> --- a/arch/arm64/boot/dts/sophgo/Makefile
> +++ b/arch/arm64/boot/dts/sophgo/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-module-01-evb.dtb
> +dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-s.dtb
> diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> new file mode 100644
> index 000000000000..94cf89d423de
> --- /dev/null
> +++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> @@ -0,0 +1,88 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
> +#include "sg2000.dtsi"
> +
> +/ {
> +	model = "Milk-V DuoS";
> +	compatible = "milkv,duo-s", "sophgo,sg2000";
> +
> +	aliases {
> +		serial0 = &uart0;
> +		mmc0 = &sdhci0;
> +	};

It is better for adding gpio and other serial there?

> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&osc {
> +	clock-frequency = <25000000>;
> +};
> +

> +&pinctrl {
> +	sdhci0_cfg: sdhci0-cfg {
> +		sdhci0-cd-pins {
> +			pinmux = <PINMUX(PIN_SD0_CD, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <10800>;
> +			power-source = <3300>;
> +		};
> +
> +		sdhci0-clk-pins {
> +			pinmux = <PINMUX(PIN_SD0_CLK, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <16100>;
> +			power-source = <3300>;
> +		};
> +
> +		sdhci0-cmd-pins {
> +			pinmux = <PINMUX(PIN_SD0_CMD, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <10800>;
> +			power-source = <3300>;
> +		};
> +
> +		sdhci0-data-pins {
> +			pinmux = <PINMUX(PIN_SD0_D0, 0)>,
> +				 <PINMUX(PIN_SD0_D1, 0)>,
> +				 <PINMUX(PIN_SD0_D2, 0)>,
> +				 <PINMUX(PIN_SD0_D3, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <10800>;
> +			power-source = <3300>;
> +		};
> +	};
> +
> +	uart0_cfg: uart0-cfg {
> +		uart0-pins {
> +			pinmux = <PINMUX(PIN_UART0_TX, 0)>,
> +				 <PINMUX(PIN_UART0_RX, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <10800>;
> +			power-source = <3300>;
> +		};
> +	};
> +};

Small suggestion: please ensure the pinctrl is correct, different
board may require different configuration.

> +
> +&uart0 {
> +	pinctrl-0 = <&uart0_cfg>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +	/delete-property/ resets;
> +};
> +
> +&sdhci0 {
> +	bus-width = <4>;
> +	no-1-8-v;
> +	no-mmc;
> +	no-sdio;
> +	disable-wp;
> +	pinctrl-0 = <&sdhci0_cfg>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> -- 
> 2.51.0
> 

I suggest adding all the support devices instead of a minimum one.
Like ethernet, wifi, bluetooth.
In the next cycle, there should be a patch for adding USB device node,
as the driver is already merged. I also hope you can take it.

Regards,
Inochi

