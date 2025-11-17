Return-Path: <devicetree+bounces-239557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A142C6667E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 23:07:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id A31DE296CF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A27CA34BA4E;
	Mon, 17 Nov 2025 22:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKLWwRAF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7821D309F09;
	Mon, 17 Nov 2025 22:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763417223; cv=none; b=L33+O4NY5Dy2VTPRipdovT2ChcckZHwpTKi055yLL0mlkllJaIK7YvuV3GzbTSAIHzGdpsvVLoNtgCfHABXI5/Kd+ul1hhE3+IL93vVFbm1SMJ8s2kpoihUGGlRkC/H+rfz4alK4NH8+Nx5J+W81XxhcR2eSzxyZXrdxgfjC73M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763417223; c=relaxed/simple;
	bh=/rwLjEJrq5xh81nSd6zHZcteNgx1DtiJlrIi/MwXBk8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WzWcUInKkSVSMErdYBWmtAIOllNmx9ajqKSQ9sjw9xUHD6km8aUGxHU6fCaNQm6roFmxRU9kQg69m5myXNJEvPfhuqtbwkzzWOLznWODnpQwuY/GA70EN2srPVT9kQ9NoHANhNXRItvJpkiwh95MoT4OJCjnM2T4if9kuJsyw00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKLWwRAF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15404C4AF0C;
	Mon, 17 Nov 2025 22:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763417221;
	bh=/rwLjEJrq5xh81nSd6zHZcteNgx1DtiJlrIi/MwXBk8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bKLWwRAFVmZjOd0q+7anlRlVUfGcGVWQ8HgzqxKk18ux2korH2ONGhexM5HtqWAQZ
	 mY9rKFTMI97Kp10F/F+jVsH/NiA86PFuct16Q6yaQcx3Y4OchRRQ9/3F+7uOIXXSIX
	 lSxYq5O6roloXU779M64lg2hnP1T3P6+mQEZV4t2TXlcJStbTOCz38aJOGvUQX07U6
	 Uw0sq9g2LShXdKts0BrGfgNxkHkKNQiz5hZtymY9CeTBG+Vn7tA9aMw+M3c53oei+d
	 xXQaPKi/VKD8uht6kS485Ep5YRw6PcSYw/+KbIGDmCr/GSQeczeFxYAxfiz3TbBx6x
	 COweWDwjujNOQ==
Date: Mon, 17 Nov 2025 16:06:59 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: nicolas.ferre@microchip.com, conor+dt@kernel.org,
	romain.sioen@microchip.com, linux-kernel@vger.kernel.org,
	wsa+renesas@sang-engineering.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	alexandre.belloni@bootlin.com, krzk+dt@kernel.org,
	claudiu.beznea@tuxon.dev
Subject: Re: [PATCH 1/2] dt-bindings: arm: at91: add lan966 pcb8385 board
Message-ID: <176341721849.806024.3609760961005351120.robh@kernel.org>
References: <20251117125709.102013-1-horatiu.vultur@microchip.com>
 <20251117125709.102013-2-horatiu.vultur@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117125709.102013-2-horatiu.vultur@microchip.com>


On Mon, 17 Nov 2025 13:57:08 +0100, Horatiu Vultur wrote:
> Add documentation for Microchip LAN9668 PCB8385
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


