Return-Path: <devicetree+bounces-248196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20638CCFCCF
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:34:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE9773013572
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 684F333B963;
	Fri, 19 Dec 2025 12:20:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971C233B6FA;
	Fri, 19 Dec 2025 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766146826; cv=none; b=RShL9UNh5EmxjrGTiel6daX2BWPoWZqyv5IdaZeiEKyngdDN2m5pryVnB/cCY2Yb+UQ+RqjQ2vOzveDubLf0dlFQTHLhhmb/Q8TD08Q97U2fZhqyC2T5lPsoH0r53rQ9R8J6ybRXmExl5BreYqIZtltIu+GMf5LQ4rB3+ZqRXxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766146826; c=relaxed/simple;
	bh=U24exTQdNnR0zLnwpf0rMiGqP4RPK7P7n+8aYdLgbRw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BOQZ+2F2D9sef82HAV7xxiafpHyDybo//9JmGW9W05qhad25ir/k10PJAHpruv0/1CCUI75k/gvLg4WyeBxtQUbTgjUsJocR/7cmPDP6cxv0squ+kwYpPgMCJ9BOk0qD3h/gKI3+GrNYpQsTSopQeM0xOq0Z3fwRwHll6IsrVUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.18.222])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 78C9A340BDE;
	Fri, 19 Dec 2025 12:20:22 +0000 (UTC)
Date: Fri, 19 Dec 2025 20:20:18 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Alex Elder <elder@riscstar.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	alex@ghiti.fr, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 4/5] riscv: dts: spacemit: Add a PCIe regulator
Message-ID: <20251219122018-GYC1958363@gentoo.org>
References: <20251218151235.454997-1-elder@riscstar.com>
 <20251218151235.454997-5-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218151235.454997-5-elder@riscstar.com>


On 09:12 Thu 18 Dec     , Alex Elder wrote:
> Define a 3.3v fixed voltage regulator to be used by PCIe on the
> Banana Pi BPI-F3.  On this platform, this regulator is always on.
> 
> Signed-off-by: Alex Elder <elder@riscstar.com>

Reviewed-by: Yixun Lan <dlan@gentoo.org>
> ---
>  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> index 02f218a16318e..71f48454ba47c 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> @@ -33,6 +33,14 @@ led1 {
>  		};
>  	};
>  
> +	pcie_vcc_3v3: pcie-vcc3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "PCIE_VCC3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +
>  	reg_dc_in: dc-in-12v {
>  		compatible = "regulator-fixed";
>  		regulator-name = "dc_in_12v";
> -- 
> 2.48.1
> 

-- 
Yixun Lan (dlan)

