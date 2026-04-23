Return-Path: <devicetree+bounces-289608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MO0BOzTj6WnBmgIAu9opvQ
	(envelope-from <devicetree+bounces-289608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 11:15:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C8044F21F
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 11:15:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 93390307EDC6
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 09:10:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1093E122A;
	Thu, 23 Apr 2026 09:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWCr48RK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C858D2F5485;
	Thu, 23 Apr 2026 09:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776935417; cv=none; b=MZMuuFl6/XNnj7ECemWwjRpG7PJLwRSMfeVG2BLpFRFcu0sSebNVg+mkxxYWLBBDTkAnavgOcrN0lgbjOQ8gKFxsTUMyYyUfvS8hYokcJihxsZpWWykzazvvJkhgh1yO88ERIXGVKXx30VEB4//UjNRwGOQ5HWF00s4KZ8TKfCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776935417; c=relaxed/simple;
	bh=okrKUr8RxovSOJAMjv2qyTJBTUNmF8XTs1bKE6RVCXA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=slznhmB5CUi8mwLHd5MWHclXo51HdeiHhmq8+Q8qIX+hVafr99uIswbnpIyDcusUSvMC3vaID2CIpbG5lJl9RbZzUqBiyt6l7/4UE/G9jAMXKvW5U/aehGP4MZIbu0Q/r26PvOAE6O80D74xnr3IYMe2+HNDhuP+EGwPTqUfQow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWCr48RK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1B9FC2BCB2;
	Thu, 23 Apr 2026 09:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776935417;
	bh=okrKUr8RxovSOJAMjv2qyTJBTUNmF8XTs1bKE6RVCXA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aWCr48RKl8fuSrSKl6KiFcXcIF4pjFXLaFHIv87GyPP5OROG73n1kkUfQzhAZ+3je
	 kPEOpyAIE05PB14FI/RG3PRZISpKTgjyi39QUZyg2fzkCu4GLyJP8Y1l4Fu29bw5YV
	 BYqCcJgrfUJzgyyL/xovi9KxWRzKfRnAA77bAFUYdTTXvjjiUPZL54Ez7XhWYl+aXD
	 +tVWpMNJ+lywHu/UFdYY8MPWCoGJk5TNyPsBewRg+QeOd53x/t1kGIiOS8aTANsqLW
	 ENAPLL8e9oLljAIO7ihWKJHekXWxO7WQkE0a/DS/366Ct5WmD62LLaUVxdU7MauDMl
	 SKhVM2rTk9hQQ==
Date: Thu, 23 Apr 2026 11:10:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: dri-devel@lists.freedesktop.org, Kael D'Alcamo <dev@kael-k.io>, 
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>, 
	Simona Vetter <simona@ffwll.ch>, Thierry Reding <thierry.reding@gmail.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: display: simple: Document Displaytech
 DT050BTFT-PTS panel
Message-ID: <20260423-simple-earwig-of-education-edc36f@quoll>
References: <20260422210806.80948-1-marex@nabladev.com>
 <20260422210806.80948-2-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260422210806.80948-2-marex@nabladev.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289608-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,kael-k.io,oss.qualcomm.com,kernel.org,gmail.com,bp.renesas.com,linux.intel.com,linaro.org,ravnborg.org,ffwll.ch,suse.de,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,nabladev.com:email,seacomp.com:url]
X-Rspamd-Queue-Id: 48C8044F21F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 22, 2026 at 11:07:24PM +0200, Marek Vasut wrote:
> Document the Displaytech DT050BTFT-PTS 5.0" (800x480) color TFT LCD
> panel, connected over DPI. The datasheet from 16 Nov 2023 is available
> from Seacomp:
> 
> https://www.seacomp.com/sites/default/files/datasheets/DT050BTFT-Displaytech-Spec.pdf
> 
> Signed-off-by: Marek Vasut <marex@nabladev.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


