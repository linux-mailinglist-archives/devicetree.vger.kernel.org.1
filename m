Return-Path: <devicetree+bounces-216228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D9AB541EF
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:22:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95FF27B621E
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 05:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D44BD2765FB;
	Fri, 12 Sep 2025 05:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="n9AW/3mx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F43273FD
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757654497; cv=none; b=BJngucy0pwT7AWktu/C9r66oRw+4uFzG38PEYVxAx/oepHM4MXJHxZkeWrA8vPjN/J9wNm3G9oXp5DZUa4rdjmA9iS05um0JKLoZIIFPr8Jn33UazHL4vDL6GAsNscn6u/g6jwVmhElXJXQ6dOSKbFegAuV3RMylQseWGmJe6JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757654497; c=relaxed/simple;
	bh=656GJfgb8aBr2uTtMlqW8Adi3bn7ZXAwUt3Y4IWspOg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=fGN4aZuWXPCSCuduUjhgBjC1BapRJZaSz6pwBAIBqa9Ykxw0ptpphKoPJc1KgV+SRDlIOUytZuSn4sDVFclLgaCvwDo9i5xYQgQHAqmFdnNxuTN2+J+fr6PeqoHpEyGUR7eaq3Pp0PvPn2lP+VPju87lwB/+qrm68/fPNdCp0Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=n9AW/3mx; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 92A43C8EC44;
	Fri, 12 Sep 2025 05:21:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7785E60638;
	Fri, 12 Sep 2025 05:21:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 70BA2102F28D9;
	Fri, 12 Sep 2025 07:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757654489; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=APu9S9jKtXjA5Jz8k+e3HEGpTkPAFSTLP7w4tQTscqc=;
	b=n9AW/3mxopzj9nvZ+4u2+qjJ9ibJdvPGWWMbXsKoyHDrkziEg1UD0nVyN2Np26/pGuquyI
	q2M/vrGw9crj8dgoldDkmWU5mBP5M6lTKeLSKbMWzPDn9vjz4STmnXwX0Hie9i/i6lf21X
	Y2TsEJR9XmQ9gMtmC2XFsaSZ+1uv11jG19+LDd7EP14tUpPN6pIFZoXI9Tp3YAd9N5IoM0
	D918rSERM+Ge6CrNTs9aLIE1PYjL/0zkWTspmH7G5ufR4rhGaVtdl/jO82N1JHhnY/OXct
	a6/2ezBvbyJazpfaG/h+emBqis9wnrjJaC1zEbI9sH/P3k56rlTorVQeVksEoA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: marvell: armada-37xx: Add default PCI
 interrup controller address cells
In-Reply-To: <20250822133329.312326-3-krzysztof.kozlowski@linaro.org>
References: <20250822133329.312326-3-krzysztof.kozlowski@linaro.org>
Date: Fri, 12 Sep 2025 07:21:08 +0200
Message-ID: <878qikp7p7.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:

> Add missing address-cells 0 to the PCI interrupt node to silence W=3D1
> warning:
>
>   armada-37xx.dtsi:518.4-521.29: Warning (interrupt_map): /soc/pcie@d0070=
000:interrupt-map:
>     Missing property '#address-cells' in node /soc/pcie@d0070000/interrup=
t-controller, using 0 as fallback
>
> Value '0' is correct because:
> 1. GIC interrupt controller does not have children,
> 2. interrupt-map property (in PCI node) consists of five components and
>    the fourth component "parent unit address", which size is defined by
>    '#address-cells' of the node pointed to by the interrupt-parent
>    component, is not used (=3D0)
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied on mvebu/dt64

Thanks,

Gregory
> ---
>  arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/bo=
ot/dts/marvell/armada-37xx.dtsi
> index 75b0fdc3efb2..c612317043ea 100644
> --- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> @@ -524,6 +524,7 @@ pcie0: pcie@d0070000 {
>  			pcie_intc: interrupt-controller {
>  				interrupt-controller;
>  				#interrupt-cells =3D <1>;
> +				#address-cells =3D <0>;
>  			};
>  		};
>  	};
> --=20
> 2.48.1
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

