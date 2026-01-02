Return-Path: <devicetree+bounces-251149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F23CEF6AC
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 23:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB30630111A6
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 22:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC0A62D2384;
	Fri,  2 Jan 2026 22:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNyIdUD4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EA02749ED
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 22:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767392617; cv=none; b=uEoqnzeCeX+psAe0UCGZ0oE0vfwB9VQDfBh47CW3OIN+AXr690hOzJCAPhoOFncu77SWgB06cOoVvCrO9AJUQngiTsLlSwBOwx8eg4HnOxyUeOz5Z1IIFrPFZOGD5u9dtDY49ZxYF4eEBfKkOo+pKA7qtFupUMj40+/YVvFR13E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767392617; c=relaxed/simple;
	bh=uzQyOyokFsE6aLeCdVWXJuUpnoo7D0b+1LEL1vfIjXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h8LRjlxn+ExuQeJzCArELS/7L2Yz5WAFmv6A+sLcROumXm32HOJke3d7Y2L70726pLXkRwmwyzdVLMinOp8ZcbPKZNg/+4pbroNHLSE0hMTMyA5YRaQfJCluxRZ/hF2WHtR4YeUceaaehV+iGLrPIKxo2a+/YDb+BTFzeWgkoNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNyIdUD4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DBA7C116C6;
	Fri,  2 Jan 2026 22:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767392617;
	bh=uzQyOyokFsE6aLeCdVWXJuUpnoo7D0b+1LEL1vfIjXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oNyIdUD4CJS9cYLvocEgJxn+Xw8qnh+4+dOb62w3XxLXxfevtHNgkrTAULkSvU2EU
	 E25zaOTcVxIWXafJEfMmR42O5rc0rQ+6b6Nvi4o3PzpNbbv9+6V/3rCMHC5rl52rDH
	 smiwXFilSlIu/eAGht6RF/cXP44pDiaeJ3mGWsmUKhYrcauFBANFUGM9udIzHJR7j4
	 0K7P4x84NdfKtugFzeGNVEtpvzIt+tl0N0HrkLIaoWBbtvZYc7HKptDkJshYJJqpb4
	 tbWlNvIIKY1irizfcfVqd8x79fLiMq50kkOtse6SiqFG3ftHkbaP1qBNUf725lutuG
	 DhFx3aXsQI88Q==
Date: Fri, 2 Jan 2026 16:23:36 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Subject: Re: [PATCH 1/5] dt-bindings: mfd: nxp: Add NXP LPC32xx System
 Control Block
Message-ID: <176739261569.281828.199653070024602694.robh@kernel.org>
References: <20251231215754.2222308-1-vz@mleia.com>
 <20251231215754.2222308-2-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251231215754.2222308-2-vz@mleia.com>


On Wed, 31 Dec 2025 23:57:50 +0200, Vladimir Zapolskiy wrote:
> NXP LPC32xx SoC series contains a System Control Block, which serves for
> a multitude of purposes including clock and power management, DMA muxing,
> storing SoC unique ID etc.
> 
> Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
> ---
>  .../bindings/mfd/nxp,lpc3220-scb.yaml         | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/nxp,lpc3220-scb.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


