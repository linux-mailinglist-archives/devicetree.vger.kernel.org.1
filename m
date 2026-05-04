Return-Path: <devicetree+bounces-292688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IC7JNi3+Gn1zAIAu9opvQ
	(envelope-from <devicetree+bounces-292688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 17:14:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8581A4C085D
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 17:14:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9B631301C8B5
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 14:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD7F3E023E;
	Mon,  4 May 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="rZWMKMgL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F32378812;
	Mon,  4 May 2026 14:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777906593; cv=none; b=Cws1r00e08TqMCXoxyxTa8jV4V2t2DC9Hwl8wXD/0XVm9fZoLHly00BhOnC4fjub6GPJ9Y1frz3OJksG2NvNkwAqsUXYpk34jA93Qn53MlFIFnINC6BzBdoSrkx6sAdEPwnKegRxg6lX0BMO0PXhzF7hktYqqo6G/Rm+SSKnnmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777906593; c=relaxed/simple;
	bh=KtagOfNLEs02cUVPj4FT+pAk0pBIYBNPgs62jaR0P04=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SN5MiwxExtWN+KuS21TBdMMq9ue8e0FcAzyhuBi/L5MKAK2+pcmUXwnFy1KHUtLuf7meW9kGuXHQ4M2nN/aT59h/fpFGFj4mMRANGSe6Mzrf3UjWM0n1JuT17iobB0eQWAdSM86cwg1Hl2xC4gjnWGLC6ACCSCgEdoVR8S/DQOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=rZWMKMgL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9353C2BCC4;
	Mon,  4 May 2026 14:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1777906593;
	bh=KtagOfNLEs02cUVPj4FT+pAk0pBIYBNPgs62jaR0P04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rZWMKMgLDxLk8OfQEWZkHQ2/vZEF0UzjawV1RjbsheUbUR0tnauJh5gj5Ey5UfcDf
	 H+BJVA+E3umxco6Q9Ic/zwyrI1E3tp4zGaooZbUCwpYQSS7Q/M+DbU4EuhAuwKuyw0
	 PlNfJx6LjogUGtJRiBAidVhHmbbM/0lv9OhL/QtY=
Date: Mon, 4 May 2026 16:25:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: zain_zhou@realsil.com.cn
Cc: linux-staging@lists.linux.dev, linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
	Frank.Li@nxp.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linusw@kernel.org, brgl@kernel.org,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] staging: i3c: add Realtek RTS490x I3C HUB driver
Message-ID: <2026050412-bush-rosy-959d@gregkh>
References: <20260430121354.6253-1-zain_zhou@realsil.com.cn>
 <20260430121354.6253-2-zain_zhou@realsil.com.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260430121354.6253-2-zain_zhou@realsil.com.cn>
X-Rspamd-Queue-Id: 8581A4C085D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292688-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,realsil.com.cn:email,linuxfoundation.org:dkim]

On Thu, Apr 30, 2026 at 08:13:54PM +0800, zain_zhou@realsil.com.cn wrote:
> From: zain_zhou <zain_zhou@realsil.com.cn>
> 
> Add driver for Realtek RTS490x series I3C HUB devices (RTS4900,
> RTS4901, RTS4902, RTS4903, RTS4904, RTS4906).
> 
> The I3C HUB is a smart device that provides:
>   - voltage compatibility across I3C Controller and Target devices
>   - bus capacitance isolation
>   - address conflict isolation
>   - I3C port expansion (up to 8 target ports)
>   - dual controller port support
>   - I3C and SMBus device compatibility
>   - GPIO expansion via target ports
> 
> The driver supports:
>   - Device Tree based configuration of LDO, pull-up, IO strength
>     and per-port mode (I3C/SMBus/GPIO/disabled)
>   - Logical I3C bus registration per target port
>   - SMBus agent functionality with IBI and polling modes
>   - GPIO chip with IRQ support
>   - DebugFS interface for register access and DT config inspection
>   - IBI (In-Band Interrupt) handling
> 
> The driver is placed in staging as it has known issues to be resolved
> before mainlining; see drivers/staging/rts490x/TODO for details.
> 
> Signed-off-by: zain_zhou <zain_zhou@realsil.com.cn>

We need a real name, not an email alias.

And no, please don't add new drivers to drivers/staging/ especially when
it is so easy to fix them up properly "first" before adding them to the
kernel tree.

Your TODO file is pretty easy:

> diff --git a/drivers/staging/rts490x/TODO b/drivers/staging/rts490x/TODO
> new file mode 100644
> index 000000000000..0be2d7693d68
> --- /dev/null
> +++ b/drivers/staging/rts490x/TODO
> @@ -0,0 +1,19 @@
> +TODO list for rts490xa-i3c-hub staging driver
> +==============================================
> +
> +- Move driver out of staging once the following are addressed:
> +  - Add proper DT binding schema validation (dt-schema)
> +  - Clean up open-coded OF property parsing; use device_property_* APIs
> +    instead of of_property_read_* where possible
> +  - Remove use of full_name / sscanf for node name parsing; use
> +    of_node_name_eq() and fwnode helpers instead
> +  - Replace global mutex (i3c_hub_regmap_mutex) with per-device locking
> +  - Add kernel-doc comments for all exported/public functions
> +  - Resolve TODO comment in i3c_hub_hw_configure_tp() regarding MUX
> +    connection verification
> +  - Remove TBD comment in i3c_hub_probe() regarding DEV_CMD security lock
> +  - Review and fix potential locking issues in i3c_hub_delayed_work()
> +    when registering logical buses
> +  - Fix error handling in i3c_hub_delayed_work(): early return on failure
> +    does not unregister already-registered logical buses, causing resource
> +    leak; needs proper cleanup on error path

All of those you could do this week.  Don't add stuff to staging that
you are going to maintain, as it will be more work in the end.  Just do
the needed extra effort and then merge it to the proper place in the
tree.

thanks,

greg k-h

