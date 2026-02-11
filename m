Return-Path: <devicetree+bounces-264622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLBdILAhjGm2hgAAu9opvQ
	(envelope-from <devicetree+bounces-264622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:29:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F21D91219C6
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF86F30173B8
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDBCF318BB9;
	Wed, 11 Feb 2026 06:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLzkR/3P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADA5318140
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770791338; cv=none; b=b4xvSv/bYbZU7hUluknYl7LwQxNpuH15KxVxEfm7qlQnDX1LcIw3lyOJXs8tHicbB3fQ707JDyMnYZkCTeScLmYEFicBskWGl5UyqXxsQ7hD8Yj6UFAlPbuUsrjcgA9Ob6F+VTv5qClyHBQBV98RDcsUrxMGqQygx35sm3y+D0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770791338; c=relaxed/simple;
	bh=LyMJPyrV/rCzGYfO7beAJOcuTaHfFoZEytH79Ho/r+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Amspkg2l2hfBTXQB4wW3CbpmQ4RiU0IwrTvW3Mvx/IKaY7EqPantvYWlwzObHGPC1/Q06ozDUG5iM5vtJkEpUlafxksvCpGnSDKkaQHsjDZVEvXO66ZexG34UvNGNaHq5zVung2a2/jQfKi1WbCeiZEA7LGMVSEfZM2e7aQDNZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLzkR/3P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD49AC4CEF7;
	Wed, 11 Feb 2026 06:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770791338;
	bh=LyMJPyrV/rCzGYfO7beAJOcuTaHfFoZEytH79Ho/r+s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gLzkR/3Ppzb3zpeNHlDb50sIYyVPzvcpKFzHybqZDXlC2ZvJrZ9is62vh0W9YWngj
	 WwuRJthGE2lk7DWfbThqa2pASMN3klfGRSEN9IUasLROj6IrxNkmH5ViSV6jenGrWV
	 hEeDS524vTPlZViXwU7PPWzBtTS3sszCdegMKPO4xGPEZtCHAKaqvFiQGbRERvDr9m
	 xnp1a5/7Xe6thSYM1olzbkLhPdMndYtsOmZQK8YRDzJTcZC+5efgTefKzNpS5lgJN1
	 He7uzogzNKug3FlMr8DZyP8KP8iPHgloMYadTJfbqFun9nf8VD8nCoREqffpWe9Ype
	 QJqnpPggBH1dw==
Date: Wed, 11 Feb 2026 07:28:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rouven Czerwinski <r.czerwinski@pengutronix.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de
Subject: Re: [PATCH v3 2/3] dt-bindings: display: panel: add YAML schema for
 LXD M9189A
Message-ID: <20260211-practical-coyote-of-awe-0dc0a4@quoll>
References: <20260210-drm-panel-ek79007ad3-v3-0-cd2974d56937@pengutronix.de>
 <20260210-drm-panel-ek79007ad3-v3-2-cd2974d56937@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260210-drm-panel-ek79007ad3-v3-2-cd2974d56937@pengutronix.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264622-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,vger.kernel.org,lists.freedesktop.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F21D91219C6
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 12:22:33PM +0100, Michael Tretter wrote:
> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> The LXD M9189A is a 1024x600 MIPI-DSI panel.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

I do not see any improvements.

NAK

Best regards,
Krzysztof


