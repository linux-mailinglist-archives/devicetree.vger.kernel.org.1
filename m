Return-Path: <devicetree+bounces-254211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9FFD15E31
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 00:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DB6D301413F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 23:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C3992D3A93;
	Mon, 12 Jan 2026 23:54:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo11.lge.com (lgeamrelo11.lge.com [156.147.23.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961A2296BBB
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 23:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768262044; cv=none; b=Iok4ozT4kwNH+a9dQj+zpHBOfBDqgX6t8ipLOlL4m5A8UR5EoLxGuHd2UhF6CmJm89X/+PVjEicEEIRLTu0SFzJZlwkX2ZGQxRS0Y1iQMS+dOVnXXdnbkXfu9J+lOYhmDDUzOcAQt+UP2rBdK1EgSU27wYtrCzPyj7FjD6moh20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768262044; c=relaxed/simple;
	bh=4oxNUc17aQSZzmiB4Jf4llsqgEjCk64375WkRx0s9oQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vc/x8V/1vw2MMeXhk1fS7Z+i7HqrICVVAQneSA5TerVK9DGwO2MWLFizT6D0PhPG+nRzuG3HqsXInJi72Kwm9r6li0Qg+UDVBrH3zeEBx1BKJXyFMcxznVNeSdMj5hEfs5ILBaeIVGqVw0vuCbL6SvdXBR3kDUHY6r1sT1T/87g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgemrelse7q.lge.com) (156.147.1.151)
	by 156.147.23.51 with ESMTP; 13 Jan 2026 08:53:58 +0900
X-Original-SENDERIP: 156.147.1.151
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO BRUNHILD) (10.178.31.97)
	by 156.147.1.151 with ESMTP; 13 Jan 2026 08:53:58 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
Date: Tue, 13 Jan 2026 08:53:58 +0900
From: Chanho Min <chanho.min@lge.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Kael D'Alcamo <dev@kael-k.io>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2 v3] dt-bindings: arm: lg: Add compatible for LG1215
 SoC and reference board
Message-ID: <aWWJlkzlb6rHbKTF@BRUNHILD>
References: <20260112053421.3185738-1-chanho.min@lge.com>
 <20260112053421.3185738-2-chanho.min@lge.com>
 <20260112-agile-elite-tuatara-dea08d@quoll>
 <aWTWwLsm+ZoR0aW/@BRUNHILD>
 <8d9b4ca4-5db5-49f0-8178-b528f9cf2eb3@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d9b4ca4-5db5-49f0-8178-b528f9cf2eb3@kernel.org>

On Mon, Jan 12, 2026 at 05:31:26PM +0100, Krzysztof Kozlowski wrote:
> On 12/01/2026 12:10, Chanho Min wrote:
> > On Mon, Jan 12, 2026 at 10:07:05AM +0100, Krzysztof Kozlowski wrote:
> >> On Mon, Jan 12, 2026 at 02:34:20PM +0900, Chanho Min wrote:
> >>> --- a/Documentation/devicetree/bindings/arm/lge.yaml
> >>> +++ b/Documentation/devicetree/bindings/arm/lge.yaml
> >>> @@ -24,5 +24,10 @@ properties:
> >>>            - const: lge,lg1313-ref
> >>>            - const: lge,lg1313
> >>>  
> >>> +      - description: Boards with LG1215 SoC
> >>
> >> 1215 < 1313, so this looks oddly sorted.
> > 
> > Agreed, the order looks odd numerically.  
> > But it's intentional to reflect release order (LG131x earlier).
> > 
> 
> Then you have to remember and enforce the sorting rule here, because I
> won't be able.

Understood!

Thanks,
Chanho
> 
> Best regards,
> Krzysztof

