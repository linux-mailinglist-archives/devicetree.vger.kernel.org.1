Return-Path: <devicetree+bounces-263221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wz+AIzRnhWknBQQAu9opvQ
	(envelope-from <devicetree+bounces-263221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 04:59:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A46F9DF6
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 04:59:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 223993004D19
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 03:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EFC0335096;
	Fri,  6 Feb 2026 03:59:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo13.lge.com (lgeamrelo13.lge.com [156.147.23.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F882334683
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 03:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770350381; cv=none; b=ZOwKI3OME6VOq+c7X3FI8qFYL1wNVpQpGAapvkXFUCLfnppMhouoS1gHJ3AwtDnpzP5ivdSlkWrt1cNtZ2uEz7qvMn4J+jrKalN0OuvNXnjwzk7MWKSe6iNRJjZBP+8Ac8XT6atQeul5SUXlh9uh0ZPoqjvSKUFe0r4yS/wr4lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770350381; c=relaxed/simple;
	bh=thWW67JVlurzQRV3L2G5kZ/NYJiFqqge+0N0zVioDiw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pcA2bBqELDxHPqcCqcH8wz0jBqG9KRjekSp/3Qoa9QQ5qKuOWjZNlEq+9zOODE9nph05ILR3lyimxdCR5S5X3DWkYuUH5tPVM5nFPejMPsPopnUbkIfNP4xwE/0GkPmw30nQ3Xw/sXwAVun1qYgSSDzSCzicd6OXybaw2f6nXBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgeamrelo04.lge.com) (156.147.1.127)
	by 156.147.23.53 with ESMTP; 6 Feb 2026 12:59:32 +0900
X-Original-SENDERIP: 156.147.1.127
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO BRUNHILD) (10.178.31.97)
	by 156.147.1.127 with ESMTP; 6 Feb 2026 12:59:32 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
Date: Fri, 6 Feb 2026 12:59:32 +0900
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
Message-ID: <aYVnJKDO9PYiqje5@BRUNHILD>
References: <20260112053421.3185738-2-chanho.min@lge.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lge.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263221-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chanho.min@lge.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.965];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lge.com:email,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A9A46F9DF6
X-Rspamd-Action: no action

On Mon, Jan 12, 2026 at 10:07:05AM +0100, Krzysztof Kozlowski wrote:
> On Mon, Jan 12, 2026 at 02:34:20PM +0900, Chanho Min wrote:
> > Add compatible strings for the LG1215 SoC and its reference board
> > (lg,lg1215 and lg,lg1215-ref).
> > 
> > This SoC is the next SoC following the LG1313 series, developed
> > by LG Electronics.
> > 
> > Signed-off-by: Chanho Min <chanho.min@lge.com>
> > ---
> >  Documentation/devicetree/bindings/arm/lge.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/lge.yaml b/Documentation/devicetree/bindings/arm/lge.yaml
> > index d983ef7fcbd6..0d0661470eaa 100644
> > --- a/Documentation/devicetree/bindings/arm/lge.yaml
> > +++ b/Documentation/devicetree/bindings/arm/lge.yaml
> > @@ -24,5 +24,10 @@ properties:
> >            - const: lge,lg1313-ref
> >            - const: lge,lg1313
> >  
> > +      - description: Boards with LG1215 SoC
> 
> 1215 < 1313, so this looks oddly sorted.
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Hi, Krzysztof

Ping, Any update or is it waiting in a queue somewhere?

Chanho
> 
> Best regards,
> Krzysztof
> 

