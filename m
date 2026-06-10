Return-Path: <devicetree+bounces-309998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mn69MJGxKWpZcAMAu9opvQ
	(envelope-from <devicetree+bounces-309998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 20:48:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A22E966C5E4
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 20:48:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Z5N58tyF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309998-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309998-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B8ECA30072BA
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FE9833D4F0;
	Wed, 10 Jun 2026 18:48:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2566232B105;
	Wed, 10 Jun 2026 18:48:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781117324; cv=none; b=nVFHRJDbjMx3/KSTTE8qMwcSy9i154Fp+jr3GHY1mFrRX3gxqbjLY+ly7iuD5oXkQDHDRPTQd1U7UBJghmDGBhLs5FXn2honHnR6vf5LlXUvAtiMUR6Evd+4+fablz1Q3wjobK+CIfBLytQ1p/2POTymmWlOMp912tpEaLcRdpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781117324; c=relaxed/simple;
	bh=e7juAKMdbJE8c41ddoVMN0a+q6SHhmeQ5SmeOwcgzYU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=biQCYEN1kGBwvurB/8FRha5+L0UVn3OpSjbPqq0BqTE/NLfXAib7bRbc4MjVTqHF6p2UpiPF6Xbj03LpFB3IASsYYpSx0KTUmFgVK+Rikwc6Lv668oLTDC/z2VDJx9PEF4C2I0cNAwuSYQArfH5cTvCU6gTRAzDydtp9WE5HCrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5N58tyF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87DB71F00893;
	Wed, 10 Jun 2026 18:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781117322;
	bh=IeaOgv8VGi8NiS/EDinHm2Q+9rwa2YqYo89AIX6kVBw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Z5N58tyF9roa6CWq4gbKB7l16zKv7j1T52ICIRV+2JEGOByBessKPyUmNLtpng/n5
	 01It/aEyXBYdFM1JUBWjN2Gl1w11fM4CfxXePTanpUfDPY8m8TOquE5dih4a7XPlgg
	 btBlortY85j/zu8nYrc2DaUFvL/EFLsl3Xw//gKj/OKOnegGnJ3DuGlfoIp82T9kdN
	 +LeNPNctygUsNJydo8PzVwS54vo/JQP2aFu7ZBQ4ue9Ra7gi/BwVyIT/oKRXJpC5Nw
	 SfPYoqrejZxl/5hYBuvFWtJR+cpsHk3syvcyCIXUMdFTuPxg1ih8UEmJjb5oemikYV
	 cFj/czkl27sVA==
Date: Wed, 10 Jun 2026 13:48:41 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: David Laight <david.laight.linux@gmail.com>
Cc: Saravana Kannan <saravanak@kernel.org>, devicetree@vger.kernel.org,
	linux-hardening@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
	linux-kernel@vger.kernel.org, Kees Cook <kees@kernel.org>
Subject: Re: [PATCH next v2] drivers/of/overlay: Use memcpy() to copy known
 length strings
Message-ID: <178111732108.625216.12806954968096989058.robh@kernel.org>
References: <20260608185121.22331-1-david.laight.linux@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260608185121.22331-1-david.laight.linux@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309998-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:saravanak@kernel.org,m:devicetree@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:arnd@kernel.org,m:linux-kernel@vger.kernel.org,m:kees@kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A22E966C5E4


On Mon, 08 Jun 2026 19:51:21 +0100, David Laight wrote:
> Avoid calls to strcpy().
> The lengths of the strings have been used for the kzalloc(), replace
> the strcpy() calls with memcpy() using the known lengths.
> 
> Signed-off-by: David Laight <david.laight.linux@gmail.com>
> ---
> 
> v2: Improve commit message
> 
> This is one of a group of patches that remove potentially unbounded
> strcpy() calls.
> 
> They are mostly replaced by strscpy() or, when strlen() has just been
> called, with memcpy() (usually including the '\0').
> 
> Calls with copy string literals into arrays are left unchanged.
> They are safe and easily detected as such.
> 
> The changes were made by getting the compiler to detect the calls and
> then fixing the code by hand.
> 
> Note that all the changes are only compile tested.
> 
> Some Makefiles were changed to allow files to contain strcpy().
> As well as 'difficult to fix' files, this included 'show' functions
> as they really need to use sysfs_emit() or seq_printf().
> 
> All the patches are being sent individually to avoid very long cc lists.
> Apologies for the terse commit messages and likely unexpected tags.
> (There are about 100 patches in total.)
> 
>  drivers/of/overlay.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!


