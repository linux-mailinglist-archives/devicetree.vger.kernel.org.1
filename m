Return-Path: <devicetree+bounces-134301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 767F99FD25A
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 09:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E6101881EE9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F19F11553BB;
	Fri, 27 Dec 2024 08:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0OgJ3LW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1BC155330;
	Fri, 27 Dec 2024 08:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735289983; cv=none; b=HB1zqPImioCiuSg1wrJEfRqh9t+nuXczukiwc9oMnmwb41+JkJM72nrGkwh2dPmj0AoM03nySz1aquzbwvFnmXTCXIhifXhAbkFjw9YsN2bnJ7r6D+JiW8haLXjJR7yX1+XgQe1SZPPFZKBHPo9xYjDPuzEFE9WSdKstvQk0xFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735289983; c=relaxed/simple;
	bh=Ha9eaZKe2pPLaVPj/BlrvwxCVnKMNdxIOtRX6jvdDl4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FhsNvnfWFXW0BHsFVgZlRSXw5RKvJ+kWN199Jk0RRICtCPrCfSe9+Zpz8Dwf1BON6RvFQfLpkH8OZrXwRAeAntgoa6DlxtINRr1hdNesZ2UAlsPZhLpd/gqmnUn+3dYomVM7INiT3LFEA0bswXfWV0NBmfaN8+HAYtDhcWQuRYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0OgJ3LW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1F0EC4CED0;
	Fri, 27 Dec 2024 08:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735289983;
	bh=Ha9eaZKe2pPLaVPj/BlrvwxCVnKMNdxIOtRX6jvdDl4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b0OgJ3LWV3lMZcfL0iy221Bm/Ia5/6HMN8xhv1smt/qqzKgO37JkxWiXmyBruURwU
	 ZzxARQxgi68rbBqmP33CfcmCzIhixmWwdAheU/6St2LKkvpL0g92hNYLDgopwbBxFh
	 YP8WVjpFltuTYCTwGYrlHsClX992XwjP5Ipsl9wAuxTs8W527T8hqXkQmdOWWiKPZr
	 O/9Z5gX8uKbBkcJOjhYT4WUinUjUVt2XZ96B0x0+lQfbXmxCCP4WvYsw2TYr2XdwpK
	 yS5lREtCxJvHxD0+XNTB8xKgvZG6YhFJJ8RzX2T+GTgw1euxmLV7Dy8HG/qIO2elgc
	 1Z2QNDajBKpSg==
Date: Fri, 27 Dec 2024 09:59:40 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-phy@lists.infradead.org, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip: Add rk3562
 naneng-combophy compatible
Message-ID: <m3iznr4xjh5hgnca4jyj64uejesf3ulgfpycvrw5phrirca5wv@hx5rx2tumw36>
References: <20241224094217.3817100-1-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241224094217.3817100-1-kever.yang@rock-chips.com>

On Tue, Dec 24, 2024 at 05:42:15PM +0800, Kever Yang wrote:
> rk3562 use the same Naneng Combo Phy driver as rk3568.

Usual comments...

Best regards,
Krzysztof


