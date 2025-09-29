Return-Path: <devicetree+bounces-222560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 173F1BAAC2E
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 01:46:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C542D3B3D73
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 23:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC69D2472BF;
	Mon, 29 Sep 2025 23:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b2J2GKXC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253101A0711
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 23:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759189574; cv=none; b=RIS5dDZ7EgBKTbvPGcx8Vi0zATCHyBJ1AIOXmYrI2ohUmQbpvKuPIWlVy2+41w4NdXtZh4+E5D6wkSiQRB3c0XImbMJRGCQst05EsSe9p0Qq+MSFrrpfUcN82CtVvXX7j5hA8fKwvLSl1fX0bRhW4XPgDxft4FLsFUEevSbMO/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759189574; c=relaxed/simple;
	bh=yCyCG57xZaWUoZz7E4FksWbaolrWtwsc6M+eqcEYvOA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=taifdZUnWycM3eVX2J1tRKiU40AKwSjz273Zdv1WRCyhUZe+9BQNcx1y+SQzpeFtQJfZ5HMsA6GN/4MLk9424VJHQ5Xs9BcxHg/kpGjdbSUnV2LeiJGbl9VGt9GreSow7VAmyhg9vtoCSho92clBV6neeF8ylW1Lx/bEvpDFhIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b2J2GKXC; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-3324523dfb2so5060799a91.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 16:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759189572; x=1759794372; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bO+PpllHTATyLZ4i6dwO2dpUo4lzbDmt26PaKTNvZeo=;
        b=b2J2GKXCzFQ+cKTOwMne4sacm8NSVHRma1xzppXKQIo0AaREkka6CCgy947zY6AdPy
         ZHrzwgD5312KRiQQl1iJb41ckuUAchpIgtqkQd1gBdqCMQrC/qoo0+bThwHx97Q1sYTl
         288zv1gb1EIpZdgewfF+WbgAAMWJQjxgBFCrncTO57BUxBuqjRQIBD2cZqTnbBvq8awK
         dcDrVPNEjB8tjdK81x5h2N/9Fr9BeYH3W+Yod1o+td9+NluVWcW27gFOaUuf3LjaN/xb
         CSyEi7RrIFTaAX2nbKJBIVA030dPwnseJriVob9DZSZ0KM2l/XmALHLxy8CPMnwjYyo6
         5Cew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759189572; x=1759794372;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bO+PpllHTATyLZ4i6dwO2dpUo4lzbDmt26PaKTNvZeo=;
        b=cPECmJWkBMgKZU0o3M4cyGz4UGHqLeTvb/rAocvzvP8C20b1fO1J1iFQxmg4Qvbevb
         LjYpRGVltKBB83NG+bbgFO33ouZNGBnrLKPixkmZ/PVRVfdfqWOpgbOlB3aqJKRmRR0O
         pP5zh1M90c5W5m68KmGE50Fyg+N0QNKWh/52ByVPo6m9vX3t/DlNpmNr+58sUAi7dJlu
         6yFyWxvn7wvR2d5hoBYbeIEVXT53itPMpI7EzZwDRiimIi8he+uHYAEQtNQC5DMY5ohP
         kk3GoJqppO2l+V4PdmQQsXPTRyhSYkmyWniFZo+FeCk2KhgA6K8jRKApW9JKOenO3jAq
         OEFg==
X-Gm-Message-State: AOJu0YzmIGiRFGB3MZJgIu9KLYcz0BxcVmHC82ZDQf5Re64Eeed5PM54
	VhqlZq6QH/Bn5uCqFW3Kn6ahtygGt2pMUVj/4IL/4bCqjWl56yUnjafU
X-Gm-Gg: ASbGnct5V9UtN2GKKqxHD/AqoKSI2JgNfkol/cP3KqhXMOC0ac//LOoqpMukNUb51dP
	hqjzaPpAm7Lal5FTHx6f1a2qh8diPmGXYkF0oYv4R3yLu7ExZa2KQlRrT3kxrmCmLUs3kk+oIvG
	7wHOwr3E+55UOxTn7Geov7DTVOx59DfqGb50vSJzpudFHgDLDk0krrvYZSgXLg1BRnmWyZCKdmH
	wCLnadacsn6jru8aL/1valfgF0SycTAALgGYjS9k5iCaSsityXPLr0UwRwUDGFcZrzgE2KfeAdd
	yn/9Lw71+hyfu5ItHfHz1CiYNp+O2MxAaSyst9CMS4YUIcLDVZnI5P8wZmj3iJlhqYB0iXnupDc
	SpMoP5kMXG2yI5HzfXFvSgCK3oJ7yCVztyNovzgDeNNXvELbm6/7QHNma
X-Google-Smtp-Source: AGHT+IHzqz6HK8/GqG4J4SA0G21SOGM3r5qfIFvJmRO7QQbYF4xlSA1UfHOox4bOXdX7rOJ+v5M5JQ==
X-Received: by 2002:a17:90b:5109:b0:330:9fe7:b014 with SMTP id 98e67ed59e1d1-3342a2ebce9mr17126123a91.31.1759189572135;
        Mon, 29 Sep 2025 16:46:12 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-3383863e7c6sm2503336a91.0.2025.09.29.16.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 16:46:11 -0700 (PDT)
