Return-Path: <devicetree+bounces-278551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCxrIutuvml1PQMAu9opvQ
	(envelope-from <devicetree+bounces-278551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 11:11:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA412E4A5E
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 11:11:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E22A5301FFA3
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 10:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3552B2DE6FF;
	Sat, 21 Mar 2026 10:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mA6LD5eA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF3D2DCF4C;
	Sat, 21 Mar 2026 10:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774087807; cv=none; b=b+0/WDmwSFD1XKeLpA1rlQdse34Ghk9aoBzu9IXJq5ljEPI8Q7JBrUJ+vVALl9cuQAoLOj020ioukxFoHWbkw2PAri4CmcCLg4FOPw+3fd7dFUUB1yaL01uus4qnB0T4KCMVmpo98iYU1Z/7x04qsyKLWGsCdioqKudHc5vmioc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774087807; c=relaxed/simple;
	bh=losRJURq/7otlRzH8CacDY3Rw8KV5PdAJ6d9YB1JEmw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mDfbwBP7IScVovNEWmAG6sXFyVzoGKwxikXbMXmK+dN16l0U6fvMg2hO3y0QUQOB7+dikqIbYUn8YOX18N4jXMJX/DKGrOKzwtDFE8h7B4nH7QruUfSCzeonk7BiQgbomB24JijodAjkyVC9LWeDOc9m8bTZ0nQNUFm6EGyiWN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mA6LD5eA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6196DC19421;
	Sat, 21 Mar 2026 10:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774087806;
	bh=losRJURq/7otlRzH8CacDY3Rw8KV5PdAJ6d9YB1JEmw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mA6LD5eAS9S3t8yrPuitlKesfwXIJIOM6EqAXDuJeWzodokTf/CeDnq9rBBouRsEX
	 ml+T6qTpzM2kICbWoN5iS647DG6LDJu4Jl9aunE3y+PnJ3Xad9+JcN0rVQGq1kvxje
	 hYNtUCU7F3rACOLj0wvY5rl7PG/wYY3aBdkx6buMoxxyhJTmbDe2tshUWWSahCf4D3
	 to0lFMr/xryD99m/vmewUCNL6EFtU08SZwXqCwj8pTQ5VufyJfBPKB3nl43SPQbKa2
	 pZT0VPKKwG8vrBBxbAXcY2+Em4blnx8DRJB5N3LZwdPA4wtgwI2qN8fv4WCWs1SW3u
	 tC3jsKH2YbLwQ==
Date: Sat, 21 Mar 2026 11:10:04 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pet Weng <pet.weng@ite.com.tw>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Hermes Wu <hermes.Wu@ite.com.tw>, Kenneth Hung <kenneth.Hung@ite.com.tw>, 
	Jau-chih Tseng <jau-chih.tseng@ite.com.tw>, Pin-yen Lin <treapking@google.com>
Subject: Re: [PATCH v8 1/2] dt-binding: display: Add ITE IT61620 MIPI DSI to
 HDMI bridge
Message-ID: <20260321-steady-refreshing-chinchilla-f6ed28@quoll>
References: <20260320-it61620-0714-v8-0-0e70271cf5a9@ite.com.tw>
 <20260320-it61620-0714-v8-1-0e70271cf5a9@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260320-it61620-0714-v8-1-0e70271cf5a9@ite.com.tw>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278551-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,ite.com.tw,google.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: DFA412E4A5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 03:50:41PM +0800, Pet Weng wrote:
> This chip receives MIPI DSI input and outputs HDMI, and is commonly
> connected to SoCs via I2C and DSI.

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Best regards,
Krzysztof


