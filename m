Return-Path: <devicetree+bounces-130961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B82CE9F184F
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 23:03:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76B49188B7A0
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 22:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B59E519307F;
	Fri, 13 Dec 2024 22:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="o8LES4es"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60ED1DA4E;
	Fri, 13 Dec 2024 22:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734127414; cv=none; b=A4FiMQMWH1ISDXje203Cvcbsg8Asc8C56+K4btEyG1CuFVzmCRofWOx/UGD4sAes4Qm7dj+eM569tVsXMe1khMpNPmY4nUQU57raH98Y5UI/EdNoxSLFH9EWYS5lvM/Zl2MNXxACgAI9k7cstaM1mh/BCNkRGdBnXm2AqqzM6v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734127414; c=relaxed/simple;
	bh=LU5Q54IyACTz/utArs59J3eKJnMem5IwvIjcL7beJBw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O8EIAb/jJ70GQcwF7IeqvcK+rVzdmXnuGIVnFE+ntsqQI9Py+4zvew8OmYUo0mkx4pT8dsC0QFUDaVjnDM9nkJW5SS10OTHkH0q9Cb4QXu2VHYKcVFYCVVdxp46hhXqHkyVXsp/prQcd5aDlV0zVACT+/Ys4hmLakhKfDtgLYUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=o8LES4es; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=eAJ5fUjEEvUD9VbWS1/Qwk4AOyP6PIZbu8dIgzfahvY=; b=o8LES4esZv5ix34Gc9JkGkRBTO
	8jI9+EB6WnLt/SWorb5xz0+RR+w4GtBHikIa1l2xzyFOy/+DqD3IiiUsDn18/JmaOuNc1UqxmkS4G
	+wtVybgpSzeROJwq1f272TjTknbbYXdq0TiI7LX+1XeEeYlsePbam5iUH4WdIwXgLHUc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tMDkd-000OJn-GH; Fri, 13 Dec 2024 23:03:11 +0100
Date: Fri, 13 Dec 2024 23:03:11 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ninad Palsule <ninad@linux.ibm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	joel@jms.id.au, andrew@codeconstruct.com.au,
	devicetree@vger.kernel.org, eajames@linux.ibm.com,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	NINAD PALSULE <ninadpalsule@us.ibm.com>
Subject: Re: [PATCH v1 3/8] ARM: dts: aspeed: system1: Add RGMII support
Message-ID: <4a8788c1-8424-40f6-a9da-bf135acad29b@lunn.ch>
References: <20241213145037.3784931-1-ninad@linux.ibm.com>
 <20241213145037.3784931-4-ninad@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241213145037.3784931-4-ninad@linux.ibm.com>

> +&mac0 {
> +	status = "okay";
> +
> +	phy-mode = "rgmii-rxid";

Why is everybody getting RGMII wrong this week?

Do you have an extra long clock line on the PCB for the TX clock?

> +	phy-handle = <&ethphy0>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_rgmii1_default>;
> +};
> +
>  &mac2 {
>  	status = "okay";
> +
> +	phy-mode = "rgmii";

Do you have extra long clock lines on the PCB for both Rx and Tx
clock?

I suspect you don't and the RGMII delays are messed up somehow.

	Andrew

