Return-Path: <devicetree+bounces-72009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED678FA782
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 03:28:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 132EA1F256B1
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 01:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 845CF138495;
	Tue,  4 Jun 2024 01:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=bewilderbeest.net header.i=@bewilderbeest.net header.b="ZWeHEbLL"
X-Original-To: devicetree@vger.kernel.org
Received: from thorn.bewilderbeest.net (thorn.bewilderbeest.net [71.19.156.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24C86FBF
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 01:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=71.19.156.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717464491; cv=none; b=pOo9a6okdcu1dz70OWdyjOuR4z2k20gzIo039dzt63NMLgY8gUWfIvtFz86BdR5tMwaIULwehvCae3/Tprv/oOqct3rBdYHwTPv2aCU/UUHiKgiWm6ovCpvDchvdOIK+9C8wqw7ThL4c2eZER+mfRujPae6Dbc0O7A4WqZAUlnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717464491; c=relaxed/simple;
	bh=RgB7dRcdaADDT4IdcthWpv/OdMNod4ZHRkeMPYKrdL4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bBh2aDe5KeaGwvbvMfdKwVaFt8PfoAXQYwVNrH5pM/JgDxLQDQnPXfEKaJwmke7VHEoC2VVCwy9Jy4q9SokIKk68prhaGLiTmlqRsP0mbjXZr2rdTHVT+SUggXGf3LeoLmEicZmvnEz1cwOXz00UXhGZy8PY6Jesi4AR2NBM0fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bewilderbeest.net; spf=pass smtp.mailfrom=bewilderbeest.net; dkim=pass (1024-bit key) header.d=bewilderbeest.net header.i=@bewilderbeest.net header.b=ZWeHEbLL; arc=none smtp.client-ip=71.19.156.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bewilderbeest.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bewilderbeest.net
Received: from hatter.bewilderbeest.net (unknown [IPv6:2602:61:712b:6300::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: zev)
	by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 3BA1BB32;
	Mon,  3 Jun 2024 18:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
	s=thorn; t=1717464072;
	bh=P26lzOXZeM9yyamPYPesu/4Mm4BjUKJWIf+/Tw71P6E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZWeHEbLLGeX9vffAIldLbJiXgvD2N9gwDoTJIlOMaeo4UYxV5/zZbxGMOi3EDQVAn
	 z3uHq3jDrxYLeyIysZjd4rB0Od4S1R2Gur4WgsI4xIcQbxXqwbW+QgM+Ont/WVtJag
	 h2JC9W6kyIIImYwkXN1YQCe5Jc32jD7+ju+yTRS0=
Date: Mon, 3 Jun 2024 18:21:10 -0700
From: Zev Weiss <zev@bewilderbeest.net>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: aspeed: convert ASRock SPC621D8HM3 NVMEM
 content to layout syntax
Message-ID: <11f0a9a0-967e-4971-8ca1-4730f2881ee1@hatter.bewilderbeest.net>
References: <20240520063044.4885-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520063044.4885-1-zajec5@gmail.com>

On Sun, May 19, 2024 at 11:30:44PM PDT, Rafał Miłecki wrote:
>From: Rafał Miłecki <rafal@milecki.pl>
>
>Use cleaner (and non-deprecated) bindings syntax. See commit
>bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
>details.
>
>Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>---
> .../dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts     | 12 ++++++++----
> 1 file changed, 8 insertions(+), 4 deletions(-)
>
>diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts
>index 555485871e7a..c4097e4f2ca4 100644
>--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts
>+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts
>@@ -110,11 +110,15 @@ eeprom@50 {
> 		compatible = "st,24c128", "atmel,24c128";
> 		reg = <0x50>;
> 		pagesize = <16>;
>-		#address-cells = <1>;
>-		#size-cells = <1>;
>
>-		eth0_macaddress: macaddress@3f80 {
>-			reg = <0x3f80 6>;
>+		nvmem-layout {
>+			compatible = "fixed-layout";
>+			#address-cells = <1>;
>+			#size-cells = <1>;
>+
>+			eth0_macaddress: macaddress@3f80 {
>+				reg = <0x3f80 6>;
>+			};
> 		};
> 	};
>
>-- 
>2.35.3
>

Acked-by: Zev Weiss <zev@bewilderbeest.net>


