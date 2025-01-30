Return-Path: <devicetree+bounces-141856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 287D0A22D22
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 13:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 979841885C12
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 12:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBC51C5F37;
	Thu, 30 Jan 2025 12:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="MlCi2LRb"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4564B660
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 12:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738241961; cv=none; b=Jx0CiOG7yLynjczwEliFMG/pyLYyL1gnyo2pPluVNIz2mMPXzLEQK7InIrqeXx61gc+D3yV2Lga2tNO+azAlRw6ZyS312LUrpxSwAlCGrrKLXBEMAl05xY7dRtl12JkZ2XDRYO7JwKxcHxf78RxC0OQASNaZTyAnsLUqyXC/8DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738241961; c=relaxed/simple;
	bh=wtgX4x5vIcVQ+Bm3YO25IzhEbJuEmNMAQIG6dQUh6co=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QCpfqNqG9BfVCbsnjfNyxoY51GX+bDQV1sMbiBuHN0JF/Rve3rfAYkioIUPJbEflKuvAaDQAiBqkMbG1XynF3u3aDAXz6KqLPGVPvgEA/EaQFW8VJca9XVJQtXfHa1bppeWIl+jI7PUuco3OlxYLMLAqW+JFN6zxVyBfoZ/uTfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=MlCi2LRb; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=5E8vrIUiwgp840jedrOdXiCw8U0oFfDgQrEtzVFZfOc=; b=MlCi2LRb2mWc5JZ5udEuozKHrC
	/uQEVXaO0BkYpAZjsY9bePbaq3SNHAO+iW+Uv/CV7mF2+mJO4IYQhH+ufOF0bDtNNYk7kM08pz6aS
	3tl4DU5gMbw/KV/6wEUeVIo3fNnMfet8Mc1J6DyVR+STmnmUDiTKTvRqi45DtfBRjL0g=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tdU8U-009PNy-VX; Thu, 30 Jan 2025 13:59:10 +0100
Date: Thu, 30 Jan 2025 13:59:10 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: socfpga: Add basic support for Terrasic's
 de10-nano
Message-ID: <d375f621-1502-419e-bb99-658ca2fd2b63@lunn.ch>
References: <20250130074553.92023-2-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250130074553.92023-2-u.kleine-koenig@baylibre.com>

> +&gmac1 {
> +	/* Uses a KSZ9031RNX phy */
> +	phy-mode = "rgmii-id";
> +	rxd0-skew-ps = <420>;
> +	rxd1-skew-ps = <420>;
> +	rxd2-skew-ps = <420>;
> +	rxd3-skew-ps = <420>;
> +	txen-skew-ps = <0>;
> +	rxdv-skew-ps = <420>;
> +	status = "okay";
> +};


For this part:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Thanks for making the change.

    Andrew

