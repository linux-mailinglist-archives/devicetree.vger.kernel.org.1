Return-Path: <devicetree+bounces-278176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNRYJ4QZvWnG6QIAu9opvQ
	(envelope-from <devicetree+bounces-278176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:55:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2CE2D854A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:55:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EF3AA3019111
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD2213164C5;
	Fri, 20 Mar 2026 09:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9ZxHjkN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BAB53033FD
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774000494; cv=none; b=QFztSFYz3xCBjqB7fspp4JbYSgodOScOqfxNKSKqroFrJJMCyDrhVhHRUoLSBZZ3x6SpmhasK6CrGB7OE1yJBCCAmeCe7cMzubZOgsa2R6xzc+lvy/zb7Enj9F9BBTjJjeCTswL2+mR2jHdfleIQJLoaYfu2G560uN33WsQTaPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774000494; c=relaxed/simple;
	bh=Q0aGbSl6B/lp07B37flZ6XciJQJYdWbJuRcU9X3peRs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tzs0MWlUI2Mb1OTJ3c7f+u0T2vEQmnOvki4+4gdfX6uFXIxoY7AIGolhVWP8YfP7fjuldeMY9xYR1ctJZeJAZ0P1t5vo8++UYMr5Slu5JKDuCDztRATZUCvscIQHputGKcsNnaHrUj/tI/B4LIINAa64TZSfjy3u7+iOJqXS/+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9ZxHjkN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1477C2BC9E;
	Fri, 20 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774000494;
	bh=Q0aGbSl6B/lp07B37flZ6XciJQJYdWbJuRcU9X3peRs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h9ZxHjkNbgvQPzKPdfxZCK/22EIU9Lu33P3QuUFK/tCeAcPuL1VV2tkOnNYUd/Dx2
	 TUeTd2CgfZIVLP+mvuZ5E48i6fOZtZwGnXKllLRa+hX84fo1GZ7zO64Pb2dSve/gNC
	 4E1dLs51q20eKFHFDuu1xA2Qd/KBvwT4Yjjud9EfcmHWPw12EPJQFmajU5rfX07GuG
	 UL4ICTPBTx04KW6U+sTTh7wmFZ6G7tKsJKKXl14axAbY1Qf9QHAf0BUlavAGVc5qjB
	 w5P7naaClyT8WC0e2rydmo2ne4ZDiXOq5vXE7pgePa9YBmtZDInGvQ9m91xqXDtQke
	 cdy8rP6YjAT9w==
Date: Fri, 20 Mar 2026 10:54:51 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] regulator: dt-bindings: mt6359: Drop bogus
 vcn33_[12]_* split regulators
Message-ID: <20260320-dashing-crocodile-of-emphasis-2cc43d@quoll>
References: <20260320072440.2403318-1-wenst@chromium.org>
 <20260320072440.2403318-3-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260320072440.2403318-3-wenst@chromium.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-278176-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.943];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1F2CE2D854A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 03:24:35PM +0800, Chen-Yu Tsai wrote:
> vcn33_[12]_bt and vcn33_[12]_wifi refer to the same output. There are
> two enable bits in the registers so that BT and WiFi drivers can toggle
> them separately without any coordination. If either bit is set, then the
> regulator output is enabled.
> 
> Unfortunately some of them are already referenced by in-tree device
> trees. To keep backward compatibility with them, keep the vcn33_*_bt

So you drop "_wifi" regulators breaking the ABI, no?

> regulator. Also combine them for a shorten regular expression pattern.

Instead the duplicates should be deprecated and driver should still
support the "_wifi" variants.

Best regards,
Krzysztof


