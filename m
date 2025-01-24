Return-Path: <devicetree+bounces-140715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D85FA1B18A
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 09:21:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74C4C16742A
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 08:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D672F218AC4;
	Fri, 24 Jan 2025 08:21:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8394218ABA;
	Fri, 24 Jan 2025 08:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737706883; cv=none; b=nCZDjwKlxtzbwhyrKbqpKfAlBi42QDBNB0ET3GkpAk+TYFUQZ9++8vrQ6C4DxkvGvKJmDN74xqnxU5W7meR4YeDkpz/8liTYlnFNiYLglKoFlhWp5V3JgM3Z/5V6apnAv0seZmcdbhhbcdxNaNZk1ApxGiPraXj15jAvxqV0bHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737706883; c=relaxed/simple;
	bh=nRhd3CjFsHJ7VZmItQsnbP5+t1HLmEQQBlQetw+vGD8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dA5vNjeD3FZFGFxYCR6FhnnTEzQknNHeahU2qDyK0rV2JqSoWvOdfbYrvQj33mf7M7LRCNA8BicTOkSZn82sf24FjNQF3Rz9rqOg7qIH/Jj15acB/F1/mfManIwMwDbloqC+RV8KausbbbMsrX+xWBaz85m3diL4porkWf4wqIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80A1AC4CEE2;
	Fri, 24 Jan 2025 08:21:22 +0000 (UTC)
Date: Fri, 24 Jan 2025 09:21:19 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/5] dt-bindings: mfd: syscon: Add ti,am62-canuart-wake
 compatible
Message-ID: <20250124-organic-glistening-bullfinch-d4bd12@krzk-bin>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-3-515d56edc35e@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250122-topic-am62-dt-syscon-v6-13-v1-3-515d56edc35e@baylibre.com>

On Wed, Jan 22, 2025 at 11:24:34AM +0100, Markus Schneider-Pargmann wrote:
> The wkup-conf register space contains a number of registers that control
> the wakeup through the CANUART block. These are present on a few SoCs
> including am62a and am62p.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

We do not export registers, but entire device. Decide what is the device
here.

Best regards,
Krzysztof


