Return-Path: <devicetree+bounces-248115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F74CCEF53
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:25:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5EF2309C7F9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F1112EAD15;
	Fri, 19 Dec 2025 08:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKAkW6F4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0272EA156;
	Fri, 19 Dec 2025 08:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766132016; cv=none; b=QynRxGZXoop06+I/df9cJWD/wC18wCY9laUlB5vuUVqyq+3f8qQa4SZYE8himk5dvXpRqNV1EdwmmarN7lukPzQBQa11OBuqIm6IdDzufIqicXJzBl3y9Jzv+3TRa2q97wYkK5aUDoui4JmbCHRq/nUWblIOvJfpIVNYbjtS4/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766132016; c=relaxed/simple;
	bh=cncj1vQbL+/eWAXFExp1zdbbgOCmpPCBhifnAimmpCM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jXLYQ2fhUoPZ4d6HQRpMvOE3Q4l48O2U9EL796SHF7KACuwHhnameQw0QpIotiA5aubkiwPiNw+APcBuJM1p/RuRdO4LCBJ++FDjVxF5j+mDshH5CQdWlgy/lGnJe7lADWK9n2lTxAx50yex/M9mdziq1YoJtKYfB6pJKvFzEGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKAkW6F4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91EDDC116B1;
	Fri, 19 Dec 2025 08:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766132015;
	bh=cncj1vQbL+/eWAXFExp1zdbbgOCmpPCBhifnAimmpCM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hKAkW6F4K8Y0wqcLa34tKJxXK+a/KQfH/sVToa3TZKp57+llXfnNMePUJ+lYXgh/B
	 M3NjLpd6IvFrjz+dPOKgv7e+8QR9VZ19Tje8FVa/rWA9utTHqXu9fOekRYhN1eQpay
	 NjfCbZ0YWqgb+Bj0qjfWHUSBe12jPOZsHUzOhdtu02lYJ5JkfvsAVhL05fz683d7wB
	 12AGe95rco4OF1XR1oRhV9B9OvcvMGOzMVArU2BEnnw624d0/74te0zH1lNy9+rGTw
	 2TLU/mvB3h9DvnPA0YEBDan8jlMQp3qJh48RcIne2Cife3WFDHdv85uLc4fOOhuzEJ
	 10Z3NMF/TkkvQ==
Date: Fri, 19 Dec 2025 09:13:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: fsl: add i.MX952 EVK board
Message-ID: <20251219-inescapable-powerful-bettong-3e9dbc@quoll>
References: <20251217-imx952-v1-v1-0-a55a7fe2df0b@nxp.com>
 <20251217-imx952-v1-v1-1-a55a7fe2df0b@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251217-imx952-v1-v1-1-a55a7fe2df0b@nxp.com>

On Wed, Dec 17, 2025 at 09:58:26AM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add DT compatible string for NXP i.MX952 EVK board.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


