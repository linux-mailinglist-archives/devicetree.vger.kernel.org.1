Return-Path: <devicetree+bounces-285165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKzaF/651GlEwwcAu9opvQ
	(envelope-from <devicetree+bounces-285165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:02:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBB73AB0F1
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F3AE3024123
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 08:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFFFF3A3830;
	Tue,  7 Apr 2026 08:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbhF+zst"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCBD382389;
	Tue,  7 Apr 2026 08:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775548856; cv=none; b=BxrEsyeDEGGUZeIJ/OY67Z6mWkV67JETVymHUIUYUqRmw9gAIC44DFMSRMGOWwk0wknzIRuef94Mh6DFF3FdU/CcmZp61ZqogUmlKlANGLdOT+JukrtGedsUpLK3jaWYuipfgHXemtlxdlNsji6VQDP/tnqdBg9bqRFJLrgiQ3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775548856; c=relaxed/simple;
	bh=iEz+dUNo81C1L3aGhMEQgTNaHtApnj+jMIi+id30px8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pFsO4t2lkYSDFLmt7EIM299Js/QK6vL+HUt3g7l0KTftLcI2/zH5E2Y+kyK7GHC92anm1N15Q36Fvs1STsjFsSSL0dUZsFOs4Cz6YxQUINSHG0CpLLmBIayOnCzJtEfYv33C4RgYAREdUZkpN2JMRKa8iKDICrMJ+/3YkmeCL9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbhF+zst; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4EF9C116C6;
	Tue,  7 Apr 2026 08:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775548856;
	bh=iEz+dUNo81C1L3aGhMEQgTNaHtApnj+jMIi+id30px8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IbhF+zst1UklscRUfT6vNhEhZoiCXnQPX1xy3tFgAqTSDi/d+k6Y4JhKnA7EHJbwv
	 bysXJr9SRzrC6vJ4OveSEsy0+G2OClLaSlCTdvlfqDZtq1vyF2DEWJWpYlEt8UxBPE
	 WmuyC/ZFUScMRJ6SfsJQWNOkSwLSUqDScMhWr7A9RspcF+nFaQ2q5vAj8WEcQJAXa7
	 Pp2N1EXniD5lQU5Td6xjjO1VAdgi5w7ycWzEo58rZ6koXaP8dC1QG528/Og2LjPMQ3
	 78tcWAbBZYtsxJ1DNSleAniMY5yEDOJX5KNlVoD3RdWMJk5lex+AH47YwBtDZbmNAw
	 +5Kb6Lx0WgeIg==
Date: Tue, 7 Apr 2026 10:00:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: devicetree@vger.kernel.org, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, 
	Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: bridge: lt9211: Require data-lanes
 on DSI input ports
Message-ID: <20260407-archetypal-toucan-of-drama-b495a0@quoll>
References: <20260404034123.340818-1-marex@nabladev.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260404034123.340818-1-marex@nabladev.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.b.d.0.0.1.0.0.e.a.0.c.3.0.0.6.2.asn6.rspamd.com:query timed out];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-285165-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,kernel.org,gmail.com,kwiboo.se,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,lists.freedesktop.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6DBB73AB0F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Apr 04, 2026 at 05:40:18AM +0200, Marek Vasut wrote:
> The Lontium LT9211 is capable of 1..4 DSI lanes per input DSI port,
> describe the lane count for each input port in the schema.

Ah, and subject does not really match what you did in the patch. It will
match when you fix the patch, though...

Best regards,
Krzysztof


