Return-Path: <devicetree+bounces-249037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D6FCD89F0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:44:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D514301E180
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D3F0329C59;
	Tue, 23 Dec 2025 09:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fyrWW33j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692E427603F
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766483019; cv=none; b=iDnCj/bnzt4zha3m9X4cpDFeL0lcAN/BRchSa23h4Z+lmWfBMyElRXWA06m4M4l8BiA/fdojUcY9ydHaI2Rq0zP/I5zwV7Schhy8VTCmfuJgX2rtMet0bdRq/vVh/ZX6ztRlayi8lH+YK/zPHB8QZ/x/g9v/1+qOBqW+VUOm+s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766483019; c=relaxed/simple;
	bh=l/xGg3lZcqpSBWluJfeIDeMimjyGoXBIIVY9RShRyGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AoMgeWtBfOM/aMM8w6amkhSghBcAPz27sTMN7MGGa+orvFnaK0a54vBgN/u7U3AHaiVcbsO00pb2Sz5uv/dbeSttG8qdMHkAMXINCHNAse1ZQrEFx5Ol6oQNQ+me7DlKW+NG2I0Z9/XD0Qn5VKveH4EXetqBLsKa3L/0wCbTfQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fyrWW33j; arc=none smtp.client-ip=74.125.82.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-2ae24015dc0so5211864eec.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766483017; x=1767087817; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SxJbYsS9Flodz6V0WJwrBiZXTghxJcKYTBqtlgaql2c=;
        b=fyrWW33jdFVCvBDNrCL4oWlp9NRWeQr1WW6BpG2bX4PxaJyPLzZhjQJtRGu4ywU0lc
         ElzOLtHwJSFvPrce6A5MidqY/f9V9qch/hdEtdSgN685/GveRi2krjW/wvFdTTwuz/iv
         KP7mKZ23NaYDkS1F13GOGKSiEnJtjsXVsoynDTKnfga9rnAmAjFe55DRd9X9xmBSWuYx
         kZposqeRRNBRK5rWbql94+vQK8VqEvU2VPLHKmKISYBDUnKC4NwVYjwmYhYvcFXUrCN9
         ufbiKkigjSfzaIdNtKNCDcQkhIpkQp6eC6rFY9YV+Kzeft8fcKaYS0m2ypEHTZ4DbYI8
         fq+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766483017; x=1767087817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SxJbYsS9Flodz6V0WJwrBiZXTghxJcKYTBqtlgaql2c=;
        b=KBOIbzxi545fuqc7Tp31+GOwfUf4WIqDxIwvt0BduAjgdjGq4Mnb+lhZFHXUZDpFOa
         EQSvIabDwpalk606PCkWanTP7Ln7iUbufArx4wd0Fetv9DonlBjnS2KvPX+znMapVT0d
         EijWOqwwO5+CWR6cR+Ok2ER5nBjC7FqarkcFVzK+OENL5ezas714utDdfkGSXvvYmtCg
         VjAxyee9LU7TMiDA63Vsr32a7os/lV+cdOR5RLk8cNWxxhHJV+ofa6JK481mUdud82GU
         fFlF5kBXoFH0ZdowZsvGaZ3825ZXPc7seTMNhumyUpj7AAyn0AE3JBYAp7bJGsI/YY4Q
         L6JA==
X-Gm-Message-State: AOJu0Ywuy1bTOSFHUn3RXhNDCpHhYX+QQ0L+CtB3flexycBUx2THxhKk
	u1D5PPfMkbmmmwJHwNRRv+huFfG7pXmqn0C0vkoePahaHmjKU0Cxo1V7
