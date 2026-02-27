Return-Path: <devicetree+bounces-269450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEzlNqgtomk/0gQAu9opvQ
	(envelope-from <devicetree+bounces-269450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:50:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 453FA1BF2A7
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:50:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 714143091C90
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBFED1DE8BE;
	Fri, 27 Feb 2026 23:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuUxjLXx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D6313B5AE
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 23:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772236173; cv=none; b=VzgAZc7W1d0y9JzH1Bdmidl1Iwm3BU+djfaQOVpbCZIrFzrKjr7idelHv7VKb1F/RAqTOMv95PjckIeONz8n08IJ1OdGCwT3u+/CeWqo+ZYjZRDocRTtbAKuQokxGt4tY0RSfHDw9eY7/RQXSL8BylsASm6QsK7GcabNUz27yJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772236173; c=relaxed/simple;
	bh=uEaUbECxfbiZcTQUXK4QKs/8bysVPSBV3i3+Tt6ZD7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nwgZequJqnCGn7FvznYxGWgdx+iGcHc2ZAj8vufcEqLwRymKqlv97l/UqndIZ5c6h53vRzy/XxeT5iSPiHGRDzZdbuvXgF3EjMf9k4+O1SyJdR79Tvt5dywPoF5ViFLNRwJPnxVXufd9c6q32O0btbRjolPhbWDyRfjm33PM04w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuUxjLXx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2915DC116C6;
	Fri, 27 Feb 2026 23:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772236173;
	bh=uEaUbECxfbiZcTQUXK4QKs/8bysVPSBV3i3+Tt6ZD7s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RuUxjLXxlLuoWvb5n2L7tXr1ilrG23ZYpgLWYYTTQ0bnCbgdd8mkoMcTLI5yprSof
	 bVGAc8LBEzM+8shftDBqdTFtfZbNXGbSbYviZGtcJoxLWKjR7zGwsV5SfphyYLv56t
	 eXfhOhfHhfotfJ2dYPlj5Cmy9yAehHGe88n7q0ziYaqhv+5T4eT66zlN3hBYQ0U7nm
	 r7onxsglwoTef/HpxjI/WQINxpy9aEyPRmxRsq39eDGLbqQVrRvxc/ld2lpOxF0ZA4
	 BbsgNvfDtJH1VXlDSbrFFIRvim3mfsq51ErZHQHvqDWz/+XDCpprpMHhvQ+6OzwpZh
	 RpO/62FRfQujA==
Date: Fri, 27 Feb 2026 17:49:32 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kenny Cheng <chao.shun.cheng.tw@gmail.com>
Cc: c.s.cheng@realtek.com, saravanak@kernel.org, gpiccoli@igalia.com,
	tony.luck@intel.com, kees@kernel.org, andersson@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3] of: fix incorrect device creation for reserved memory
 nodes
Message-ID: <177223617152.995069.3601939776992227921.robh@kernel.org>
References: <20260222145321.1736481-1-chao.shun.cheng.tw@gmail.com>
 <20260222234715.1748302-1-chao.shun.cheng.tw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260222234715.1748302-1-chao.shun.cheng.tw@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269450-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 453FA1BF2A7
X-Rspamd-Action: no action


On Mon, 23 Feb 2026 07:47:15 +0800, Kenny Cheng wrote:
> The current global search for nodes in reserved_mem_matches can find
> nodes outside "/reserved-memory". These nodes might not have actual
> memory reserved (via memblock), leading to drivers (e.g., ramoops)
> accessing unreserved memory and causing memory corruption.
> 
> Restrict the scan to the "/reserved-memory" node to ensure created
> devices are correctly backed by reserved memory. This enforces
> specification compliance and avoids dangerous probing.
> 
> Signed-off-by: Kenny Cheng <chao.shun.cheng.tw@gmail.com>
> ---
> v3:
>   - Remove global search fallback to prevent memory corruption.
>   - Fix logic to only allow nodes within "/reserved-memory".
> v2:
>   - Fix missing variable declaration for 'reserved'.
> ---
>  drivers/of/platform.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 

Applied, thanks!


