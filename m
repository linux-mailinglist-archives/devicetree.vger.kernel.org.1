Return-Path: <devicetree+bounces-257795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WA2/JgiNcGkEYQAAu9opvQ
	(envelope-from <devicetree+bounces-257795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:23:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 128075372B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:23:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 552D6541D22
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1F313A89A9;
	Wed, 21 Jan 2026 08:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR7AewlE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2BB439E6D4;
	Wed, 21 Jan 2026 08:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768983487; cv=none; b=QO/J+kj4JfJr/cMxEwxkRR9Amx3Ac0y7czVaav1zZSMe/IFCOaFvt4Zmdih61vqtSBQ56dhA38ZzRFc7QfkJns0ALW5NFWGmRrntcyMr+8egb1vzux56kls2cKTb1bmhprNYyGnLxCQyF8a15xrbKDUh0Lgp/GfunEHrcQg47jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768983487; c=relaxed/simple;
	bh=jbeqs7i3qfLF6BpDOlQUT8fmHxE0h9cwFli+NR8lm9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YfV3MXise9/8toYfnrseKXs7gF3IKn/Rf9J5h2vBCQVAZg6/UkIrRXXDWQTtnUCk5W2o90JhQJ9NgEzKyCVLNFqNIw0KUU/+8LEoWdUR0frnJhytpqwfhS0Ke50ZQTEPDvJE52/1lKpm44hETRQwTX6ftwoN7ipIssOXZ5L1ojo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR7AewlE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A463EC116D0;
	Wed, 21 Jan 2026 08:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768983487;
	bh=jbeqs7i3qfLF6BpDOlQUT8fmHxE0h9cwFli+NR8lm9Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IR7AewlEspXDUV67j3fkqwYe0ALDpkYVyA9EV+HKr5L+ojGjNSH9FpAIMzaxULJdD
	 Gjk4hMIhlMtYKoFgNXVVLm6ZE9nBC95BzS7OOWxb+zJutXUN4SawP1HOZqgbo7rW+X
	 1Ol8eTZrGWqS7zwxuvDnHmr/xbOHO+eS+0zqFs4SxUfUY6fcK52vn/cmuQMjM0UaE0
	 cSn2nb0K59bSanSc7bB4TWBxNi3PKlVJPHIlQY+8edMtIWDppbN5xbcanInOsmk69O
	 P0P5DU3tX6eLlBTumoUT/4hQW74ociQhWiFBaoOF89zZDX8QW7fHcPZ5AsBK1j0IY/
	 aPeL78jKVOIVg==
Date: Wed, 21 Jan 2026 09:18:04 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gianluca Boiano <morf3089@gmail.com>
Cc: hansg@kernel.org, dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] input: touchscreen: novatek-nvt-ts: Add support for
 NT36672A e7t variant
Message-ID: <20260121-calm-azure-caterpillar-ea90c4@quoll>
References: <20260120193600.1089458-1-morf3089@gmail.com>
 <20260120193600.1089458-2-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260120193600.1089458-2-morf3089@gmail.com>
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-257795-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 128075372B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 08:36:00PM +0100, Gianluca Boiano wrote:
> Add support for the Novatek NT36672A touchscreen variant found on the
> Xiaomi Redmi Note 6 Pro (tulip) which uses a different wake_type value
> (0x02 instead of 0x01).
> 
> The touchscreen was failing to initialize with error -5 due to the
> wake_type parameter mismatch during probe. This adds a new chip data
> structure for the e7t variant with the correct wake_type value.
> 
> Closes: https://github.com/sdm660-mainline/linux/issues/155

I don't think this is useful, because it's downstream/fork/distro with
at least 100 patches on top of v6.18 (so not even current mainline!).
Calling a repo "mainline" does not make it mainline and we do not track
distro bugs.

Also, lack of a feature is not a bug which needs to be closed.

Drop the tag.

Best regards,
Krzysztof


