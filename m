Return-Path: <devicetree+bounces-213637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C1CB46200
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 20:15:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21BCE5C7CE1
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 18:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D43B302163;
	Fri,  5 Sep 2025 18:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrZE0Gs8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294ED305950
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 18:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757096066; cv=none; b=Dc+gQhZmBwR1jYZe4p/lTcvoFN2SUtdIhKWI3E3YFlz85lDkqXhwM1j+CVsco6fX8XLFRDLTOzvXECPml8fgoIyypN+mxdwPcIzREtsQx7nlqiPf5vBX4sF/1dM2U4ZihaIVRh6L3ZO10XSnahyRpe4WX4RU1E7SWY/BcoZ0otY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757096066; c=relaxed/simple;
	bh=sKIzohfHjobHO7SXpKvZ0tTHicEsp56cVztJWhm/0V0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OO0sHZ8SOoYUf9LaQWzOAAwNATFqbbH8U9gDikaGrVUt3OA033VPPmuRWBFOr1Qeg1fkGzmFQDS52Wwd7zA9MEKca0nieI/8x84GgflwSeIWkUn1iZ+CDKNBMwfp5A+xO+SQDieeDS8sO7jjlxmsrRU4Q+q16gCm4DvglpehPc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrZE0Gs8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1290C4CEF1;
	Fri,  5 Sep 2025 18:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757096066;
	bh=sKIzohfHjobHO7SXpKvZ0tTHicEsp56cVztJWhm/0V0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BrZE0Gs8hnOSpo716jzKc1BTmUzos1aJ87JdO5xXPyuHu6KcqaAO5UmJKZVnTfFOy
	 RxiN41dvEz6I1MLYuj165bTcE2o08YexQxpbnq2P0JRNmKWNmN4iMg0NEi4Ya5yyLl
	 T5S4i41W8HDmxU4hE+52aa6bgyIx1Q2eBz+oi+riZqsuKuRLZq50F1E0Zt5+9AQqF5
	 rA6rMB4cn/MAhjJ8Xq6T9COQDe5G8j5ZODXbg7a57q+Pwu3gJlfHopnqHtVHT5HNAt
	 /478erheEcLcXvjd7GTqYipC5EjMr0co/a9GUpmq11NcNpL93j2M3vwsxrK7C0Yeby
	 Gvj6MCZJBmRug==
Date: Fri, 5 Sep 2025 13:14:25 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Zapolskiy <vz@mleia.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Roland Stigge <stigge@antcom.de>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH 1/7] dt-bindings: arm: nxp: lpc: Assign myself as
 maintainer of NXP LPC32xx platforms
Message-ID: <175709605970.1054226.866828735436779531.robh@kernel.org>
References: <20250904184647.397104-1-vz@mleia.com>
 <20250904184647.397104-2-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904184647.397104-2-vz@mleia.com>


On Thu, 04 Sep 2025 21:46:41 +0300, Vladimir Zapolskiy wrote:
> Make a formal change to reflect the actual NXP LPC32xx maintainership
> for the last years.
> 
> Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
> Cc: Roland Stigge <stigge@antcom.de>
> ---
>  Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


