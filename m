Return-Path: <devicetree+bounces-253873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 681B1D1234E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 569313119C37
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D11A3559DF;
	Mon, 12 Jan 2026 11:11:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo11.lge.com (lgeamrelo11.lge.com [156.147.23.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A34F35581A
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768216264; cv=none; b=E5GxQae52xsWFiRSnsTVvu3+nURwnndXuPqoMnRYEVIiYXo5Er/BuPJDXaZQntk/KC0PuFCaeXVfWVc16Yaxmdn0D6Zue/ve+OS+E+nEuf6j6ihJi/ezjDR8zdk4CSy4tUiICPOtD3VIhh7QoJic+fGod0zNXNsWZHNBgz8esFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768216264; c=relaxed/simple;
	bh=k900Xsa0C0zh/d8VRZur8hoy9R6jJW8XFSGVLLI5pBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cz0YEMjcllKXKvB2kMVF0jR6xIZbqD6c/FvyGZY65iD4Ma+5lWwwEoLnb58BQ0FB+DEz5DAW45O7yKt7guYHu0TQ1djHUKipONTqpUlY+4Kp1K0apA/JDnTjCYiGJDFamMzlTmB9mCfZ64wVAsahZnvk1Cn4cDlj/9FwfwO3nkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgeamrelo01.lge.com) (156.147.1.125)
	by 156.147.23.51 with ESMTP; 12 Jan 2026 20:10:56 +0900
X-Original-SENDERIP: 156.147.1.125
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO BRUNHILD) (10.178.31.97)
	by 156.147.1.125 with ESMTP; 12 Jan 2026 20:10:56 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
Date: Mon, 12 Jan 2026 20:10:56 +0900
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
Message-ID: <aWTWwLsm+ZoR0aW/@BRUNHILD>
References: <20260112053421.3185738-1-chanho.min@lge.com>
 <20260112053421.3185738-2-chanho.min@lge.com>
 <20260112-agile-elite-tuatara-dea08d@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112-agile-elite-tuatara-dea08d@quoll>

On Mon, Jan 12, 2026 at 10:07:05AM +0100, Krzysztof Kozlowski wrote:
> On Mon, Jan 12, 2026 at 02:34:20PM +0900, Chanho Min wrote:
> > --- a/Documentation/devicetree/bindings/arm/lge.yaml
> > +++ b/Documentation/devicetree/bindings/arm/lge.yaml
> > @@ -24,5 +24,10 @@ properties:
> >            - const: lge,lg1313-ref
> >            - const: lge,lg1313
> >  
> > +      - description: Boards with LG1215 SoC
> 
> 1215 < 1313, so this looks oddly sorted.

Agreed, the order looks odd numerically.  
But it's intentional to reflect release order (LG131x earlier).

Thanks
Chanho
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 

