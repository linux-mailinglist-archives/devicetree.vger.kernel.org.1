Return-Path: <devicetree+bounces-274611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBA2Da3IsmmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:07:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DA4273151
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 62E9C3006B08
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C049350297;
	Thu, 12 Mar 2026 14:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJ3lg5X6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFD234D389;
	Thu, 12 Mar 2026 14:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773324355; cv=none; b=SRWGwdCVcslPk8wsr4zwSvLdZ/Z+4wKXHUoZEZZJJT8v+XxMryjJGZgcMi4YGJQ4lVGXG9iq3dtKNGgyK1vEZdDPLCXM79qfelEeLReVKDNWx7gZRTiXJmyPMNkP7Y66zHt1nZPfUSIwA3miBtZVWUIh6Mi02QBF5MDFqA/ePy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773324355; c=relaxed/simple;
	bh=IArRqOvl5YRKO4SFXiZ1D1+PZmcVrzUPe6uk+Cy+be4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bb2+bUFAnJjpxMPeRJQa3Hd4558Oyc5+hH01kuw/7TrMCMSs1b073BsaBWIVxkd86J3s+r4zapMuVugiEG+eDHOOSQkwLEmn5kDoNIGqvlfxETfXDMA89pbe96gg0fcqcaJpoaxCeiDShiSAMICwObzDnRJPIYP/8GJAltavUrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJ3lg5X6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8731DC4CEF7;
	Thu, 12 Mar 2026 14:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773324354;
	bh=IArRqOvl5YRKO4SFXiZ1D1+PZmcVrzUPe6uk+Cy+be4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fJ3lg5X6iYjALC7onyBhYymjiHEYoeJhB+IGPRQqcZM57mJY8WgqmjOTAJHlAu7KJ
	 eWZ3dxZl3sYTV8ZES7SVJ8u5v7a7A0DOecTCn1pdhNZBwdDIzhmyk8aIR6wa69xNrS
	 ezEkI8OCzAIaXk8HMs5hMUtFHxHRwsLg1mZvcEN3uCiG031o9DyShSfz4UudUto5+x
	 Ec/XfBOTpH7jtgtU//mRKOzB486JVs+ojK8tj4tDExYAAotnwzVVQk/9Na5wZmA4k5
	 W3qbe0dJ6p97VPhJF8l8qfzf6HJ0bAjGv0/Xarq+yhahJDalvxrDbAbKAgnm9RxpBx
	 yy6MjnX1YIt+Q==
Date: Thu, 12 Mar 2026 09:05:53 -0500
From: Rob Herring <robh@kernel.org>
To: Cheng Ming Lin <linchengming884@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>,
	Pablo Martin-Gomez <pmartin-gomez@freebox.fr>,
	Tianling Shen <cnsztl@gmail.com>,
	Pratyush Yadav <pratyush@kernel.org>, linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	alvinzhou@mxic.com.tw, Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: Re: [PATCH v8 1/3] dt-bindings: mtd: spinand: Add randomizer
 enable/disable properties
Message-ID: <20260312140553.GA2914438-robh@kernel.org>
References: <20260305071042.1193522-1-linchengming884@gmail.com>
 <20260305071042.1193522-2-linchengming884@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305071042.1193522-2-linchengming884@gmail.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274611-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bootlin.com,nod.at,ti.com,kernel.org,linaro.org,iopsys.eu,freebox.fr,gmail.com,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A3DA4273151
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 05, 2026 at 03:10:40PM +0800, Cheng Ming Lin wrote:
> From: Cheng Ming Lin <chengminglin@mxic.com.tw>
> 
> Add "nand-randomizer-enable" and "nand-randomizer-disable" boolean
> properties.
> 
> These properties allow enabling or disabling the randomizer feature
> via the device tree.
> 
> According to JEDEC standard JESD22-A117E, no single data pattern
> represents a universal worst-case for all NAND flash failure mechanisms.
> Different patterns, such as fully programmed, checkerboard, or mostly
> erased, can disproportionately stress specific cells (e.g., programmed,
> erased, or those influenced by adjacent states).
> 
> Given that no fixed pattern can cover all scenarios, the use of a
> randomized data pattern is a practical and effective mitigation strategy.
> Our hardware implements a randomizer feature that scrambles user data
> before it is written to the flash and restores the original data upon read.
> 
> This ensures the data stored on the media is more evenly distributed,
> thus reducing pattern-dependent degradation. This is especially crucial
> for preventing errors caused by unbalanced data (e.g., all zeros or
> all ones) in blocks with high program/erase (P/E) cycle counts.
> Ultimately, the randomizer improves the long-term reliability and
> endurance of the flash device.
> 
> Signed-off-by: Cheng Ming Lin <chengminglin@mxic.com.tw>
> ---
>  .../devicetree/bindings/mtd/nand-chip.yaml     | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-chip.yaml b/Documentation/devicetree/bindings/mtd/nand-chip.yaml
> index 609d4a4ddd80..2559cd97ccc5 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-chip.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-chip.yaml
> @@ -67,6 +67,24 @@ properties:
>        the secure regions present.
>      $ref: /schemas/types.yaml#/definitions/uint64-matrix
>  
> +  nand-randomizer-enable:
> +    description:
> +      Enable the randomizer feature. This property is mutually-exclusive
> +      with nand-randomizer-disable.
> +    type: boolean
> +
> +  nand-randomizer-disable:
> +    description:
> +      Disable the randomizer feature. This property is mutually-exclusive
> +      with nand-randomizer-enable.
> +    type: boolean
> +
> +dependencies:
> +  nand-randomizer-enable:
> +    not:
> +      required:
> +        - nand-randomizer-disable

Rather than define this in the schema, make the properties inheritly 
mutually-exclusive with a single property:

nand-randomizer = <0|1>;

That's assuming you need not present to mean a 3rd thing such as use the 
bootloader setting. If you only need enable/disable, then a 
single boolean property works.

Rob

