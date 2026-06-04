Return-Path: <devicetree+bounces-307031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xQGgI/3TIWo6PQEAu9opvQ
	(envelope-from <devicetree+bounces-307031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 21:37:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B1F642F56
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 21:37:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="JKPD11o/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307031-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307031-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5CC57307C920
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 19:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0EF03C343A;
	Thu,  4 Jun 2026 19:33:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F15D72623;
	Thu,  4 Jun 2026 19:33:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780601618; cv=none; b=JxzbFe77UpJiSPqEXT4v2nKrGlUwlicwf4HUfn7h6nIpV7lJUvNlbtyPDf/lLE+PmVdW3n6JGuBv3oRBXPqS+RmgHrUqXFcmw7Qy7Fi4wJAZagwoBSyuDoHrFAsHnjX+mQi9OkzuNVuGtp5G1lBm8c9NZeL0SogQTBLBEt2dpBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780601618; c=relaxed/simple;
	bh=tapovurhsuNwdFtiLZEjabmJvLQN+amiqTTH35i2pEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HqXjmwV96wwqmmarEI5kk8BLZK4xV40kJUshYxUFPilBs7+10a5rqI6Xldq0/uX14EPrt/SpljLghNpyCLQkI+kwW4Rb3ERA0/P30Ij/FvVV5Dk84OgArLywjXX4vscnKKz0Ey6vmf3bJQo6EoY0dEJAPNRyiF2iHHGZ+eM+ZEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKPD11o/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF9FD1F00893;
	Thu,  4 Jun 2026 19:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780601617;
	bh=X3LZgbWaMPIFfnmNXMUw7DOQbRziUNGX+uylYYHTSls=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JKPD11o/zOQLphOweliTavjegMBRPwjI41iKabJ+cm90Ku6b5H2tos4Jz1rxGzV+g
	 WmWglbrhRq4kfV9pfyPfBQvejIQFIAJ5rVSPYNBJwbb5DvQlUZ36x1MdeXeVpn7n56
	 hrnIOO8hbyg/UDfZBE+zc0L0ikBowBtftepsoxH9bsALeok65EAp70cIrt1zvsbXgN
	 8/cj3Ft7nIlzq4nG74GSrlzTeKaQ+GsQcF0+LnRpMtE6h2qGMuy8sq0BWgNXgqZEQs
	 UUMlWBguySQ7jn4jdis7XyoQ+ICJoLvApb31ljWOyH64+izvfR7QBOKxcaNetkA3/n
	 4ueB0b/kxQtDQ==
Date: Thu, 4 Jun 2026 14:33:36 -0500
From: Rob Herring <robh@kernel.org>
To: Wandun Chen <chenwandun1@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	saravanak@kernel.org
Subject: Re: [PATCH 2/2] of: reserved_mem: add config to extend dynamic
 reserved memory regions
Message-ID: <20260604193336.GB1057262-robh@kernel.org>
References: <20260604073611.3954433-1-chenwandun1@gmail.com>
 <20260604073611.3954433-3-chenwandun1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260604073611.3954433-3-chenwandun1@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307031-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:chenwandun1@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:saravanak@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8B1F642F56

On Thu, Jun 04, 2026 at 03:36:11PM +0800, Wandun Chen wrote:
> From: Wandun Chen <chenwandun@lixiang.com>
> 
> Nowadays, the dynamic reserved memory regions is 64 by default, If
> the count of reserved memory regions defined in DTS bigger than 64,
> only 64 reserved memory can be handled properly.
> 
> So add a config to configure the actual dynamic reserved memory
> regions count instead of modify the code.
> 
> Signed-off-by: Wandun Chen <chenwandun@lixiang.com>
> ---
>  drivers/of/Kconfig           | 11 +++++++++++
>  drivers/of/of_private.h      |  2 +-
>  drivers/of/of_reserved_mem.c |  2 +-
>  3 files changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
> index 50697cc3b07e..d6496ec3765c 100644
> --- a/drivers/of/Kconfig
> +++ b/drivers/of/Kconfig
> @@ -99,6 +99,17 @@ config OF_IRQ
>  config OF_RESERVED_MEM
>  	def_bool OF_EARLY_FLATTREE
>  
> +config OF_RESERVED_MEM_DYNAMIC_REGIONS
> +	int "Maximum count of the dynamic reserved memory regions"
> +	depends on OF_RESERVED_MEM
> +	default 64
> +	range 1 256

My opinion on making this a config option is well documented. That's the 
primary reason we split dynamic regions.

How many do you need and why do you need so many regions? Seems like an 
abuse of reserved memory. 

Rob

