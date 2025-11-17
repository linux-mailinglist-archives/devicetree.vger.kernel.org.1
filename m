Return-Path: <devicetree+bounces-239562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA08C66748
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 23:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7A84035B085
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 22:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7328199252;
	Mon, 17 Nov 2025 22:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8ehKzTd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8265464D;
	Mon, 17 Nov 2025 22:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763419561; cv=none; b=ah4ocCo07FZ2AsiTbxUWWH2n0MZ0/hx30VW4tHcF7MRyw2i3UGraRerbkMYmwd7oI7tY8sH7Tg4aRtJ53X2hbCEUnUd1QYd7yy5eDzv2eeL2ybYpBkzZZuSMv1qrdQLOKHGsxBz4+O9EE4cvpQT8f0rQVGE895y8VqerHIzyBlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763419561; c=relaxed/simple;
	bh=lkWDRMjVGIhRXjYODF4NGeavO5+MliWUeaJhzdHGjpE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fn/RaaVrvY4XtJj6Ne4CbCGsoC3eN2KtAWOHqYOQczzftbM9qE+iWLIW5TDv8XSm46BITNKfd5Uk3j6D8Egyzf6u+AGsgn+/MAd+6r7026l1CNXGfBMoBxR/+UpIW5jlnbngIWrFqmUmQvx/dm7Spp74jSYVv/J6ok2psJYuXOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8ehKzTd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD5ADC2BCAF;
	Mon, 17 Nov 2025 22:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763419561;
	bh=lkWDRMjVGIhRXjYODF4NGeavO5+MliWUeaJhzdHGjpE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o8ehKzTdEOposLsvgoWshvL/XdFjL4Xkh7uAxoW3kr+1C2Uys/U6eggblcIeLjU1N
	 AGeS7br0F8s7KGmBDqQA/VNZ0Xmn7exZmDD6Qkq/sLnY0fAja0OjHd7Hp7ObTLdfMq
	 vMY0EV6NLm0dw32r6u84XJ/bs+9p35DZE8MkkEOcYFka7Lf+Fyza0JBWxNXUn4vH0y
	 OE7uhfofHxQkMSWY8/DVI4lfUTF2nIK5AsDXx0n+ZEjJn2ANVMMPjm/uVbmg3v+dvH
	 NFMi0F5Ogapns/98f51SFH2tYbq3zvBVGVNSt0lQGmUdqpjtohUVpadjzAFQtg1ZPZ
	 8Faj19KonXhkg==
Date: Mon, 17 Nov 2025 16:45:58 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: mfd: document syscons falling back to
 atmel,sama5d2-sfrbu
Message-ID: <176341955828.856915.4185012775143891739.robh@kernel.org>
References: <20251117-aeration-smock-5e7ac06e2942@spud>
 <20251117-marlin-mustang-5ffda4d211c7@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117-marlin-mustang-5ffda4d211c7@spud>


On Mon, 17 Nov 2025 16:29:31 +0000, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> The sfrbu on both sama7g5 and sama6d65 both fall back to sama5d2 in
> devicetrees, but the former two compatibles were undocumented. Now that
> syscon.yaml has easy support for multiple soc-specific compatibles, add
> both of these undocumented devices.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
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
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


