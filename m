Return-Path: <devicetree+bounces-287781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SA3UF6ye4GlukQAAu9opvQ
	(envelope-from <devicetree+bounces-287781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 10:32:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E561D40B96F
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 10:32:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 091AD301A089
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 08:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF2EA39185C;
	Thu, 16 Apr 2026 08:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcemiNJc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA71B311C32;
	Thu, 16 Apr 2026 08:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776328358; cv=none; b=c8H8Fw039Fzng2SGkgpOUwLLIrRS3hsyxuo4oNuRrw2dG3t6f7q0WaLvsVQyhQkfxOCzRMFTQFsLvdOSNeLxkqqz3l0dQML9n7/BClgX4hvTRdo36GXEI+USUVXL8AOm6o7IBTbPkrIwmuqt16dqmylB+623Xdn6FtqnqVKIxco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776328358; c=relaxed/simple;
	bh=HTjMxf5v3aR9ygGnGEUoiaruNqB6TeQAxAASh+62FLA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K42F8lLKlGYmfjnZit30wfjtP4XP/tDDbDP1hu7hXs0G3HHnKr6+C4RIpnGYNnA/Zy8sW3cYctFUfwzC0owV7WfZFXtCLxyixBHld6r+zHnglMUClBzdgwjasePQ5qgzYREuRUxO5uuJ4B7LA4FzAshgpfVwXnUt1gbQ8LpPQcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcemiNJc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE6A1C2BCAF;
	Thu, 16 Apr 2026 08:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776328358;
	bh=HTjMxf5v3aR9ygGnGEUoiaruNqB6TeQAxAASh+62FLA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YcemiNJcOcYiquxwpbF9j5uGN/B6pXMTwYMiVPLLA2AI6nbwDGb94DptPvcpPvhR4
	 /6dTNnkMnG5VwEJTqBwzaBpFflatwNedwRbxPxCrNUPjkKYqYW2EvS1e7Ad3JM5nb/
	 9mFOsHEO7+Ystu8uKRvLaxGqdVKLRTLxJk7qOKr/dwvHWqgsi2TBMoAIL+KOg+eWXE
	 RNxGmCSyCFzRSvE3KnM/M8gaKGivETXBp6JZktttmt0v9ufFbrn8MwZqFl4D0oJL87
	 3gEpYRA5F69Vz+lP2KN6YhXkeOTZ11Jb8a5oKHSjswlnyWURKtPiRFGpj0TttOkFPv
	 keOlQzoi5ScRA==
Date: Thu, 16 Apr 2026 10:32:35 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Swamil Jain <s-jain1@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devarsht@ti.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, praneeth@ti.com, vigneshr@ti.com
Subject: Re: [PATCH v4] dt-bindings: display: ti, am65x-dss: Fix AM62L DSS
 reg and clock constraints
Message-ID: <20260416-venomous-arcane-labrador-e0bfdc@quoll>
References: <20260415110409.2577633-1-s-jain1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260415110409.2577633-1-s-jain1@ti.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN_FAIL(0.00)[74.135.232.172.asn.rspamd.com:server fail];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-287781-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[iki.fi,ideasonboard.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ti.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,ti.com:url,ti.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E561D40B96F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 04:34:09PM +0530, Swamil Jain wrote:
> The AM62L DSS [1] support incorrectly used the same register and
> clock constraints as AM65x, but AM62L has a single video port
> 
> Fix this by adding conditional constraints that properly define the
> register regions and clocks for AM62L DSS (single video port) versus
> other AM65x variants (dual video port).
> 
> [1]: Section 12.7 (Display Subsystem and Peripherals)
> Link : https://www.ti.com/lit/pdf/sprujb4
> 
> Fixes: cb8d4323302c ("dt-bindings: display: ti,am65x-dss: Add support for AM62L DSS")
> Cc: stable@vger.kernel.org
> Signed-off-by: Swamil Jain <s-jain1@ti.com>
> ---
> Validated the changes with some examples:
> https://gist.github.com/swamiljain/79f30568c9ece89f5a20218f52647486

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


