Return-Path: <devicetree+bounces-239561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7949AC66742
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 23:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6C6474E0378
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA0B313526;
	Mon, 17 Nov 2025 22:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAks66OL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B631E28504F;
	Mon, 17 Nov 2025 22:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763419482; cv=none; b=W5gz+Z2xHdQ8OGfhBcj+ElKEb7yiw51AyvJ3visBXC5pXcKy/nyoxqknFP00DErPXbhZL8Y2tXDBJz6DWU6nvIsLNwG6BJeZQxPJMDlLM7A0GLzIuNY7lpIwyGjCIxlq1Haiw62wOFvjXQNQK7WLVRQxtf3hAo/yN/PVEDay2j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763419482; c=relaxed/simple;
	bh=I7cN+d0gaur0/SJt3Mr4dNjz/xC/5q6cHHf71yMS3IY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QexL2qdgSx7VLXKHrgULpiOYx57CqssN4UkMge0sSt9qCYctPoSNeZVr7Y267Qd/fz1BzghqUPbtGaAUaGM1CgndRU0j7LG+gkZOJzkJyGEGS5Jx7d2sRdo60BslygHfVcJGzoT+dY5z/mft+RElR0wEFbMC8/nkDDpB0EOxcj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAks66OL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B22B9C2BCB3;
	Mon, 17 Nov 2025 22:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763419482;
	bh=I7cN+d0gaur0/SJt3Mr4dNjz/xC/5q6cHHf71yMS3IY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LAks66OLL7THCQWMljIpJ+a8VX38FA23KlL+cfdSyzabVhsI+3vp5RGUFjfOF0nBk
	 YLnNYI7s7vyaUCf5kgNfTFQsrtkZf2DRDZ8XP6IlI49Frr8NrHC5KRvzq1/HtWpIup
	 r8nYk4blLfA0k6qoNUMuVcINaEbjEqpLlvL5zLe0yuzj3+sS+KxFgyrXKLvy819mXW
	 RSni2jQHoQloiCYAJzCLxBRO+8GIbVE4wgkHwEuqOYvDCGroeQyajIVZeE3oG3U0MZ
	 WEV+h9PA3eqTcgVnXoYkJKqoYyWaxfXI51T/ewJ5dLcf7eBP3p0QLDQN4m3uxJSNjk
	 0kbAGs6rrALdA==
Date: Mon, 17 Nov 2025 16:44:39 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: mfd: document control-scb and
 sysreg-scb on pic64gx
Message-ID: <176341947920.855000.13401863198434967357.robh@kernel.org>
References: <20251117-aeration-smock-5e7ac06e2942@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-aeration-smock-5e7ac06e2942@spud>


On Mon, 17 Nov 2025 16:29:29 +0000, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> On pic64gx these syscons are identical to those on mpfs, and should use
> a fallback. Add support for multiple fallback compatibles to syscon.yaml
> with these as the first two users.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Awful diff, sorry!
> 
> CC: Nicolas Ferre <nicolas.ferre@microchip.com>
> CC: Alexandre Belloni <alexandre.belloni@bootlin.com>
> CC: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> CC: Lee Jones <lee@kernel.org>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> CC: devicetree@vger.kernel.org
> CC: linux-kernel@vger.kernel.org
> CC: linux-arm-kernel@lists.infradead.org
> CC: linux-mediatek@lists.infradead.org
> 
> ---
>  .../devicetree/bindings/mfd/syscon.yaml       | 219 +++++++++---------
>  1 file changed, 114 insertions(+), 105 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


