Return-Path: <devicetree+bounces-305392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPjuMqQBHmqfgQkAu9opvQ
	(envelope-from <devicetree+bounces-305392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 00:03:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33211625BC2
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 00:03:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A41CC3034B3E
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 22:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D5E930B508;
	Mon,  1 Jun 2026 22:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTTmRlZX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B60C137750
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 22:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780351299; cv=none; b=hnJUaw+eaF6Y3M5omi/OIovEQHnWct8t60Kk8OOikiopVe10aEUm64cCv+kukMOllbXNLzni0lBSb2lNaegiuUB8KBx8vI9oUZVEH8gyAspooCHk5fe26cBbfnna8fpg+cCuQWhf/nd7jHPUo6HNGt5IE2zLG0lp11gmZzlqPRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780351299; c=relaxed/simple;
	bh=IYUuPeRWAAy7/YV8EKojwr5ocBdvK1A6Ivebyk3DH70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YpVf//ldIBaCeSBoCz5anqVUzvm6Vp/eaLBBjuufsH65CcUtSNNVmb5bVyTzciunEzoaf7wChdzrjlj2g1fr0bywiIgvUXhNLVK4Q8ela+XK0eJXjVUA9qos3pdx9fthPOzl1/LSSp0xn3X6dtCqXZyGYBOfG5+C+RkY7P29dJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTTmRlZX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E5BC1F00893;
	Mon,  1 Jun 2026 22:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780351297;
	bh=6lqJ+fUrWkQKTv1XejGOcMluJh3tC7dfDM5eIytOFBE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eTTmRlZXuCRMHKe9NVIfANBMwLkaRDgS0BHyW53oIUHFrHck6S3HNXXF85vdMF68Y
	 qUlSerHqUj8pGN3BJ/SJLlvKtxy8D6ics5QgvjRYjqlcM7GNosX1oco9PNjf9nj897
	 tkEb4wlZUII6Ti/KvrYSaXcAGS18Czh8dndVijg3LrbF8MdLzrl3Ct1qkZm5B4mAhy
	 UKxjum1XrewJ6vxp1heEZcdzU72IY+zM+mR06XtXTU1Hky0ecYGmXLB67ROTeM/bnU
	 RetEs3+uWdc8P6Y7Af7rJwRLPRqLtZtt0YQis5ILVcBmrG0a2i8hgNKCz3w55YtHzp
	 lGAqwKelZ7usQ==
Date: Mon, 1 Jun 2026 17:01:37 -0500
From: Rob Herring <robh@kernel.org>
To: Sang-Heon Jeon <ekffu200098@gmail.com>
Cc: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com,
	chleroy@kernel.org, saravanak@kernel.org,
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] powerpc/prom: fix /chosen properties read from wrong
 node
Message-ID: <20260601220137.GA54006-robh@kernel.org>
References: <20260510171353.1406018-1-ekffu200098@gmail.com>
 <20260510171353.1406018-2-ekffu200098@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260510171353.1406018-2-ekffu200098@gmail.com>
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305392-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,lists.ozlabs.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 33211625BC2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 11, 2026 at 02:13:52AM +0900, Sang-Heon Jeon wrote:
> Commit 60f20d84dc81 ("of/fdt: Rework early_init_dt_scan_chosen() to
> call directly") changed early_init_dt_scan_chosen() to be called
> directly instead of via of_scan_flat_dt(). After this change,
> early_init_dt_scan_chosen_ppc() does not behave as intended in either
> case below:
> 
> - /chosen(or /chosen@0) exists: early_init_dt_scan_chosen() always 
>   succeeds, so early_init_dt_scan_chosen_ppc() then reads properties
>   from the root node (first iteration) instead of chosen node.
> 
> - /chosen does not exist:
>   - Until commit 064e32dc5b03 ("of: fdt: Honor CONFIG_CMDLINE* even without
>     /chosen node, take 2"), early_init_dt_scan_chosen() returns -ENOENT
>     and early_init_dt_scan_chosen_ppc() returns 0. So of_scan_flat_dt()
>     iterates over all remaining nodes. Not a bug but unnecessary.
>   - After above commit, early_init_dt_scan_chosen() returns 0 and
>     early_init_dt_scan_chosen_ppc() returns 1. So it reads properties
>     from the root node (first iteration) instead of chosen node, same as
>     the chosen node exist case above.
> 
> Instead of using of_scan_flat_dt() for chosen node handling, first call
> early_init_dt_scan_chosen() directly to handle common chosen node
> properties. Then call early_init_dt_scan_chosen_ppc(), which is updated
> to handle powerpc-specific chosen node properties.
> 
> Both now look up chosen node directly to avoid reading from the wrong node.
> 
> Fixes: 60f20d84dc81 ("of/fdt: Rework early_init_dt_scan_chosen() to call directly")
> Signed-off-by: Sang-Heon Jeon <ekffu200098@gmail.com>

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

