Return-Path: <devicetree+bounces-288955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sB0XKjMj52nV4QEAu9opvQ
	(envelope-from <devicetree+bounces-288955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 09:11:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0518437611
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 09:11:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AC11301D32B
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 07:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C04934CFC2;
	Tue, 21 Apr 2026 07:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6/4rVzB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390F640DFC6;
	Tue, 21 Apr 2026 07:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776755410; cv=none; b=OChvncU+Fp2sPWUY6k7qHWoKb/Mq8W7kpTqQymwnhR1/Q4AOoYHfOpwJvc7E29qagxXDd4R/yJl9dESglydQrUizL4xgIrGBhHvvJBVUA33DODGzGgI+O0ODhflzWqM7qqFM8vtfQDY4uwdezT5oa3wvnpCutC/VpDbrvVer5pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776755410; c=relaxed/simple;
	bh=JK9ByoGDnHAgT55aq4ZUwYc3KmeDG/rY4+1MhRlLt+8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kPA6ffN7I+0AP7hdL8vMTUPAQk0fVI/DBLDMe5PVNVFxwseJ6M75tTe1QceXXx5ljeCdJdvNqPnzGBeTjmnwxp1tbQNe62HeM+RP/UIVqxkPqUIW0c4RjsMJ3ssE3JB4FzUD0na0uG5/m2cFHGywQdscwgCRisG+UipVF4JYch4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6/4rVzB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F749C2BCB0;
	Tue, 21 Apr 2026 07:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776755409;
	bh=JK9ByoGDnHAgT55aq4ZUwYc3KmeDG/rY4+1MhRlLt+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L6/4rVzBd874l8llGsEKVhzWRPbH4BYYT7yPkcjDBVXqn5JhBn4U3SNuZlHWjOTPu
	 rRW2ZbyHdiK2RXkRnhCuVcwub5CaeqDW8B6imtkJSDo3SoPOxpQ67lmOwacqeDc+1Q
	 VZjkz/jY1YiJF6XGrb+CtrGK2WbdPzHicSDJgvGcJz7Nm4D1gAMDHmJCgu2QiuQ86Q
	 jdoF5O0Y3evyugPIymJx31nqmZsYbF7ZqKVTV6MX7Y/CGZQ++yV2fzRVAGQQqrR6zF
	 W6/7KAXMobdtwYSKepuZGUKMQ5BGtIRqpbC3452/SxDW5rfQfmXTwMN918i1OYEGhT
	 NPxGdzPtN09+w==
Date: Tue, 21 Apr 2026 09:10:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/6] dt-bindings: phy: realtek,usb2phy.yaml: extend
 for resets and RTL9607C support
Message-ID: <20260421-conscious-goat-of-opposition-eb1cf9@quoll>
References: <20260420191941.81834-1-adilov@disroot.org>
 <20260420191941.81834-4-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260420191941.81834-4-adilov@disroot.org>
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
	TAGGED_FROM(0.00)[bounces-288955-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: F0518437611
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 12:19:38AM +0500, Rustam Adilov wrote:
> Add the "realtek,rtl9607-usb2phy" compatible for USB2 PHY on the RTL9607C
> SoC series.
> 
> Add a resets property to properties to describe the usb2phy reset line.
> 
> In RTL9607C, USB2 PHY reset line is from "IP Enable controller" which is
> multipurpose and handle activating various SoC peripherals.
> 
> It is unclear whether RTD SoCs have something similar to that so set
> the resets to false for these devices.
> 
> RTL9607C requires the "resets" to be specified so add the corresponding
> if check for the "realtek,rtl9607-usb2phy" compatible.

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

If a tag was not added on purpose, please state in the patch changelog
or cover letter why and what changed.
</form letter>

Pay attention to the last part. Intentional dropping tag is the same as
"not adding".

Best regards,
Krzysztof


