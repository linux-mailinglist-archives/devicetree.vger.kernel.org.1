Return-Path: <devicetree+bounces-260036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HzyFALmeGlwtwEAu9opvQ
	(envelope-from <devicetree+bounces-260036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:21:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B963D97AB0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8165130094DC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAE643321DC;
	Tue, 27 Jan 2026 16:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+7uSikC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8052212B2F;
	Tue, 27 Jan 2026 16:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769530731; cv=none; b=sq+HyYb/IWfKx/lWaHlghNVtcuni3vnmgu9indvCOUeZPFuVdW0tatTvD6FW3INsQrjmPeobA1S3CV4decBgk8faY2SbgzYHVYcWPKiKrnUm+aT8X69EiWKFpabO2icaxNxfdR/2fHLyiwFlgHu6VmzUjn2Qc6ugP8rhCkGuYfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769530731; c=relaxed/simple;
	bh=cyt06RXJUBnyvd+rDscVy+C+X/eqB2fWQSj539VtPJg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jiYwiS8rtuS7QDM0gRAqrrw0ghFTANusnKesy7NHOHV/arXtrG3o7TUW/V+Iird9J2ye1t/IRsI8dlaCLFG3E5Xoo8BtCANKXDur/VHfb7//LF3ScKCoavw0eGEtT0hyCNR84K3BjiJ9GVLCWTBiYZ2OXSsVfBr/5+g1dlo+1sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+7uSikC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3754DC116C6;
	Tue, 27 Jan 2026 16:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769530731;
	bh=cyt06RXJUBnyvd+rDscVy+C+X/eqB2fWQSj539VtPJg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C+7uSikCiRnhCCypeIwP3zThpixogQdAMob/hrAgGC5aN3mFG3mo3K8bL9Gj4D5iJ
	 mlRIA/x9KX0iTeGZDEcP+u/Vri4Htd4P4oPAskQq9RLzdfA+ewSZnL5vMdWP6llvh+
	 1GYZY6ZCp24IZI8/J7wSbTX3gg2Rf0/px3XgNPRaw+gGzcpdIGPy8e16eGK/n3WvnF
	 Ca6e0GEolE2ajsV8HdNbXv1n3dDcg4TBtC4d4Xd5wSFLeJKKdD8c77fg9C5UsuuOJ9
	 ZffR5ckNFO/8+h8vLqyPLc0UIxOKXIhc5Cg4sZciTJAklnb7fWjYvULpWIOB9UdOr+
	 voPcT5RXeyB9Q==
Date: Tue, 27 Jan 2026 10:18:50 -0600
From: Rob Herring <robh@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: mxic,multi-itfc-v009-nand-controller:
 convert to DT schema
Message-ID: <20260127161850.GA1968054-robh@kernel.org>
References: <20260126-mxic-nand-v1-1-557df4a0dfa7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126-mxic-nand-v1-1-557df4a0dfa7@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260036-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nod.at:email,devicetree.org:url,bootlin.com:email]
X-Rspamd-Queue-Id: B963D97AB0
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 11:09:20AM +0000, Akhila YS wrote:
> Convert Macronix Raw NAND Controller Device Tree binding to DT Schema.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../mtd/mxic,multi-itfc-v009-nand-controller.yaml  | 79 ++++++++++++++++++++++
>  .../devicetree/bindings/mtd/mxic-nand.txt          | 36 ----------
>  2 files changed, 79 insertions(+), 36 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
> new file mode 100644
> index 000000000000..97baac8b405a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/mxic,multi-itfc-v009-nand-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Macronix Raw NAND Controller
> +
> +maintainers:
> +  - Miquel Raynal <miquel.raynal@bootlin.com>
> +  - Richard Weinberger <richard@nod.at>

Should be someone with the h/w. Perhaps the driver author Mason Yang 
<masonccyang@mxic.com.tw>.

Though the driver has zero driver specific changes since added in 2019 
and there are no .dts files using it. Maybe it is unused and should be 
dropped instead.

But otherwise, the schema looks good.

Rob

