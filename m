Return-Path: <devicetree+bounces-271051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLOUA9AyqGm+pQAAu9opvQ
	(envelope-from <devicetree+bounces-271051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:25:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 737872005B6
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:25:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4B47A3025E48
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62BE02F6193;
	Wed,  4 Mar 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="HKYJLzim"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F64A1A9B46;
	Wed,  4 Mar 2026 13:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772630673; cv=none; b=axp6xSmqWhuSCt6qk7et0ILNXx1MpsZJiLi//nh4vG5ex65XLdDriXO0Uc4cs4BgyxzSLoidcdVzwu8CjtRvb2alC69FfzhoJcBZ6ghB8uF/3TXlAf5VUyxhkgUtkEKiuMW03dgVfN6bQ+rPFrqRc5mZhu9rIauyzNyw/gksCfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772630673; c=relaxed/simple;
	bh=hUAihoEBA70tx3yW3N4Bjaaktq4R2hLalawv1WO3k3k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eigWzJNtBlGDWMS0a+DilALP9QrvPgeFXgBSDXsq8t2qAohLin6HpTdlqub3HOM1iwA7nJNbIz47hjwtdr0CSbtOOGC2ZPrQVdB+1Bb8qz0+vKNZbvhX6raNoFILNTouAmzxfnaWppToRyBTDjydvY9ORd7JLrOgFaJo23NSdWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=HKYJLzim; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 333C7C19423;
	Wed,  4 Mar 2026 13:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1772630672;
	bh=hUAihoEBA70tx3yW3N4Bjaaktq4R2hLalawv1WO3k3k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HKYJLzim2Qpin/KQ4bPkL1OsFMh9c3g7oTj49GFQL7Ge23Wki29kAX7tushJoG9PJ
	 KkXHIILsi+L24BfD1JTjK0EDa+igW6Hib1AryFPAYp9jOYuK/QYBAu8NzuxWd12FYY
	 onGpyGmq8jh4vyT6UojRaTWN91mD9kgqPN9Gz67k=
Date: Wed, 4 Mar 2026 14:24:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alexandru Hossu <hossu.alexandru@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: Re: [PATCH v3] dt-bindings: misc: xlnx,axi-fifo-mm-s: fix
 interrupt-parent property
Message-ID: <2026030408-expediter-rise-0082@gregkh>
References: <20260304130556.37311-1-hossu.alexandru@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304130556.37311-1-hossu.alexandru@gmail.com>
X-Rspamd-Queue-Id: 737872005B6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271051-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[43c00000:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linuxfoundation.org:dkim]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 02:05:56PM +0100, Alexandru Hossu wrote:
> Signed-off-by: Alexandru Hossu <hossu.alexandru@gmail.com>
> ---
>  .../devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml   | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
> index 6d1cd651e..cdc295f2d 100644
> --- a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
> +++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
> @@ -31,8 +31,6 @@ properties:
>      items:
>        - const: interrupt
>  
> -  interrupt-parent: true
> -
>    xlnx,use-rx-data:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      enum: [0, 1]
> @@ -56,7 +54,6 @@ required:
>    - reg
>    - interrupts
>    - interrupt-names
> -  - interrupt-parent
>    - xlnx,use-rx-data
>    - xlnx,use-tx-data
>  
> @@ -64,11 +61,16 @@ additionalProperties: true
>  
>  examples:
>    - |
> +    intc: interrupt-controller {
> +      interrupt-controller;
> +      #interrupt-cells = <1>;
> +    };
> +
>      axi_fifo_mm_s_0: axi_fifo_mm_s@43c00000 {
>        compatible = "xlnx,axi-fifo-mm-s-4.1";
>        interrupt-names = "interrupt";
>        interrupt-parent = <&intc>;
> -      interrupts = <0 29 4>;
> +      interrupts = <29>;
>        reg = <0x43c00000 0x10000>;
>        xlnx,use-rx-data = <0x0>;
>        xlnx,use-tx-data = <0x1>;
> -- 
> 2.43.0
> 
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for what
  needs to be done here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

