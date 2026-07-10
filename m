Return-Path: <devicetree+bounces-324677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CusNGldnUWpWEAMAu9opvQ
	(envelope-from <devicetree+bounces-324677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:42:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD6173F118
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:42:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HL0+PXIA;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324677-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324677-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E0FD302C906
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40D13C2782;
	Fri, 10 Jul 2026 21:41:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968C73B4EB3;
	Fri, 10 Jul 2026 21:41:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783719697; cv=none; b=gMQ93twy13wHNuARqNaMWS7qOHOgmCHPwO3zJ55BiemMDN6Uj5A5yNJ6Fun7tdVuX79WpK8FwMhDRGaoBYD/kiRxMk0E4KtjDlJ8OXTAxADBPgtTWWs/Ig941AYXjNuoVEsV2dJvMn0ODAMLztmULnazBf2afo1fPg5pHo3/MU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783719697; c=relaxed/simple;
	bh=OQiIposVHw5vLuC+6NuJdlpwpJShUPFy5BqKTKxwggU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DNYq3R7Pdq+vNAHstfE0aQkfReAeg1hYqEY2h28K9WhgiiwLUHegWxTvXTwSxeJorKOwElU2NsbKhPkQnN4FOpK8fVCYnaxMVIvpqgO1FT2XLCYuMAgeeTo/im8UOdC0EpRmcLIoGVk5GyxJF4eg17ALalJa7Tar9uj0GdZOssg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HL0+PXIA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A7D31F000E9;
	Fri, 10 Jul 2026 21:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783719696;
	bh=fpQFakc7ADEUOoeWFNjk9SVCUxYjcaGUFeT9R+ZGaX4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HL0+PXIAgq/vTsJi6Sh27o6ad89xc88z3hy9jTsiZAmdHlLWitHpEJBWyZmKRGkdy
	 cj1wzzk7MIdjD1WwWy4uYQUYKVaiIRtmLWXZj+Ch0oY13OCQ3cwygnRtVs4p5ef8VY
	 pSXTehCpIbdJuqP1Tl6H/nkna90WmB+i7ZqPzeaVSo8g0aD5a+WthJKj16ArQPQCr0
	 PhFlSMZ46lsrZ6dgtGDYsMvYQlzPqdWHt1ZM3INWXSgl4Pu1eXUPqbuZczWbBcDc3M
	 JAXqBCrb+Ov2lg5WUG2H3rbqYXbCCVudc5MhfStHB0V5o7LhFwIJ/ekaqBwbuHwQYe
	 hxsRHbNGOwbqA==
Date: Fri, 10 Jul 2026 16:41:30 -0500
From: Rob Herring <robh@kernel.org>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, pierluigi.p@variscite.com,
	matthias.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: ti: Add bindings for Variscite
 VAR-SOM-AM62
Message-ID: <20260710214130.GA1387333-robh@kernel.org>
References: <cover.1783689915.git.stefano.r@variscite.com>
 <10775b12b801255546c9cdefdb153e421aedf910.1783689915.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10775b12b801255546c9cdefdb153e421aedf910.1783689915.git.stefano.r@variscite.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:matthias.p@variscite.com,m:stefano.r@variscite.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:conor.dooley@microchip.com,m:stefanoradaelli21@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-324677-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,variscite.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CCD6173F118

On Fri, Jul 10, 2026 at 07:43:07PM +0200, Stefano Radaelli wrote:
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> From: Stefano Radaelli <stefano.r@variscite.com>

Something wrong with the Acked-by here. It goes with the Signed-off-by.

> 
> Add devicetree bindings for Variscite VAR-SOM-AM62 System on Module
> and its carrier boards.
> 
> Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
> ---
> v2->v3:
>  - 
> 
> v1->v2:
>  - 
> 
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> index 69b5441cbf1a..b9da6e62ab79 100644
> --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -104,6 +104,12 @@ properties:
>            - const: tq,am625-tqma6254
>            - const: ti,am625
>  
> +      - description: K3 AM625 SoC Variscite SOM and Carrier Boards
> +        items:
> +          - const: variscite,var-som-am62-symphony
> +          - const: variscite,var-som-am62
> +          - const: ti,am625
> +
>        - description: K3 AM62P5 SoC Toradex Verdin Modules and Carrier Boards
>          items:
>            - enum:
> -- 
> 2.47.3
> 

