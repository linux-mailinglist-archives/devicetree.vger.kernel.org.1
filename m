Return-Path: <devicetree+bounces-295142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLJsLNOtAGpMLgEAu9opvQ
	(envelope-from <devicetree+bounces-295142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 18:09:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D998505061
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 18:09:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B3C0300BCB5
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 16:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E6EC3ACA5D;
	Sun, 10 May 2026 16:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="CCCikHA7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FD33A5443;
	Sun, 10 May 2026 16:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778429266; cv=none; b=FXClZvNjI7LPAPdKVSzsoTAwp6muSlQXVxA8E5nQifjhVni4ukXDWVldjIkMzlMQScdLfbGA6Rmi/oFHoeq3/b2rLQN0s9PrYEwsIWsk2IhtiLyrXCP+irC6K21rWe9ciH/h4pEOVds1EuXCPYDCsfTlxp4CKADgjalyhFzukNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778429266; c=relaxed/simple;
	bh=RkPVqx48rs4K1zkDh6WUjdU2isQPzyyoS+E6EGc7IjI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EDwcBpPW8lu6T4vyTt7IRTIhr0Mr5Z+JCVgsYuSO6OpILslCvNTlAwSRE9ab6FDghKOVRxn4vIovYVwQGNOFICcNfYCD3MCKbMHlqcjgISsqJZEfP72caDrNaLtCEMj31OFsfKiPBvVfTvRq8QTRIokVNATijtDfPuQwKisxXmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=CCCikHA7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 268E9C2BCB8;
	Sun, 10 May 2026 16:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1778429265;
	bh=RkPVqx48rs4K1zkDh6WUjdU2isQPzyyoS+E6EGc7IjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CCCikHA7kL6tiDQ+rSKzCWY0ckaUfxClb+y5QD6NqfW/rH5ugtKx2aIGaX9yXD/f8
	 GeowDZ2055FcDZXx+sXa2xg7BbwBXapMVDHd7sDFYoh6hLRM+55kxJhQClgZQCZcdr
	 q96QmRYgR3expgDjLC4y8sEhuaDP+u7tAm4KXM4Q=
Date: Sun, 10 May 2026 18:07:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Pramod Maurya <pramod.nexgen@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jacobsfeder@gmail.com, devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: misc: Add binding for Xilinx AXI-Stream
 FIFO
Message-ID: <2026051050-marathon-fragrant-edbf@gregkh>
References: <20260510084458.73685-1-pramod.nexgen@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260510084458.73685-1-pramod.nexgen@gmail.com>
X-Rspamd-Queue-Id: 1D998505061
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295142-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,checkpatch.pl:url,linuxfoundation.org:dkim]
X-Rspamd-Action: no action

On Sun, May 10, 2026 at 04:44:57AM -0400, Pramod Maurya wrote:
> Add a YAML schema for the Xilinx AXI-Stream FIFO IP core (PG080).
> The binding documents the three supported compatible strings and all
> vendor-specific properties that the axis-fifo driver reads from the
> device tree.
> 
> This resolves the following checkpatch.pl warnings in
> drivers/staging/axis-fifo/axis-fifo.c:
>   WARNING: DT compatible string "xlnx,axi-fifo-mm-s-4.1" appears un-documented
>   WARNING: DT compatible string "xlnx,axi-fifo-mm-s-4.2" appears un-documented
>   WARNING: DT compatible string "xlnx,axi-fifo-mm-s-4.3" appears un-documented
> 
> Signed-off-by: Pramod Maurya <pramod.nexgen@gmail.com>
> ---
> Changes in v2:
> - Delete drivers/staging/axis-fifo/axis-fifo.txt as part of the
>   conversion (was missing from v1)
> - Add all Vivado-generated properties to the schema so that real
>   hardware DT nodes pass validation with additionalProperties: false
> - Update example to match a realistic Vivado-generated DT node
>   including all properties
> 
>  .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 265 ++++++++++++++++++
>  MAINTAINERS                                   |   6 +
>  drivers/staging/axis-fifo/axis-fifo.txt       |  96 -------
>  3 files changed, 271 insertions(+), 96 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml

No, staging drivers need to be self-contained.  When/if the axis-fifo
driver moves out of drivers/staging/ this can happen, but not until
then.

You can convert this to yaml in-place if you want, AND you can test that
the conversion is correct.  Do you have this hardware to test this with?

thanks,

greg k-h

