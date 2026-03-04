Return-Path: <devicetree+bounces-271049-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG2jESszqGl2pwAAu9opvQ
	(envelope-from <devicetree+bounces-271049-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:27:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3979200646
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD9D230214E5
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C34BC2F6565;
	Wed,  4 Mar 2026 13:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="zKbE+uri"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8941A00F0;
	Wed,  4 Mar 2026 13:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772630581; cv=none; b=aBzeskoXaG6MaCgFxlYepdRzCJAFSgSwAVpmQAe1xUowYMl581kK2Vm1+T2XiSdB4rndk7jXkQirW7Y7Cp+/oxIGxtY77/HF9OnzpPinpeTLsM1K8pxTOjnFumoOmPTqO4rXK1SYf20tsUd+jHWGD/IxBEcewZEmmE3ccDscPgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772630581; c=relaxed/simple;
	bh=cRnnHFbPuT6OC5f+Qq+chWQRgCUWueZ6ITV6N+2q91A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fndvd9OqrTndqA/nt3olG9exJqniAzBIve5LVLiXFGd6V7UyDHco04IPEx9Hy+vEOH5u8vPddc1Ce5vydKFlFrdXOWhy2z+8w7tUkmNdqkZsdGj0yKl5+CV+QqYACUamk8d/fq//jM7KGjCGWM0XuEECDu6uU/CYF26eB6A3rvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=zKbE+uri; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC2F8C19423;
	Wed,  4 Mar 2026 13:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1772630581;
	bh=cRnnHFbPuT6OC5f+Qq+chWQRgCUWueZ6ITV6N+2q91A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zKbE+uriWRd7BOWb/2uV7S+bYVc8TO05UszsDDfki4PTeVgJ/ReeGeItd5qNI/fM7
	 kYISdDLxTTjPNcM0i/D0siweyHd9wa9TTeMVj2UtYzAjnRIwV5YuaBMZvVbVoM62eU
	 p82tGSmVjuk5APoT/JcfbG5N8WWNSKegjeIWY82E=
Date: Wed, 4 Mar 2026 14:22:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alexandru Hossu <hossu.alexandru@gmail.com>
Cc: krzk@kernel.org, robh@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH] dt-bindings: misc: xlnx,axi-fifo-mm-s: fix
 interrupt-parent property
Message-ID: <2026030429-kick-anemic-f48f@gregkh>
References: <e6f8db4d-2a5a-4424-b44d-6416ee0c5ca0@kernel.org>
 <20260304131610.37503-1-hossu.alexandru@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304131610.37503-1-hossu.alexandru@gmail.com>
X-Rspamd-Queue-Id: E3979200646
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
	TAGGED_FROM(0.00)[bounces-271049-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linuxfoundation.org:dkim]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 02:16:10PM +0100, Alexandru Hossu wrote:
> Signed-off-by: Alexandru Hossu <hossu.alexandru@gmail.com>

For obvious reasons, we can't take patches without any changelog text,
nor would you want us to.

thanks,

greg k-h

