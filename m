Return-Path: <devicetree+bounces-253046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2673D06BF4
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 02:31:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 685F43021E6A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 01:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8DF1A76DE;
	Fri,  9 Jan 2026 01:31:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo12.lge.com (lgeamrelo12.lge.com [156.147.23.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3D323185E
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 01:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767922281; cv=none; b=fwSD9z2m9tel8XazZcICqFjcx1jQjf8uNetA6iHgrk4rUBbz6y+O3vWG2rcAvUK3Q8WtcWXLR0RlU156kQJM62xpwlu9Nf3MbWLe2eGa3c4hwZHH43i+6EK++GveeqBcKo8TVMRTuwedHsLgF7YjgVw5kFZGjK98Wh1Lyl6BelM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767922281; c=relaxed/simple;
	bh=oZPOC5XNYJbgYDeGSjVjDqAFEOXm3ADKKVpGxla5JMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WG1l5dPSpcMdSlC4dZMYTqFZCRR3fJlKdqstifFn51W5k2g22bAt0aKUAg6rqi9YymEeKLvrdxtdiwjaxJv31odD/yhPKgK/wGGOdTEr4rVHJRJ44GKHCRMGCVFap754af6iIMfhL5eEIZDeEyC+73hhQr3vqYlY22Q1gPnEuJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgeamrelo02.lge.com) (156.147.1.126)
	by 156.147.23.52 with ESMTP; 9 Jan 2026 10:31:13 +0900
X-Original-SENDERIP: 156.147.1.126
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO BRUNHILD) (10.178.31.97)
	by 156.147.1.126 with ESMTP; 9 Jan 2026 10:31:13 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
Date: Fri, 9 Jan 2026 10:31:13 +0900
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
	Gunho Lee <gunho.lee@lge.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add 'lge,*' for LG
 Electronics
Message-ID: <aWBaYUTp8dOTIEGz@BRUNHILD>
References: <20260108082213.6545-1-chanho.min@lge.com>
 <20260108082213.6545-2-chanho.min@lge.com>
 <49d28c7d-a08c-4543-b3bd-a23d36785c28@kernel.org>
 <0b80d046-6141-4389-b666-592859468b8f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0b80d046-6141-4389-b666-592859468b8f@kernel.org>

On Thu, Jan 08, 2026 at 05:46:53PM +0100, Krzysztof Kozlowski wrote:
> On 08/01/2026 17:39, Krzysztof Kozlowski wrote:
> > On 08/01/2026 09:22, Chanho Min wrote:
> >> Currently 'lg,*' is used for LG Corporation, but LG Electronics uses
> >> 'lge' as vendor prefix for many of its device tree bindings
> >> (lg1k SoCs, etc).
> >>
> >> Add 'lge' vendor prefix entry to avoid confusion with 'lg'.
> >>
> >> Signed-off-by: Chanho Min <chanho.min@lge.com>
> >> ---
> >>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> >> index c7591b2aec2a..6c31fa4bee6a 100644
> >> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> >> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> >> @@ -907,6 +907,8 @@ patternProperties:
> >>      description: Lenovo Group Ltd.
> >>    "^lg,.*":
> >>      description: LG Corporation
> >> +  "^lge,.*":
> > 
> > NAK, we have been there and I do not change my stance.
> 
> Unless you meant to add it because of EXISTING device trees (predating
> commit fc75109288709 from Rob), then add with deprecated: true and don't
> use it any new compatibles.
> 
> Best regards,
> Krzysztof

Hi Krzysztof,

v2 will include:
 - "lg," prefix only ("lg,lg1215-ref", "lg,lg1215")
 - Drop "^lge,.*" from vendor-prefixes.yaml
 - dts coding style fixes in patch 3

Existing "lge," → "lg," conversion will be sent separately soon.

Thanks
Chanho

