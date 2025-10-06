Return-Path: <devicetree+bounces-223884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9AEBBE99A
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:12:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7700189A19B
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65E626D4E3;
	Mon,  6 Oct 2025 16:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="LTiKi6Z8"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7D435898
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759767161; cv=none; b=FNWjuuKuimwWOv5YpjjBGAosT4CKnuI+D5tCITM6Q5G4+ndvlQ81h9oXJMj8CleQBGDzDH62X7sBmEXBsXhin9Hc7yWCuc8HJt44a6/XiyxHkQt2tQiICraS64M79jKRAxaaxU171CqOYXGMxlQsXe05IqYz2N0Y2BXZF7k5Xxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759767161; c=relaxed/simple;
	bh=rMMKNOSFoQJP018jsIgdNMYKfyF1VOf4BJl2Yaj1fNI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n4/Nthyvf37ZxOgIhymIOV98HtIxQB0l9R2At/UiKbIQFSHAzht55ly9TcRcPMFBkMUQ1LQH9gNEV/Met+zDGZG5E1dxrN553qAN6OSPUAWqqZJ/+WofEplwhy0foNqLqcyaDPcc8IWLW89aKUr3eGVO/UXdGa+f3/Ce64bF9aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=LTiKi6Z8; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=iXu/BjphqvmX/CYLnd0fPL/OA1yDnmIawr3/8ZnbNHY=; b=LTiKi6Z8zlcWUaANPlIsQJIOX9
	slQeqEJE8VYeeKvX42KXOapTvxea2HhhtHQsvNdQE34Pci7gRm/Jn8ZBUYbn4CPewLxpj/i972Zqj
	Uulc2/7ShxLFnD+IL4Lyv1RJWWcW7zB0iEI96T/ZbE+xlNIepvdiiO7bvJrFtYACamAA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1v5npG-00AJ6H-11; Mon, 06 Oct 2025 18:12:38 +0200
Date: Mon, 6 Oct 2025 18:12:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Alexey Charkov <alchark@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Add
 rk3588s-orangepi-cm5-base device tree
Message-ID: <adbae38a-8b12-4631-805c-18606395d76c@lunn.ch>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-6-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251005235542.1017-6-laurent.pinchart@ideasonboard.com>

> Changes since v1:

...

> - Drop tx_delay from gmac1

Thanks, that seems much more logical.

	Andrew

