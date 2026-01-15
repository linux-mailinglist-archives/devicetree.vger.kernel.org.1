Return-Path: <devicetree+bounces-255720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E767BD268F9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:38:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05F7C30BC34C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABF0E3C0087;
	Thu, 15 Jan 2026 17:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6E4E+P9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8962839E199;
	Thu, 15 Jan 2026 17:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768498293; cv=none; b=BCfvli1PAhlh3eDONLlQh83vujxqxld9LXJmra2RuARavGblIXj6/mrLndDqcTYdp4oi+rnLDxCVOdKmanCo7uOpX48UtzSxyfm2SZHwJ4zzt40ngTkavX6wfEudFNbfkJGe240PoSzcQX2NWEghen0ZNVe2YowAUK4FkQJkczI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768498293; c=relaxed/simple;
	bh=YjX/AfVRJ8laz3W19X9hRSKTlMK1ceRbuKGgYxiY6Bk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W3Q9484d5yfTf5ievWCFO6S3jWkokEerEWZJdt9C3S82Fo9OjouXnaNRadJ3DSuXYIalRqYbTa5BMoekon6X7MIr7vO1BaU3+9xnvOKZvUzOEE84qHR7ACLvdKCs9igL8O305seXaX3coGpL6hVtQDtQVRtp08U2dwpSuXkomsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6E4E+P9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43E48C116D0;
	Thu, 15 Jan 2026 17:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768498293;
	bh=YjX/AfVRJ8laz3W19X9hRSKTlMK1ceRbuKGgYxiY6Bk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C6E4E+P9WYSMLVzmu016+FYMSX/tHCvbG2Xm7Czn6OD0YE5xSZcP/U7fw/Jmcj3zi
	 HZQTiby3BP6xRjSeETx7hqwxv21ltcgx3nE539xz/yM+neF0rPsIENerk4ruLDmgyA
	 dmWuIjZW7QT+WfzLRpU0WQJhQIsHR0tFZfWVaE+MEre4619kxh1IytEuJUCRxYEMpl
	 tlEPdz1BEyDU3mHI2P6Iml64fDPVPfJQUj62O8U7qlUaXZyu8gO12+CNzS2BLkLKa4
	 t1wkrya6a0u+usK/3Y3EKdWG44X5RosjO184a3Alhe34+XzeusCky4sEZNDyKtEt1z
	 ggvnSiyx0tfAQ==
Date: Thu, 15 Jan 2026 11:31:32 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Moteen Shah <m-shah@ti.com>
Cc: nm@ti.com, y-abhilashchandra@ti.com, vigneshr@ti.com,
	gehariprasath@ti.com, kristo@kernel.org, u-kumar1@ti.com,
	krzk+dt@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] ti,j721e-system-controller.yaml: Allow audio-refclk
 as clock-controller child
Message-ID: <176849829204.923576.6698326462461946997.robh@kernel.org>
References: <20260112104536.83309-1-m-shah@ti.com>
 <20260112104536.83309-2-m-shah@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112104536.83309-2-m-shah@ti.com>


On Mon, 12 Jan 2026 16:15:34 +0530, Moteen Shah wrote:
> The ti,j721e-system-controller binding currently only allows
> clock-controller@ child nodes to reference the ti,am654-ehrpwm-tbclk
> schema. However, the system controller on J721S2 also contains audio
> reference clock controllers (ti,am62-audio-refclk) that use the same
> clock-controller@XXXX naming pattern.
> 
> Hence, extend the clock-controller pattern to accept either ehrpwm-tbclk
> or audio-refclk schemas using a oneOf constraint.
> 
> Signed-off-by: Moteen Shah <m-shah@ti.com>
> ---
>  .../bindings/soc/ti/ti,j721e-system-controller.yaml         | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


