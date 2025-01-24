Return-Path: <devicetree+bounces-140713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AC8A1B183
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 09:19:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBA7C1639EA
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 08:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC7D4218ABA;
	Fri, 24 Jan 2025 08:19:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE96114A0A3;
	Fri, 24 Jan 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737706793; cv=none; b=pa+91niT5t8VwXAk1qf6fIAfIaqVNGxfwuomK0iCEGt8EorWjSuxstKegXsaDrcDj4Fu1qN68AqiVbefN+6IoTU8bOCGukQyvs4iLbkDDTcvUFka671KBzaXnoHDyJrv4x8JEklQkFiqFDxDombNL7w94IUwt9MfJFDrQ4gA+vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737706793; c=relaxed/simple;
	bh=OfafaSI1YKLaVTsU+uJWMl5q54Zf6DYlqUDlNi9XGrg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KuRpHSI3HQpoE5/34oj2GUr+eBLVQ/XurhHPK24vlYmzRpFBAnClmW6wBNum8jyWBqCnQtDtnoYs7GZ2T1K8Cn4EaAT7GJPNTE/4nSPoOC05gtgGfJUmlO4L5GMXJpWotTClSJU1jQ20uuaIR/R+lnmLK9gSVB3Z+Ux3J8vW0dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DA8FC4CEDD;
	Fri, 24 Jan 2025 08:19:51 +0000 (UTC)
Date: Fri, 24 Jan 2025 09:19:49 +0100
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
Message-ID: <20250124-heavy-jaybird-of-vitality-4cbe24@krzk-bin>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
 <20250122-topic-am62-dt-syscon-v6-13-v1-2-515d56edc35e@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250122-topic-am62-dt-syscon-v6-13-v1-2-515d56edc35e@baylibre.com>

On Wed, Jan 22, 2025 at 11:24:33AM +0100, Markus Schneider-Pargmann wrote:
> Add compatible for ti,am62-ddr-pmctrl to the list. There is a DDR pmctrl
> register in the wkup-conf register space of am62a and am62p. This
> register controls DDR power management.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