X-Gm-Gg: AY/fxX6eyJw48Gr8hqhimOE0Apf3C2KFeEXm98rrCFefhLVhrMRH9N7SS8i8lsoyg8C
	7qP9Of9gPkoZuE4mDNySpeXU0vTNNMpeFIRW9PoJ8yK4igDqbdmOlm7OA8Nx+eADSW+Hj7gP4RP
	htkPENof3xb+bYOgvQQM+NG/7fqEatu+DBSAPw4nfUXlXTG8iplgwnWbR56qh8D3pUseHhbMek5
	3dnhEs3IrTcgc3SFrk51kDyRkiSTy+QIXl7T79ZEtlcHzCnDpaWRmwtPdM+AcvJUH2am30cw5OX
	P97W8eTYvPJst1pHhKjHwAn5P2OTZ7yc5GnTi13Rzxg3YmBOzGzsCUZDOtrBo6BP1LOZVcVT1xY
	BdSW4IXDXj478uO1WuXkAq0R9vk/5PzmMotgjzHmxPHAvYR4sNnrmPRFD3g3IY6KjYvat6817OM
	qgKT5s/gfNdA==
X-Google-Smtp-Source: AGHT+IEp+OSd9R0lrP291Dk7W1AafeaeXYagMJNjBu0iohEINVzAIJUCtwgGHA2QHs2m9CJoX6vTug==
X-Received: by 2002:a05:7022:608a:b0:11b:a8e3:847b with SMTP id a92af1059eb24-12171a685cbmr13887306c88.5.1766483017187;
        Tue, 23 Dec 2025 01:43:37 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121724cfc0esm56367570c88.2.2025.12.23.01.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 01:43:36 -0800 (PST)
Date: Tue, 23 Dec 2025 17:42:26 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Linus Walleij <linusw@kernel.org>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH 2/2] pinctrl: spacemit: support I/O power domain
 configuration
Message-ID: <aUpirQFWf3w-5PQ2@inochi.infowork>
References: <20251223-kx-pinctrl-aib-io-pwr-domain-v1-0-5f1090a487c7@linux.spacemit.com>
 <20251223-kx-pinctrl-aib-io-pwr-domain-v1-2-5f1090a487c7@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223-kx-pinctrl-aib-io-pwr-domain-v1-2-5f1090a487c7@linux.spacemit.com>

On Tue, Dec 23, 2025 at 05:11:12PM +0800, Troy Mitchell wrote:
> IO domain power control registers are used to configure the operating
> voltage of dual-voltage GPIO banks. By default, these registers are
> configured for 3.3V operation. As a result, even when a GPIO bank is
> externally supplied with 1.8V, the internal logic continues to
> operate in the 3.3V domain, which may lead to functional failures.
> 
> This patch adds support for programming the IO domain power control
> registers, allowing dual-voltage GPIO banks to be explicitly configured
> for 1.8V operation when required.
> 
> Care must be taken when configuring these registers. If a GPIO bank is
> externally supplied with 3.3V while the corresponding IO power domain
> is configured for 1.8V, external current injection (back-powering)
> may occur, potentially causing damage to the GPIO pin.
> 
> Due to these hardware constraints and safety considerations, the IO
> domain power control registers are implemented as secure registers.
> Access to these registers requires unlocking via the AIB Secure Access
> Register (ASAR) in the APBC block before a single read or write
> operation can be performed.
> 
> Signed-off-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
> ---
>  arch/riscv/boot/dts/spacemit/k1.dtsi  |   4 +-
>  drivers/pinctrl/spacemit/pinctrl-k1.c | 131 +++++++++++++++++++++++++++++++++-
>  2 files changed, 131 insertions(+), 4 deletions(-)
> 

> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
> index 7818ca4979b6a7755722919a5958512aa11950ab..23ecb19624f227f3c39de35bf3078379f7a2490e 100644
> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
> @@ -565,10 +565,12 @@ i2c8: i2c@d401d800 {
>  
>  		pinctrl: pinctrl@d401e000 {
>  			compatible = "spacemit,k1-pinctrl";
> -			reg = <0x0 0xd401e000 0x0 0x400>;
> +			reg = <0x0 0xd401e000 0x0 0x400>,
> +			      <0x0 0xd401e800 0x0 0x34>;
>  			clocks = <&syscon_apbc CLK_AIB>,
>  				 <&syscon_apbc CLK_AIB_BUS>;
>  			clock-names = "func", "bus";
> +			spacemit,apbc = <&syscon_apbc 0x50>;
>  		};

This change breaks binding, can we use something like <0x0 0xd401e000 0x0 0x1000>?
If you insist on a new reg field, you should change the binding as well.

Regards,
Inochi

