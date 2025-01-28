Return-Path: <devicetree+bounces-141503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C78A20FB9
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 18:44:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 303D21666B0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24E41D7E54;
	Tue, 28 Jan 2025 17:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="ISJqIALJ"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4731B21BF
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 17:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738086272; cv=none; b=g5WAoSkHy8v13tTxLqRx+XLJBfUo95wzscIxEcqteB/jSxqO2amTD74WOag9K+ymsxOY2qSI5GkCrmEeA3kRbOX7ozW5SHXeq61YOgdNVhwtcJsYi2Zd+ptg2WtJZE3AQECwdFLacDr+++9XXViGchAFEYg6FvKmZDqhvvTjhR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738086272; c=relaxed/simple;
	bh=HNbwzwz5EopvGghC6rTpU5v/V8S1Y0wVAuGl9XVDT4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hthLLIS7ewExmK9notZefyp15Ek3BGF7B9uaS//FLNQRbNZeHira48TB2zrMA8FkzwOLVcqopEd7ndgD5sphXdkQRUFpjeATQ1yZ/9y8ZFL15dOWOKs8f9pcCnyZhcmOQTxKytgdgPAsUrg1KSx2ymiEhFcR+qA6Dt4tDOscz+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=ISJqIALJ; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=KuTFPn3BWudhk89I6Q5e7sp5NTwdicXotg+TALDJneg=; b=ISJqIALJ3dEvTVp9ptojRhD3gA
	KY5uM7hwlAsZgW2gPQACqTxgSx+JyYYQmyOt9djHAw+F83Xid6U+Wy4tzPOWFdvAIGHxLVH5rRyXx
	7O9Ofrh6S/Gtt/CQJvtVrsd1q0kZSFGoyf6OqLZ+KwMA5A/ayqxek5+Qw9Qle2Z5pv+k=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tcpdS-008uZO-Ig; Tue, 28 Jan 2025 18:44:26 +0100
Date: Tue, 28 Jan 2025 18:44:26 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
Message-ID: <f9aad21c-64f9-413b-a3ea-18825515944c@lunn.ch>
References: <20250128172917.4565-2-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250128172917.4565-2-u.kleine-koenig@baylibre.com>

> +&gmac1 {
> +	/* Uses a KSZ9031RNX phy */
> +	status = "okay";
> +	phy-mode = "rgmii";
> +
> +	rxd0-skew-ps = <420>;
> +	rxd1-skew-ps = <420>;
> +	rxd2-skew-ps = <420>;
> +	rxd3-skew-ps = <420>;
> +	txen-skew-ps = <0>;
> +	txc-skew-ps = <1860>;
> +	rxdv-skew-ps = <420>;
> +	rxc-skew-ps = <1680>;
> +};

Hi Uwe

The convectional meaning of phy-mode 'rgmii' is that the PCB provides
the 2ns delay. Here you are abusing the

> +	txc-skew-ps = <1860>;
> +	rxc-skew-ps = <1680>;

To add these delays.

Please test without these two lines, and change phy-mode to
'rgmii-id'. 1680 is rather low, so it might not work. Look for CRC
errors for received packets.

	Andrew