Date: Tue, 30 Sep 2025 07:45:43 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: E Shattow <e@freeshell.de>, Joshua Milas <josh.milas@gmail.com>, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	unicorn_wang@outlook.com, inochiama@gmail.com, alexander.sverdlin@gmail.com, 
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com, chao.wei@sophgo.com
Cc: devicetree@vger.kernel.org, sophgo@lists.linux.dev
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <syyzru6xk2m4y4xgsami5ppvcvsspdigqt4czj77ruxzep5sgf@cvlgglxsrrjb>
References: <20250927173619.89768-1-josh.milas@gmail.com>
 <20250927173619.89768-3-josh.milas@gmail.com>
 <0f581625-24d8-4b91-8935-685a837ea217@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0f581625-24d8-4b91-8935-685a837ea217@freeshell.de>

On Sat, Sep 27, 2025 at 09:09:30PM -0700, E Shattow wrote:
> Hi Joshua,
> 
> On 9/27/25 10:36, Joshua Milas wrote:
> > This adds initial arm64 support for the Milk-V Duo S board
> > (https://milkv.io/duo-s), enabling the serial port and sdhci0,
> > making it possible to boot Linux to the command line.
> >
> > Signed-off-by: Joshua Milas <josh.milas@gmail.com>
> > ---
> >  arch/arm64/boot/dts/sophgo/Makefile           |  1 +
> >  .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 88 +++++++++++++++++++
> >  2 files changed, 89 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> >
> > diff --git a/arch/arm64/boot/dts/sophgo/Makefile
> b/arch/arm64/boot/dts/sophgo/Makefile
> > index 94f52cd7d994..68aace728223 100644
> > --- a/arch/arm64/boot/dts/sophgo/Makefile
> > +++ b/arch/arm64/boot/dts/sophgo/Makefile
> > @@ -1,2 +1,3 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-module-01-evb.dtb
> > +dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-s.dtb
> > diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> > new file mode 100644
> > index 000000000000..94cf89d423de
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> > @@ -0,0 +1,88 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
> > +#include "sg2000.dtsi"
> > +
> > +/ {
> > +	model = "Milk-V DuoS";
> > +	compatible = "milkv,duo-s", "sophgo,sg2000";
> "Milk-V Duo S" with "milkv,duo-s, "sophgo,sg2000"
> 

I prefer this one.

> or
> 
> "Milk-V Duo S" with milkv,duos, "sophgo,sg2000"
> 
> and dts filename to agree.
> 
> > +
> > +	aliases {
> > +		serial0 = &uart0;
> > +		mmc0 = &sdhci0;
> > +	};
> Sort aliases.
> 
> > +
> > +	chosen {
> > +		stdout-path = "serial0:115200n8";
> > +	};
> > +};
> > +
> > +&osc {
> > +	clock-frequency = <25000000>;
> > +};
> > +
> > +&pinctrl {
> > +	sdhci0_cfg: sdhci0-cfg {
> > +		sdhci0-cd-pins {
> > +			pinmux = <PINMUX(PIN_SD0_CD, 0)>;
> > +			bias-pull-up;
> > +			drive-strength-microamp = <10800>;
> > +			power-source = <3300>;
> > +		};
> > +
> > +		sdhci0-clk-pins {
> > +			pinmux = <PINMUX(PIN_SD0_CLK, 0)>;
> > +			bias-pull-up;
> > +			drive-strength-microamp = <16100>;
> > +			power-source = <3300>;
> > +		};
> > +
> > +		sdhci0-cmd-pins {
> > +			pinmux = <PINMUX(PIN_SD0_CMD, 0)>;
> > +			bias-pull-up;
> > +			drive-strength-microamp = <10800>;
> > +			power-source = <3300>;
> > +		};
> > +
> > +		sdhci0-data-pins {
> > +			pinmux = <PINMUX(PIN_SD0_D0, 0)>,
> > +				 <PINMUX(PIN_SD0_D1, 0)>,
> > +				 <PINMUX(PIN_SD0_D2, 0)>,
> > +				 <PINMUX(PIN_SD0_D3, 0)>;
> > +			bias-pull-up;
> > +			drive-strength-microamp = <10800>;
> > +			power-source = <3300>;
> > +		};
> > +	};
> > +
> > +	uart0_cfg: uart0-cfg {
> > +		uart0-pins {
> > +			pinmux = <PINMUX(PIN_UART0_TX, 0)>,
> > +				 <PINMUX(PIN_UART0_RX, 0)>;
> > +			bias-pull-up;
> > +			drive-strength-microamp = <10800>;
> > +			power-source = <3300>;
> > +		};
> > +	};
> > +};
> > +
> > +&uart0 {
> > +	pinctrl-0 = <&uart0_cfg>;
> > +	pinctrl-names = "default";
> > +	status = "okay";
> > +	/delete-property/ resets;
> > +};
> Needs parting of resets out from where it is now instead of
> delete-property here. I don't know if that can be the same series.
> 
> > +
> > +&sdhci0 {
> > +	bus-width = <4>;
> > +	no-1-8-v;
> > +	no-mmc;
> > +	no-sdio;
> Unlikely to need 'no-mmc' 'no-sdio'. Test without, and drop?
> 
> > +	disable-wp;
> > +	pinctrl-0 = <&sdhci0_cfg>;
> > +	pinctrl-names = "default";
> > +	status = "okay";
> > +};
> > +
> Please use '--base=' with git format-patch so we will know the commit id
> your series is based from.
> 
> Best regards,
> 
> -E Shattow

